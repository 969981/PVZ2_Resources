.class public Lgbsdk/common/host/abgw;
.super Ljava/lang/Thread;
.source "ApiLocalDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApiLocalDispatcher"


# instance fields
.field private final gG:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lgbsdk/common/host/abju;",
            ">;"
        }
    .end annotation
.end field

.field private final gH:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lgbsdk/common/host/abju;",
            ">;"
        }
    .end annotation
.end field

.field private volatile gI:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lgbsdk/common/host/abju;",
            ">;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lgbsdk/common/host/abju;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ApiLocalDispatcher-Thread"

    .line 35
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lgbsdk/common/host/abgw;->gI:Z

    .line 36
    iput-object p1, p0, Lgbsdk/common/host/abgw;->gG:Ljava/util/concurrent/BlockingQueue;

    .line 37
    iput-object p2, p0, Lgbsdk/common/host/abgw;->gH:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public be()V
    .locals 1

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lgbsdk/common/host/abgw;->gI:Z

    .line 46
    invoke-virtual {p0}, Lgbsdk/common/host/abgw;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 8

    const-string v0, "ApiLocalDispatcher"

    const/16 v1, 0xa

    .line 51
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 56
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/abgw;->gG:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abju;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .line 67
    instance-of v3, v1, Lgbsdk/common/host/abgy;

    if-eqz v3, :cond_1

    .line 68
    move-object v2, v1

    check-cast v2, Lgbsdk/common/host/abgy;

    :cond_1
    if-nez v2, :cond_2

    goto :goto_0

    .line 74
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 75
    iget-object v3, v2, Lgbsdk/common/host/abgy;->mName:Ljava/lang/String;

    .line 78
    :try_start_1
    invoke-virtual {v2}, Lgbsdk/common/host/abgy;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 83
    :cond_3
    invoke-static {v3}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v1}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 84
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ApiLocalDispatcher-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 86
    :cond_4
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 87
    iget-object v4, p0, Lgbsdk/common/host/abgw;->gG:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    .line 88
    iget-object v5, p0, Lgbsdk/common/host/abgw;->gH:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v5

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "run4Local "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", queue size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_5
    invoke-virtual {v2}, Lgbsdk/common/host/abgy;->bi()Z

    move-result v4

    if-nez v4, :cond_7

    .line 96
    invoke-virtual {v2}, Lgbsdk/common/host/abgy;->bf()Lgbsdk/common/host/abju$ab;

    move-result-object v4

    sget-object v5, Lgbsdk/common/host/abju$ab;->gS:Lgbsdk/common/host/abju$ab;

    if-ne v4, v5, :cond_6

    .line 97
    invoke-static {v2}, Lcom/bytedance/common/utility/concurrent/ThreadPlus;->submitRunnable(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 99
    :cond_6
    iget-object v4, p0, Lgbsdk/common/host/abgw;->gH:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/common/utility/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_7
    :goto_1
    invoke-static {v3}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    nop

    .line 61
    iget-boolean v1, p0, Lgbsdk/common/host/abgw;->gI:Z

    if-eqz v1, :cond_0

    return-void
.end method
