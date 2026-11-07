.class public Lgbsdk/common/host/as;
.super Lgbsdk/common/host/ao;
.source "Register.java"


# static fields
.field public static final aJ:[J

.field public static final aK:[J

.field public static final aL:[J

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [J

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lgbsdk/common/host/as;->aJ:[J

    const/16 v0, 0x8

    new-array v0, v0, [J

    .line 6
    fill-array-data v0, :array_1

    sput-object v0, Lgbsdk/common/host/as;->aK:[J

    const/16 v0, 0xe

    new-array v0, v0, [J

    .line 11
    fill-array-data v0, :array_2

    sput-object v0, Lgbsdk/common/host/as;->aL:[J

    return-void

    :array_0
    .array-data 8
        0xea60
        0xea60
        0xea60
        0x1d4c0
        0x1d4c0
        0x2bf20
        0x2bf20
        0x57e40
        0x57e40
        0x83d60
        0x83d60
    .end array-data

    :array_1
    .array-data 8
        0x2bf20
        0x2bf20
        0x57e40
        0x57e40
        0x83d60
        0x83d60
        0xafc80
        0xafc80
    .end array-data

    :array_2
    .array-data 8
        0x2710
        0x2710
        0x4e20
        0x4e20
        0xea60
        0xea60
        0x1d4c0
        0x1d4c0
        0x2bf20
        0x2bf20
        0x57e40
        0x57e40
        0x83d60
        0x83d60
    .end array-data
.end method

.method public constructor <init>(Lgbsdk/common/host/ap;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 2
    iget-object v0, v0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    const-string v1, "register_time"

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 4
    invoke-direct {p0, p1, v0, v1}, Lgbsdk/common/host/ao;-><init>(Lgbsdk/common/host/ap;J)V

    return-void
.end method


# virtual methods
.method public B()[J
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/as;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "d23c40f07d3c6291bd5c9cd361cd9b04"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, [J

    return-object v0

    .line 1
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 2
    iget-object v0, v0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 3
    invoke-virtual {v0}, Lgbsdk/common/host/abbf;->J()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    .line 14
    invoke-static {v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    .line 15
    sget-object v0, Lgbsdk/common/host/as;->aK:[J

    goto :goto_0

    .line 16
    :cond_1
    sget-object v0, Lgbsdk/common/host/as;->aJ:[J

    goto :goto_0

    .line 17
    :cond_2
    sget-object v0, Lgbsdk/common/host/as;->aK:[J

    goto :goto_0

    .line 18
    :cond_3
    sget-object v0, Lgbsdk/common/host/as;->aL:[J

    :goto_0
    return-object v0
.end method

.method public c()Z
    .locals 31

    move-object/from16 v1, p0

    const-string v2, "channel"

    const-string v3, "version_code"

    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/Object;

    sget-object v5, Lgbsdk/common/host/as;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v6, "698ba3b562ed80ae3d1c6e83a5917918"

    invoke-static {v0, v1, v5, v4, v6}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " start work"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;)V

    .line 2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 4
    iget-object v0, v1, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 5
    iget-object v7, v0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 6
    iget-object v0, v0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 7
    iget-object v8, v0, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {v8}, Lcom/apm/applog/InitConfig;->getPreInstallCallback()Lgbsdk/common/host/abck;

    .line 8
    invoke-virtual {v7}, Lgbsdk/common/host/abbf;->d()Lorg/json/JSONObject;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_22

    .line 9
    iget-object v0, v0, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    .line 10
    invoke-virtual {v0}, Lcom/apm/applog/InitConfig;->getCommonHeader()Ljava/util/Map;

    move-result-object v10

    .line 12
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 13
    invoke-static {v11, v8}, Lgbsdk/common/host/abdh;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 14
    sget-object v0, Lgbsdk/common/host/abdq;->bY:Lgbsdk/common/host/abay;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v8}, Lgbsdk/common/host/abay;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v8, "req_id"

    .line 15
    invoke-virtual {v11, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    :try_start_0
    iget-object v0, v1, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 18
    iget-object v0, v0, Lgbsdk/common/host/ap;->ap:Landroid/app/Application;

    .line 19
    invoke-static {v0}, Lgbsdk/common/host/abec;->b(Landroid/content/Context;)Z

    move-result v0

    .line 20
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "oaid maySupport: returned="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;)V

    const-string v8, "oaid_may_support"

    .line 21
    invoke-virtual {v11, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v8, "oaid maySupport"

    .line 22
    invoke-static {v8, v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v10, :cond_2

    .line 23
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 26
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v11, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    const-string v0, "header"

    .line 30
    invoke-virtual {v6, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "magic_tag"

    const-string v8, "ss_app_log"

    .line 31
    invoke-virtual {v6, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-string v0, "_gen_time"

    invoke-virtual {v6, v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 36
    iget-object v0, v1, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 37
    iget-object v0, v0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 38
    iget-object v0, v0, Lgbsdk/common/host/abbk;->p:Ljava/lang/String;

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v10, "bd_did_life_time"

    const-string v11, "register_time"

    const-string v12, "cd"

    const-wide/16 v13, 0x0

    const-string v15, "bd_did"

    if-nez v8, :cond_3

    .line 40
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 41
    invoke-virtual {v6, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {v6, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register:userDid:"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0, v9}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const/4 v14, 0x1

    goto/16 :goto_a

    .line 45
    :cond_3
    iget-object v0, v1, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 46
    iget-object v0, v0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 47
    invoke-virtual {v0}, Lgbsdk/common/host/abbf;->b()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    .line 51
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 52
    iget-object v0, v1, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 53
    iget-object v0, v0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 54
    iget-object v0, v0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    .line 55
    invoke-virtual {v0, v11, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v18

    .line 56
    iget-object v0, v1, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 57
    iget-object v0, v0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 58
    iget-object v0, v0, Lgbsdk/common/host/abbf;->be:Landroid/content/SharedPreferences;

    invoke-interface {v0, v10, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    mul-long v20, v20, v22

    add-long v20, v20, v18

    cmp-long v0, v20, v16

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_6

    .line 59
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 60
    iget-object v0, v1, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 61
    iget-object v0, v0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 62
    invoke-virtual {v0}, Lgbsdk/common/host/abbf;->b()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {v6, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    invoke-virtual {v6, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Register:bdDid:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0, v9}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v14, 0x0

    goto/16 :goto_a

    .line 68
    :cond_6
    iget-object v0, v1, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 69
    iget-object v0, v0, Lgbsdk/common/host/ap;->ap:Landroid/app/Application;

    .line 70
    invoke-virtual {v7}, Lgbsdk/common/host/abbf;->d()Lorg/json/JSONObject;

    move-result-object v4

    iget-object v8, v1, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 71
    invoke-virtual {v8}, Lgbsdk/common/host/ap;->E()Lcom/apm/applog/UriConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/apm/applog/UriConfig;->getRegisterUri()Ljava/lang/String;

    move-result-object v8

    sget-object v13, Lgbsdk/common/host/abal;->br:Lgbsdk/common/host/abal;

    const/4 v14, 0x1

    .line 72
    invoke-static {v0, v4, v8, v14, v13}, Lgbsdk/common/host/ak;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLgbsdk/common/host/abal;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 73
    iget-object v4, v4, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 74
    invoke-virtual {v4}, Lgbsdk/common/host/abbk;->y()Ljava/lang/String;

    move-result-object v4

    iget-object v8, v1, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 75
    iget-object v8, v8, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 76
    iget-object v8, v8, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {v8}, Lcom/apm/applog/InitConfig;->getToken()Ljava/lang/String;

    move-result-object v8

    .line 77
    invoke-static {}, Lgbsdk/common/host/aj;->a()Ljava/util/HashMap;

    move-result-object v13

    const-string v14, "aid"

    .line 78
    invoke-virtual {v13, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "x-auth-token"

    .line 79
    invoke-virtual {v13, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :try_start_1
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgbsdk/common/host/abam;->q(Ljava/lang/String;)[B

    move-result-object v4

    .line 84
    invoke-static {}, Lcom/apm/applog/AppLog;->getNetClient()Lcom/apm/applog/network/INetworkClient;

    move-result-object v6

    invoke-static {v0}, Lgbsdk/common/host/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4, v13}, Lcom/apm/applog/network/INetworkClient;->post(Ljava/lang/String;[BLjava/util/Map;)Lcom/apm/applog/network/NetworkResponse;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 85
    invoke-virtual {v0}, Lcom/apm/applog/network/NetworkResponse;->getStatusCode()I

    move-result v4

    const/16 v6, 0xc8

    if-ne v4, v6, :cond_7

    .line 86
    invoke-virtual {v0}, Lcom/apm/applog/network/NetworkResponse;->getResponseBytes()[B

    move-result-object v0

    if-eqz v0, :cond_7

    .line 88
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :cond_7
    move-object v4, v9

    .line 91
    :goto_5
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request register success: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0, v9}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v4, v9

    :goto_6
    const-string v6, "request register error."

    .line 93
    invoke-static {v6, v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    if-eqz v4, :cond_8

    .line 99
    :try_start_3
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 100
    :try_start_4
    invoke-static {v6}, Lgbsdk/common/host/aj;->a(Lorg/json/JSONObject;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v6, v9

    .line 102
    :goto_8
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parse register response error:"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-static {v4, v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_8
    move-object v6, v9

    :goto_9
    const-string v0, "Register:net register"

    .line 105
    invoke-static {v0, v9}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :goto_a
    if-eqz v6, :cond_23

    const-string v0, "device_id"

    const-string v4, ""

    .line 106
    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "install_id"

    const-string v13, "iid"

    .line 107
    invoke-virtual {v6, v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v9, "ssid"

    .line 108
    invoke-virtual {v6, v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v9

    .line 109
    invoke-virtual {v6, v15, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 110
    invoke-virtual {v6, v12, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move/from16 v20, v14

    move-object/from16 v19, v15

    const-wide/16 v14, 0x0

    .line 111
    invoke-virtual {v6, v10, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v21

    const-wide/32 v14, 0x93a80

    cmp-long v23, v21, v14

    if-lez v23, :cond_9

    goto :goto_b

    :cond_9
    move-wide/from16 v14, v21

    :goto_b
    move-object/from16 v21, v10

    .line 116
    invoke-virtual {v7}, Lgbsdk/common/host/abbf;->w()Ljava/lang/String;

    move-result-object v10

    .line 117
    sget-boolean v22, Lgbsdk/common/host/abdn;->b:Z

    move-object/from16 v26, v10

    const-string v10, "saveRegisterInfo, "

    move-wide/from16 v23, v14

    const-string v14, ", "

    if-eqz v22, :cond_a

    .line 118
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    invoke-static {v10, v14}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 121
    :cond_a
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    invoke-static {v10, v14}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    const-string v10, "new_user"

    const/4 v14, 0x0

    .line 123
    invoke-virtual {v6, v10, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-lez v10, :cond_b

    const/4 v10, 0x1

    goto :goto_d

    :cond_b
    const/4 v10, 0x0

    :goto_d
    iput-boolean v10, v7, Lgbsdk/common/host/abbf;->i:Z

    const-string v10, "device_token"

    .line 124
    invoke-virtual {v6, v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 125
    invoke-static {v5}, Lgbsdk/common/host/abdh;->a(Ljava/lang/String;)Z

    move-result v15

    .line 126
    invoke-static {v13}, Lgbsdk/common/host/abdh;->a(Ljava/lang/String;)Z

    move-result v27

    .line 127
    invoke-static {v9}, Lgbsdk/common/host/abdh;->a(Ljava/lang/String;)Z

    move-result v28

    .line 128
    invoke-static {v12}, Lgbsdk/common/host/abdh;->a(Ljava/lang/String;)Z

    move-result v12

    .line 130
    :try_start_5
    invoke-static {v1}, Lgbsdk/common/host/abdh;->a(Ljava/lang/String;)Z

    move-result v22
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_6

    move-object/from16 v29, v1

    .line 132
    :try_start_6
    iget-object v1, v7, Lgbsdk/common/host/abbf;->be:Landroid/content/SharedPreferences;

    move-object/from16 v25, v13

    const/4 v13, 0x0

    invoke-interface {v1, v3, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 133
    iget-object v13, v7, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    move-object/from16 v30, v8

    const/4 v8, 0x0

    .line 134
    invoke-virtual {v13, v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 136
    iget-object v8, v7, Lgbsdk/common/host/abbf;->be:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    if-eq v1, v13, :cond_c

    .line 138
    invoke-interface {v8, v3, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 141
    :cond_c
    iget-object v1, v7, Lgbsdk/common/host/abbf;->be:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    iget-object v3, v7, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    .line 143
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 145
    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    :cond_d
    invoke-interface {v8, v10, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-nez v15, :cond_e

    if-eqz v28, :cond_f

    if-eqz v12, :cond_f

    :cond_e
    if-eqz v27, :cond_f

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz v20, :cond_11

    .line 152
    invoke-interface {v8, v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v11, v1}, Lgbsdk/common/host/abbf;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_e

    :cond_f
    if-nez v15, :cond_11

    if-eqz v28, :cond_10

    if-nez v12, :cond_11

    .line 157
    :cond_10
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "response"

    .line 158
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    iget-object v2, v7, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    invoke-virtual {v2}, Lgbsdk/common/host/abbk;->y()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/apm/applog/AppLog;->getInstance(Ljava/lang/String;)Lcom/apm/applog/AppLog;

    move-result-object v2

    const-string v3, "tt_fetch_did_error"

    invoke-virtual {v2, v3, v1}, Lcom/apm/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 160
    :cond_11
    :goto_e
    iget-object v1, v7, Lgbsdk/common/host/abbf;->bf:Lgbsdk/common/host/abar;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    .line 161
    check-cast v1, Lgbsdk/common/host/abaw;

    :try_start_7
    invoke-virtual {v1}, Lgbsdk/common/host/abaw;->b()Ljava/lang/String;

    move-result-object v1

    .line 162
    iget-object v2, v7, Lgbsdk/common/host/abbf;->be:Landroid/content/SharedPreferences;

    move-object/from16 v3, v19

    const/4 v10, 0x0

    invoke-interface {v2, v3, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    sget-boolean v10, Lgbsdk/common/host/abdn;->b:Z

    if-eqz v10, :cond_12

    .line 164
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "od="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " nd="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ck="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;)V

    :cond_12
    if-eqz v15, :cond_14

    .line 167
    iget-object v10, v7, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 168
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    .line 169
    iget-object v10, v7, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    .line 170
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 171
    invoke-static {v11, v10}, Lgbsdk/common/host/abdh;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 172
    invoke-virtual {v11, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    iput-object v11, v7, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    .line 174
    iget-object v0, v7, Lgbsdk/common/host/abbf;->bf:Lgbsdk/common/host/abar;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5

    .line 175
    check-cast v0, Lgbsdk/common/host/abaw;

    :try_start_8
    invoke-virtual {v0, v5}, Lgbsdk/common/host/abaw;->a(Ljava/lang/String;)V

    const/4 v14, 0x1

    goto :goto_f

    :cond_13
    const/4 v14, 0x0

    .line 178
    :goto_f
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v14, 0x1

    goto :goto_10

    :cond_14
    const/4 v14, 0x0

    :cond_15
    :goto_10
    if-eqz v28, :cond_17

    .line 182
    invoke-virtual {v7, v3, v9}, Lgbsdk/common/host/abbf;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    if-eqz v20, :cond_16

    .line 184
    invoke-interface {v8, v3, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_16
    const/4 v14, 0x1

    .line 185
    :cond_17
    iget-object v0, v7, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    move-object/from16 v1, v30

    .line 186
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v25

    if-eqz v27, :cond_19

    .line 187
    invoke-virtual {v7, v1, v3}, Lgbsdk/common/host/abbf;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    if-eqz v20, :cond_18

    .line 189
    invoke-interface {v8, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_18
    const/4 v14, 0x1

    .line 190
    :cond_19
    iget-object v1, v7, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    move-object/from16 v5, v18

    .line 191
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_5

    move-object/from16 v4, v29

    if-eqz v22, :cond_1b

    .line 192
    :try_start_9
    invoke-virtual {v7, v5, v4}, Lgbsdk/common/host/abbf;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    if-eqz v20, :cond_1a

    .line 194
    iget-object v5, v7, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    invoke-virtual {v5}, Lgbsdk/common/host/abbk;->i()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1a
    const/16 v19, 0x1

    goto :goto_11

    :cond_1b
    move/from16 v19, v14

    :goto_11
    if-eqz v20, :cond_1c

    const-wide/16 v10, 0x0

    cmp-long v5, v23, v10

    if-ltz v5, :cond_1c

    move-object/from16 v5, v21

    move-wide/from16 v10, v23

    .line 199
    invoke-interface {v8, v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 202
    :cond_1c
    invoke-virtual {v7}, Lgbsdk/common/host/abbf;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgbsdk/common/host/abax;->t(Ljava/lang/String;)Lgbsdk/common/host/abax;

    move-result-object v18

    move-object/from16 v20, v2

    move-object/from16 v21, v9

    move-object/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v24, v1

    move-object/from16 v25, v4

    invoke-virtual/range {v18 .. v25}, Lgbsdk/common/host/abax;->onRemoteIdGet(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_13

    :catch_4
    move-exception v0

    goto :goto_12

    :catch_5
    move-exception v0

    move-object/from16 v4, v29

    goto :goto_12

    :catch_6
    move-exception v0

    move-object v4, v1

    .line 208
    :goto_12
    invoke-static {v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    :goto_13
    if-nez v15, :cond_1d

    if-eqz v28, :cond_1e

    if-eqz v12, :cond_1e

    :cond_1d
    if-eqz v27, :cond_1e

    const/4 v14, 0x1

    goto :goto_14

    :cond_1e
    const/4 v14, 0x0

    :goto_14
    if-eqz v14, :cond_21

    move-object/from16 v1, v26

    .line 209
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    move-object/from16 v1, p0

    .line 210
    iget-object v0, v1, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 211
    iget-object v0, v0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 212
    iget-object v0, v0, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    if-eqz v0, :cond_1f

    .line 213
    invoke-virtual {v0}, Lcom/apm/applog/InitConfig;->isClearABCacheOnUserChange()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v4, 0x1

    goto :goto_15

    :cond_1f
    const/4 v4, 0x0

    :goto_15
    if-eqz v4, :cond_20

    const/4 v2, 0x0

    .line 214
    invoke-virtual {v7, v2}, Lgbsdk/common/host/abbf;->d(Ljava/lang/String;)V

    .line 216
    :cond_20
    iget-object v0, v1, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    invoke-virtual {v0}, Lgbsdk/common/host/ap;->e()V

    goto :goto_16

    :cond_21
    move-object/from16 v1, p0

    :goto_16
    const-string v0, "Register:result:"

    .line 218
    invoke-static {v0}, Lgbsdk/common/host/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 219
    invoke-static {v0, v2}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x1

    .line 220
    iput-boolean v2, v1, Lgbsdk/common/host/ao;->e:Z

    return v14

    :cond_22
    move-object v2, v9

    .line 221
    invoke-static {v2}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    .line 223
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " work finished"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "register"

    return-object v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h()J
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/as;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "14d011478396e662d086744f76279ce0"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 1
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 2
    iget-object v0, v0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 3
    iget-object v0, v0, Lgbsdk/common/host/abbf;->be:Landroid/content/SharedPreferences;

    const-string v1, "bd_did_life_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    return-wide v0

    .line 4
    :cond_1
    iget-object v0, p0, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 5
    iget-object v0, v0, Lgbsdk/common/host/ap;->aw:Lgbsdk/common/host/av;

    .line 6
    iget-boolean v0, v0, Lgbsdk/common/host/av;->i:Z

    if-eqz v0, :cond_2

    const-wide/32 v0, 0x1499700

    goto :goto_0

    :cond_2
    const-wide/32 v0, 0x2932e00

    :goto_0
    return-wide v0
.end method
