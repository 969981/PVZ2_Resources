.class public Lgbsdk/optional/applog/abfy$ab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/abfy;->d()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lgbsdk/optional/applog/abfy;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abfy;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abfy$ab;->a:Lgbsdk/optional/applog/abfy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appId"

    :try_start_0
    iget-object v2, p0, Lgbsdk/optional/applog/abfy$ab;->a:Lgbsdk/optional/applog/abfy;

    .line 1
    iget-object v2, v2, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "did"

    :try_start_1
    iget-object v2, p0, Lgbsdk/optional/applog/abfy$ab;->a:Lgbsdk/optional/applog/abfy;

    .line 4
    iget-object v2, v2, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    const-string v3, "device_id"

    const-string v4, ""

    .line 5
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "bdDid"

    :try_start_2
    iget-object v2, p0, Lgbsdk/optional/applog/abfy$ab;->a:Lgbsdk/optional/applog/abfy;

    invoke-virtual {v2}, Lgbsdk/optional/applog/abfy;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v1, "ssid"

    :try_start_3
    iget-object v2, p0, Lgbsdk/optional/applog/abfy$ab;->a:Lgbsdk/optional/applog/abfy;

    invoke-virtual {v2}, Lgbsdk/optional/applog/abfy;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v1, "installId"

    :try_start_4
    iget-object v2, p0, Lgbsdk/optional/applog/abfy$ab;->a:Lgbsdk/optional/applog/abfy;

    invoke-virtual {v2}, Lgbsdk/optional/applog/abfy;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v1, "uuid"

    :try_start_5
    iget-object v2, p0, Lgbsdk/optional/applog/abfy$ab;->a:Lgbsdk/optional/applog/abfy;

    invoke-virtual {v2}, Lgbsdk/optional/applog/abfy;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v1, "uuidType"

    :try_start_6
    iget-object v2, p0, Lgbsdk/optional/applog/abfy$ab;->a:Lgbsdk/optional/applog/abfy;

    invoke-virtual {v2}, Lgbsdk/optional/applog/abfy;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    return-object v0
.end method
