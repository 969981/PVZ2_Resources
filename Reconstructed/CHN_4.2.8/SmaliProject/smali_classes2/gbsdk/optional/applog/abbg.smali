.class public Lgbsdk/optional/applog/abbg;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lgbsdk/optional/applog/abbj;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abbj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/optional/applog/abbg;->a:Lgbsdk/optional/applog/abbj;

    return-void
.end method


# virtual methods
.method public a(Lgbsdk/optional/applog/abfu;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p1, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p1, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    iget-object v1, p0, Lgbsdk/optional/applog/abbg;->a:Lgbsdk/optional/applog/abbj;

    .line 4
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 5
    iget-object v1, v1, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 6
    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->isScreenOrientationEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lgbsdk/optional/applog/abbg;->a:Lgbsdk/optional/applog/abbj;

    .line 8
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 9
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 10
    invoke-static {v1}, Lcom/bytedance/applog/util/HardwareUtils;->getScreenOrientation(Landroid/content/Context;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "$screen_orientation"

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const-string v1, "landscape"

    goto :goto_1

    :cond_1
    const-string v1, "portrait"

    :goto_1
    :try_start_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p0, Lgbsdk/optional/applog/abbg;->a:Lgbsdk/optional/applog/abbj;

    .line 11
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 12
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->B:Lgbsdk/optional/applog/abcy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    const-string v2, "$longitude"

    .line 13
    :try_start_2
    iget v3, v1, Lgbsdk/optional/applog/abcy;->a:F

    float-to-double v3, v3

    .line 14
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "$latitude"

    .line 15
    :try_start_3
    iget v3, v1, Lgbsdk/optional/applog/abcy;->b:F

    float-to-double v3, v3

    .line 16
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v2, "$geo_coordinate_system"

    .line 17
    :try_start_4
    iget-object v1, v1, Lgbsdk/optional/applog/abcy;->c:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 19
    iput-object v0, p1, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v4, p1

    .line 20
    iget-object p1, p0, Lgbsdk/optional/applog/abbg;->a:Lgbsdk/optional/applog/abbj;

    .line 21
    iget-object p1, p1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 22
    iget-object v0, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string p1, "LifeHook"

    .line 23
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 p1, 0x0

    new-array v5, p1, [Ljava/lang/Object;

    const/4 v1, 0x4

    const-string v3, "Do beforeEventSave failed"

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method
