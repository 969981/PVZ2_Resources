.class public Lgbsdk/common/host/abik;
.super Ljava/lang/Object;
.source "OkHttp3DnsParserInterceptor.java"

# interfaces
.implements Losdk/okhttp3/Dns;


# static fields
.field private static volatile mn:Lgbsdk/common/host/abik;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mo:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lgbsdk/common/host/abjf;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-class v0, Lgbsdk/common/host/abik;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/common/host/abik;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abik;->mo:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static bU()Lgbsdk/common/host/abik;
    .locals 2

    .line 26
    sget-object v0, Lgbsdk/common/host/abik;->mn:Lgbsdk/common/host/abik;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lgbsdk/common/host/abik;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abik;->mn:Lgbsdk/common/host/abik;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lgbsdk/common/host/abik;

    invoke-direct {v1}, Lgbsdk/common/host/abik;-><init>()V

    sput-object v1, Lgbsdk/common/host/abik;->mn:Lgbsdk/common/host/abik;

    .line 31
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 33
    :cond_1
    :goto_0
    sget-object v0, Lgbsdk/common/host/abik;->mn:Lgbsdk/common/host/abik;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lgbsdk/common/host/abjf;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abik;->mo:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lgbsdk/common/host/abik;->mo:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 77
    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object p2, p0, Lgbsdk/common/host/abik;->mo:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Lgbsdk/common/host/abjf;)V
    .locals 1

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgbsdk/common/host/abik;->mo:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lgbsdk/common/host/abik;->mo:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 85
    iget-object p2, p0, Lgbsdk/common/host/abik;->mo:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 86
    iget-object p2, p0, Lgbsdk/common/host/abik;->mo:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lgbsdk/common/host/abik;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lookup address list for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablz;->as(Ljava/lang/String;)Lgbsdk/common/host/abiz;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 40
    iget-object v1, v0, Lgbsdk/common/host/abiz;->oY:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lgbsdk/common/host/abiz;->oZ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 42
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    iget-object v2, v0, Lgbsdk/common/host/abiz;->oZ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 44
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_1
    iget-object v2, v0, Lgbsdk/common/host/abiz;->oY:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 47
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 50
    :cond_2
    iget-object v2, p0, Lgbsdk/common/host/abik;->mo:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 51
    iget-object v2, p0, Lgbsdk/common/host/abik;->mo:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbsdk/common/host/abjf;

    .line 55
    iget-object v3, v2, Lgbsdk/common/host/abjf;->nl:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lgbsdk/common/host/abjf;->nk:Lgbsdk/common/host/abiz$ab;

    sget-object v4, Lgbsdk/common/host/abiz$ab;->pb:Lgbsdk/common/host/abiz$ab;

    if-ne v3, v4, :cond_3

    .line 56
    iget-object v3, v0, Lgbsdk/common/host/abiz;->pa:Lgbsdk/common/host/abiz$ab;

    iput-object v3, v2, Lgbsdk/common/host/abjf;->nk:Lgbsdk/common/host/abiz$ab;

    .line 57
    iget-object v3, v2, Lgbsdk/common/host/abjf;->nl:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v4, v0, Lgbsdk/common/host/abiz;->oZ:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 58
    iget-object v2, v2, Lgbsdk/common/host/abjf;->nl:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, v0, Lgbsdk/common/host/abiz;->oY:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_4
    return-object v1

    .line 65
    :cond_5
    sget-object v0, Losdk/okhttp3/Dns;->SYSTEM:Losdk/okhttp3/Dns;

    invoke-interface {v0, p1}, Losdk/okhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
