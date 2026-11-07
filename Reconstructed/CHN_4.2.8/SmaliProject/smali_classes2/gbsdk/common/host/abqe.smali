.class public Lgbsdk/common/host/abqe;
.super Ljava/lang/Object;
.source "DirectedGraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abqe$ab;,
        Lgbsdk/common/host/abqe$ac;
    }
.end annotation


# instance fields
.field private final xs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lgbsdk/common/host/abqe$ac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abqe;->xs:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public dj()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 106
    iget-object v2, p0, Lgbsdk/common/host/abqe;->xs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 107
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgbsdk/common/host/abqe$ac;

    .line 108
    iget v4, v3, Lgbsdk/common/host/abqe$ac;->xx:I

    if-nez v4, :cond_0

    .line 109
    invoke-interface {v1, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 113
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 114
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgbsdk/common/host/abqe$ac;

    if-nez v3, :cond_3

    goto :goto_1

    .line 118
    :cond_3
    iget-object v4, v3, Lgbsdk/common/host/abqe$ac;->xv:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    .line 120
    iget-object v3, v3, Lgbsdk/common/host/abqe$ac;->xw:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgbsdk/common/host/abqe$ab;

    if-eqz v4, :cond_4

    .line 121
    iget-object v5, v4, Lgbsdk/common/host/abqe$ab;->xt:Lgbsdk/common/host/abqe$ac;

    invoke-static {v5}, Lgbsdk/common/host/abqe$ac;->b(Lgbsdk/common/host/abqe$ac;)I

    move-result v5

    if-nez v5, :cond_4

    .line 122
    iget-object v4, v4, Lgbsdk/common/host/abqe$ab;->xt:Lgbsdk/common/host/abqe$ac;

    invoke-interface {v1, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_2

    .line 126
    :cond_5
    iget-object v1, p0, Lgbsdk/common/host/abqe;->xs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v2, v1, :cond_6

    return-object v0

    .line 127
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "circle detected, find count "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not equals directedGraph.size() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgbsdk/common/host/abqe;->xs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 49
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 55
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v0, :cond_2

    goto :goto_0

    .line 59
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_0

    .line 63
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_9

    .line 64
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 71
    :cond_4
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_6

    .line 73
    iget-object v2, p0, Lgbsdk/common/host/abqe;->xs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 74
    new-instance v2, Lgbsdk/common/host/abqe$ac;

    invoke-direct {v2, p0, v1}, Lgbsdk/common/host/abqe$ac;-><init>(Lgbsdk/common/host/abqe;Ljava/lang/String;)V

    .line 75
    iget-object v3, p0, Lgbsdk/common/host/abqe;->xs:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 81
    :cond_6
    iget-object v3, p0, Lgbsdk/common/host/abqe;->xs:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgbsdk/common/host/abqe$ac;

    if-nez v3, :cond_7

    .line 83
    new-instance v3, Lgbsdk/common/host/abqe$ac;

    invoke-direct {v3, p0, v2}, Lgbsdk/common/host/abqe$ac;-><init>(Lgbsdk/common/host/abqe;Ljava/lang/String;)V

    .line 84
    iget-object v4, p0, Lgbsdk/common/host/abqe;->xs:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_7
    iget-object v2, p0, Lgbsdk/common/host/abqe;->xs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbsdk/common/host/abqe$ac;

    if-nez v2, :cond_8

    .line 88
    new-instance v2, Lgbsdk/common/host/abqe$ac;

    invoke-direct {v2, p0, v1}, Lgbsdk/common/host/abqe$ac;-><init>(Lgbsdk/common/host/abqe;Ljava/lang/String;)V

    .line 89
    iget-object v4, p0, Lgbsdk/common/host/abqe;->xs:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_8
    new-instance v4, Lgbsdk/common/host/abqe$ab;

    invoke-direct {v4, p0, v2}, Lgbsdk/common/host/abqe$ab;-><init>(Lgbsdk/common/host/abqe;Lgbsdk/common/host/abqe$ac;)V

    .line 92
    iget-object v3, v3, Lgbsdk/common/host/abqe$ac;->xw:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-static {v2}, Lgbsdk/common/host/abqe$ac;->a(Lgbsdk/common/host/abqe$ac;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "Frankie"

    const-string v2, "DirectedGraph buildGraph error"

    .line 96
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 65
    :cond_9
    :goto_2
    iget-object v0, p0, Lgbsdk/common/host/abqe;->xs:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Lgbsdk/common/host/abqe$ac;

    invoke-direct {v0, p0, v1}, Lgbsdk/common/host/abqe$ac;-><init>(Lgbsdk/common/host/abqe;Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lgbsdk/common/host/abqe;->xs:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    :goto_3
    return-void
.end method
