.class public Lgbsdk/common/host/abqd;
.super Ljava/lang/Object;
.source "SoDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abqd$ab;
    }
.end annotation


# static fields
.field private static xy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lgbsdk/common/host/abqd$ab;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-static {}, Lgbsdk/common/host/abqd;->getHostAbi()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Frankie"

    if-eqz v0, :cond_3

    const-string v3, "armeabi-v7a"

    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 82
    :cond_1
    invoke-static {}, Lcom/bytedance/frankie/Frankie;->getInstance()Lcom/bytedance/frankie/Frankie;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/frankie/Frankie;->getEmulatorChecker()Lcom/bytedance/frankie/emulator/EmulatorChecker;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "SoDetector tryAdaptEmulator abort, emulatorChecker is null"

    .line 84
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-interface {p0, v1}, Lgbsdk/common/host/abqd$ab;->e([Ljava/lang/String;)V

    return-void

    .line 89
    :cond_2
    :try_start_0
    new-instance v3, Lgbsdk/common/host/abqd$1;

    invoke-direct {v3, p0}, Lgbsdk/common/host/abqd$1;-><init>(Lgbsdk/common/host/abqd$ab;)V

    invoke-interface {v0, v3}, Lcom/bytedance/frankie/emulator/EmulatorChecker;->checkEmulator(Lcom/bytedance/frankie/emulator/EmulatorCheckCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v3, "emulatorChecker.checkEmulator failed"

    .line 146
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v2, "emulatorChecker.checkEmulator"

    .line 147
    invoke-static {v2, v0}, Lgbsdk/common/host/abrt;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    invoke-interface {p0, v1}, Lgbsdk/common/host/abqd$ab;->e([Ljava/lang/String;)V

    :goto_0
    return-void

    .line 78
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SoDetector tryAdaptEmulator abort, hostAbi not armeabi-v7a but:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-interface {p0, v1}, Lgbsdk/common/host/abqd$ab;->e([Ljava/lang/String;)V

    return-void
.end method

.method public static b(Lgbsdk/common/host/abqd$ab;)V
    .locals 5

    const-string v0, "SoHotfixUtils.unLockDlMutex"

    const-string v1, "SoDetector getLoadedSo unLockDlMutex failed"

    const-string v2, "Frankie"

    if-nez p0, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-static {}, Lgbsdk/common/host/abqd;->dk()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    .line 157
    invoke-interface {p0, v0}, Lgbsdk/common/host/abqd$ab;->e([Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 162
    :try_start_0
    invoke-static {}, Lcom/bytedance/frankie/ttgame/SoHotfixUtils;->init()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "SoHotfixUtils init failed, try adapt emulator"

    .line 163
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {p0}, Lgbsdk/common/host/abqd;->a(Lgbsdk/common/host/abqd$ab;)V

    return-void

    .line 167
    :cond_2
    invoke-static {}, Lcom/bytedance/frankie/ttgame/SoHotfixUtils;->lockDlMutex()V

    const-string v4, "SoHotfixUtils.lockDlMutex"

    .line 168
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    .line 170
    invoke-static {p0}, Lgbsdk/common/host/abqd;->c(Lgbsdk/common/host/abqd$ab;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :try_start_1
    invoke-static {}, Lcom/bytedance/frankie/ttgame/SoHotfixUtils;->unLockDlMutex()V

    .line 178
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    const-string v4, "SoDetector getLoadedSo failed"

    .line 172
    invoke-static {v2, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v4, "SoDetector.getLoadedSo"

    .line 173
    invoke-static {v4, p0}, Lgbsdk/common/host/abrt;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_3

    .line 177
    :try_start_3
    invoke-static {}, Lcom/bytedance/frankie/ttgame/SoHotfixUtils;->unLockDlMutex()V

    .line 178
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 180
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void

    :catchall_2
    move-exception p0

    if-eqz v3, :cond_4

    .line 177
    :try_start_4
    invoke-static {}, Lcom/bytedance/frankie/ttgame/SoHotfixUtils;->unLockDlMutex()V

    .line 178
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    .line 180
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    :cond_4
    :goto_1
    throw p0
.end method

.method public static bo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 222
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, ".so"

    .line 225
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    const-string v0, "/"

    .line 229
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 231
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    move-object v1, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Frankie"

    const-string v2, "SoDetector extractSoName failed"

    .line 236
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "SoDetector.extractSoName"

    .line 237
    invoke-static {v0, p0}, Lgbsdk/common/host/abrt;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method

.method private static c(Lgbsdk/common/host/abqd$ab;)V
    .locals 4

    .line 191
    invoke-static {}, Lcom/bytedance/frankie/ttgame/SoHotfixUtils;->getLoadedSo()[Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v0}, Lgbsdk/common/host/abqd;->d([Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Frankie"

    if-nez v1, :cond_0

    const-string v0, "getLoadedSo invalid, try to load from maps"

    .line 193
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {}, Lcom/bytedance/frankie/ttgame/SoHotfixUtils;->getLoadedSoFromMaps()[Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoDetector jniGetLoadedSo count:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    .line 198
    invoke-interface {p0, v0}, Lgbsdk/common/host/abqd$ab;->e([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static d([Ljava/lang/String;)Z
    .locals 6

    const-string v0, "Frankie"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "loadedSoValid=false, loadedSo is null"

    .line 204
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 207
    :cond_0
    array-length v2, p0

    if-gtz v2, :cond_1

    const-string p0, "loadedSoValid=false, loadedSo is empty"

    .line 208
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 211
    :cond_1
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    if-eqz v4, :cond_2

    const-string v5, "libfrankie_sh_util.so"

    .line 212
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "loadedSoValid=false, not contains libfrankie_sh_util.so"

    .line 216
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static declared-synchronized dk()Z
    .locals 4

    const-class v0, Lgbsdk/common/host/abqd;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-boolean v1, Lgbsdk/common/host/abqd;->xy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 24
    monitor-exit v0

    return v2

    :cond_0
    :try_start_1
    const-string v1, "frankie_sh_util"

    .line 27
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    sput-boolean v2, Lgbsdk/common/host/abqd;->xy:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v2, "Frankie"

    const-string v3, "SoDetector loadUtilSo failed"

    .line 30
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v2, "SoDetector.loadUtilSo"

    .line 31
    invoke-static {v2, v1}, Lgbsdk/common/host/abrt;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    :goto_0
    sget-boolean v1, Lgbsdk/common/host/abqd;->xy:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static dl()Z
    .locals 8

    const-string v0, "SoDetector loadUtilEmulatorSo failed"

    const-string v1, "SoDetector.loadUtilEmulatorSo"

    const-string v2, "Frankie"

    const/4 v3, 0x0

    .line 38
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/frankie/Frankie;->getInstance()Lcom/bytedance/frankie/Frankie;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/frankie/Frankie;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "frankie_sh_util_emulator.so"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    .line 42
    :try_start_1
    invoke-static {}, Lcom/bytedance/frankie/Frankie;->getInstance()Lcom/bytedance/frankie/Frankie;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/frankie/Frankie;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "libfrankie_sh_util_emulator.so"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 43
    invoke-static {v5, v4}, Lgbsdk/common/host/abqc;->a(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_1

    .line 50
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v5

    .line 52
    :goto_0
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    goto :goto_2

    :catchall_1
    move-exception v6

    .line 45
    :try_start_4
    invoke-static {v2, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    invoke-static {v1, v6}, Lgbsdk/common/host/abrt;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v5, :cond_1

    .line 50
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v5

    goto :goto_0

    :catchall_3
    move-exception v4

    if-eqz v5, :cond_0

    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception v5

    .line 52
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    :cond_0
    :goto_1
    throw v4

    .line 57
    :cond_1
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 58
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_2
    const-string v4, "SoDetector loadUtilEmulatorSo, emulatorSoFile not exists"

    .line 61
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "emulatorSoFile not exists"

    .line 62
    invoke-static {v1, v4}, Lgbsdk/common/host/abrt;->M(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    return v3

    :catchall_5
    move-exception v4

    .line 66
    invoke-static {v2, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    invoke-static {v1, v4}, Lgbsdk/common/host/abrt;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method

.method public static getHostAbi()Ljava/lang/String;
    .locals 5

    .line 243
    invoke-static {}, Lgbsdk/common/host/abqd;->dk()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Frankie"

    if-nez v0, :cond_0

    const-string v0, "SoDetector getHostAbi, loadUtilSo failed"

    .line 244
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 248
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bytedance/frankie/ttgame/SoHotfixUtils;->getCurrentHostAbi()Ljava/lang/String;

    move-result-object v0

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SoDetector getHostAbi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v3, "SoDetector getHostAbi"

    .line 252
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v2, "SoDetector.getHostAbi"

    .line 253
    invoke-static {v2, v0}, Lgbsdk/common/host/abrt;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
