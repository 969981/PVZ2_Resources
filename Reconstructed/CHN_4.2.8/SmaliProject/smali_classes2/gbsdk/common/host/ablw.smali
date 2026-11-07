.class public Lgbsdk/common/host/ablw;
.super Ljava/lang/Object;
.source "HostResolveManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final pv:I = 0x14


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private pm:Lgbsdk/common/host/abld;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/common/host/abld<",
            "Ljava/lang/String;",
            "Lgbsdk/common/host/abix;",
            ">;"
        }
    .end annotation
.end field

.field private pn:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lgbsdk/common/host/abix;",
            ">;"
        }
    .end annotation
.end field

.field private po:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private pp:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private pq:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Lgbsdk/common/host/ablx;",
            ">;>;"
        }
    .end annotation
.end field

.field private pr:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Lgbsdk/common/host/ablx;",
            ">;>;"
        }
    .end annotation
.end field

.field private ps:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pt:Ljava/util/concurrent/atomic/AtomicInteger;

.field public pu:Ljava/util/concurrent/atomic/AtomicInteger;

.field private pw:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

.field private final px:J

.field private final py:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lgbsdk/common/host/ablw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/ablw;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lgbsdk/common/host/abld;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lgbsdk/common/host/abld;-><init>(I)V

    iput-object v0, p0, Lgbsdk/common/host/ablw;->pm:Lgbsdk/common/host/abld;

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/ablw;->pn:Ljava/util/concurrent/ConcurrentMap;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/ablw;->po:Ljava/util/concurrent/ConcurrentMap;

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/ablw;->pp:Ljava/util/concurrent/ConcurrentMap;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/ablw;->pq:Ljava/util/concurrent/ConcurrentMap;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/ablw;->pr:Ljava/util/concurrent/ConcurrentMap;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/ablw;->ps:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lgbsdk/common/host/ablw;->pt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lgbsdk/common/host/ablw;->pu:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    sget-object v0, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->NONE:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    iput-object v0, p0, Lgbsdk/common/host/ablw;->pw:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    const-wide/32 v0, 0x2bf20

    .line 42
    iput-wide v0, p0, Lgbsdk/common/host/ablw;->px:J

    const/16 v0, 0xa

    .line 43
    iput v0, p0, Lgbsdk/common/host/ablw;->py:I

    .line 47
    iput-object p1, p0, Lgbsdk/common/host/ablw;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public L(Landroid/content/Context;)V
    .locals 4

    .line 51
    invoke-static {p1}, Lcom/bytedance/common/utility/NetworkUtils;->getNetworkType(Landroid/content/Context;)Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    move-result-object p1

    .line 52
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pw:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    if-eq p1, v0, :cond_5

    .line 53
    sget-object v0, Lgbsdk/common/host/ablw;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network changed, clear cache and re-batch-preload preload hosts, current net type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pm:Lgbsdk/common/host/abld;

    iget-object v0, v0, Lgbsdk/common/host/abld;->kJ:Ljava/util/Map;

    .line 56
    monitor-enter v0

    .line 57
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/ablw;->pm:Lgbsdk/common/host/abld;

    iget-object v1, v1, Lgbsdk/common/host/abld;->kJ:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    .line 59
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object v3

    iget-object v3, v3, Lgbsdk/common/host/ablz;->pP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbsdk/common/host/abix;

    invoke-virtual {v2}, Lgbsdk/common/host/abix;->cc()V

    goto :goto_0

    .line 62
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbsdk/common/host/abix;

    invoke-virtual {v2}, Lgbsdk/common/host/abix;->cd()V

    goto :goto_0

    .line 66
    :cond_2
    iget-object v1, p0, Lgbsdk/common/host/ablw;->pm:Lgbsdk/common/host/abld;

    invoke-virtual {v1}, Lgbsdk/common/host/abld;->evictAll()V

    .line 67
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pn:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_3

    .line 70
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abix;

    invoke-virtual {v1}, Lgbsdk/common/host/abix;->cf()V

    goto :goto_1

    .line 73
    :cond_4
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pn:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 75
    sget-object v0, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->NONE:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    if-eq p1, v0, :cond_5

    .line 76
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object v0

    sget-object v1, Lgbsdk/common/host/abix$ab;->oT:Lgbsdk/common/host/abix$ab;

    invoke-virtual {v0, v1}, Lgbsdk/common/host/ablz;->a(Lgbsdk/common/host/abix$ab;)V

    .line 77
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/common/host/ablz;->cl()V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 67
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 80
    :cond_5
    :goto_2
    iput-object p1, p0, Lgbsdk/common/host/ablw;->pw:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    return-void
.end method

.method public a(Ljava/lang/String;Lgbsdk/common/host/abix;)V
    .locals 2

    .line 84
    invoke-virtual {p0, p1}, Lgbsdk/common/host/ablw;->ad(Ljava/lang/String;)Lgbsdk/common/host/abix;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object v1

    iget-object v1, v1, Lgbsdk/common/host/ablz;->pP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {v0}, Lgbsdk/common/host/abix;->cc()V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v0}, Lgbsdk/common/host/abix;->cd()V

    .line 92
    :cond_1
    :goto_0
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object v0

    iget-object v0, v0, Lgbsdk/common/host/ablz;->pP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {p2}, Lgbsdk/common/host/abix;->ca()V

    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {p2}, Lgbsdk/common/host/abix;->cb()V

    .line 97
    :goto_1
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pm:Lgbsdk/common/host/abld;

    iget-object v0, v0, Lgbsdk/common/host/abld;->kJ:Ljava/util/Map;

    .line 98
    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/ablw;->pm:Lgbsdk/common/host/abld;

    invoke-virtual {v1, p1, p2}, Lgbsdk/common/host/abld;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lgbsdk/common/host/ablx;)V
    .locals 1

    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pq:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pq:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    .line 192
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object p2, p0, Lgbsdk/common/host/ablw;->pq:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lgbsdk/common/host/ablw;->po:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public ac(Ljava/lang/String;)V
    .locals 2

    .line 104
    invoke-virtual {p0, p1}, Lgbsdk/common/host/ablw;->ad(Ljava/lang/String;)Lgbsdk/common/host/abix;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object v1

    iget-object v1, v1, Lgbsdk/common/host/ablz;->pP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v0}, Lgbsdk/common/host/abix;->cc()V

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v0}, Lgbsdk/common/host/abix;->cd()V

    .line 111
    :goto_0
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pm:Lgbsdk/common/host/abld;

    iget-object v0, v0, Lgbsdk/common/host/abld;->kJ:Ljava/util/Map;

    .line 112
    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/ablw;->pm:Lgbsdk/common/host/abld;

    invoke-virtual {v1, p1}, Lgbsdk/common/host/abld;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public ad(Ljava/lang/String;)Lgbsdk/common/host/abix;
    .locals 2

    .line 119
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pm:Lgbsdk/common/host/abld;

    iget-object v0, v0, Lgbsdk/common/host/abld;->kJ:Ljava/util/Map;

    .line 120
    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/ablw;->pm:Lgbsdk/common/host/abld;

    invoke-virtual {v1, p1}, Lgbsdk/common/host/abld;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgbsdk/common/host/abix;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 122
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ae(Ljava/lang/String;)V
    .locals 1

    .line 135
    invoke-virtual {p0, p1}, Lgbsdk/common/host/ablw;->af(Ljava/lang/String;)Lgbsdk/common/host/abix;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lgbsdk/common/host/abix;->cf()V

    .line 138
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pn:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public af(Ljava/lang/String;)Lgbsdk/common/host/abix;
    .locals 1

    .line 143
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pn:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pn:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgbsdk/common/host/abix;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public ag(Ljava/lang/String;)Z
    .locals 1

    .line 150
    iget-object v0, p0, Lgbsdk/common/host/ablw;->po:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public ah(Ljava/lang/String;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lgbsdk/common/host/ablw;->po:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public ai(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lgbsdk/common/host/ablw;->po:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lgbsdk/common/host/ablw;->po:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public aj(Ljava/lang/String;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pp:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public ak(Ljava/lang/String;)Z
    .locals 1

    .line 177
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pp:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public al(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pp:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pp:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public am(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentSkipListSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Lgbsdk/common/host/ablx;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pq:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentSkipListSet;

    return-object p1
.end method

.method public an(Ljava/lang/String;)Z
    .locals 1

    .line 202
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pq:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public ao(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentSkipListSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Lgbsdk/common/host/ablx;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pr:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentSkipListSet;

    return-object p1
.end method

.method public ap(Ljava/lang/String;)Z
    .locals 1

    .line 234
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pr:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public aq(Ljava/lang/String;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lgbsdk/common/host/ablw;->ps:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object p1, p0, Lgbsdk/common/host/ablw;->ps:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    move-result p1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    return-void

    .line 256
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 257
    iget-object v0, p0, Lgbsdk/common/host/ablw;->ps:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablz;->i(Ljava/util/List;)V

    return-void
.end method

.method public ar(Ljava/lang/String;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lgbsdk/common/host/ablw;->ps:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lgbsdk/common/host/ablw;->ps:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Lgbsdk/common/host/abix;)V
    .locals 1

    .line 126
    invoke-virtual {p0, p1}, Lgbsdk/common/host/ablw;->af(Ljava/lang/String;)Lgbsdk/common/host/abix;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Lgbsdk/common/host/abix;->cf()V

    .line 130
    :cond_0
    invoke-virtual {p2}, Lgbsdk/common/host/abix;->ce()V

    .line 131
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pn:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;Lgbsdk/common/host/ablx;)V
    .locals 1

    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pr:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pr:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    .line 224
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object p2, p0, Lgbsdk/common/host/ablw;->pr:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pp:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lgbsdk/common/host/ablx;)Z
    .locals 2

    .line 206
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pq:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p1, Lgbsdk/common/host/ablx;->oG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbsdk/common/host/ablw;->pq:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p1, Lgbsdk/common/host/ablx;->oG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Lgbsdk/common/host/ablx;)V
    .locals 2

    .line 210
    iget-object v0, p1, Lgbsdk/common/host/ablx;->oG:Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lgbsdk/common/host/ablw;->pq:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lgbsdk/common/host/ablw;->pq:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    .line 213
    iget-object p1, p0, Lgbsdk/common/host/ablw;->pq:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lgbsdk/common/host/ablw;->pq:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method cg()V
    .locals 1

    .line 272
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    return-void
.end method

.method ch()V
    .locals 4

    .line 280
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pu:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 281
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pu:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 282
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x14

    .line 283
    iput v1, v0, Landroid/os/Message;->what:I

    .line 284
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 285
    iget-object v1, p0, Lgbsdk/common/host/ablw;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method ci()V
    .locals 2

    .line 290
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pu:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public d(Lgbsdk/common/host/ablx;)Z
    .locals 2

    .line 238
    iget-object v0, p0, Lgbsdk/common/host/ablw;->pr:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p1, Lgbsdk/common/host/ablx;->oG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbsdk/common/host/ablw;->pr:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p1, Lgbsdk/common/host/ablx;->oG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e(Lgbsdk/common/host/ablx;)V
    .locals 2

    .line 242
    iget-object v0, p1, Lgbsdk/common/host/ablx;->oG:Ljava/lang/String;

    .line 243
    iget-object v1, p0, Lgbsdk/common/host/ablw;->pr:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lgbsdk/common/host/ablw;->pr:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    .line 245
    iget-object p1, p0, Lgbsdk/common/host/ablw;->pr:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 246
    iget-object p1, p0, Lgbsdk/common/host/ablw;->pr:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
