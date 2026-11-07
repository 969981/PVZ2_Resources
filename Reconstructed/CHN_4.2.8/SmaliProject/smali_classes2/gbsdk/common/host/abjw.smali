.class public Lgbsdk/common/host/abjw;
.super Ljava/lang/Object;
.source "NetThreadPoolManager.java"

# interfaces
.implements Lcom/bytedance/common/utility/collection/WeakHandler$IHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abjw$ac;,
        Lgbsdk/common/host/abjw$ab;
    }
.end annotation


# static fields
.field private static final gU:I = 0x0

.field private static final gV:I = 0x1

.field private static ha:Ljava/util/concurrent/atomic/AtomicInteger;

.field static hb:Lgbsdk/common/host/abjw;


# instance fields
.field private gW:Ljava/util/concurrent/ThreadPoolExecutor;

.field private gX:Ljava/util/concurrent/ThreadPoolExecutor;

.field private gY:Ljava/util/concurrent/ThreadPoolExecutor;

.field private gZ:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lgbsdk/common/host/abjw;->ha:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    new-instance v0, Lgbsdk/common/host/abjw;

    invoke-direct {v0}, Lgbsdk/common/host/abjw;-><init>()V

    sput-object v0, Lgbsdk/common/host/abjw;->hb:Lgbsdk/common/host/abjw;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/bytedance/common/utility/collection/WeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/common/utility/collection/WeakHandler;-><init>(Landroid/os/Looper;Lcom/bytedance/common/utility/collection/WeakHandler$IHandler;)V

    iput-object v0, p0, Lgbsdk/common/host/abjw;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    return-void
.end method

.method private static bk()I
    .locals 1

    .line 32
    sget-object v0, Lgbsdk/common/host/abjw;->ha:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method private bl()Lgbsdk/common/host/abjq;
    .locals 1

    .line 39
    invoke-static {}, Lgbsdk/common/host/abjr;->bl()Lgbsdk/common/host/abjq;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized bo()Ljava/util/concurrent/ExecutorService;
    .locals 9

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abjw;->gY:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 69
    invoke-direct {p0}, Lgbsdk/common/host/abjw;->bl()Lgbsdk/common/host/abjq;

    move-result-object v0

    iget-object v0, v0, Lgbsdk/common/host/abjq;->hn:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lgbsdk/common/host/abjw;->gY:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0}, Lgbsdk/common/host/abjw;->bl()Lgbsdk/common/host/abjq;

    move-result-object v1

    iget v2, v1, Lgbsdk/common/host/abjq;->hr:I

    .line 72
    invoke-direct {p0}, Lgbsdk/common/host/abjw;->bl()Lgbsdk/common/host/abjq;

    move-result-object v1

    iget v3, v1, Lgbsdk/common/host/abjq;->hp:I

    invoke-direct {p0}, Lgbsdk/common/host/abjw;->bl()Lgbsdk/common/host/abjq;

    move-result-object v1

    iget-wide v4, v1, Lgbsdk/common/host/abjq;->ht:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lgbsdk/common/host/abjw$ac;

    const-string v1, "NetDownload"

    invoke-direct {v8, v1}, Lgbsdk/common/host/abjw$ac;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lgbsdk/common/host/abjw;->gY:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 74
    invoke-static {}, Lgbsdk/common/host/abjr;->bl()Lgbsdk/common/host/abjq;

    move-result-object v1

    iget-boolean v1, v1, Lgbsdk/common/host/abjq;->hv:Z

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 77
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abjw;->gY:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized bp()Ljava/util/concurrent/ExecutorService;
    .locals 9

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abjw;->gZ:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0}, Lgbsdk/common/host/abjw;->bl()Lgbsdk/common/host/abjq;

    move-result-object v0

    iget-object v0, v0, Lgbsdk/common/host/abjq;->hl:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lgbsdk/common/host/abjw;->gZ:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {p0}, Lgbsdk/common/host/abjw;->bl()Lgbsdk/common/host/abjq;

    move-result-object v1

    iget-wide v4, v1, Lgbsdk/common/host/abjq;->hu:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lgbsdk/common/host/abjw$ac;

    const-string v1, "NetLocal"

    invoke-direct {v8, v1}, Lgbsdk/common/host/abjw$ac;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lgbsdk/common/host/abjw;->gZ:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 88
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abjw;->gZ:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e(Lgbsdk/common/host/abjv;)Lgbsdk/common/host/abjw$ab;
    .locals 1

    .line 144
    new-instance v0, Lgbsdk/common/host/abjw$1;

    invoke-direct {v0, p0, p1, p1}, Lgbsdk/common/host/abjw$1;-><init>(Lgbsdk/common/host/abjw;Lgbsdk/common/host/abjv;Lgbsdk/common/host/abjv;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized bm()Ljava/util/concurrent/ExecutorService;
    .locals 9

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abjw;->gW:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 44
    invoke-direct {p0}, Lgbsdk/common/host/abjw;->bl()Lgbsdk/common/host/abjq;

    move-result-object v0

    iget-object v0, v0, Lgbsdk/common/host/abjq;->hk:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lgbsdk/common/host/abjw;->gW:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    .line 47
    invoke-direct {p0}, Lgbsdk/common/host/abjw;->bl()Lgbsdk/common/host/abjq;

    move-result-object v1

    iget-wide v4, v1, Lgbsdk/common/host/abjq;->hu:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lgbsdk/common/host/abjw$ac;

    const-string v1, "NetImmediate"

    invoke-direct {v8, v1}, Lgbsdk/common/host/abjw$ac;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lgbsdk/common/host/abjw;->gW:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 51
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abjw;->gW:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized bn()Ljava/util/concurrent/ExecutorService;
    .locals 9

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abjw;->gX:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 56
    invoke-direct {p0}, Lgbsdk/common/host/abjw;->bl()Lgbsdk/common/host/abjq;

    move-result-object v0

    iget-object v0, v0, Lgbsdk/common/host/abjq;->hm:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lgbsdk/common/host/abjw;->gX:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0}, Lgbsdk/common/host/abjw;->bl()Lgbsdk/common/host/abjq;

    move-result-object v1

    iget v2, v1, Lgbsdk/common/host/abjq;->hq:I

    .line 59
    invoke-direct {p0}, Lgbsdk/common/host/abjw;->bl()Lgbsdk/common/host/abjq;

    move-result-object v1

    iget v3, v1, Lgbsdk/common/host/abjq;->ho:I

    invoke-direct {p0}, Lgbsdk/common/host/abjw;->bl()Lgbsdk/common/host/abjq;

    move-result-object v1

    iget-wide v4, v1, Lgbsdk/common/host/abjq;->hs:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lgbsdk/common/host/abjw$ac;

    const-string v1, "NetNormal"

    invoke-direct {v8, v1}, Lgbsdk/common/host/abjw$ac;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lgbsdk/common/host/abjw;->gX:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 61
    invoke-static {}, Lgbsdk/common/host/abjr;->bl()Lgbsdk/common/host/abjq;

    move-result-object v1

    iget-boolean v1, v1, Lgbsdk/common/host/abjq;->hv:Z

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 64
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abjw;->gX:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c(Lgbsdk/common/host/abjv;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 92
    invoke-virtual {p1}, Lgbsdk/common/host/abjv;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {}, Lgbsdk/common/host/abjw;->bk()I

    move-result v0

    invoke-virtual {p1, v0}, Lgbsdk/common/host/abjv;->p(I)Lgbsdk/common/host/abjv;

    .line 96
    invoke-virtual {p1}, Lgbsdk/common/host/abjv;->bf()Lgbsdk/common/host/abju$ab;

    move-result-object v0

    sget-object v1, Lgbsdk/common/host/abju$ab;->gS:Lgbsdk/common/host/abju$ab;

    if-ne v0, v1, :cond_1

    .line 97
    invoke-virtual {p0}, Lgbsdk/common/host/abjw;->bm()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 99
    :cond_1
    iget v0, p1, Lgbsdk/common/host/abjv;->gN:I

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 101
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    .line 102
    iput v3, v2, Landroid/os/Message;->what:I

    .line 103
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 104
    iget-object p1, p0, Lgbsdk/common/host/abjw;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    invoke-virtual {p1, v2, v0, v1}, Lcom/bytedance/common/utility/collection/WeakHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 106
    :cond_2
    invoke-direct {p0}, Lgbsdk/common/host/abjw;->bo()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method d(Lgbsdk/common/host/abjv;)V
    .locals 5

    if-eqz p1, :cond_4

    .line 112
    invoke-virtual {p1}, Lgbsdk/common/host/abjv;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {}, Lgbsdk/common/host/abjw;->bk()I

    move-result v0

    invoke-virtual {p1, v0}, Lgbsdk/common/host/abjv;->p(I)Lgbsdk/common/host/abjv;

    .line 116
    invoke-virtual {p1}, Lgbsdk/common/host/abjv;->bj()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-direct {p0}, Lgbsdk/common/host/abjw;->bp()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1}, Lgbsdk/common/host/abjw;->e(Lgbsdk/common/host/abjv;)Lgbsdk/common/host/abjw$ab;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p1}, Lgbsdk/common/host/abjv;->bf()Lgbsdk/common/host/abju$ab;

    move-result-object v0

    sget-object v1, Lgbsdk/common/host/abju$ab;->gS:Lgbsdk/common/host/abju$ab;

    if-ne v0, v1, :cond_2

    .line 120
    invoke-virtual {p0}, Lgbsdk/common/host/abjw;->bm()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 122
    :cond_2
    iget v0, p1, Lgbsdk/common/host/abjv;->gN:I

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 124
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x0

    .line 125
    iput v3, v2, Landroid/os/Message;->what:I

    .line 126
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    iget-object p1, p0, Lgbsdk/common/host/abjw;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    invoke-virtual {p1, v2, v0, v1}, Lcom/bytedance/common/utility/collection/WeakHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 129
    :cond_3
    invoke-virtual {p0}, Lgbsdk/common/host/abjw;->bn()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 168
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0}, Lgbsdk/common/host/abjw;->bm()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {p0}, Lgbsdk/common/host/abjw;->bn()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 183
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
