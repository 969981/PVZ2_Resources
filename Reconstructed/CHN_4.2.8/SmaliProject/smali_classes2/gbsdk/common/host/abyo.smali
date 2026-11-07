.class public Lgbsdk/common/host/abyo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile aLK:Lgbsdk/common/host/abyo;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final aLL:Landroid/os/Handler;

.field final cG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lgbsdk/common/host/abyv;",
            ">;"
        }
    .end annotation
.end field

.field private final dQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abyo;->a:Ljava/util/Map;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lgbsdk/common/host/abyo;->aLL:Landroid/os/Handler;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abyo;->dQ:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abyo;->cG:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lgbsdk/common/host/abyo;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Lgbsdk/common/host/abyo;->aLL:Landroid/os/Handler;

    return-object p0
.end method

.method public static hN()Lgbsdk/common/host/abyo;
    .locals 2

    .line 38
    sget-object v0, Lgbsdk/common/host/abyo;->aLK:Lgbsdk/common/host/abyo;

    if-nez v0, :cond_1

    .line 39
    const-class v0, Lgbsdk/common/host/abyo;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abyo;->aLK:Lgbsdk/common/host/abyo;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lgbsdk/common/host/abyo;

    invoke-direct {v1}, Lgbsdk/common/host/abyo;-><init>()V

    sput-object v1, Lgbsdk/common/host/abyo;->aLK:Lgbsdk/common/host/abyo;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Lgbsdk/common/host/abyo;->aLK:Lgbsdk/common/host/abyo;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 74
    iget-object v0, p0, Lgbsdk/common/host/abyo;->dQ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p0, Lgbsdk/common/host/abyo;->aLL:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    :cond_0
    new-instance v0, Lgbsdk/common/host/abyo$2;

    invoke-direct {v0, p0, p1}, Lgbsdk/common/host/abyo$2;-><init>(Lgbsdk/common/host/abyo;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lgbsdk/common/host/abyo;->dQ:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object p1, p0, Lgbsdk/common/host/abyo;->aLL:Landroid/os/Handler;

    const-wide/32 v1, 0x1b7740

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method final declared-synchronized i(Ljava/lang/String;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "Zeus/download_zeus"

    const-string v1, "start asyncFetchPlugins:"

    .line 55
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/volcengine/zeus/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lgbsdk/common/host/abyo;->cG:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 57
    monitor-exit p0

    return-void

    .line 59
    :cond_0
    :try_start_1
    new-instance v0, Lgbsdk/common/host/abyp;

    invoke-direct {v0, p0, p2, p1}, Lgbsdk/common/host/abyp;-><init>(Lgbsdk/common/host/abyo;ZLjava/lang/String;)V

    .line 60
    iget-object p2, p0, Lgbsdk/common/host/abyo;->cG:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance p1, Lgbsdk/common/host/abyo$1;

    invoke-direct {p1, p0, v0}, Lgbsdk/common/host/abyo$1;-><init>(Lgbsdk/common/host/abyo;Lgbsdk/common/host/abyp;)V

    invoke-static {p1}, Lgbsdk/common/host/abxy;->d(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
