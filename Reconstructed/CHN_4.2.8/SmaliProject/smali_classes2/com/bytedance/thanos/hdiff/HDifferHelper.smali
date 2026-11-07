.class public Lcom/bytedance/thanos/hdiff/HDifferHelper;
.super Ljava/lang/Object;
.source "HDifferHelper.java"


# static fields
.field public static sCurrentProcess:F = -1.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "hdiffpatch"

    .line 22
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized hpatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const-class v0, Lcom/bytedance/thanos/hdiff/HDifferHelper;

    monitor-enter v0

    .line 36
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/16 p0, 0x12e

    .line 42
    monitor-exit v0

    return p0

    .line 44
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    const/16 p0, 0x12f

    .line 46
    monitor-exit v0

    return p0

    .line 50
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/bytedance/thanos/hdiff/HDifferHelper;->startAutoProgress()V

    .line 53
    invoke-static {p0, p1, p2}, Lcom/bytedance/thanos/hdiff/HDifferHelper;->patch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 56
    :goto_0
    invoke-static {p1}, Lcom/bytedance/thanos/hdiff/HDifferHelper;->stopAutoProgress(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    monitor-exit v0

    return p0

    :cond_4
    :goto_1
    const/16 p0, 0x12d

    .line 38
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static native patch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static startAutoProgress()V
    .locals 2

    const/4 v0, 0x0

    .line 84
    sput v0, Lcom/bytedance/thanos/hdiff/HDifferHelper;->sCurrentProcess:F

    .line 85
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bytedance/thanos/hdiff/HDifferHelper$1;

    invoke-direct {v1}, Lcom/bytedance/thanos/hdiff/HDifferHelper$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 106
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static stopAutoProgress(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/high16 p0, 0x42c80000    # 100.0f

    .line 76
    sput p0, Lcom/bytedance/thanos/hdiff/HDifferHelper;->sCurrentProcess:F

    .line 77
    invoke-static {p0}, Lcom/bytedance/thanos/hdiff/HDifferHelper;->updateProcess(F)V

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    .line 79
    sput p0, Lcom/bytedance/thanos/hdiff/HDifferHelper;->sCurrentProcess:F

    return-void
.end method

.method public static updateProcess(F)V
    .locals 2

    .line 111
    invoke-static {}, Lgbsdk/common/host/absp;->dK()Lgbsdk/common/host/absp;

    move-result-object v0

    iget-object v0, v0, Lgbsdk/common/host/absp;->AS:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/absp$ab;

    .line 116
    invoke-interface {v1, p0}, Lgbsdk/common/host/absp$ab;->c(F)V

    goto :goto_0

    :cond_0
    return-void
.end method
