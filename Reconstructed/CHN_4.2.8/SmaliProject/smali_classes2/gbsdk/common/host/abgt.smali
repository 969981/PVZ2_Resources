.class public final Lgbsdk/common/host/abgt;
.super Ljava/lang/Object;
.source "AlogUploadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abgt$ab;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;Lgbsdk/common/host/abgt$ab;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "Lgbsdk/common/host/abgt$ab;",
            ")Z"
        }
    .end annotation

    move-object/from16 v1, p5

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 45
    :try_start_0
    invoke-static {}, Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;->getInstance()Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;

    invoke-static {p0}, Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;->getSDKCloud(Ljava/lang/String;)Lcom/apmplus/sdk/cloudmessage/SDKCloud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apmplus/sdk/cloudmessage/SDKCloud;->getCloudMessageManager()Lgbsdk/common/host/abwj;

    move-result-object v0

    .line 1086
    iget-object v0, v0, Lgbsdk/common/host/abwj;->aKH:Lgbsdk/common/host/abgm;

    .line 47
    invoke-static {p0}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v4

    .line 2072
    iget-object v4, v4, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 47
    invoke-virtual {v4}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getCloudUserUploadUrls()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    .line 46
    invoke-interface {v0, v4, v5}, Lgbsdk/common/host/abgm;->q(Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/abgl;

    move-result-object v0

    const-string v4, "aid"

    move-object v5, p0

    .line 49
    invoke-interface {v0, v4, p0}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "device_id"

    move-object v6, p1

    .line 50
    invoke-interface {v0, v4, p1}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {p0}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v4

    .line 3072
    iget-object v4, v4, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 51
    invoke-virtual {v4}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getDynamicParams()Lcom/monitor/cloudmessage/config/SDKIDynamicParams;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "user_id"

    .line 52
    invoke-static {p0}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v5

    .line 4072
    iget-object v5, v5, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 52
    invoke-virtual {v5}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getDynamicParams()Lcom/monitor/cloudmessage/config/SDKIDynamicParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/monitor/cloudmessage/config/SDKIDynamicParams;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v4, "os"

    const-string v5, "Android"

    .line 54
    invoke-interface {v0, v4, v5}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "process_name"

    move-object v5, p2

    .line 55
    invoke-interface {v0, v4, p2}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v6, "params.txt"

    const-string v7, "env"

    const-string v8, "logtype"

    if-eqz v5, :cond_2

    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 58
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 60
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v5, "alog"

    .line 61
    invoke-interface {v11, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-interface {v11, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    const-string v10, "binary"

    move-object v6, v0

    move-object v8, v9

    move-object v9, v5

    invoke-interface/range {v6 .. v11}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 67
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "filetype"

    const-string v9, "common_params"

    .line 68
    invoke-interface {v4, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p4, :cond_3

    move-object v5, v2

    goto :goto_1

    .line 71
    :cond_3
    invoke-virtual/range {p4 .. p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 72
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 73
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v7, "defaultData"

    const-string v8, "none commonParams"

    .line 75
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 78
    :catch_0
    :try_start_3
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    const-string v7, "text/plain"

    .line 80
    invoke-interface {v0, v6, v5, v7, v4}, Lgbsdk/common/host/abgl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 82
    invoke-interface {v0}, Lgbsdk/common/host/abgl;->aM()Lgbsdk/common/host/abgj;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 5033
    :try_start_4
    iget-object v4, v0, Lgbsdk/common/host/abgj;->fT:[B

    if-nez v4, :cond_5

    .line 87
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "ALOG_UPLOAD_RESPONSE"

    const-string v6, "null"

    .line 88
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "ALOG_UPLOAD_STATUS"

    .line 6029
    iget v0, v0, Lgbsdk/common/host/abgj;->a:I

    .line 89
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 v0, 0xb

    .line 90
    invoke-interface {v1, v3, v0, v2, v4}, Lgbsdk/common/host/abgt$ab;->a(ZILjava/lang/Exception;Lorg/json/JSONObject;)V

    return v3

    .line 94
    :cond_5
    new-instance v4, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    .line 6033
    iget-object v0, v0, Lgbsdk/common/host/abgj;->fT:[B

    .line 94
    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "errno"

    const/4 v5, -0x1

    .line 95
    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v6, 0xc8

    if-ne v0, v6, :cond_6

    const/4 v0, 0x1

    .line 98
    invoke-interface {v1, v0, v5, v2, v4}, Lgbsdk/common/host/abgt$ab;->a(ZILjava/lang/Exception;Lorg/json/JSONObject;)V

    return v0

    .line 103
    :cond_6
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "info"

    .line 104
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v0, 0x6

    .line 105
    invoke-interface {v1, v3, v0, v2, v4}, Lgbsdk/common/host/abgt$ab;->a(ZILjava/lang/Exception;Lorg/json/JSONObject;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v4, 0x7

    .line 110
    :try_start_5
    invoke-interface {v1, v3, v4, v0, v2}, Lgbsdk/common/host/abgt$ab;->a(ZILjava/lang/Exception;Lorg/json/JSONObject;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const/16 v4, 0xd

    .line 119
    invoke-interface {v1, v3, v4, v0, v2}, Lgbsdk/common/host/abgt$ab;->a(ZILjava/lang/Exception;Lorg/json/JSONObject;)V

    goto :goto_2

    :catch_3
    move-exception v0

    const/16 v4, 0x8

    .line 115
    invoke-interface {v1, v3, v4, v0, v2}, Lgbsdk/common/host/abgt$ab;->a(ZILjava/lang/Exception;Lorg/json/JSONObject;)V

    :goto_2
    return v3
.end method
