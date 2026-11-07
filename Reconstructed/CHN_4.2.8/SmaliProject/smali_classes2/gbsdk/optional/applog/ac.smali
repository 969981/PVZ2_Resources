.class public Lgbsdk/optional/applog/ac;
.super Lgbsdk/optional/applog/aq;
.source ""


# instance fields
.field public a:J

.field public b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abbj;)V
    .locals 2

    invoke-direct {p0, p1}, Lgbsdk/optional/applog/aq;-><init>(Lgbsdk/optional/applog/abbj;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgbsdk/optional/applog/ac;->a:J

    const/4 p1, 0x0

    iput-object p1, p0, Lgbsdk/optional/applog/ac;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)Lorg/json/JSONObject;
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object v1, v0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 2
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    .line 3
    invoke-virtual {v0}, Lgbsdk/optional/applog/abfy;->n()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lgbsdk/optional/applog/abfy;->a()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v2, p0, Lgbsdk/optional/applog/ac;->b:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    iget-wide v6, p0, Lgbsdk/optional/applog/ac;->a:J

    sub-long v6, v4, v6

    iget-object v8, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 4
    iget-wide v8, v8, Lgbsdk/optional/applog/abbj;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    cmp-long v10, v6, v8

    if-gez v10, :cond_0

    monitor-exit p0

    return-object v2

    .line 5
    :cond_0
    :try_start_1
    iput-wide v4, p0, Lgbsdk/optional/applog/ac;->a:J

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "header"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v7, 0x2

    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v0}, Lgbsdk/optional/applog/abfy;->a()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v2, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "magic_tag"

    const-string v9, "ss_app_log"

    invoke-virtual {v2, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "_gen_time"

    invoke-virtual {v2, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v4, p0, Lgbsdk/optional/applog/aq;->h:Lcom/bytedance/bdtracker/d;

    invoke-static {v4, v2}, Lgbsdk/optional/applog/abgd;->a(Lcom/bytedance/applog/IAppLogInstance;Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_3
    iget-object v5, p0, Lgbsdk/optional/applog/aq;->h:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v6, v8, [Ljava/lang/Object;

    const-string v9, "Set header failed"

    .line 7
    invoke-interface {v5, v7, v9, v4, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    iget-object v4, p0, Lgbsdk/optional/applog/aq;->h:Lcom/bytedance/bdtracker/d;

    .line 8
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->j:Lgbsdk/optional/applog/abfm;

    .line 9
    invoke-virtual {v0}, Lgbsdk/optional/applog/abfy;->a()Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    invoke-virtual {v6}, Lgbsdk/optional/applog/abbj;->d()Lcom/bytedance/applog/UriConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/applog/UriConfig;->getAbUri()Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/bytedance/applog/Level;->L1:Lcom/bytedance/applog/Level;

    const/4 v10, 0x1

    invoke-virtual {v4, v5, v6, v10, v9}, Lgbsdk/optional/applog/abfm;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/applog/Level;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lgbsdk/optional/applog/aq;->h:Lcom/bytedance/bdtracker/d;

    .line 10
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->k:Lgbsdk/optional/applog/abcz;

    .line 11
    sget-object v6, Lgbsdk/optional/applog/abgd;->a:[Ljava/lang/String;

    invoke-static {v4, v6}, Lgbsdk/optional/applog/abcz;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 12
    iget-object v6, v5, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 13
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v4, v9, v8

    aput-object v2, v9, v10

    const-string v11, "Start to get ab config to uri:{} with request:{}..."

    const/16 v12, 0xb

    .line 14
    invoke-interface {v6, v12, v11, v9}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Lgbsdk/optional/applog/abcz;->a()Ljava/util/HashMap;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v5, v2, v4, v6, p1}, Lgbsdk/optional/applog/abcz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v2, v5, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 15
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v4, v10, [Ljava/lang/Object;

    aput-object p1, v4, v8

    const-string v6, "Get ab config with response:{}"

    .line 16
    invoke-interface {v2, v12, v6, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Lgbsdk/optional/applog/abcz;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v2, "message"

    const-string v4, ""

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "success"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_2

    :catchall_1
    move-exception p1

    iget-object v2, v5, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 17
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "Post ab config failed"

    .line 18
    invoke-interface {v2, v12, v5, p1, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    instance-of v2, p1, Lgbsdk/optional/applog/abae;

    if-nez v2, :cond_4

    :cond_2
    move-object p1, v3

    :goto_2
    if-eqz p1, :cond_5

    .line 19
    iput-object p1, p0, Lgbsdk/optional/applog/ac;->b:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lgbsdk/optional/applog/abfl;->g()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, p1}, Lgbsdk/optional/applog/abce;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v1

    xor-int/2addr v1, v10

    iget-object v2, p0, Lgbsdk/optional/applog/aq;->h:Lcom/bytedance/bdtracker/d;

    .line 20
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v3, v10, [Ljava/lang/Object;

    .line 21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "getAbConfig changed:{}"

    invoke-interface {v2, v7, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lgbsdk/optional/applog/abfy;->b(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lgbsdk/optional/applog/aq;->h:Lcom/bytedance/bdtracker/d;

    .line 22
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->y:Lgbsdk/optional/applog/abbs;

    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {v0, v1, p1}, Lgbsdk/optional/applog/abbs;->onRemoteAbConfigGet(ZLorg/json/JSONObject;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_3
    monitor-exit p0

    return-object p1

    .line 24
    :cond_4
    :try_start_6
    check-cast p1, Lgbsdk/optional/applog/abae;

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_5
    monitor-exit p0

    return-object v3

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()J
    .locals 5

    iget-object v0, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 2
    iget-object v0, v0, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v1, "abtest_fetch_interval"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/applog/store/kv/IKVStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method

.method public c()[J
    .locals 1

    sget-object v0, Lgbsdk/optional/applog/abbt;->b:[J

    return-object v0
.end method

.method public d()Z
    .locals 6

    const v0, 0xea60

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lgbsdk/optional/applog/ac;->a(I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lgbsdk/optional/applog/aq;->h:Lcom/bytedance/bdtracker/d;

    .line 1
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x2

    const-string v5, "Do fetch config failed"

    .line 2
    invoke-interface {v2, v4, v5, v0, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return v1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "AbConfigure"

    return-object v0
.end method
