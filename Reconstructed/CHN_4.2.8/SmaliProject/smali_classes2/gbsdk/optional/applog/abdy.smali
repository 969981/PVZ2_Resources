.class public Lgbsdk/optional/applog/abdy;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/bytedance/applog/store/kv/IKVStore;

.field public final f:Lcom/bytedance/applog/log/IAppLogLogger;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/store/kv/IKVStore;Lcom/bytedance/applog/log/IAppLogLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lgbsdk/optional/applog/abdy;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lgbsdk/optional/applog/abdy;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lgbsdk/optional/applog/abdy;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lgbsdk/optional/applog/abdy;->d:Ljava/util/Set;

    iput-object p1, p0, Lgbsdk/optional/applog/abdy;->e:Lcom/bytedance/applog/store/kv/IKVStore;

    iput-object p2, p0, Lgbsdk/optional/applog/abdy;->f:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string p2, "block_events_v1"

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/bytedance/applog/store/kv/IKVStore;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lgbsdk/optional/applog/abdy;->a:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object p1, p0, Lgbsdk/optional/applog/abdy;->e:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string p2, "block_events_v3"

    invoke-interface {p1, p2, v0}, Lcom/bytedance/applog/store/kv/IKVStore;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lgbsdk/optional/applog/abdy;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p1, p0, Lgbsdk/optional/applog/abdy;->e:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string p2, "white_events_v1"

    invoke-interface {p1, p2, v0}, Lcom/bytedance/applog/store/kv/IKVStore;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lgbsdk/optional/applog/abdy;->c:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object p1, p0, Lgbsdk/optional/applog/abdy;->e:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string p2, "white_events_v3"

    invoke-interface {p1, p2, v0}, Lcom/bytedance/applog/store/kv/IKVStore;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p0, Lgbsdk/optional/applog/abdy;->d:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Lgbsdk/optional/applog/abbj;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgbsdk/optional/applog/abfu;",
            ">;",
            "Lgbsdk/optional/applog/abbj;",
            ")V"
        }
    .end annotation

    const-string v0, ""

    const-string v1, "tag"

    const-string v2, "label"

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v4, p0, Lgbsdk/optional/applog/abdy;->a:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lgbsdk/optional/applog/abdy;->b:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgbsdk/optional/applog/abfu;

    instance-of v6, v5, Lgbsdk/optional/applog/abbm;

    if-eqz v6, :cond_3

    move-object v6, v5

    check-cast v6, Lgbsdk/optional/applog/abbm;

    iget-object v7, p0, Lgbsdk/optional/applog/abdy;->b:Ljava/util/Set;

    .line 2
    iget-object v6, v6, Lgbsdk/optional/applog/abbm;->c:Ljava/lang/String;

    .line 3
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    iget-object v6, p0, Lgbsdk/optional/applog/abdy;->f:Lcom/bytedance/applog/log/IAppLogLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AppLogEventFilterConfig] filterBlock remove v3 -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Object;

    invoke-interface {v6, v5, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v5, p2, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    goto/16 :goto_2

    .line 5
    :cond_3
    instance-of v6, v5, Lgbsdk/optional/applog/abef;

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lgbsdk/optional/applog/abfu;->n()Lorg/json/JSONObject;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_4
    move-object v6, v0

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lgbsdk/optional/applog/abdy;->a:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    iget-object v6, p0, Lgbsdk/optional/applog/abdy;->f:Lcom/bytedance/applog/log/IAppLogLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AppLogEventFilterConfig] filterBlock remove b1 -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Object;

    invoke-interface {v6, v5, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v5, p2, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    goto :goto_2

    .line 7
    :cond_5
    instance-of v6, v5, Lgbsdk/optional/applog/abbf;

    if-eqz v6, :cond_2

    .line 8
    iget-object v6, p0, Lgbsdk/optional/applog/abdy;->b:Ljava/util/Set;

    const-string v7, "app_launch"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    iget-object v6, p0, Lgbsdk/optional/applog/abdy;->f:Lcom/bytedance/applog/log/IAppLogLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AppLogEventFilterConfig] filterBlock remove launch -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Object;

    invoke-interface {v6, v5, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object v5, p2, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 11
    :goto_2
    invoke-virtual {p2}, Lgbsdk/optional/applog/abbj;->a()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x2

    const/16 v9, 0x3ea

    .line 12
    invoke-static {v5, v7, v8, v6, v9}, Lgbsdk/optional/applog/abdt;->a(Lgbsdk/optional/applog/abdr;JLjava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    :goto_3
    if-eqz p1, :cond_c

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_7

    goto/16 :goto_6

    :cond_7
    iget-object p2, p0, Lgbsdk/optional/applog/abdy;->c:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lgbsdk/optional/applog/abdy;->d:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    goto/16 :goto_6

    :cond_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgbsdk/optional/applog/abfu;

    instance-of v4, p2, Lgbsdk/optional/applog/abbm;

    if-eqz v4, :cond_a

    move-object v4, p2

    check-cast v4, Lgbsdk/optional/applog/abbm;

    iget-object v5, p0, Lgbsdk/optional/applog/abdy;->d:Ljava/util/Set;

    .line 14
    iget-object v4, v4, Lgbsdk/optional/applog/abbm;->c:Ljava/lang/String;

    .line 15
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    iget-object v4, p0, Lgbsdk/optional/applog/abdy;->f:Lcom/bytedance/applog/log/IAppLogLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[AppLogEventFilterConfig] filterWhite remove v3 -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v4, p2, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_a
    instance-of v4, p2, Lgbsdk/optional/applog/abef;

    if-eqz v4, :cond_9

    invoke-virtual {p2}, Lgbsdk/optional/applog/abfu;->n()Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_b
    move-object v4, v0

    :goto_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lgbsdk/optional/applog/abdy;->c:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    iget-object v4, p0, Lgbsdk/optional/applog/abdy;->f:Lcom/bytedance/applog/log/IAppLogLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[AppLogEventFilterConfig] filterWhite remove b1 -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v4, p2, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_c
    :goto_6
    return-void
.end method

.method public a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    invoke-interface {p3}, Ljava/util/Set;->clear()V

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object p2, p0, Lgbsdk/optional/applog/abdy;->e:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {p2, p5, p1}, Lcom/bytedance/applog/store/kv/IKVStore;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Lcom/bytedance/applog/store/kv/IKVStore;

    if-eqz p4, :cond_1

    invoke-interface {p3, p4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p1, p0, Lgbsdk/optional/applog/abdy;->e:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {p1, p6, p3}, Lcom/bytedance/applog/store/kv/IKVStore;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Lcom/bytedance/applog/store/kv/IKVStore;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 12

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lgbsdk/optional/applog/abdy;->f:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v1, "[AppLogEventFilterConfig] parseEventList filedKey -> "

    invoke-static {v1, p2}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "whitelist"

    const-string v1, "blocklist"

    if-eqz p1, :cond_7

    const-string v3, "v1"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lgbsdk/optional/applog/abdy;->f:Lcom/bytedance/applog/log/IAppLogLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[AppLogEventFilterConfig] parseEventList v1 -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v4}, Ljava/util/HashSet;-><init>(I)V

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    if-ge v5, v4, :cond_2

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const-string v3, "v3"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object v3, p0, Lgbsdk/optional/applog/abdy;->f:Lcom/bytedance/applog/log/IAppLogLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AppLogEventFilterConfig] parseEventList v3 -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v3}, Ljava/util/HashSet;-><init>(I)V

    :goto_3
    if-ge v2, v3, :cond_5

    invoke-virtual {p1, v2, v6}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v9, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object v6, p0, Lgbsdk/optional/applog/abdy;->a:Ljava/util/Set;

    iget-object v8, p0, Lgbsdk/optional/applog/abdy;->b:Ljava/util/Set;

    const-string v10, "block_events_v1"

    const-string v11, "block_events_v3"

    :goto_4
    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lgbsdk/optional/applog/abdy;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object v6, p0, Lgbsdk/optional/applog/abdy;->c:Ljava/util/Set;

    iget-object v8, p0, Lgbsdk/optional/applog/abdy;->d:Ljava/util/Set;

    const-string v10, "white_events_v1"

    const-string v11, "white_events_v3"

    goto :goto_4

    :cond_7
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object v2, p0, Lgbsdk/optional/applog/abdy;->a:Ljava/util/Set;

    iget-object v4, p0, Lgbsdk/optional/applog/abdy;->b:Ljava/util/Set;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v6, "block_events_v1"

    const-string v7, "block_events_v3"

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lgbsdk/optional/applog/abdy;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object v1, p0, Lgbsdk/optional/applog/abdy;->c:Ljava/util/Set;

    iget-object v3, p0, Lgbsdk/optional/applog/abdy;->d:Ljava/util/Set;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "white_events_v1"

    const-string v6, "white_events_v3"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lgbsdk/optional/applog/abdy;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_5
    return-void
.end method
