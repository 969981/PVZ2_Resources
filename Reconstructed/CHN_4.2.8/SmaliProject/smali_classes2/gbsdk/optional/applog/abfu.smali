.class public abstract Lgbsdk/optional/applog/abfu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final n:Ljava/text/SimpleDateFormat;

.field public static final o:Lgbsdk/optional/applog/abcj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/optional/applog/abcj<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lgbsdk/optional/applog/abfu;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public A:I

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Lorg/json/JSONObject;

.field public E:Ljava/lang/String;

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public q:J

.field public r:J

.field public s:J

.field public t:Ljava/lang/String;

.field public u:J

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lgbsdk/optional/applog/abfu;->n:Ljava/text/SimpleDateFormat;

    new-instance v0, Lgbsdk/optional/applog/abfu$ab;

    invoke-direct {v0}, Lgbsdk/optional/applog/abfu$ab;-><init>()V

    sput-object v0, Lgbsdk/optional/applog/abfu;->o:Lgbsdk/optional/applog/abcj;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lgbsdk/optional/applog/abfu;->b(J)V

    invoke-virtual {p0}, Lgbsdk/optional/applog/abfu;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abfu;->p:Ljava/util/List;

    invoke-static {}, Lgbsdk/optional/applog/abce;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abfu;->E:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lgbsdk/optional/applog/abfu;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object p0, Lgbsdk/optional/applog/abfu;->o:Lgbsdk/optional/applog/abcj;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lgbsdk/optional/applog/abcj;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    const-string v2, "k_cls"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgbsdk/optional/applog/abfu;

    invoke-virtual {p0}, Lgbsdk/optional/applog/abfu;->o()Lgbsdk/optional/applog/abfu;

    move-result-object p0

    invoke-virtual {p0, v1}, Lgbsdk/optional/applog/abfu;->b(Lorg/json/JSONObject;)Lgbsdk/optional/applog/abfu;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x4

    const-string v3, "JSON handle failed"

    invoke-interface {v1, v2, v3, p0, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 2

    sget-object v0, Lgbsdk/optional/applog/abfu;->n:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lgbsdk/optional/applog/abfu;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lgbsdk/optional/applog/abbw;

    invoke-direct {v1}, Lgbsdk/optional/applog/abbw;-><init>()V

    const-string v2, "page"

    .line 1
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lgbsdk/optional/applog/abbf;

    invoke-direct {v1}, Lgbsdk/optional/applog/abbf;-><init>()V

    const-string v2, "launch"

    .line 3
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lgbsdk/optional/applog/abax;

    invoke-direct {v1}, Lgbsdk/optional/applog/abax;-><init>()V

    const-string v2, "terminate"

    .line 5
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lgbsdk/optional/applog/abbc;

    invoke-direct {v1}, Lgbsdk/optional/applog/abbc;-><init>()V

    const-string v2, "packV2"

    .line 7
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lgbsdk/optional/applog/abbm;

    invoke-direct {v1}, Lgbsdk/optional/applog/abbm;-><init>()V

    const-string v2, "eventv3"

    .line 9
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Lgbsdk/optional/applog/abef;

    invoke-direct {v1}, Lgbsdk/optional/applog/abef;-><init>()V

    const-string v2, "custom_event"

    .line 11
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Lgbsdk/optional/applog/abao;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lgbsdk/optional/applog/abao;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "profile"

    .line 13
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Lgbsdk/optional/applog/abap;

    invoke-direct {v1}, Lgbsdk/optional/applog/abap;-><init>()V

    const-string v2, "trace"

    .line 15
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)I
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lgbsdk/optional/applog/abfu;->q:J

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lgbsdk/optional/applog/abfu;->r:J

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lgbsdk/optional/applog/abfu;->s:J

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lgbsdk/optional/applog/abfu;->z:I

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lgbsdk/optional/applog/abfu;->u:J

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abfu;->t:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abfu;->v:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abfu;->w:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abfu;->x:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abfu;->y:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lgbsdk/optional/applog/abfu;->A:I

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abfu;->B:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/optional/applog/abfu;->E:Ljava/lang/String;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/16 p1, 0xe

    return p1
.end method

.method public a()Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "_id"

    const-string v1, "integer primary key autoincrement"

    const-string v2, "local_time_ms"

    const-string v3, "integer"

    const-string v4, "tea_event_index"

    const-string v5, "integer"

    const-string v6, "nt"

    const-string v7, "integer"

    const-string v8, "user_id"

    const-string v9, "integer"

    const-string v10, "session_id"

    const-string v11, "varchar"

    const-string v12, "user_unique_id"

    const-string v13, "varchar"

    const-string v14, "user_unique_id_type"

    const-string v15, "varchar"

    const-string v16, "ssid"

    const-string v17, "varchar"

    const-string v18, "ab_sdk_version"

    const-string v19, "varchar"

    const-string v20, "event_type"

    const-string v21, "integer"

    const-string v22, "_app_id"

    const-string v23, "varchar"

    const-string v24, "properties"

    const-string v25, "varchar"

    const-string v26, "local_event_id"

    const-string v27, "varchar"

    filled-new-array/range {v0 .. v27}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/ContentValues;)V
    .locals 2

    iget-wide v0, p0, Lgbsdk/optional/applog/abfu;->r:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "local_time_ms"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v0, p0, Lgbsdk/optional/applog/abfu;->s:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tea_event_index"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget v0, p0, Lgbsdk/optional/applog/abfu;->z:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "nt"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v0, p0, Lgbsdk/optional/applog/abfu;->u:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abfu;->t:Ljava/lang/String;

    const-string v1, "session_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abfu;->v:Ljava/lang/String;

    invoke-static {v0}, Lgbsdk/optional/applog/abce;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_unique_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abfu;->w:Ljava/lang/String;

    const-string v1, "user_unique_id_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abfu;->x:Ljava/lang/String;

    const-string v1, "ssid"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abfu;->y:Ljava/lang/String;

    const-string v1, "ab_sdk_version"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lgbsdk/optional/applog/abfu;->A:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "event_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abfu;->B:Ljava/lang/String;

    const-string v1, "_app_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v1, "properties"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abfu;->E:Ljava/lang/String;

    const-string v1, "local_event_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    iget-wide v0, p0, Lgbsdk/optional/applog/abfu;->r:J

    const-string v2, "local_time_ms"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lgbsdk/optional/applog/abfu;->B:Ljava/lang/String;

    const-string v1, "_app_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;

    const-string v1, "properties"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lgbsdk/optional/applog/abfu;->E:Ljava/lang/String;

    const-string v1, "local_event_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, p2}, Lgbsdk/optional/applog/abfu;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lgbsdk/optional/applog/abfu;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v4, p1

    invoke-virtual {p0}, Lgbsdk/optional/applog/abfu;->p()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    iget-object v2, p0, Lgbsdk/optional/applog/abfu;->p:Ljava/util/List;

    const/4 p1, 0x0

    new-array v5, p1, [Ljava/lang/Object;

    const/4 v1, 0x4

    const-string v3, "Merge params failed"

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {p2, v0}, Lgbsdk/optional/applog/abce;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :cond_1
    iget-object p2, p0, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-lez p2, :cond_2

    iget-object p2, p0, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;

    invoke-static {p2, v0}, Lgbsdk/optional/applog/abce;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :cond_2
    :try_start_0
    const-string p2, "params"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v4, p1

    invoke-virtual {p0}, Lgbsdk/optional/applog/abfu;->p()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    iget-object v2, p0, Lgbsdk/optional/applog/abfu;->p:Ljava/util/List;

    const/4 p1, 0x0

    new-array v5, p1, [Ljava/lang/Object;

    const/4 v1, 0x4

    const-string v3, "Merge params failed"

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final b(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    :goto_0
    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abfu;->a(Landroid/content/ContentValues;)V

    return-object p1
.end method

.method public b(Lorg/json/JSONObject;)Lgbsdk/optional/applog/abfu;
    .locals 5

    const-string v0, "local_time_ms"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lgbsdk/optional/applog/abfu;->r:J

    iput-wide v1, p0, Lgbsdk/optional/applog/abfu;->q:J

    iput-wide v1, p0, Lgbsdk/optional/applog/abfu;->s:J

    const/4 v0, 0x0

    iput v0, p0, Lgbsdk/optional/applog/abfu;->z:I

    iput-wide v1, p0, Lgbsdk/optional/applog/abfu;->u:J

    const/4 v0, 0x0

    iput-object v0, p0, Lgbsdk/optional/applog/abfu;->t:Ljava/lang/String;

    iput-object v0, p0, Lgbsdk/optional/applog/abfu;->v:Ljava/lang/String;

    iput-object v0, p0, Lgbsdk/optional/applog/abfu;->w:Ljava/lang/String;

    iput-object v0, p0, Lgbsdk/optional/applog/abfu;->x:Ljava/lang/String;

    iput-object v0, p0, Lgbsdk/optional/applog/abfu;->y:Ljava/lang/String;

    const-string v0, "_app_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abfu;->B:Ljava/lang/String;

    const-string v0, "properties"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;

    invoke-static {}, Lgbsdk/optional/applog/abce;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local_event_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/optional/applog/abfu;->E:Ljava/lang/String;

    return-object p0
.end method

.method public abstract b()Lorg/json/JSONObject;
.end method

.method public b(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :cond_0
    iput-wide p1, p0, Lgbsdk/optional/applog/abfu;->r:J

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgbsdk/optional/applog/abfu;->o()Lgbsdk/optional/applog/abfu;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public e()Ljava/lang/String;
    .locals 2

    const-string v0, "sid:"

    invoke-static {v0}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/optional/applog/abfu;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lgbsdk/optional/applog/abfu;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "create table if not exists "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgbsdk/optional/applog/abfu;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public final m()Lorg/json/JSONObject;
    .locals 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "k_cls"

    :try_start_0
    invoke-virtual {p0}, Lgbsdk/optional/applog/abfu;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lgbsdk/optional/applog/abfu;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v6, v1

    invoke-virtual {p0}, Lgbsdk/optional/applog/abfu;->p()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v2

    iget-object v4, p0, Lgbsdk/optional/applog/abfu;->p:Ljava/util/List;

    const/4 v1, 0x0

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v3, 0x4

    const-string v5, "JSON handle failed"

    invoke-interface/range {v2 .. v7}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public final n()Lorg/json/JSONObject;
    .locals 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-wide v1, p0, Lgbsdk/optional/applog/abfu;->r:J

    invoke-static {v1, v2}, Lgbsdk/optional/applog/abfu;->a(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgbsdk/optional/applog/abfu;->C:Ljava/lang/String;

    invoke-virtual {p0}, Lgbsdk/optional/applog/abfu;->b()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v6, v1

    invoke-virtual {p0}, Lgbsdk/optional/applog/abfu;->p()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v2

    iget-object v4, p0, Lgbsdk/optional/applog/abfu;->p:Ljava/util/List;

    const/4 v1, 0x0

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v3, 0x4

    const-string v5, "JSON handle failed"

    invoke-interface/range {v2 .. v7}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public o()Lgbsdk/optional/applog/abfu;
    .locals 7

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/optional/applog/abfu;

    invoke-static {}, Lgbsdk/optional/applog/abce;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgbsdk/optional/applog/abfu;->E:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v5, v0

    invoke-virtual {p0}, Lgbsdk/optional/applog/abfu;->p()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v1

    iget-object v3, p0, Lgbsdk/optional/applog/abfu;->p:Ljava/util/List;

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v2, 0x4

    const-string v4, "Clone data failed"

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Lcom/bytedance/applog/log/IAppLogLogger;
    .locals 1

    iget-object v0, p0, Lgbsdk/optional/applog/abfu;->B:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/applog/log/AbstractAppLogLogger;->getLogger(Ljava/lang/String;)Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lgbsdk/optional/applog/abfu;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ", "

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lgbsdk/optional/applog/abfu;->t:Ljava/lang/String;

    const-string v3, "-"

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgbsdk/optional/applog/abfu;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lgbsdk/optional/applog/abfu;->r:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lgbsdk/optional/applog/abfu;->s:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lgbsdk/optional/applog/abfu;->t:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
