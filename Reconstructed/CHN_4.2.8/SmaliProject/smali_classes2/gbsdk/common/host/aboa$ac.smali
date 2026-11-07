.class public Lgbsdk/common/host/aboa$ac;
.super Landroid/os/HandlerThread;
.source "ThreadWithHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/aboa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ac"
.end annotation


# instance fields
.field final synthetic uK:Lgbsdk/common/host/aboa;


# direct methods
.method constructor <init>(Lgbsdk/common/host/aboa;Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lgbsdk/common/host/aboa$ac;->uK:Lgbsdk/common/host/aboa;

    .line 161
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 3

    .line 170
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 171
    iget-object v0, p0, Lgbsdk/common/host/aboa$ac;->uK:Lgbsdk/common/host/aboa;

    invoke-static {v0}, Lgbsdk/common/host/aboa;->a(Lgbsdk/common/host/aboa;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/aboa$ac;->uK:Lgbsdk/common/host/aboa;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {v1, v2}, Lgbsdk/common/host/aboa;->a(Lgbsdk/common/host/aboa;Landroid/os/Handler;)Landroid/os/Handler;

    .line 173
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    iget-object v0, p0, Lgbsdk/common/host/aboa$ac;->uK:Lgbsdk/common/host/aboa;

    invoke-static {v0}, Lgbsdk/common/host/aboa;->b(Lgbsdk/common/host/aboa;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lgbsdk/common/host/aboa$ab;

    iget-object v2, p0, Lgbsdk/common/host/aboa$ac;->uK:Lgbsdk/common/host/aboa;

    invoke-direct {v1, v2}, Lgbsdk/common/host/aboa$ab;-><init>(Lgbsdk/common/host/aboa;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    :catchall_0
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 173
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
