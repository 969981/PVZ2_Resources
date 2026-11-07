.class public Lgbsdk/optional/applog/abff;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public final g:Lcom/bytedance/bdtracker/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lgbsdk/optional/applog/abff;->g:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v0, p1, Lcom/bytedance/bdtracker/d;->k:Lgbsdk/optional/applog/abcz;

    .line 3
    sget-object v1, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryUrlPrefix:Ljava/lang/String;

    .line 4
    iput-object v1, v0, Lgbsdk/optional/applog/abcz;->b:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryType:Ljava/lang/String;

    iput-object v0, p0, Lgbsdk/optional/applog/abff;->f:Ljava/lang/String;

    sget-object v0, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryQrParam:Ljava/lang/String;

    iput-object v0, p0, Lgbsdk/optional/applog/abff;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getDid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/optional/applog/abff;->e:Ljava/lang/String;

    iget-object p1, p0, Lgbsdk/optional/applog/abff;->g:Lcom/bytedance/bdtracker/d;

    const-class v0, Ljava/lang/String;

    const-string v1, "resolution"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/bytedance/bdtracker/d;->getHeaderValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v0, p1, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lgbsdk/optional/applog/abff;->b:I

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lgbsdk/optional/applog/abff;->a:I

    :cond_0
    iget-object p1, p0, Lgbsdk/optional/applog/abff;->g:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lgbsdk/optional/applog/abff;->g:Lcom/bytedance/bdtracker/d;

    .line 8
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 9
    invoke-static {v0, p1, v1}, Lgbsdk/optional/applog/abfb;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "1.0.0"

    :goto_0
    iput-object p1, p0, Lgbsdk/optional/applog/abff;->d:Ljava/lang/String;

    iget-object p1, p0, Lgbsdk/optional/applog/abff;->g:Lcom/bytedance/bdtracker/d;

    .line 11
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v0, "SimulateLoginTask"

    .line 12
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Simulate task init success"

    invoke-interface {p1, v0, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/bytedance/bdtracker/d;)V
    .locals 1

    new-instance v0, Lgbsdk/optional/applog/abff;

    invoke-direct {v0, p0}, Lgbsdk/optional/applog/abff;-><init>(Lcom/bytedance/bdtracker/d;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v1, p0

    const-string v2, "data"

    const-string v3, "sync_id"

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Void;

    .line 1
    sget v0, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryMode:I

    const-string v4, "Login simulator with response:{}"

    const-string v5, "header"

    const-string v6, "device_id"

    const-string v7, "height"

    const-string v8, "width"

    const/4 v9, 0x2

    const-string v10, "JSON handle failed"

    if-nez v0, :cond_1

    iget-object v0, v1, Lgbsdk/optional/applog/abff;->g:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v2, v0, Lcom/bytedance/bdtracker/d;->k:Lgbsdk/optional/applog/abcz;

    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 4
    iget-object v3, v1, Lgbsdk/optional/applog/abff;->d:Ljava/lang/String;

    iget v15, v1, Lgbsdk/optional/applog/abff;->a:I

    iget v12, v1, Lgbsdk/optional/applog/abff;->b:I

    iget-object v13, v1, Lgbsdk/optional/applog/abff;->e:Ljava/lang/String;

    iget-object v11, v1, Lgbsdk/optional/applog/abff;->c:Ljava/lang/String;

    .line 5
    iget-object v14, v2, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-object v14, v14, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v13, v9, v17

    const/16 v16, 0x1

    aput-object v11, v9, v16

    const-string v1, "Start to login simulator with device id:{} and qrParam:{}..."

    move-object/from16 v18, v10

    const/16 v10, 0xb

    .line 7
    invoke-interface {v14, v10, v1, v9}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {v0, v3}, Lgbsdk/optional/applog/abcz;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v8, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "qr_param"

    invoke-virtual {v1, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v2}, Lgbsdk/optional/applog/abcz;->a()Ljava/util/HashMap;

    move-result-object v23

    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v3, v2, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v3}, Lcom/bytedance/bdtracker/d;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    move-result-object v19

    const/16 v20, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lgbsdk/optional/applog/abcz;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/simulator/mobile/login"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x2710

    move-object/from16 v22, v1

    invoke-interface/range {v19 .. v26}, Lcom/bytedance/applog/network/INetworkClient;->execute(BLjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;BZI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iget-object v1, v2, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 8
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    const/16 v5, 0xb

    .line 9
    invoke-interface {v1, v5, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lgbsdk/optional/applog/abce;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v12, v1

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    iget-object v1, v2, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 10
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Login simulator failed"

    const/16 v4, 0xb

    .line 11
    invoke-interface {v1, v4, v3, v0, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    iget-object v1, v2, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 12
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v10, v18

    const/16 v3, 0xb

    .line 13
    invoke-interface {v1, v3, v10, v0, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 14
    :cond_1
    iget-object v0, v1, Lgbsdk/optional/applog/abff;->g:Lcom/bytedance/bdtracker/d;

    .line 15
    iget-object v11, v0, Lcom/bytedance/bdtracker/d;->k:Lgbsdk/optional/applog/abcz;

    .line 16
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 17
    iget-object v12, v1, Lgbsdk/optional/applog/abff;->d:Ljava/lang/String;

    iget v13, v1, Lgbsdk/optional/applog/abff;->a:I

    iget v14, v1, Lgbsdk/optional/applog/abff;->b:I

    iget-object v15, v1, Lgbsdk/optional/applog/abff;->e:Ljava/lang/String;

    .line 18
    iget-object v9, v11, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 19
    iget-object v9, v9, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    move-object/from16 v19, v10

    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v15, v10, v1

    const-string v1, "Start to login simulator with device id:{}..."

    move-object/from16 v20, v4

    const/16 v4, 0xb

    .line 20
    invoke-interface {v9, v4, v1, v10}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    invoke-static {v0, v12}, Lgbsdk/optional/applog/abcz;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v4, v11, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v4}, Lcom/bytedance/bdtracker/d;->getHeader()Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v0, v4}, Lgbsdk/optional/applog/abce;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    invoke-virtual {v0, v8, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v7, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v6, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const-string v4, "device_model"

    :try_start_3
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    invoke-virtual {v11}, Lgbsdk/optional/applog/abcz;->a()Ljava/util/HashMap;

    move-result-object v4

    const-string v0, ""

    move-object v5, v0

    const/4 v6, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    :try_start_4
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v9, Ljava/lang/String;

    iget-object v0, v11, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    move-result-object v21

    const/16 v22, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v11, Lgbsdk/optional/applog/abcz;->b:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/simulator/limited_mobile/try_link"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x2710

    move-object/from16 v24, v1

    move-object/from16 v25, v4

    invoke-interface/range {v21 .. v28}, Lcom/bytedance/applog/network/INetworkClient;->execute(BLjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;BZI)[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v10, "retry"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v6, :cond_2

    goto/16 :goto_6

    :cond_2
    const/4 v10, 0x2

    if-ne v6, v10, :cond_3

    move-object v6, v9

    goto :goto_5

    :cond_3
    :try_start_6
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v5, v0

    move-object v6, v9

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    const/4 v10, 0x2

    :goto_1
    move-object v6, v9

    goto :goto_2

    :catchall_4
    move-exception v0

    const/4 v10, 0x2

    :goto_2
    iget-object v9, v11, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 21
    iget-object v9, v9, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v12, 0x0

    new-array v13, v12, [Ljava/lang/Object;

    const-string v12, "Post to simulate login failed"

    const/16 v14, 0xb

    .line 22
    invoke-interface {v9, v14, v12, v0, v13}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v7

    const-wide/16 v7, 0x3e8

    cmp-long v0, v12, v7

    if-gez v0, :cond_4

    sub-long/2addr v7, v12

    :try_start_7
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v7, v0

    iget-object v0, v11, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 23
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    const-string v12, "Sleep interrupted"

    const/16 v13, 0xb

    .line 24
    invoke-interface {v0, v13, v12, v7, v9}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    :goto_4
    const/4 v8, 0x0

    const/16 v13, 0xb

    goto/16 :goto_0

    :cond_5
    :goto_5
    const/4 v8, 0x0

    const/16 v13, 0xb

    iget-object v0, v11, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 25
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v8

    move-object/from16 v2, v20

    .line 26
    invoke-interface {v0, v13, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6}, Lgbsdk/optional/applog/abce;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_6
    goto :goto_7

    :cond_6
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object v12, v0

    goto :goto_8

    :catchall_5
    move-exception v0

    iget-object v1, v11, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 27
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v3, v19

    const/16 v4, 0xb

    .line 28
    invoke-interface {v1, v4, v3, v0, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_7

    :catchall_6
    move-exception v0

    move-object/from16 v3, v19

    iget-object v1, v11, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 29
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v4, 0xb

    .line 30
    invoke-interface {v1, v4, v3, v0, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_7
    const/4 v12, 0x0

    :goto_8
    return-object v12
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 11

    check-cast p1, Lorg/json/JSONObject;

    .line 1
    iget-object v0, p0, Lgbsdk/optional/applog/abff;->g:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v1, "SimulateLoginTask"

    .line 3
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v6, "Simulate login with response: {}"

    invoke-interface {v0, v2, v6, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lgbsdk/optional/applog/abff;->g:Lcom/bytedance/bdtracker/d;

    .line 4
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    const-string v0, "\u542f\u52a8\u57cb\u70b9\u9a8c\u8bc1|\u5708\u9009\u5931\u8d25\uff0c\u670d\u52a1\u7aef\u65e0\u54cd\u5e94"

    .line 5
    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_0
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Set-Cookie"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "status"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    sget v7, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryMode:I

    const-string v8, "debug_log"

    if-ne v7, v3, :cond_2

    const-string v7, "data"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v9, "mode"

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "log"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v8

    goto :goto_0

    :cond_1
    const-string v7, "bind_query"

    :goto_0
    iput-object v7, p0, Lgbsdk/optional/applog/abff;->f:Ljava/lang/String;

    :cond_2
    if-nez v6, :cond_6

    const-string v7, "OK"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p1, p0, Lgbsdk/optional/applog/abff;->f:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lgbsdk/optional/applog/abff;->g:Lcom/bytedance/bdtracker/d;

    invoke-virtual {p1, v3, v4}, Lcom/bytedance/bdtracker/d;->setRangersEventVerifyEnable(ZLjava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    iget-object v0, p0, Lgbsdk/optional/applog/abff;->g:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgbsdk/optional/applog/abff;->g:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getPicker()Lcom/bytedance/applog/IPicker;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lgbsdk/optional/applog/abff;->g:Lcom/bytedance/bdtracker/d;

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getPicker()Lcom/bytedance/applog/IPicker;

    move-result-object p1

    :cond_4
    if-eqz p1, :cond_5

    invoke-interface {p1, v4}, Lcom/bytedance/applog/IPicker;->setMarqueeCookie(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lgbsdk/optional/applog/abff;->g:Lcom/bytedance/bdtracker/d;

    invoke-virtual {p1, v4}, Lcom/bytedance/bdtracker/d;->startSimulator(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, p0, Lgbsdk/optional/applog/abff;->g:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    const-string v2, "\u542f\u52a8\u57cb\u70b9\u9a8c\u8bc1|\u5708\u9009\u5931\u8d25: "

    .line 7
    invoke-static {v2}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lgbsdk/optional/applog/abff;->g:Lcom/bytedance/bdtracker/d;

    .line 8
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 9
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const-string p1, "Start simulator failed, please check server response: {}"

    invoke-interface {v0, v1, p1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
