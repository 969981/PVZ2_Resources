.class public Lgbsdk/optional/applog/ax;
.super Lgbsdk/optional/applog/aq;
.source ""


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abbj;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 2
    iget-object v0, v0, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v1, "app_log_last_config_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/applog/store/kv/IKVStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lgbsdk/optional/applog/aq;-><init>(Lgbsdk/optional/applog/abbj;J)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()J
    .locals 4

    iget-object v0, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 2
    iget-object v0, v0, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v1, "fetch_interval"

    const-wide/32 v2, 0x1499700

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/applog/store/kv/IKVStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()[J
    .locals 1

    sget-object v0, Lgbsdk/optional/applog/abbt;->b:[J

    return-object v0
.end method

.method public d()Z
    .locals 19

    move-object/from16 v1, p0

    iget-object v0, v1, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    .line 2
    invoke-virtual {v0}, Lgbsdk/optional/applog/abfy;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0}, Lgbsdk/optional/applog/abfy;->n()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_17

    if-eqz v2, :cond_17

    invoke-static {v2}, Lgbsdk/optional/applog/abcz;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, v1, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 3
    iget-object v3, v3, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 4
    iget-object v3, v3, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 5
    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->isEventFilterEnable()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const-string v3, "event_filter"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    iget-object v3, v1, Lgbsdk/optional/applog/aq;->h:Lcom/bytedance/bdtracker/d;

    invoke-static {v3, v2}, Lgbsdk/optional/applog/abgd;->a(Lcom/bytedance/applog/IAppLogInstance;Lorg/json/JSONObject;)V

    iget-object v3, v1, Lgbsdk/optional/applog/aq;->h:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->j:Lgbsdk/optional/applog/abfm;

    .line 7
    invoke-virtual {v0}, Lgbsdk/optional/applog/abfy;->a()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v6, v1, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    invoke-virtual {v6}, Lgbsdk/optional/applog/abbj;->d()Lcom/bytedance/applog/UriConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/applog/UriConfig;->getSettingUri()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/bytedance/applog/Level;->L1:Lcom/bytedance/applog/Level;

    invoke-virtual {v3, v0, v6, v5, v7}, Lgbsdk/optional/applog/abfm;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/applog/Level;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lgbsdk/optional/applog/aq;->h:Lcom/bytedance/bdtracker/d;

    .line 8
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->k:Lgbsdk/optional/applog/abcz;

    .line 9
    sget-object v6, Lgbsdk/optional/applog/abgd;->a:[Ljava/lang/String;

    invoke-static {v0, v6}, Lgbsdk/optional/applog/abcz;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v6, v3, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 11
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v4

    aput-object v2, v7, v5

    const/16 v8, 0xb

    const-string v9, "Start to get config to uri:{} with request:{}..."

    .line 12
    invoke-interface {v6, v8, v9, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Lgbsdk/optional/applog/abcz;->a()Ljava/util/HashMap;

    move-result-object v6

    const v7, 0xea60

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v0, v6, v7}, Lgbsdk/optional/applog/abcz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    iget-object v0, v3, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 13
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "Config failed"

    .line 14
    invoke-interface {v0, v8, v7, v2, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v0, v9

    :goto_0
    iget-object v2, v3, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 15
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v0, v6, v4

    const-string v7, "Get config with response:{}"

    .line 16
    invoke-interface {v2, v8, v7, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lgbsdk/optional/applog/abcz;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "magic_tag"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ss_app_log"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    const-string v2, "config"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v9

    .line 17
    :goto_2
    iget-object v2, v1, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 18
    iget-object v2, v2, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 19
    iget-object v3, v1, Lgbsdk/optional/applog/aq;->h:Lcom/bytedance/bdtracker/d;

    .line 20
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->y:Lgbsdk/optional/applog/abbs;

    if-eqz v3, :cond_3

    .line 21
    iget-object v6, v2, Lgbsdk/optional/applog/abfl;->i:Lorg/json/JSONObject;

    .line 22
    invoke-static {v0, v6}, Lgbsdk/optional/applog/abce;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v6

    xor-int/2addr v6, v5

    invoke-virtual {v3, v6, v0}, Lgbsdk/optional/applog/abbs;->onRemoteConfigGet(ZLorg/json/JSONObject;)V

    :cond_3
    if-eqz v0, :cond_17

    .line 23
    iget-object v3, v2, Lgbsdk/optional/applog/abfl;->b:Lcom/bytedance/bdtracker/d;

    .line 24
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v6, "ConfigManager"

    .line 25
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v0, v7, v4

    const-string v8, "Set config:{}"

    invoke-interface {v3, v6, v8, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, v2, Lgbsdk/optional/applog/abfl;->i:Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v3, "session_interval"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    int-to-long v10, v8

    const-wide/16 v12, 0x0

    const-wide/32 v14, 0x93a80

    const-wide/16 v16, 0x3e8

    cmp-long v8, v10, v12

    if-lez v8, :cond_4

    cmp-long v8, v10, v14

    if-gtz v8, :cond_4

    iget-object v8, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    mul-long v10, v10, v16

    invoke-interface {v8, v3, v10, v11}, Lcom/bytedance/applog/store/kv/IKVStore;->putLong(Ljava/lang/String;J)Lcom/bytedance/applog/store/kv/IKVStore;

    goto :goto_3

    :cond_4
    iget-object v8, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {v8, v3}, Lcom/bytedance/applog/store/kv/IKVStore;->remove(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    :goto_3
    const/16 v3, 0x3c

    const-string v8, "batch_event_interval"

    invoke-virtual {v0, v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v10, v3

    mul-long v10, v10, v16

    const-wide/16 v12, 0x2710

    cmp-long v3, v10, v12

    if-ltz v3, :cond_5

    const-wide/32 v12, 0x493e0

    cmp-long v3, v10, v12

    if-gtz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_6

    iget-object v3, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {v3, v8, v10, v11}, Lcom/bytedance/applog/store/kv/IKVStore;->putLong(Ljava/lang/String;J)Lcom/bytedance/applog/store/kv/IKVStore;

    goto :goto_5

    :cond_6
    iget-object v3, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {v3, v8}, Lcom/bytedance/applog/store/kv/IKVStore;->remove(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    :goto_5
    const-string v3, "batch_event_size"

    const/4 v8, -0x1

    invoke-virtual {v0, v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v2, v10}, Lgbsdk/optional/applog/abfl;->a(I)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {v11, v3, v10}, Lcom/bytedance/applog/store/kv/IKVStore;->putInt(Ljava/lang/String;I)Lcom/bytedance/applog/store/kv/IKVStore;

    goto :goto_6

    :cond_7
    iget-object v10, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {v10, v3}, Lcom/bytedance/applog/store/kv/IKVStore;->remove(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    :goto_6
    const-string v3, "send_launch_timely"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-lez v10, :cond_8

    int-to-long v11, v10

    cmp-long v13, v11, v14

    if-gtz v13, :cond_8

    iget-object v11, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {v11, v3, v10}, Lcom/bytedance/applog/store/kv/IKVStore;->putInt(Ljava/lang/String;I)Lcom/bytedance/applog/store/kv/IKVStore;

    goto :goto_7

    :cond_8
    iget-object v10, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {v10, v3}, Lcom/bytedance/applog/store/kv/IKVStore;->remove(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    :goto_7
    const-string v3, "abtest_fetch_interval"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    int-to-long v10, v10

    const-wide/16 v12, 0x14

    cmp-long v18, v10, v12

    if-lez v18, :cond_9

    cmp-long v12, v10, v14

    if-gtz v12, :cond_9

    iget-object v12, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    mul-long v10, v10, v16

    invoke-interface {v12, v3, v10, v11}, Lcom/bytedance/applog/store/kv/IKVStore;->putLong(Ljava/lang/String;J)Lcom/bytedance/applog/store/kv/IKVStore;

    goto :goto_8

    :cond_9
    iget-object v10, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {v10, v3}, Lcom/bytedance/applog/store/kv/IKVStore;->remove(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    .line 26
    :goto_8
    iget-object v3, v2, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->isAutoTrackEnabled()Z

    move-result v3

    const-string v10, "bav_log_collect"

    .line 27
    invoke-virtual {v0, v10, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v11, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {v11, v10, v3}, Lcom/bytedance/applog/store/kv/IKVStore;->putBoolean(Ljava/lang/String;Z)Lcom/bytedance/applog/store/kv/IKVStore;

    .line 28
    iput v3, v2, Lgbsdk/optional/applog/abfl;->r:I

    .line 29
    iget-object v3, v2, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->isAbEnable()Z

    move-result v3

    const-string v10, "bav_ab_config"

    .line 30
    invoke-virtual {v0, v10, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v11, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {v11, v10, v3}, Lcom/bytedance/applog/store/kv/IKVStore;->putBoolean(Ljava/lang/String;Z)Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v3, "real_time_events"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_a

    iget-object v11, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11, v3, v10}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    goto :goto_9

    :cond_a
    iget-object v10, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {v10, v3}, Lcom/bytedance/applog/store/kv/IKVStore;->remove(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    :goto_9
    iput-object v9, v2, Lgbsdk/optional/applog/abfl;->k:Ljava/util/HashSet;

    const-string v3, "sensitive_fields"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_b

    iget-object v11, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11, v3, v10}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    goto :goto_a

    :cond_b
    iget-object v10, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {v10, v3}, Lcom/bytedance/applog/store/kv/IKVStore;->remove(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    :goto_a
    iget-object v3, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v10, "app_log_last_config_time"

    invoke-interface {v3, v10, v6, v7}, Lcom/bytedance/applog/store/kv/IKVStore;->putLong(Ljava/lang/String;J)Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v3, "forbid_report_phone_detail_info"

    invoke-virtual {v0, v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_d

    iget-object v7, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    if-lez v6, :cond_c

    const/4 v6, 0x1

    goto :goto_b

    :cond_c
    const/4 v6, 0x0

    :goto_b
    invoke-interface {v7, v3, v6}, Lcom/bytedance/applog/store/kv/IKVStore;->putBoolean(Ljava/lang/String;Z)Lcom/bytedance/applog/store/kv/IKVStore;

    :cond_d
    const-wide/16 v6, 0x5460

    const-string v8, "fetch_interval"

    invoke-virtual {v0, v8, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    mul-long v6, v6, v16

    const-wide/32 v10, 0x1b7740

    cmp-long v12, v6, v10

    if-ltz v12, :cond_e

    const-wide/32 v10, 0xa4cb800

    cmp-long v12, v6, v10

    if-lez v12, :cond_f

    :cond_e
    const-wide/32 v6, 0x1499700

    :cond_f
    iget-object v10, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {v10, v8, v6, v7}, Lcom/bytedance/applog/store/kv/IKVStore;->putLong(Ljava/lang/String;J)Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v6, "applog_disable_monitor"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    if-ne v6, v5, :cond_10

    const/4 v6, 0x1

    goto :goto_c

    :cond_10
    const/4 v6, 0x0

    :goto_c
    const-string v8, "monitor_enabled"

    invoke-interface {v7, v8, v6}, Lcom/bytedance/applog/store/kv/IKVStore;->putBoolean(Ljava/lang/String;Z)Lcom/bytedance/applog/store/kv/IKVStore;

    :cond_11
    const-string v6, "enter_background_not_send"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v5, :cond_12

    const/4 v7, 0x1

    goto :goto_d

    :cond_12
    const/4 v7, 0x0

    :goto_d
    iget-object v8, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {v8, v6, v7}, Lcom/bytedance/applog/store/kv/IKVStore;->putBoolean(Ljava/lang/String;Z)Lcom/bytedance/applog/store/kv/IKVStore;

    :cond_13
    invoke-virtual {v2}, Lgbsdk/optional/applog/abfl;->b()V

    .line 31
    iget-object v6, v1, Lgbsdk/optional/applog/aq;->h:Lcom/bytedance/bdtracker/d;

    .line 32
    iget-object v7, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    .line 33
    invoke-interface {v7, v3, v4}, Lcom/bytedance/applog/store/kv/IKVStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v6, v3}, Lcom/bytedance/bdtracker/d;->setForbidReportPhoneDetailInfo(Z)V

    invoke-virtual {v2}, Lgbsdk/optional/applog/abfl;->a()Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, v1, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 34
    iput-object v9, v2, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 35
    :cond_14
    iget-object v2, v1, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 36
    iget-object v3, v2, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v2, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 37
    iget-object v2, v1, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 38
    iget-object v2, v2, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 39
    iget-object v2, v2, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 40
    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->isEventFilterEnable()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v1, Lgbsdk/optional/applog/aq;->h:Lcom/bytedance/bdtracker/d;

    const-string v3, "sp_filter_name"

    invoke-static {v2, v3}, Lgbsdk/optional/applog/ai;->a(Lcom/bytedance/applog/IAppLogInstance;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    invoke-virtual {v3}, Lgbsdk/optional/applog/abbj;->b()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v0}, Lgbsdk/optional/applog/abbi;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Lgbsdk/optional/applog/abbi;

    move-result-object v2

    .line 41
    iput-object v2, v3, Lgbsdk/optional/applog/abbj;->y:Lgbsdk/optional/applog/abbi;

    .line 42
    :cond_15
    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->isDisabled()Z

    move-result v2

    if-nez v2, :cond_16

    new-instance v2, Lgbsdk/optional/applog/ax$ab;

    invoke-direct {v2, v1, v0}, Lgbsdk/optional/applog/ax$ab;-><init>(Lgbsdk/optional/applog/ax;Lorg/json/JSONObject;)V

    const-string v0, "fetch_log_settings_end"

    invoke-static {v0, v2}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    :cond_16
    return v5

    :cond_17
    return v4
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "Configure"

    return-object v0
.end method
