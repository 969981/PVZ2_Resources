.class public Lgbsdk/optional/applog/abfl$ab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/abfl;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lgbsdk/optional/applog/abfl;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abfl;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abfl$ab;->a:Lgbsdk/optional/applog/abfl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch()Ljava/lang/Object;
    .locals 11

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "appId"

    :try_start_0
    iget-object v3, p0, Lgbsdk/optional/applog/abfl$ab;->a:Lgbsdk/optional/applog/abfl;

    .line 1
    iget-object v3, v3, Lgbsdk/optional/applog/abfl;->b:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lgbsdk/optional/applog/abfl$ab;->a:Lgbsdk/optional/applog/abfl;

    .line 4
    iget-object v2, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v3, "session_interval"

    const-wide/16 v4, 0x0

    .line 5
    invoke-interface {v2, v3, v4, v5}, Lcom/bytedance/applog/store/kv/IKVStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "\u540e\u53f0\u4f1a\u8bdd\u65f6\u957f"

    const-string v7, "ms"

    const-string v8, "--"

    cmp-long v9, v2, v4

    if-lez v9, :cond_0

    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v8

    :goto_0
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lgbsdk/optional/applog/abfl$ab;->a:Lgbsdk/optional/applog/abfl;

    .line 6
    iget-object v2, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v3, "batch_event_interval"

    .line 7
    invoke-interface {v2, v3, v4, v5}, Lcom/bytedance/applog/store/kv/IKVStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "\u4e8b\u4ef6\u4e0a\u62a5\u5468\u671f"

    cmp-long v9, v2, v4

    if-lez v9, :cond_1

    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v8

    :goto_1
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lgbsdk/optional/applog/abfl$ab;->a:Lgbsdk/optional/applog/abfl;

    .line 8
    iget-object v2, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v3, "abtest_fetch_interval"

    .line 9
    invoke-interface {v2, v3, v4, v5}, Lcom/bytedance/applog/store/kv/IKVStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v6, "AB\u5b9e\u9a8c\u66f4\u65b0\u5468\u671f"

    cmp-long v9, v2, v4

    if-lez v9, :cond_2

    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v8

    :goto_2
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v2, "\u5168\u57cb\u70b9\u5f00\u5173"

    :try_start_4
    iget-object v3, p0, Lgbsdk/optional/applog/abfl$ab;->a:Lgbsdk/optional/applog/abfl;

    .line 10
    iget-object v3, v3, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v6, "bav_log_collect"

    const/4 v9, 0x0

    .line 11
    invoke-interface {v3, v6, v9}, Lcom/bytedance/applog/store/kv/IKVStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v2, "AB\u5b9e\u9a8c\u5f00\u5173"

    :try_start_5
    iget-object v3, p0, Lgbsdk/optional/applog/abfl$ab;->a:Lgbsdk/optional/applog/abfl;

    .line 12
    iget-object v3, v3, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v6, "bav_ab_config"

    .line 13
    invoke-interface {v3, v6, v9}, Lcom/bytedance/applog/store/kv/IKVStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v2, "\u5b9e\u65f6\u57cb\u70b9\u4e8b\u4ef6"

    :try_start_6
    iget-object v3, p0, Lgbsdk/optional/applog/abfl$ab;->a:Lgbsdk/optional/applog/abfl;

    .line 14
    iget-object v3, v3, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v6, "real_time_events"

    const-string v10, "[]"

    .line 15
    invoke-interface {v3, v6, v10}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v2, "\u7981\u6b62\u91c7\u96c6\u624b\u673a\u8be6\u60c5"

    :try_start_7
    iget-object v3, p0, Lgbsdk/optional/applog/abfl$ab;->a:Lgbsdk/optional/applog/abfl;

    .line 16
    iget-object v3, v3, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v6, "forbid_report_phone_detail_info"

    .line 17
    invoke-interface {v3, v6, v9}, Lcom/bytedance/applog/store/kv/IKVStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v2, p0, Lgbsdk/optional/applog/abfl$ab;->a:Lgbsdk/optional/applog/abfl;

    .line 18
    iget-object v2, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v3, "fetch_interval"

    .line 19
    invoke-interface {v2, v3, v4, v5}, Lcom/bytedance/applog/store/kv/IKVStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v6, "\u670d\u52a1\u7aef\u914d\u7f6e\u66f4\u65b0\u5468\u671f"

    cmp-long v10, v2, v4

    if-lez v10, :cond_3

    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v8

    :goto_3
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v2, "\u7981\u6b62\u5185\u90e8\u76d1\u63a7\u5f00\u5173"

    :try_start_9
    iget-object v3, p0, Lgbsdk/optional/applog/abfl$ab;->a:Lgbsdk/optional/applog/abfl;

    .line 20
    iget-object v3, v3, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v4, "applog_disable_monitor"

    .line 21
    invoke-interface {v3, v4, v9}, Lcom/bytedance/applog/store/kv/IKVStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v2, p0, Lgbsdk/optional/applog/abfl$ab;->a:Lgbsdk/optional/applog/abfl;

    .line 22
    iget-object v2, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v3, "batch_event_size"

    const/4 v4, -0x1

    .line 23
    invoke-interface {v2, v3, v4}, Lcom/bytedance/applog/store/kv/IKVStore;->getInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v3, "\u4e8b\u4ef6\u7d2f\u8ba1\u4e0a\u62a5\u6570\u91cf"

    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-ltz v2, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v8

    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\u6761"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const-string v2, "\u7981\u6b62\u91c7\u96c6\u7684\u654f\u611f\u5b57\u6bb5"

    :try_start_b
    iget-object v3, p0, Lgbsdk/optional/applog/abfl$ab;->a:Lgbsdk/optional/applog/abfl;

    .line 24
    iget-object v3, v3, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v4, "sensitive_fields"

    .line 25
    invoke-interface {v3, v4, v8}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const-string v2, "\u670d\u52a1\u7aef\u9ed1\u540d\u5355\u4e8b\u4ef6"

    :try_start_c
    iget-object v3, p0, Lgbsdk/optional/applog/abfl$ab;->a:Lgbsdk/optional/applog/abfl;

    .line 26
    iget-object v3, v3, Lgbsdk/optional/applog/abfl;->j:Ljava/util/Set;

    .line 27
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "config"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catchall_0
    return-object v0
.end method
