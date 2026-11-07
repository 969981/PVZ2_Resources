.class public Lgbsdk/common/host/abvy;
.super Ljava/lang/Object;
.source "TTDnsOuterService.java"


# static fields
.field private static aIF:Lgbsdk/common/host/abvy;


# instance fields
.field private aIG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lgbsdk/common/host/abvv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abvy;->aIG:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized hp()Lgbsdk/common/host/abvy;
    .locals 2

    const-class v0, Lgbsdk/common/host/abvy;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abvy;->aIF:Lgbsdk/common/host/abvy;

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lgbsdk/common/host/abvy;

    invoke-direct {v1}, Lgbsdk/common/host/abvy;-><init>()V

    sput-object v1, Lgbsdk/common/host/abvy;->aIF:Lgbsdk/common/host/abvy;

    .line 14
    :cond_0
    sget-object v1, Lgbsdk/common/host/abvy;->aIF:Lgbsdk/common/host/abvy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public TTDnsResolve(Ljava/lang/String;I)Lgbsdk/common/host/abvu;
    .locals 1

    .line 20
    new-instance v0, Lgbsdk/common/host/abvv;

    invoke-direct {v0, p1, p2}, Lgbsdk/common/host/abvv;-><init>(Ljava/lang/String;I)V

    .line 21
    iget-object p1, p0, Lgbsdk/common/host/abvy;->aIG:Ljava/util/Map;

    iget-object p2, v0, Lgbsdk/common/host/abvv;->aII:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {v0}, Lgbsdk/common/host/abvv;->hs()V

    .line 23
    invoke-virtual {v0}, Lgbsdk/common/host/abvv;->hq()V

    .line 24
    iget-object p1, p0, Lgbsdk/common/host/abvy;->aIG:Ljava/util/Map;

    iget-object p2, v0, Lgbsdk/common/host/abvv;->aII:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object p1, v0, Lgbsdk/common/host/abvv;->aIK:Lgbsdk/common/host/abvu;

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    iget-object p2, p0, Lgbsdk/common/host/abvy;->aIG:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgbsdk/common/host/abvv;

    if-eqz p2, :cond_0

    .line 31
    new-instance v6, Lgbsdk/common/host/abvu;

    move-object v0, v6

    move v1, p3

    move v2, p4

    move v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lgbsdk/common/host/abvu;-><init>(IIILjava/util/List;Ljava/lang/String;)V

    iput-object v6, p2, Lgbsdk/common/host/abvv;->aIK:Lgbsdk/common/host/abvu;

    .line 32
    invoke-virtual {p2}, Lgbsdk/common/host/abvv;->hr()V

    .line 33
    iget-object p2, p0, Lgbsdk/common/host/abvy;->aIG:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
