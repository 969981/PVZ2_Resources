.class public Lgbsdk/optional/applog/abbm;
.super Lgbsdk/optional/applog/abfu;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgbsdk/optional/applog/abfu;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lgbsdk/optional/applog/abfu;-><init>()V

    iput-object p1, p0, Lgbsdk/optional/applog/abbm;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lgbsdk/optional/applog/abfu;-><init>()V

    iput-object p1, p0, Lgbsdk/optional/applog/abfu;->B:Ljava/lang/String;

    iput-object p2, p0, Lgbsdk/optional/applog/abbm;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lgbsdk/optional/applog/abbm;->b:Z

    iput-object p4, p0, Lgbsdk/optional/applog/abbm;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lgbsdk/optional/applog/abfu;->A:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lgbsdk/optional/applog/abfu;-><init>()V

    iput-object p1, p0, Lgbsdk/optional/applog/abfu;->B:Ljava/lang/String;

    iput-object p2, p0, Lgbsdk/optional/applog/abbm;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lgbsdk/optional/applog/abbm;->b:Z

    iput-object p4, p0, Lgbsdk/optional/applog/abbm;->a:Ljava/lang/String;

    iput p5, p0, Lgbsdk/optional/applog/abfu;->A:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Lgbsdk/optional/applog/abfu;-><init>()V

    iput-object p1, p0, Lgbsdk/optional/applog/abbm;->c:Ljava/lang/String;

    .line 1
    iput-object p2, p0, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lgbsdk/optional/applog/abfu;-><init>()V

    iput-object p1, p0, Lgbsdk/optional/applog/abbm;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lgbsdk/optional/applog/abbm;->b:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)I
    .locals 1

    invoke-super {p0, p1}, Lgbsdk/optional/applog/abfu;->a(Landroid/database/Cursor;)I

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abbm;->c:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abbm;->a:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lgbsdk/optional/applog/abbm;->b:Z

    const/16 p1, 0x11

    return p1
.end method

.method public a()Ljava/util/List;
    .locals 9
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

    const-string v3, "event"

    const-string v4, "varchar"

    const-string v5, "params"

    const-string v6, "varchar"

    const-string v7, "is_bav"

    const-string v8, "integer"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public a(Landroid/content/ContentValues;)V
    .locals 7

    invoke-super {p0, p1}, Lgbsdk/optional/applog/abfu;->a(Landroid/content/ContentValues;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abbm;->c:Ljava/lang/String;

    const-string v1, "event"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lgbsdk/optional/applog/abbm;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbsdk/optional/applog/abbm;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lgbsdk/optional/applog/abbm;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lgbsdk/optional/applog/abfu;->p()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v1

    iget-object v3, p0, Lgbsdk/optional/applog/abfu;->p:Ljava/util/List;

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v2, 0x4

    const-string v4, "Fill params failed"

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lgbsdk/optional/applog/abbm;->a:Ljava/lang/String;

    const-string v1, "params"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lgbsdk/optional/applog/abbm;->b:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_bav"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    invoke-super {p0, p1}, Lgbsdk/optional/applog/abfu;->a(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abbm;->c:Ljava/lang/String;

    const-string v1, "event"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lgbsdk/optional/applog/abbm;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbsdk/optional/applog/abbm;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgbsdk/optional/applog/abbm;->c()V

    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abbm;->a:Ljava/lang/String;

    const-string v1, "params"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lgbsdk/optional/applog/abbm;->b:Z

    const-string v1, "is_bav"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

.method public b(Lorg/json/JSONObject;)Lgbsdk/optional/applog/abfu;
    .locals 2

    invoke-super {p0, p1}, Lgbsdk/optional/applog/abfu;->b(Lorg/json/JSONObject;)Lgbsdk/optional/applog/abfu;

    const-string v0, "event"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abbm;->c:Ljava/lang/String;

    const-string v0, "params"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abbm;->a:Ljava/lang/String;

    const-string v0, "is_bav"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lgbsdk/optional/applog/abbm;->b:Z

    return-object p0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 6

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
    iget-object v1, p0, Lgbsdk/optional/applog/abbm;->c:Ljava/lang/String;

    const-string v2, "event"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lgbsdk/optional/applog/abbm;->b:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    const-string v2, "is_bav"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    iget-boolean v1, p0, Lgbsdk/optional/applog/abbm;->b:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lgbsdk/optional/applog/abbm;->a:Ljava/lang/String;

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lgbsdk/optional/applog/abbm;->c()V

    :cond_5
    iget-object v1, p0, Lgbsdk/optional/applog/abbm;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lgbsdk/optional/applog/abfu;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget v1, p0, Lgbsdk/optional/applog/abfu;->z:I

    sget-object v2, Lgbsdk/optional/applog/abek$ab;->a:Lgbsdk/optional/applog/abek$ab;

    .line 1
    iget v2, v2, Lgbsdk/optional/applog/abek$ab;->n:I

    if-eq v1, v2, :cond_6

    const-string v2, "nt"

    .line 2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_6
    iget-object v1, p0, Lgbsdk/optional/applog/abfu;->C:Ljava/lang/String;

    const-string v2, "datetime"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lgbsdk/optional/applog/abfu;->y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lgbsdk/optional/applog/abfu;->y:Ljava/lang/String;

    const-string v2, "ab_sdk_version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "eventv3"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgbsdk/optional/applog/abbm;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgbsdk/optional/applog/abbm;->a:Ljava/lang/String;

    return-object v0
.end method
