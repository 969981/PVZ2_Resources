.class public Lgbsdk/optional/applog/abbt;
.super Lgbsdk/optional/applog/aq;
.source ""


# static fields
.field public static final a:[J

.field public static final b:[J

.field public static final i:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lgbsdk/optional/applog/abbt;->a:[J

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lgbsdk/optional/applog/abbt;->b:[J

    const/16 v0, 0xf

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    sput-object v0, Lgbsdk/optional/applog/abbt;->i:[J

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
        0x7d0
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

.method public constructor <init>(Lgbsdk/optional/applog/abbj;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    .line 2
    iget-object v0, v0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    const-string v1, "register_time"

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 4
    invoke-direct {p0, p1, v0, v1}, Lgbsdk/optional/applog/aq;-><init>(Lgbsdk/optional/applog/abbj;J)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized a(Lorg/json/JSONObject;)Z
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v1, p1

    monitor-enter p0

    :try_start_0
    iget-object v0, v9, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Start do register work"

    const/4 v5, 0x1

    .line 3
    invoke-interface {v0, v5, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "user_unique_id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "user_unique_id_type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, v9, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 4
    iget-object v10, v0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    .line 5
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 6
    iget-object v3, v0, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->getPreInstallCallback()Lgbsdk/optional/applog/abfr;

    .line 7
    iget-object v3, v0, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 8
    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->getCommonHeader()Ljava/util/Map;

    move-result-object v3

    .line 9
    sget-object v4, Lgbsdk/optional/applog/abbp;->a:Lgbsdk/optional/applog/abcj;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v6}, Lgbsdk/optional/applog/abcj;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "req_id"

    .line 10
    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lgbsdk/optional/applog/abfl;->l()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_2

    :try_start_1
    iget-object v4, v9, Lgbsdk/optional/applog/aq;->h:Lcom/bytedance/bdtracker/d;

    .line 11
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 12
    sget-object v6, Lgbsdk/optional/applog/abdx;->a:Lgbsdk/optional/applog/abdk;

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v4, v11, v2

    invoke-virtual {v6, v11}, Lgbsdk/optional/applog/abdk;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgbsdk/optional/applog/abcm;

    .line 13
    iget-boolean v4, v4, Lgbsdk/optional/applog/abcm;->i:Z

    .line 14
    iget-object v6, v9, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 15
    iget-object v6, v6, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 16
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v11, "Oaid maySupport: {}"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-array v12, v5, [Ljava/lang/Object;

    .line 17
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v2

    invoke-interface {v6, v5, v11, v12}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v0, v0, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getCustomOaidCallback()Lcom/bytedance/applog/DynamicValueCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 19
    invoke-interface {v0}, Lcom/bytedance/applog/DynamicValueCallback;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "oaid_may_support"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "oaid_may_support"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v4, v9, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 20
    iget-object v4, v4, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 21
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v6, v2, [Ljava/lang/Object;

    const-string v11, "Check oaid maySupport failed."

    .line 22
    invoke-interface {v4, v5, v11, v0, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p1}, Lgbsdk/optional/applog/abbt;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_8

    const-string v0, "device_id"

    const-string v1, ""

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "install_id"

    const-string v1, ""

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "ssid"

    const-string v1, ""

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "bd_did"

    const-string v1, ""

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "cd"

    const-string v1, ""

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static {v5}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v9, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    invoke-virtual {v0}, Lgbsdk/optional/applog/abbj;->c()Lgbsdk/optional/applog/av;

    move-result-object v0

    invoke-virtual {v0, v7, v5}, Lgbsdk/optional/applog/av;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v12, v7

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    invoke-virtual/range {v10 .. v17}, Lgbsdk/optional/applog/abfy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v1, v9, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 23
    iget-object v2, v1, Lgbsdk/optional/applog/abbj;->m:Lgbsdk/optional/applog/ac;

    invoke-virtual {v1, v2}, Lgbsdk/optional/applog/abbj;->a(Lgbsdk/optional/applog/aq;)V

    .line 24
    iget-object v1, v9, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 25
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 26
    iget-object v1, v1, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 27
    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->isReportOaidEnable()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v9, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    invoke-virtual {v1}, Lgbsdk/optional/applog/abbj;->e()V

    :cond_6
    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v10, Lgbsdk/optional/applog/abbt$ab;

    move-object v1, v10

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lgbsdk/optional/applog/abbt$ab;-><init>(Lgbsdk/optional/applog/abbt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device_register_end"

    invoke-static {v1, v10}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_7
    monitor-exit p0

    return v0

    :cond_8
    :try_start_5
    iget-object v0, v9, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 28
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 29
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Register finished"

    .line 30
    invoke-interface {v0, v5, v3, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return v2

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->n:Lgbsdk/optional/applog/abaa;

    .line 2
    iget-boolean v0, v0, Lgbsdk/optional/applog/abaa;->k:Z

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x1499700

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x2932e00

    :goto_0
    return-wide v0
.end method

.method public b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "oaid"

    iget-object v1, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x1

    const-string v5, "Start to invokeRegister"

    .line 3
    invoke-interface {v1, v4, v5, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 4
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 6
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    .line 7
    invoke-virtual {v1}, Lgbsdk/optional/applog/abfy;->a()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 8
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    .line 9
    invoke-virtual {v1}, Lgbsdk/optional/applog/abfy;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-static {p1}, Lgbsdk/optional/applog/abcz;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/optional/applog/aq;->h:Lcom/bytedance/bdtracker/d;

    .line 10
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->j:Lgbsdk/optional/applog/abfm;

    .line 11
    iget-object v3, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    invoke-virtual {v3}, Lgbsdk/optional/applog/abbj;->d()Lcom/bytedance/applog/UriConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/applog/UriConfig;->getRegisterUri()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/bytedance/applog/Level;->L1:Lcom/bytedance/applog/Level;

    invoke-virtual {v1, p1, v3, v4, v5}, Lgbsdk/optional/applog/abfm;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/applog/Level;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lgbsdk/optional/applog/aq;->h:Lcom/bytedance/bdtracker/d;

    .line 12
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->k:Lgbsdk/optional/applog/abcz;

    .line 13
    invoke-virtual {v1, p1, v0}, Lgbsdk/optional/applog/abcz;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 14
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 15
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Request to register server failed."

    .line 16
    invoke-interface {v0, v4, v2, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    invoke-static {p1}, Lgbsdk/optional/applog/abcz;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    invoke-virtual {v0}, Lgbsdk/optional/applog/abbj;->d()Lcom/bytedance/applog/UriConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/UriConfig;->getReportOaidUri()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/optional/applog/aq;->h:Lcom/bytedance/bdtracker/d;

    .line 3
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->k:Lgbsdk/optional/applog/abcz;

    .line 4
    invoke-virtual {v1, v0, p1}, Lgbsdk/optional/applog/abcz;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 5
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    const-string v3, "Report oaid failed."

    .line 7
    invoke-interface {v0, v2, v3, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public c()[J
    .locals 4

    iget-object v0, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    .line 2
    invoke-virtual {v0}, Lgbsdk/optional/applog/abfy;->n()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 3
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 4
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Unknown register state"

    .line 5
    invoke-interface {v0, v1, v3, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lgbsdk/optional/applog/abbt;->a:[J

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lgbsdk/optional/applog/abbt;->b:[J

    goto :goto_1

    :cond_2
    sget-object v0, Lgbsdk/optional/applog/abbt;->i:[J

    :goto_1
    return-object v0
.end method

.method public d()Z
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    .line 2
    invoke-virtual {v1}, Lgbsdk/optional/applog/abfy;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lgbsdk/optional/applog/abce;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lgbsdk/optional/applog/abbt;->a(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "register"

    return-object v0
.end method
