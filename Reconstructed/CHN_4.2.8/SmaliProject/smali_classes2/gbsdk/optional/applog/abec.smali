.class public Lgbsdk/optional/applog/abec;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[I

.field public static final d:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 37

    const-string v0, "aid"

    const-string v1, "region"

    const-string v2, "os"

    const-string v3, "package"

    const-string v4, "app_version"

    const-string v5, "sdk_version"

    const-string v6, "os_version"

    const-string v7, "device_model"

    const-string v8, "resolution"

    const-string v9, "language"

    const-string v10, "timezone"

    const-string v11, "access"

    const-string v12, "display_name"

    const-string v13, "channel"

    const-string v14, "carrier"

    const-string v15, "app_language"

    const-string v16, "app_region"

    const-string v17, "tz_name"

    const-string v18, "tz_offset"

    const-string v19, "install_id"

    const-string v20, "openudid"

    const-string v21, "mcc_mnc"

    const-string v22, "rom"

    const-string v23, "manifest_version_code"

    const-string v24, "device_manufacturer"

    const-string v25, "clientudid"

    const-string v26, "sig_hash"

    const-string v27, "display_density"

    const-string v28, "os_api"

    const-string v29, "update_version_code"

    const-string v30, "density_dpi"

    const-string v31, "version_code"

    const-string v32, "sim_serial_number"

    const-string v33, "release_build"

    const-string v34, "udid"

    const-string v35, "cpu_abi"

    const-string v36, "google_aid"

    filled-new-array/range {v0 .. v36}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/optional/applog/abec;->a:[Ljava/lang/String;

    const-string v0, "setOnce"

    const-string v1, "synchronize"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/optional/applog/abec;->b:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lgbsdk/optional/applog/abec;->c:[I

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lgbsdk/optional/applog/abec;->d:[J

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method public static a(Lgbsdk/optional/applog/abbj;ILorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;Landroid/os/Handler;Z)V
    .locals 25

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const-string v6, "ssid"

    const-string v7, "user_id"

    const-string v8, "device_id"

    const-string v0, "tz_offset"

    const-string v9, "sdk_version"

    const/4 v12, 0x0

    if-nez p5, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sget-object v15, Lgbsdk/optional/applog/abec;->d:[J

    aget-wide v16, v15, v2

    sub-long v13, v13, v16

    const-wide/32 v15, 0xea60

    cmp-long v17, v13, v15

    if-lez v17, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    if-eqz v3, :cond_1

    sget-object v14, Lgbsdk/optional/applog/abec;->c:[I

    aget v14, v14, v2

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v15

    if-eq v14, v15, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    .line 1
    :goto_1
    iget-object v15, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v15, v15, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exec "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v12, [Ljava/lang/Object;

    const/16 v12, 0x9

    invoke-interface {v15, v12, v10, v11}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    if-nez v13, :cond_4

    if-eqz v4, :cond_2

    const/4 v0, 0x4

    invoke-interface {v4, v0}, Lcom/bytedance/applog/profile/UserProfileCallback;->onFail(I)V

    :cond_2
    return-void

    :cond_3
    const/4 v14, 0x1

    :cond_4
    if-eqz v14, :cond_a

    .line 4
    iget-object v10, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 5
    iget-object v10, v10, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 6
    iget-object v11, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 7
    invoke-virtual {v11}, Lcom/bytedance/bdtracker/d;->getDid()Ljava/lang/String;

    move-result-object v11

    .line 8
    iget-object v12, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 9
    iget-object v12, v12, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 10
    invoke-virtual/range {p0 .. p0}, Lgbsdk/optional/applog/abbj;->d()Lcom/bytedance/applog/UriConfig;

    move-result-object v13

    invoke-virtual {v13}, Lcom/bytedance/applog/UriConfig;->getProfileUri()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v12, v11, v14

    sget-object v14, Lgbsdk/optional/applog/abec;->b:[Ljava/lang/String;

    aget-object v14, v14, v2

    const/4 v15, 0x1

    aput-object v14, v11, v15

    const-string v14, "/service/api/v3/userprofile/%s/%s"

    invoke-static {v14, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 11
    iget-object v11, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 12
    invoke-virtual {v11}, Lcom/bytedance/bdtracker/d;->getHeader()Lorg/json/JSONObject;

    move-result-object v13

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    const-string v15, "header"

    const-string v5, "JSON handle failed"

    if-eqz v13, :cond_5

    move-object/from16 v16, v10

    .line 13
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v21, v12

    :try_start_1
    sget-object v12, Lgbsdk/optional/applog/abec;->a:[Ljava/lang/String;

    invoke-direct {v10, v13, v12}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lgbsdk/optional/applog/abce;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lgbsdk/optional/applog/abce;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v21, v12

    .line 14
    :goto_2
    :try_start_2
    iget-object v9, v11, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v10, 0x0

    new-array v12, v10, [Ljava/lang/Object;

    const/16 v10, 0x9

    .line 15
    invoke-interface {v9, v10, v5, v0, v12}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    move-object/from16 v16, v10

    move-object/from16 v21, v12

    :goto_3
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 16
    :goto_4
    invoke-virtual {v14, v15, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "profile"

    invoke-virtual {v14, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    const-string v0, "user"

    .line 17
    :try_start_3
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    if-eqz v13, :cond_6

    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    :cond_6
    invoke-virtual {v14, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 19
    iget-object v6, v11, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    const/16 v7, 0x9

    .line 20
    invoke-interface {v6, v7, v5, v0, v8}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 21
    :goto_5
    new-instance v0, Lgbsdk/optional/applog/abec$ab;

    invoke-direct {v0, v2, v3, v4}, Lgbsdk/optional/applog/abec$ab;-><init>(ILorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;)V

    new-instance v2, Lgbsdk/optional/applog/abch;

    .line 22
    iget-object v3, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v22, v14

    move-object/from16 v23, v0

    move-object/from16 v24, v16

    .line 23
    invoke-direct/range {v18 .. v24}, Lgbsdk/optional/applog/abch;-><init>(Lcom/bytedance/bdtracker/d;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;Landroid/content/Context;)V

    move-object/from16 v3, p4

    if-eqz v3, :cond_7

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_8

    .line 24
    iget-object v0, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 25
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Not allowed on main looper"

    const/16 v4, 0x9

    .line 26
    invoke-interface {v0, v4, v3, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {v2}, Lgbsdk/optional/applog/abch;->run()V

    :goto_6
    return-void

    :cond_9
    if-eqz v4, :cond_b

    const/4 v0, 0x3

    invoke-interface {v4, v0}, Lcom/bytedance/applog/profile/UserProfileCallback;->onFail(I)V

    goto :goto_7

    :cond_a
    if-eqz v4, :cond_b

    invoke-interface/range {p3 .. p3}, Lcom/bytedance/applog/profile/UserProfileCallback;->onSuccess()V

    :cond_b
    :goto_7
    return-void
.end method
