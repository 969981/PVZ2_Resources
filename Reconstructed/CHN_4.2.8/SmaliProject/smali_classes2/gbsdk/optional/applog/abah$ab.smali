.class public Lgbsdk/optional/applog/abah$ab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/abah;->a(Ljava/util/Set;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Set;

.field public final synthetic b:Z

.field public final synthetic c:Lgbsdk/optional/applog/abah;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abah;Ljava/util/Set;Z)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abah$ab;->c:Lgbsdk/optional/applog/abah;

    iput-object p2, p0, Lgbsdk/optional/applog/abah$ab;->a:Ljava/util/Set;

    iput-boolean p3, p0, Lgbsdk/optional/applog/abah$ab;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "$$APP_ID"

    :try_start_0
    iget-object v2, p0, Lgbsdk/optional/applog/abah$ab;->c:Lgbsdk/optional/applog/abah;

    iget-object v2, v2, Lgbsdk/optional/applog/aq;->h:Lcom/bytedance/bdtracker/d;

    .line 1
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lgbsdk/optional/applog/abah$ab;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "$$EVENT_LOCAL_ID_ARRAY"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "$$UPLOAD_STATUS"

    :try_start_1
    iget-boolean v2, p0, Lgbsdk/optional/applog/abah$ab;->b:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_1

    const-string v2, "success"

    goto :goto_1

    :cond_1
    const-string v2, "failed"

    :goto_1
    :try_start_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0
.end method
