.class public Lgbsdk/common/host/ae;
.super Ljava/lang/Object;
.source "UserProfileHelper.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final aa:[Ljava/lang/String;

.field public static final ab:[I

.field public static final ac:[J

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public static constructor <clinit>()V
    .locals 38

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

    const-string v37, "is_harmony_os"

    .line 1
    filled-new-array/range {v0 .. v37}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/ae;->a:[Ljava/lang/String;

    const-string v0, "setOnce"

    const-string v1, "synchronize"

    .line 15
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/ae;->aa:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 21
    fill-array-data v1, :array_0

    sput-object v1, Lgbsdk/common/host/ae;->ab:[I

    new-array v0, v0, [J

    .line 23
    fill-array-data v0, :array_1

    sput-object v0, Lgbsdk/common/host/ae;->ac:[J

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

.method public static a(Lgbsdk/common/host/ap;ILorg/json/JSONObject;Lgbsdk/common/host/ad;Landroid/os/Handler;Z)V
    .locals 23

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v0, p5

    const-string v6, "ssid"

    const-string v7, "user_id"

    const-string v8, "tz_offset"

    const-string v9, "sdk_version"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v13, 0x1

    aput-object v12, v10, v13

    const/4 v12, 0x2

    aput-object v3, v10, v12

    const/4 v14, 0x3

    aput-object v4, v10, v14

    const/4 v15, 0x4

    aput-object v5, v10, v15

    new-instance v14, Ljava/lang/Byte;

    invoke-direct {v14, v0}, Ljava/lang/Byte;-><init>(B)V

    const/16 v16, 0x5

    aput-object v14, v10, v16

    sget-object v14, Lgbsdk/common/host/ae;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v11, 0x0

    const-string v12, "ae33a67a124e3af95e55b4357177a350"

    invoke-static {v10, v11, v14, v13, v12}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v10

    if-eqz v10, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sget-object v0, Lgbsdk/common/host/ae;->ac:[J

    aget-wide v19, v0, v2

    sub-long v17, v17, v19

    const-wide/32 v19, 0xea60

    cmp-long v0, v17, v19

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 2
    sget-object v10, Lgbsdk/common/host/ae;->ab:[I

    aget v10, v10, v2

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v12

    if-eq v10, v12, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    .line 3
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "exec "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v11}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez v0, :cond_5

    if-eqz v4, :cond_3

    .line 7
    move-object v0, v4

    check-cast v0, Lgbsdk/common/host/ae$ab;

    invoke-virtual {v0, v15}, Lgbsdk/common/host/ae$ab;->a(I)V

    :cond_3
    return-void

    :cond_4
    const/4 v10, 0x1

    :cond_5
    if-eqz v10, :cond_9

    .line 14
    invoke-static {}, Lcom/apm/applog/AppLog;->getContext()Landroid/content/Context;

    move-result-object v22

    .line 15
    iget-object v0, v1, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 16
    iget-object v0, v0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    const-string v10, "device_id"

    const-string v12, ""

    .line 17
    invoke-virtual {v0, v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    iget-object v12, v1, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 19
    invoke-virtual {v12}, Lgbsdk/common/host/abbf;->a()Ljava/lang/String;

    move-result-object v19

    .line 20
    invoke-virtual/range {p0 .. p0}, Lgbsdk/common/host/ap;->E()Lcom/apm/applog/UriConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/apm/applog/UriConfig;->getProfileUri()Ljava/lang/String;

    move-result-object v12

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v19, v0, v14

    .line 22
    sget-object v14, Lgbsdk/common/host/ae;->aa:[Ljava/lang/String;

    aget-object v14, v14, v2

    aput-object v14, v0, v13

    const-string v13, "/service/api/v3/userprofile/%s/%s"

    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 23
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 24
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "header"

    .line 25
    :try_start_0
    iget-object v0, v1, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 26
    invoke-virtual {v0}, Lgbsdk/common/host/abbf;->d()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    :try_start_1
    new-instance v14, Lorg/json/JSONObject;

    sget-object v15, Lgbsdk/common/host/ae;->a:[Ljava/lang/String;

    invoke-direct {v14, v0, v15}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v9, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 33
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 35
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 36
    :goto_2
    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "profile"

    .line 37
    invoke-virtual {v12, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v0, "user"

    .line 38
    :try_start_3
    iget-object v1, v1, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 39
    invoke-virtual {v1}, Lgbsdk/common/host/abbf;->d()Lorg/json/JSONObject;

    move-result-object v1

    .line 40
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 41
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    invoke-virtual {v12, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 46
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 48
    :goto_3
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 49
    new-instance v0, Lgbsdk/common/host/ae$ab;

    invoke-direct {v0, v2, v3, v4}, Lgbsdk/common/host/ae$ab;-><init>(ILorg/json/JSONObject;Lgbsdk/common/host/ad;)V

    .line 63
    new-instance v1, Lgbsdk/common/host/ah;

    move-object/from16 v17, v1

    move-object/from16 v21, v0

    invoke-direct/range {v17 .. v22}, Lgbsdk/common/host/ah;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgbsdk/common/host/ad;Landroid/content/Context;)V

    if-eqz v5, :cond_6

    .line 66
    invoke-virtual {v5, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 68
    :cond_6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_7

    .line 69
    invoke-static {v11}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    .line 71
    :cond_7
    invoke-virtual {v1}, Lgbsdk/common/host/ah;->run()V

    :goto_4
    return-void

    :cond_8
    if-eqz v4, :cond_a

    .line 77
    move-object v0, v4

    check-cast v0, Lgbsdk/common/host/ae$ab;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lgbsdk/common/host/ae$ab;->a(I)V

    goto :goto_5

    :cond_9
    if-eqz v4, :cond_a

    .line 82
    move-object v0, v4

    check-cast v0, Lgbsdk/common/host/ae$ab;

    invoke-virtual {v0}, Lgbsdk/common/host/ae$ab;->a()V

    :cond_a
    :goto_5
    return-void
.end method
