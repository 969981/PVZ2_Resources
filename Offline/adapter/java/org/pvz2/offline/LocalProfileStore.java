package org.pvz2.offline;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.AtomicMoveNotSupportedException;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Properties;
import java.util.UUID;

/**
 * Self-contained LOCAL-ONLY test state store for a future offline game mode.
 *
 * This intentionally has NO network, account, token, purchase, or remote API.
 * It does NOT yet implement the proprietary game save format and must not be
 * plugged into the original game until its real JNI/player contracts are known.
 *
 * The caller must pass an app-private location (e.g. Context.getFilesDir()).
 */
public final class LocalProfileStore {
    private static final String VERSION = "1";
    private static final String PREFIX = "level.";
    private final File file;
    private final Properties state = new Properties();

    public LocalProfileStore(File appPrivateDir) throws IOException {
        if (appPrivateDir == null) {
            throw new IllegalArgumentException("Directory required");
        }
        if (!appPrivateDir.isDirectory() && !appPrivateDir.mkdirs()) {
            throw new IOException("Cannot create profile directory");
        }
        file = new File(appPrivateDir, "offline-local-profile.properties");
        if (file.isFile()) {
            try (FileInputStream input = new FileInputStream(file)) {
                state.load(input);
            }
            if (!VERSION.equals(state.getProperty("schema"))) {
                throw new IOException("Unsupported local profile schema");
            }
            String id = state.getProperty("local_id");
            if (id == null || !id.startsWith("offline-")) {
                throw new IOException("Corrupt local profile identity");
            }
        } else {
            state.setProperty("schema", VERSION);
            state.setProperty("local_id", "offline-" + UUID.randomUUID());
            commit();
        }
    }

    public synchronized String localId() {
        return state.getProperty("local_id");
    }

    public synchronized int completedStars(String levelId) {
        String key = levelKey(levelId);
        String value = state.getProperty(key, "0");
        try {
            int stars = Integer.parseInt(value);
            if (stars >= 0 && stars <= 3) {
                return stars;
            }
        } catch (NumberFormatException ignored) { }
        throw new IllegalStateException("Invalid local level state");
    }

    /**
     * Idempotent local-only level completion: replaying a level will never
     * lower earned stars or duplicate a remote reward/entitlement. No gold,
     * premium currency, online or paid inventory is affected.
     *
     * @return true only when local state actually changed.
     */
    public synchronized boolean recordLevelResult(String levelId, int stars) throws IOException {
        if (stars < 1 || stars > 3) {
            throw new IllegalArgumentException("Stars must be between 1 and 3");
        }
        String key = levelKey(levelId);
        int previous = completedStars(levelId);
        if (stars <= previous) {
            return false;
        }
        state.setProperty(key, Integer.toString(stars));
        try {
            commit();
        } catch (IOException failure) {
            if (previous == 0) {
                state.remove(key);
            } else {
                state.setProperty(key, Integer.toString(previous));
            }
            throw failure;
        }
        return true;
    }

    public synchronized List<String> completedLevelIds() {
        List<String> result = new ArrayList<>();
        for (String key : state.stringPropertyNames()) {
            if (key.startsWith(PREFIX) && completedStars(key.substring(PREFIX.length())) > 0) {
                result.add(key.substring(PREFIX.length()));
            }
        }
        Collections.sort(result);
        return Collections.unmodifiableList(result);
    }

    private String levelKey(String levelId) {
        if (levelId == null || levelId.isEmpty() || levelId.length() > 128 ||
                !levelId.matches("[A-Za-z0-9_.:-]+")) {
            throw new IllegalArgumentException("Invalid original level ID");
        }
        return PREFIX + levelId;
    }

    private synchronized void commit() throws IOException {
        File tmp = new File(file.getParentFile(), file.getName() + ".new");
        try (FileOutputStream output = new FileOutputStream(tmp)) {
            state.store(output, "Local-only PvZ2 profile; not an online account");
            output.getFD().sync();
        }
        try {
            Files.move(tmp.toPath(), file.toPath(),
                    StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING);
        } catch (AtomicMoveNotSupportedException exception) {
            Files.move(tmp.toPath(), file.toPath(), StandardCopyOption.REPLACE_EXISTING);
        }
    }
}
