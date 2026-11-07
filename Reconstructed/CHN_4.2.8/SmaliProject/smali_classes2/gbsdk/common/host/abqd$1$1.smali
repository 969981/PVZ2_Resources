.class public Lgbsdk/common/host/abqd$1$1;
.super Ljava/lang/Object;
.source "SoDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abqd$1;->onSuccess(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic xA:Lgbsdk/common/host/abqd$1;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abqd$1;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lgbsdk/common/host/abqd$1$1;->xA:Lgbsdk/common/host/abqd$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "SoHotfixEmulatorUtils.unLockEmulatorDlMutex"

    const-string v1, "SoDetector unLockEmulatorDlMutex failed"

    const-string v2, "Frankie"

    const-string v3, "SoDetector checkEmulator onSuccess, new Thread run"

    .line 101
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Lgbsdk/common/host/abqd;->dl()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v0, "SoDetector tryAdaptEmulator abort, loadUtilEmulatorSo failed"

    .line 103
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lgbsdk/common/host/abqd$1$1;->xA:Lgbsdk/common/host/abqd$1;

    iget-object v0, v0, Lgbsdk/common/host/abqd$1;->xz:Lgbsdk/common/host/abqd$ab;

    invoke-interface {v0, v4}, Lgbsdk/common/host/abqd$ab;->e([Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 110
    :try_start_0
    invoke-static {}, Lcom/bytedance/frankie/ttgame/SoHotfixEmulatorUtils;->initEmulator()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "SoHotfixEmulatorUtils initEmulator failed"

    .line 111
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v5, p0, Lgbsdk/common/host/abqd$1$1;->xA:Lgbsdk/common/host/abqd$1;

    iget-object v5, v5, Lgbsdk/common/host/abqd$1;->xz:Lgbsdk/common/host/abqd$ab;

    invoke-interface {v5, v4}, Lgbsdk/common/host/abqd$ab;->e([Ljava/lang/String;)V

    return-void

    .line 115
    :cond_1
    invoke-static {}, Lcom/bytedance/frankie/ttgame/SoHotfixEmulatorUtils;->lockEmulatorDlMutex()V

    const-string v5, "SoHotfixEmulatorUtils.lockEmulatorDlMutex"

    .line 116
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    .line 119
    invoke-static {}, Lcom/bytedance/frankie/ttgame/SoHotfixUtils;->getLoadedSoFromMaps()[Ljava/lang/String;

    move-result-object v5

    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLoadedSoFromMaps count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    array-length v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v4, p0, Lgbsdk/common/host/abqd$1$1;->xA:Lgbsdk/common/host/abqd$1;

    iget-object v4, v4, Lgbsdk/common/host/abqd$1;->xz:Lgbsdk/common/host/abqd$ab;

    invoke-interface {v4, v5}, Lgbsdk/common/host/abqd$ab;->e([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :try_start_1
    invoke-static {}, Lcom/bytedance/frankie/ttgame/SoHotfixEmulatorUtils;->unLockEmulatorDlMutex()V

    .line 129
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_2
    const-string v5, "SoDetector tryAdaptEmulator failed"

    .line 123
    invoke-static {v2, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v5, "SoDetector.tryAdaptEmulator"

    .line 124
    invoke-static {v5, v4}, Lgbsdk/common/host/abrt;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_3

    .line 128
    :try_start_3
    invoke-static {}, Lcom/bytedance/frankie/ttgame/SoHotfixEmulatorUtils;->unLockEmulatorDlMutex()V

    .line 129
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 131
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void

    :catchall_2
    move-exception v4

    if-eqz v3, :cond_4

    .line 128
    :try_start_4
    invoke-static {}, Lcom/bytedance/frankie/ttgame/SoHotfixEmulatorUtils;->unLockEmulatorDlMutex()V

    .line 129
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    .line 131
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    :cond_4
    :goto_2
    throw v4
.end method
