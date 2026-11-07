.class public Lgbsdk/common/host/aboa;
.super Ljava/lang/Object;
.source "ThreadWithHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/aboa$ad;,
        Lgbsdk/common/host/aboa$ab;,
        Lgbsdk/common/host/aboa$ac;
    }
.end annotation


# static fields
.field static final uI:Lgbsdk/common/host/abmw$ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/common/host/abmw$ab<",
            "Lgbsdk/common/host/aboa$ad;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static final uJ:Lgbsdk/common/host/abmw$ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/common/host/abmw$ab<",
            "Landroid/os/Message;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Landroid/os/HandlerThread;

.field private final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lgbsdk/common/host/aboa$ad;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Landroid/os/Handler;

.field private final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lgbsdk/common/host/aboa$1;

    invoke-direct {v0}, Lgbsdk/common/host/aboa$1;-><init>()V

    sput-object v0, Lgbsdk/common/host/aboa;->uI:Lgbsdk/common/host/abmw$ab;

    .line 84
    new-instance v0, Lgbsdk/common/host/aboa$2;

    invoke-direct {v0}, Lgbsdk/common/host/aboa$2;-><init>()V

    sput-object v0, Lgbsdk/common/host/aboa;->uJ:Lgbsdk/common/host/abmw$ab;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/aboa;->d:Ljava/util/Queue;

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/aboa;->e:Ljava/util/Queue;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/aboa;->g:Ljava/lang/Object;

    .line 32
    new-instance v0, Lgbsdk/common/host/aboa$ac;

    invoke-direct {v0, p0, p1}, Lgbsdk/common/host/aboa$ac;-><init>(Lgbsdk/common/host/aboa;Ljava/lang/String;)V

    iput-object v0, p0, Lgbsdk/common/host/aboa;->c:Landroid/os/HandlerThread;

    return-void
.end method

.method static synthetic a(Lgbsdk/common/host/aboa;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 17
    iput-object p1, p0, Lgbsdk/common/host/aboa;->f:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lgbsdk/common/host/aboa;)Ljava/lang/Object;
    .locals 0

    .line 17
    iget-object p0, p0, Lgbsdk/common/host/aboa;->g:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lgbsdk/common/host/aboa;)Landroid/os/Handler;
    .locals 0

    .line 17
    iget-object p0, p0, Lgbsdk/common/host/aboa;->f:Landroid/os/Handler;

    return-object p0
.end method

.method private c(Ljava/lang/Runnable;)Landroid/os/Message;
    .locals 1

    .line 40
    iget-object v0, p0, Lgbsdk/common/host/aboa;->f:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lgbsdk/common/host/aboa;)Ljava/util/Queue;
    .locals 0

    .line 17
    iget-object p0, p0, Lgbsdk/common/host/aboa;->d:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic d(Lgbsdk/common/host/aboa;)Ljava/util/Queue;
    .locals 0

    .line 17
    iget-object p0, p0, Lgbsdk/common/host/aboa;->e:Ljava/util/Queue;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 36
    iget-object v0, p0, Lgbsdk/common/host/aboa;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public final a(Landroid/os/Message;J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    .line 130
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lgbsdk/common/host/aboa;->b(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Runnable;)Z
    .locals 2

    .line 50
    invoke-direct {p0, p1}, Lgbsdk/common/host/aboa;->c(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lgbsdk/common/host/aboa;->a(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Runnable;J)Z
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lgbsdk/common/host/aboa;->c(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lgbsdk/common/host/aboa;->a(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lgbsdk/common/host/aboa;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbsdk/common/host/aboa;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/aboa;->d:Ljava/util/Queue;

    sget-object v1, Lgbsdk/common/host/aboa;->uI:Lgbsdk/common/host/abmw$ab;

    invoke-static {v0, p1, v1}, Lgbsdk/common/host/abmw;->a(Ljava/util/Collection;Ljava/lang/Object;Lgbsdk/common/host/abmw$ab;)Z

    .line 98
    iget-object v0, p0, Lgbsdk/common/host/aboa;->e:Ljava/util/Queue;

    sget-object v1, Lgbsdk/common/host/aboa;->uJ:Lgbsdk/common/host/abmw$ab;

    invoke-static {v0, p1, v1}, Lgbsdk/common/host/abmw;->a(Ljava/util/Collection;Ljava/lang/Object;Lgbsdk/common/host/abmw$ab;)Z

    .line 100
    :cond_1
    iget-object v0, p0, Lgbsdk/common/host/aboa;->f:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lgbsdk/common/host/aboa;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public final b(Landroid/os/Message;J)Z
    .locals 3

    .line 134
    iget-object v0, p0, Lgbsdk/common/host/aboa;->f:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lgbsdk/common/host/aboa;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/aboa;->f:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 137
    iget-object v1, p0, Lgbsdk/common/host/aboa;->d:Ljava/util/Queue;

    new-instance v2, Lgbsdk/common/host/aboa$ad;

    invoke-direct {v2, p1, p2, p3}, Lgbsdk/common/host/aboa$ad;-><init>(Landroid/os/Message;J)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 138
    monitor-exit v0

    return p1

    .line 140
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 143
    :cond_1
    :goto_0
    iget-object v0, p0, Lgbsdk/common/host/aboa;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method
