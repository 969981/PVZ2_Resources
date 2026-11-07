package org.pvz2.offline;

import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;

public final class LocalProfileStoreTest {
    private static void require(boolean test, String why) {
        if (!test) { throw new AssertionError(why); }
    }

    public static void main(String[] args) throws Exception {
        Path temp = Files.createTempDirectory("pvz2-offline-local-test");
        LocalProfileStore first = new LocalProfileStore(temp.toFile());
        String originalId = first.localId();
        require(originalId.startsWith("offline-"), "Local-only ID marker");
        require(first.completedStars("WorldA.Level_1") == 0, "Fresh test level");
        require(first.recordLevelResult("WorldA.Level_1", 1), "New result");
        require(!first.recordLevelResult("WorldA.Level_1", 1), "Idempotent replay");
        require(first.recordLevelResult("WorldA.Level_1", 3), "Higher stars");
        require(!first.recordLevelResult("WorldA.Level_1", 2), "Cannot downgrade stars");

        // Simulates a clean game-process restart with no network.
        LocalProfileStore reopened = new LocalProfileStore(temp.toFile());
        require(reopened.localId().equals(originalId), "Stable local identity after restart");
        require(reopened.completedStars("WorldA.Level_1") == 3, "Progress survives restart");
        List<String> levels = reopened.completedLevelIds();
        require(levels.size() == 1 && levels.get(0).equals("WorldA.Level_1"),
                "Original level key retained");
        try {
            reopened.recordLevelResult("../escape", 1);
            throw new AssertionError("Invalid original level ID accepted");
        } catch (IllegalArgumentException expected) {
            // Expected.
        }
        require(Files.isRegularFile(temp.resolve("offline-local-profile.properties")),
                "Atomic profile persisted");
        require(!Files.exists(temp.resolve("offline-local-profile.properties.new")),
                "No orphan partial write");
        System.out.println("PASS: local-only stable player, idempotent level result, restart persistence");
    }
}
