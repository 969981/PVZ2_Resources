.class public final Lcom/bytedance/applog/log/LogUtils$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/applog/log/LogUtils;->sendObject(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/log/LogUtils$a;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/applog/log/LogUtils$a;->a:Ljava/lang/Object;

    check-cast v0, Lgbsdk/optional/applog/abfu;

    invoke-virtual {v0}, Lgbsdk/optional/applog/abfu;->n()Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0, v1}, Lgbsdk/optional/applog/abce;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const-string v0, "$$APP_ID"

    :try_start_0
    iget-object v2, p0, Lcom/bytedance/applog/log/LogUtils$a;->a:Ljava/lang/Object;

    check-cast v2, Lgbsdk/optional/applog/abfu;

    .line 1
    iget-object v2, v2, Lgbsdk/optional/applog/abfu;->B:Ljava/lang/String;

    .line 2
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "$$EVENT_TYPE"

    :try_start_1
    iget-object v2, p0, Lcom/bytedance/applog/log/LogUtils$a;->a:Ljava/lang/Object;

    check-cast v2, Lgbsdk/optional/applog/abfu;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v3, v2, Lgbsdk/optional/applog/abbm;

    if-nez v3, :cond_7

    instance-of v3, v2, Lgbsdk/optional/applog/abbw;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lgbsdk/optional/applog/abef;

    if-eqz v3, :cond_2

    check-cast v2, Lgbsdk/optional/applog/abef;

    .line 4
    iget-object v2, v2, Lgbsdk/optional/applog/abef;->a:Ljava/lang/String;

    .line 5
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    instance-of v3, v2, Lgbsdk/optional/applog/abbf;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_3

    const-string v2, "LAUNCH"

    goto :goto_2

    :cond_3
    :try_start_2
    instance-of v3, v2, Lgbsdk/optional/applog/abax;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v3, :cond_4

    const-string v2, "TERMINATE"

    goto :goto_2

    :cond_4
    :try_start_3
    instance-of v3, v2, Lgbsdk/optional/applog/abao;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v3, :cond_5

    const-string v2, "PROFILE"

    goto :goto_2

    :cond_5
    :try_start_4
    instance-of v2, v2, Lgbsdk/optional/applog/abap;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v2, :cond_6

    const-string v2, "TRACE"

    goto :goto_2

    :cond_6
    :goto_0
    const-string v2, ""

    goto :goto_2

    :cond_7
    :goto_1
    const-string v2, "EVENT_V3"

    .line 6
    :goto_2
    :try_start_5
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const-string v0, "$$EVENT_LOCAL_ID"

    :try_start_6
    iget-object v2, p0, Lcom/bytedance/applog/log/LogUtils$a;->a:Ljava/lang/Object;

    check-cast v2, Lgbsdk/optional/applog/abfu;

    iget-object v2, v2, Lgbsdk/optional/applog/abfu;->E:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    return-object v1
.end method
