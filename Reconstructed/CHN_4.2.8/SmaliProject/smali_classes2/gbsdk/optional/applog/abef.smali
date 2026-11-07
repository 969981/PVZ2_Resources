.class public Lgbsdk/optional/applog/abef;
.super Lgbsdk/optional/applog/abfu;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lgbsdk/optional/applog/abfu;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lgbsdk/optional/applog/abef;->a:Ljava/lang/String;

    iput-object v0, p0, Lgbsdk/optional/applog/abef;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgbsdk/optional/applog/abfu;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lgbsdk/optional/applog/abef;->a:Ljava/lang/String;

    iput-object v0, p0, Lgbsdk/optional/applog/abef;->b:Ljava/lang/String;

    iput-object p1, p0, Lgbsdk/optional/applog/abef;->a:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/optional/applog/abef;->b:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lgbsdk/optional/applog/abfu;->A:I

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)I
    .locals 1

    invoke-super {p0, p1}, Lgbsdk/optional/applog/abfu;->a(Landroid/database/Cursor;)I

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abef;->b:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/optional/applog/abef;->a:Ljava/lang/String;

    const/16 p1, 0x10

    return p1
.end method

.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lgbsdk/optional/applog/abfu;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v0, "params"

    const-string v2, "varchar"

    const-string v3, "category"

    filled-new-array {v0, v2, v3, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public a(Landroid/content/ContentValues;)V
    .locals 2

    invoke-super {p0, p1}, Lgbsdk/optional/applog/abfu;->a(Landroid/content/ContentValues;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abef;->b:Ljava/lang/String;

    const-string v1, "params"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abef;->a:Ljava/lang/String;

    const-string v1, "category"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    invoke-super {p0, p1}, Lgbsdk/optional/applog/abfu;->a(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abef;->b:Ljava/lang/String;

    const-string v1, "params"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lgbsdk/optional/applog/abef;->a:Ljava/lang/String;

    const-string v1, "category"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public b(Lorg/json/JSONObject;)Lgbsdk/optional/applog/abfu;
    .locals 2

    invoke-super {p0, p1}, Lgbsdk/optional/applog/abfu;->b(Lorg/json/JSONObject;)Lgbsdk/optional/applog/abfu;

    const-string v0, "params"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abef;->b:Ljava/lang/String;

    const-string v0, "category"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/optional/applog/abef;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 11

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v1, p0, Lgbsdk/optional/applog/abfu;->r:J

    const-string v3, "local_time_ms"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-wide v1, p0, Lgbsdk/optional/applog/abfu;->s:J

    const-string v3, "tea_event_index"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lgbsdk/optional/applog/abfu;->t:Ljava/lang/String;

    const-string v2, "session_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v1, p0, Lgbsdk/optional/applog/abfu;->u:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const-string v3, "user_id"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lgbsdk/optional/applog/abfu;->v:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lgbsdk/optional/applog/abfu;->v:Ljava/lang/String;

    :goto_0
    const-string v2, "user_unique_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lgbsdk/optional/applog/abfu;->w:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lgbsdk/optional/applog/abfu;->w:Ljava/lang/String;

    const-string v2, "$user_unique_id_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p0, Lgbsdk/optional/applog/abfu;->x:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lgbsdk/optional/applog/abfu;->x:Ljava/lang/String;

    const-string v2, "ssid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v1, p0, Lgbsdk/optional/applog/abef;->b:Ljava/lang/String;

    invoke-static {v1}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lgbsdk/optional/applog/abef;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lgbsdk/optional/applog/abfu;->p()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v7

    iget-object v8, p0, Lgbsdk/optional/applog/abfu;->p:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "\u81ea\u5b9a\u4e49\u4e8b\u4ef6\u5b58\u5728\u91cd\u590d\u7684key"

    :try_start_1
    new-array v10, v2, [Ljava/lang/Object;

    invoke-interface {v7, v1, v8, v9, v10}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {p0}, Lgbsdk/optional/applog/abfu;->p()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v4

    iget-object v5, p0, Lgbsdk/optional/applog/abfu;->p:Ljava/util/List;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v2

    const-string v2, "\u89e3\u6790\u4e8b\u4ef6\u53c2\u6570\u5931\u8d25"

    invoke-interface {v4, v1, v5, v2, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "custom_event"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    const-string v0, "param:"

    invoke-static {v0}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/optional/applog/abef;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbsdk/optional/applog/abef;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
