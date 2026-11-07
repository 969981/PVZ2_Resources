.class public Lgbsdk/common/host/abwu;
.super Ljava/lang/Object;
.source "TNCConfigHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TNCConfigHandler"


# instance fields
.field public aJi:Lgbsdk/common/host/abwr;

.field private mContext:Landroid/content/Context;

.field private mIsMainProcess:Z

.field public rI:Ljava/lang/String;

.field private sF:Ljava/lang/String;

.field private sG:Ljava/lang/String;

.field private sJ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lgbsdk/common/host/abwu;->sF:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lgbsdk/common/host/abwu;->sG:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lgbsdk/common/host/abwu;->sJ:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lgbsdk/common/host/abwu;->rI:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lgbsdk/common/host/abwu;->mContext:Landroid/content/Context;

    .line 40
    iput-boolean p2, p0, Lgbsdk/common/host/abwu;->mIsMainProcess:Z

    .line 41
    new-instance p1, Lgbsdk/common/host/abwr;

    invoke-direct {p1}, Lgbsdk/common/host/abwr;-><init>()V

    iput-object p1, p0, Lgbsdk/common/host/abwu;->aJi:Lgbsdk/common/host/abwr;

    return-void
.end method

.method private M(Lorg/json/JSONObject;)Lgbsdk/common/host/abwr;
    .locals 9

    const-string v0, "host_replace_map"

    const-string v1, "local_host_filter"

    const-string v2, "probe_enable"

    const-string v3, "local_enable"

    const/4 v4, 0x0

    .line 252
    :try_start_0
    invoke-static {}, Lgbsdk/common/host/abmf;->cv()Lgbsdk/common/host/abmf;

    move-result-object v5

    iget-object v5, v5, Lgbsdk/common/host/abmf;->rH:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    const-string v5, "tnc_config"

    .line 253
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 254
    new-instance v5, Lgbsdk/common/host/abwr;

    invoke-direct {v5}, Lgbsdk/common/host/abwr;-><init>()V

    if-nez p1, :cond_0

    return-object v5

    .line 258
    :cond_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    .line 259
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v5, Lgbsdk/common/host/abwr;->aIU:Z

    .line 261
    :cond_2
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 262
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v7, 0x0

    :cond_3
    iput-boolean v7, v5, Lgbsdk/common/host/abwr;->aIV:Z

    .line 265
    :cond_4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 266
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 267
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 268
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_6

    const/4 v3, 0x0

    .line 269
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 270
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 271
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    .line 274
    :cond_5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 277
    :cond_6
    iput-object v2, v5, Lgbsdk/common/host/abwr;->aIW:Ljava/util/Map;

    goto :goto_3

    .line 279
    :cond_7
    iput-object v4, v5, Lgbsdk/common/host/abwr;->aIW:Ljava/util/Map;

    .line 282
    :goto_3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 283
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 285
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 286
    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 287
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 288
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 289
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_4

    .line 292
    :cond_9
    invoke-static {}, Lgbsdk/common/host/abmf;->cv()Lgbsdk/common/host/abmf;

    move-result-object v6

    iget-object v6, v6, Lgbsdk/common/host/abmf;->rH:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    const-string v0, "req_to_cnt"

    .line 297
    iget v1, v5, Lgbsdk/common/host/abwr;->aIX:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lgbsdk/common/host/abwr;->aIX:I

    const-string v0, "req_to_api_cnt"

    .line 298
    iget v1, v5, Lgbsdk/common/host/abwr;->aIY:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lgbsdk/common/host/abwr;->aIY:I

    const-string v0, "req_to_ip_cnt"

    .line 299
    iget v1, v5, Lgbsdk/common/host/abwr;->aIZ:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lgbsdk/common/host/abwr;->aIZ:I

    const-string v0, "req_err_cnt"

    .line 300
    iget v1, v5, Lgbsdk/common/host/abwr;->aJa:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lgbsdk/common/host/abwr;->aJa:I

    const-string v0, "req_err_api_cnt"

    .line 301
    iget v1, v5, Lgbsdk/common/host/abwr;->aJb:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lgbsdk/common/host/abwr;->aJb:I

    const-string v0, "req_err_ip_cnt"

    .line 302
    iget v1, v5, Lgbsdk/common/host/abwr;->aJc:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lgbsdk/common/host/abwr;->aJc:I

    const-string v0, "update_interval"

    .line 303
    iget v1, v5, Lgbsdk/common/host/abwr;->aJd:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lgbsdk/common/host/abwr;->aJd:I

    const-string v0, "update_random_range"

    .line 304
    iget v1, v5, Lgbsdk/common/host/abwr;->aJe:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lgbsdk/common/host/abwr;->aJe:I

    const-string v0, "http_code_black"

    .line 305
    iget-object v1, v5, Lgbsdk/common/host/abwr;->aJf:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lgbsdk/common/host/abwr;->aJf:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v5

    :catchall_0
    move-exception p1

    .line 309
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v4
.end method

.method private cF(Ljava/lang/String;)Z
    .locals 7

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    invoke-static {}, Lgbsdk/common/host/abkj;->cD()Lgbsdk/common/host/abkj;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/common/host/abkj;->cE()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 50
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ";"

    const-string v3, "="

    .line 51
    invoke-static {p1, v2, v3, v0}, Lgbsdk/common/host/ablf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    goto/16 :goto_2

    .line 55
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 56
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    .line 57
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const-string v6, "force_accept"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    iput-object v3, p0, Lgbsdk/common/host/abwu;->sF:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lgbsdk/common/host/abwu;->sJ:Ljava/lang/String;

    return v1

    .line 64
    :cond_2
    invoke-static {}, Lgbsdk/common/host/abkj;->cD()Lgbsdk/common/host/abkj;

    move-result-object v0

    iget-object v0, v0, Lgbsdk/common/host/abkj;->sJ:Ljava/lang/String;

    const-string v4, "did"

    .line 66
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "uid"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    .line 69
    :cond_4
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 70
    invoke-static {}, Lgbsdk/common/host/abkj;->cD()Lgbsdk/common/host/abkj;

    move-result-object v4

    iget-object v4, v4, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_6

    .line 81
    iput-object v3, p0, Lgbsdk/common/host/abwu;->sF:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lgbsdk/common/host/abwu;->sJ:Ljava/lang/String;

    .line 85
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accept: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " tnc source: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " tnc region: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " user source: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " user region: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {}, Lgbsdk/common/host/abkj;->cD()Lgbsdk/common/host/abkj;

    move-result-object p1

    iget-object p1, p1, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TNCConfigHandler"

    .line 85
    invoke-static {v0, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_7
    :goto_2
    return v2

    :cond_8
    :goto_3
    return v1
.end method

.method private hv()Ljava/lang/String;
    .locals 4

    .line 148
    sget-object v0, Lgbsdk/common/host/abwt;->aJs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TNCConfigHandler"

    if-eqz v0, :cond_0

    const-string v0, "getGetDomainDefaultJson no existed"

    .line 149
    invoke-static {v2, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 154
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    sget-object v3, Lgbsdk/common/host/abwt;->aJs:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    .line 155
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "use get domain default json."

    .line 156
    invoke-static {v2, v3}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 159
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lgbsdk/common/host/abwt$ab;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p3

    const-string v10, "ttnet_tnc_abtest"

    const-string v11, "ttnet_tnc_etag"

    const-string v12, "tnc_config_str"

    const-string v13, "ttnet_tnc_config"

    const-string v14, ""

    const-string v15, "TNCConfigHandler"

    const-string v2, "handleConfigChanged"

    .line 92
    invoke-static {v15, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-boolean v2, v1, Lgbsdk/common/host/abwu;->mIsMainProcess:Z

    const/4 v7, 0x0

    if-nez v2, :cond_1

    .line 94
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "handleConfigChanged: no mainProc"

    .line 95
    invoke-static {v15, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v7

    :cond_1
    move-object/from16 v2, p4

    .line 100
    invoke-direct {v1, v2}, Lgbsdk/common/host/abwu;->cF(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return v7

    .line 104
    :cond_2
    invoke-static {}, Lgbsdk/common/host/abmf;->cv()Lgbsdk/common/host/abmf;

    move-result-object v2

    move-object/from16 v3, p2

    iget v4, v3, Lgbsdk/common/host/abwt$ab;->lM:I

    iget-object v6, v1, Lgbsdk/common/host/abwu;->rI:Ljava/lang/String;

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v16, v10

    const/4 v10, 0x0

    move-wide/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Lgbsdk/common/host/abmf;->a(Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;J)V

    .line 105
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object v2

    invoke-virtual {v2, v0}, Lgbsdk/common/host/ablz;->s(Lorg/json/JSONObject;)V

    .line 106
    invoke-static/range {p1 .. p1}, Lgbsdk/common/host/abtm;->H(Lorg/json/JSONObject;)V

    .line 107
    invoke-static/range {p1 .. p1}, Lgbsdk/common/host/abhc;->s(Lorg/json/JSONObject;)V

    .line 108
    invoke-static {}, Lgbsdk/common/host/abnv;->cO()Lgbsdk/common/host/abnv;

    move-result-object v2

    invoke-virtual {v2, v0}, Lgbsdk/common/host/abnv;->s(Lorg/json/JSONObject;)V

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    .line 111
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lgbsdk/common/host/abwu;->M(Lorg/json/JSONObject;)Lgbsdk/common/host/abwr;

    move-result-object v5

    .line 112
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 113
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleConfigChanged, newConfig: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_3

    const-string v7, "null"

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Lgbsdk/common/host/abwr;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_4
    if-nez v5, :cond_7

    .line 127
    iget-object v0, v1, Lgbsdk/common/host/abwu;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v13, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    invoke-interface {v0, v12, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    iget-object v5, v1, Lgbsdk/common/host/abwu;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v14}, Lgbsdk/common/host/abwn;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 131
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 132
    invoke-interface {v0, v11, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 133
    iget-object v4, v1, Lgbsdk/common/host/abwu;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v9}, Lgbsdk/common/host/abwn;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 137
    :cond_5
    iget-object v3, v1, Lgbsdk/common/host/abwu;->rI:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 138
    iput-object v14, v1, Lgbsdk/common/host/abwu;->rI:Ljava/lang/String;

    .line 140
    :cond_6
    iget-object v3, v1, Lgbsdk/common/host/abwu;->rI:Ljava/lang/String;

    move-object/from16 v6, v16

    :goto_1
    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    iget-object v0, v1, Lgbsdk/common/host/abwu;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lgbsdk/common/host/abwu;->rI:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lgbsdk/common/host/abwn;->a(Landroid/content/Context;ILjava/lang/String;)V

    return v10

    :cond_7
    move-object/from16 v6, v16

    .line 118
    :try_start_1
    iput-object v5, v1, Lgbsdk/common/host/abwu;->aJi:Lgbsdk/common/host/abwr;

    .line 120
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    iget-object v5, v1, Lgbsdk/common/host/abwu;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v13, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 128
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 129
    invoke-interface {v5, v12, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    iget-object v7, v1, Lgbsdk/common/host/abwu;->mContext:Landroid/content/Context;

    invoke-static {v7, v4, v0}, Lgbsdk/common/host/abwn;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 131
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 132
    invoke-interface {v5, v11, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 133
    iget-object v0, v1, Lgbsdk/common/host/abwu;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v9}, Lgbsdk/common/host/abwn;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 137
    :cond_8
    iget-object v0, v1, Lgbsdk/common/host/abwu;->rI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 138
    iput-object v14, v1, Lgbsdk/common/host/abwu;->rI:Ljava/lang/String;

    .line 140
    :cond_9
    iget-object v0, v1, Lgbsdk/common/host/abwu;->rI:Ljava/lang/String;

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    iget-object v0, v1, Lgbsdk/common/host/abwu;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lgbsdk/common/host/abwu;->rI:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lgbsdk/common/host/abwn;->a(Landroid/content/Context;ILjava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v6, v16

    .line 122
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    new-instance v0, Lgbsdk/common/host/abwr;

    invoke-direct {v0}, Lgbsdk/common/host/abwr;-><init>()V

    iput-object v0, v1, Lgbsdk/common/host/abwu;->aJi:Lgbsdk/common/host/abwr;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 127
    iget-object v0, v1, Lgbsdk/common/host/abwu;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v13, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    invoke-interface {v0, v12, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    iget-object v5, v1, Lgbsdk/common/host/abwu;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v14}, Lgbsdk/common/host/abwn;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 131
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 132
    invoke-interface {v0, v11, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 133
    iget-object v4, v1, Lgbsdk/common/host/abwu;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v9}, Lgbsdk/common/host/abwn;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 137
    :cond_a
    iget-object v3, v1, Lgbsdk/common/host/abwu;->rI:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 138
    iput-object v14, v1, Lgbsdk/common/host/abwu;->rI:Ljava/lang/String;

    .line 140
    :cond_b
    iget-object v3, v1, Lgbsdk/common/host/abwu;->rI:Ljava/lang/String;

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    .line 127
    iget-object v5, v1, Lgbsdk/common/host/abwu;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v13, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 128
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 129
    invoke-interface {v5, v12, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    iget-object v7, v1, Lgbsdk/common/host/abwu;->mContext:Landroid/content/Context;

    invoke-static {v7, v4, v14}, Lgbsdk/common/host/abwn;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 131
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 132
    invoke-interface {v5, v11, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 133
    iget-object v4, v1, Lgbsdk/common/host/abwu;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v9}, Lgbsdk/common/host/abwn;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 137
    :cond_c
    iget-object v3, v1, Lgbsdk/common/host/abwu;->rI:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 138
    iput-object v14, v1, Lgbsdk/common/host/abwu;->rI:Ljava/lang/String;

    .line 140
    :cond_d
    iget-object v3, v1, Lgbsdk/common/host/abwu;->rI:Ljava/lang/String;

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    iget-object v3, v1, Lgbsdk/common/host/abwu;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lgbsdk/common/host/abwu;->rI:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lgbsdk/common/host/abwn;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 142
    throw v0
.end method

.method public u(J)V
    .locals 12

    const-string v0, "TNCConfigHandler"

    const-string v1, "load local config"

    .line 167
    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-boolean v1, p0, Lgbsdk/common/host/abwu;->mIsMainProcess:Z

    if-nez v1, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v1, p0, Lgbsdk/common/host/abwu;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "ttnet_tnc_config"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "tnc_config_str"

    const/4 v3, 0x0

    .line 172
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ttnet_tnc_etag"

    .line 173
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "ttnet_tnc_abtest"

    .line 174
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 175
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    invoke-direct {p0}, Lgbsdk/common/host/abwu;->hv()Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "load local config failed."

    .line 178
    invoke-static {v0, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 184
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lgbsdk/common/host/abmf;->cv()Lgbsdk/common/host/abmf;

    move-result-object v5

    sget-object v2, Lgbsdk/common/host/abwt$ab;->aJG:Lgbsdk/common/host/abwt$ab;

    iget v7, v2, Lgbsdk/common/host/abwt$ab;->lM:I

    move-object v6, v1

    move-wide v10, p1

    invoke-virtual/range {v5 .. v11}, Lgbsdk/common/host/abmf;->a(Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;J)V

    .line 187
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object p1

    invoke-virtual {p1, v1}, Lgbsdk/common/host/ablz;->s(Lorg/json/JSONObject;)V

    .line 188
    invoke-static {v1}, Lgbsdk/common/host/abtm;->H(Lorg/json/JSONObject;)V

    .line 189
    invoke-static {v1}, Lgbsdk/common/host/abhc;->s(Lorg/json/JSONObject;)V

    .line 190
    invoke-static {}, Lgbsdk/common/host/abnv;->cO()Lgbsdk/common/host/abnv;

    move-result-object p1

    invoke-virtual {p1, v1}, Lgbsdk/common/host/abnv;->s(Lorg/json/JSONObject;)V

    .line 191
    invoke-direct {p0, v1}, Lgbsdk/common/host/abwu;->M(Lorg/json/JSONObject;)Lgbsdk/common/host/abwr;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 193
    iput-object p1, p0, Lgbsdk/common/host/abwu;->aJi:Lgbsdk/common/host/abwr;

    .line 195
    :cond_2
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 196
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadLocalConfig: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3

    const-string p1, "null"

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lgbsdk/common/host/abwr;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 199
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 200
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 201
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadLocalConfig: except: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public v(J)V
    .locals 10

    const-string v0, "TNCConfigHandler"

    .line 210
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/abwu;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lgbsdk/common/host/abwn;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    invoke-direct {p0}, Lgbsdk/common/host/abwu;->hv()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "load local config failed."

    .line 214
    invoke-static {v0, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 219
    :cond_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-direct {p0, v9}, Lgbsdk/common/host/abwu;->M(Lorg/json/JSONObject;)Lgbsdk/common/host/abwr;

    move-result-object v1

    .line 222
    iget-object v2, p0, Lgbsdk/common/host/abwu;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lgbsdk/common/host/abwn;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 223
    iget-object v2, p0, Lgbsdk/common/host/abwu;->mContext:Landroid/content/Context;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lgbsdk/common/host/abwn;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 225
    invoke-static {}, Lgbsdk/common/host/abmf;->cv()Lgbsdk/common/host/abmf;

    move-result-object v2

    sget-object v3, Lgbsdk/common/host/abwt$ab;->aJG:Lgbsdk/common/host/abwt$ab;

    iget v4, v3, Lgbsdk/common/host/abwt$ab;->lM:I

    move-object v3, v9

    move-wide v7, p1

    invoke-virtual/range {v2 .. v8}, Lgbsdk/common/host/abmf;->a(Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;J)V

    .line 227
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object p1

    invoke-virtual {p1, v9}, Lgbsdk/common/host/ablz;->s(Lorg/json/JSONObject;)V

    .line 228
    invoke-static {v9}, Lgbsdk/common/host/abtm;->H(Lorg/json/JSONObject;)V

    .line 229
    invoke-static {v9}, Lgbsdk/common/host/abhc;->s(Lorg/json/JSONObject;)V

    .line 230
    invoke-static {}, Lgbsdk/common/host/abnv;->cO()Lgbsdk/common/host/abnv;

    move-result-object p1

    invoke-virtual {p1, v9}, Lgbsdk/common/host/abnv;->s(Lorg/json/JSONObject;)V

    .line 231
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loadLocalConfigForOtherProcess, config: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    const-string p2, "null"

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {v1}, Lgbsdk/common/host/abwr;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-static {v0, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 236
    iput-object v1, p0, Lgbsdk/common/host/abwu;->aJi:Lgbsdk/common/host/abwr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 239
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 240
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadLocalConfigForOtherProcess, except: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
