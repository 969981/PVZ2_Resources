.class public Lgbsdk/optional/applog/abbo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# instance fields
.field public final synthetic a:Lcom/bytedance/applog/InitConfig;

.field public final synthetic b:Lcom/bytedance/bdtracker/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;Lcom/bytedance/applog/InitConfig;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abbo;->b:Lcom/bytedance/bdtracker/d;

    iput-object p2, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch()Ljava/lang/Object;
    .locals 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appId"

    :try_start_0
    iget-object v2, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->getAid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "channel"

    :try_start_1
    iget-object v2, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "AppLog \u7248\u672c\u53f7"

    const-string v3, "6.17.1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "AppLog \u7248\u672c\u5730\u533a"

    const-string v3, "\u56fd\u5185"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "AppLog\u7248\u672c\u5e8f\u53f7"

    const v3, 0x5e264e

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "\u8bf7\u6c42\u52a0\u5bc6\u5f00\u5173"

    :try_start_2
    iget-object v3, p0, Lgbsdk/optional/applog/abbo;->b:Lcom/bytedance/bdtracker/d;

    .line 1
    iget-boolean v3, v3, Lcom/bytedance/bdtracker/d;->E:Z

    .line 2
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "\u54cd\u5e94\u52a0\u5bc6\u5f00\u5173"

    :try_start_3
    iget-object v3, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->isResponseEncryptEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v2, p0, Lgbsdk/optional/applog/abbo;->b:Lcom/bytedance/bdtracker/d;

    .line 3
    iget-boolean v2, v2, Lcom/bytedance/bdtracker/d;->E:Z

    if-eqz v2, :cond_3

    .line 4
    iget-object v2, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->getEncryptor()Lcom/bytedance/mpaas/IEncryptor;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v3, "\u662f\u5426\u914d\u7f6e\u4e86\u81ea\u5b9a\u4e49\u52a0\u5bc6"

    if-nez v2, :cond_0

    const-string v4, "\u672a\u914d\u7f6e"

    goto :goto_0

    :cond_0
    const-string v4, "\u5ba2\u6237\u7aef\u5df2\u914d\u7f6e"

    :goto_0
    :try_start_4
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    instance-of v3, v2, Lgbsdk/optional/applog/abej;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v4, "\u9ed8\u8ba4\u52a0\u5bc6\u7c7b\u578b"

    const-string v5, "\u81ea\u5b9a\u4e49\u52a0\u5bc6\u7c7b\u578b"

    if-eqz v3, :cond_2

    const-string v3, "a"

    :try_start_5
    move-object v6, v2

    check-cast v6, Lgbsdk/optional/applog/abej;

    invoke-virtual {v6}, Lgbsdk/optional/applog/abej;->encryptorType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast v2, Lgbsdk/optional/applog/abej;

    invoke-virtual {v2}, Lgbsdk/optional/applog/abej;->encryptorType()Ljava/lang/String;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    const-string v2, "\u65e5\u5fd7\u5f00\u5173"

    :try_start_6
    iget-object v3, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->isLogEnable()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v2, "\u81ea\u5b9a\u4e49\u65e5\u5fd7\u6253\u5370"

    :try_start_7
    iget-object v3, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->getLogger()Lcom/bytedance/applog/ILogger;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v2, "AB\u5b9e\u9a8c\u5f00\u5173"

    :try_start_8
    iget-object v3, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->isAbEnable()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v2, "\u81ea\u52a8\u542f\u52a8\u56fe\u5f00\u5173"

    :try_start_9
    iget-object v3, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->autoStart()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v2, "\u81ea\u52a8\u6fc0\u6d3b\u5f00\u5173"

    :try_start_a
    iget-object v3, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->isAutoActive()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const-string v2, "H5 \u6253\u901a\u5f00\u5173"

    :try_start_b
    iget-object v3, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->isH5BridgeEnable()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const-string v2, "H5 \u5168\u57cb\u70b9\u6ce8\u5165"

    :try_start_c
    iget-object v3, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->isH5CollectEnable()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const-string v2, "H5 \u6253\u901a\u662f\u5426\u5141\u8bb8\u66f4\u65b0\u7528\u6237\u4fe1\u606f\u5f00\u5173"

    :try_start_d
    iget-object v3, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->isUseBridgeUpdateUUIDEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v2, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->getH5BridgeAllowlist()Ljava/util/List;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const-string v3, "\u3001"

    if-eqz v2, :cond_5

    :try_start_e
    iget-object v2, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->getH5BridgeAllowlist()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-nez v2, :cond_5

    const-string v2, "H5 \u57df\u540d\u767d\u540d\u5355"

    :try_start_f
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getH5BridgeAllowlist()Ljava/util/List;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_5
    const-string v2, "\u4e0d\u8fc7\u6ee4 H5 \u57df\u540d\u5f00\u5173"

    :try_start_10
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isH5BridgeAllowAll()Z

    move-result v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    const-string v2, "\u5168\u57cb\u70b9\u5f00\u5173"

    :try_start_11
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isAutoTrackEnabled()Z

    move-result v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getAutoTrackEventType()I

    move-result v6

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/bytedance/applog/event/AutoTrackEventType;->a(II)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "\u70b9\u51fb\u4e8b\u4ef6"

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getAutoTrackEventType()I

    move-result v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/bytedance/applog/event/AutoTrackEventType;->a(II)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "\u9875\u9762\u4e8b\u4ef6"

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getAutoTrackEventType()I

    move-result v6

    const/16 v7, 0x8

    invoke-static {v6, v7}, Lcom/bytedance/applog/event/AutoTrackEventType;->a(II)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "\u9875\u9762\u79bb\u5f00\u4e8b\u4ef6"

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-nez v6, :cond_9

    const-string v6, "\u5168\u57cb\u70b9\u7c7b\u578b"

    :try_start_12
    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_9
    const-string v2, "\u89c6\u56fe\u66dd\u5149\u5f00\u5173"

    :try_start_13
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isExposureEnabled()Z

    move-result v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    const-string v2, "\u5185\u90e8\u76d1\u63a7\u5f00\u5173"

    :try_start_14
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isMonitorEnabled()Z

    move-result v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    const-string v2, "\u91c7\u96c6\u5c4f\u5e55\u65b9\u5411\u5f00\u5173"

    :try_start_15
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isScreenOrientationEnabled()Z

    move-result v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    const-string v2, "\u521d\u59cb\u5316 UUID"

    :try_start_16
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getUserUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    const-string v2, "\u521d\u59cb\u5316 UUID \u7c7b\u578b"

    :try_start_17
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getUserUniqueIdType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    const-string v2, "\u91c7\u96c6 OAID \u5f00\u5173"

    :try_start_18
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isOaidEnabled()Z

    move-result v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    const-string v2, "\u8865\u507f OAID \u5f00\u5173"

    :try_start_19
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isReportOaidEnable()Z

    move-result v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    const-string v2, "\u91c7\u96c6 MAC \u5f00\u5173"

    :try_start_1a
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isMacEnable()Z

    move-result v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    const-string v2, "\u91c7\u96c6 ANDROID ID \u5f00\u5173"

    :try_start_1b
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isAndroidIdEnabled()Z

    move-result v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    const-string v2, "\u91c7\u96c6\u8fd0\u8425\u5546\u4fe1\u606f\u5f00\u5173"

    :try_start_1c
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isOperatorInfoEnabled()Z

    move-result v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    const-string v2, "\u91c7\u96c6 ICCID \u5f00\u5173"

    :try_start_1d
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isIccIdEnabled()Z

    move-result v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    const-string v2, "\u91c7\u96c6 SerialNumber \u5f00\u5173"

    :try_start_1e
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isSerialNumberEnable()Z

    move-result v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    const-string v2, "\u81ea\u52a8\u91c7\u96c6 FRAGMENT \u5f00\u5173"

    :try_start_1f
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isAutoTrackFragmentEnabled()Z

    move-result v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    const-string v2, "\u540e\u53f0\u9759\u9ed8\u5f00\u5173"

    :try_start_20
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isSilenceInBackground()Z

    move-result v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    const-string v2, "\u9e3f\u8499\u8bbe\u5907\u91c7\u96c6\u5f00\u5173"

    :try_start_21
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isHarmonyEnabled()Z

    move-result v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    const-string v2, "\u9690\u79c1\u6a21\u5f0f\u5f00\u5173"

    :try_start_22
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->b:Lcom/bytedance/bdtracker/d;

    .line 5
    iget-boolean v6, v6, Lcom/bytedance/bdtracker/d;->x:Z

    .line 6
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    const-string v2, "\u7981\u6b62\u91c7\u96c6\u8be6\u7ec6\u4fe1\u606f\u5f00\u5173"

    :try_start_23
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->b:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v6}, Lcom/bytedance/bdtracker/d;->reportPhoneDetailInfo()Z

    move-result v6

    xor-int/2addr v6, v5

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    const-string v2, "\u91c7\u96c6 Crash"

    :try_start_24
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getTrackCrashType()I

    move-result v6

    invoke-static {v6, v5}, Lcom/bytedance/applog/exception/AppCrashType;->hasCrashType(II)Z

    move-result v6
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    if-eqz v6, :cond_a

    const-string v6, "JAVA"

    goto :goto_3

    :cond_a
    const-string v6, "\u4e0d\u91c7\u96c6"

    :goto_3
    :try_start_25
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    const-string v2, "ALINK \u76d1\u542c"

    :try_start_26
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->b:Lcom/bytedance/bdtracker/d;

    .line 7
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->z:Lcom/bytedance/applog/alink/IALinkListener;

    if-eqz v6, :cond_b

    const/4 v6, 0x1

    goto :goto_4

    :cond_b
    const/4 v6, 0x0

    .line 8
    :goto_4
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    const-string v2, "\u81ea\u5b9a\u4e49\u6fc0\u6d3b\u53c2\u6570"

    :try_start_27
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->b:Lcom/bytedance/bdtracker/d;

    .line 9
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->A:Lcom/bytedance/applog/IActiveCustomParamsCallback;

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    goto :goto_5

    :cond_c
    const/4 v6, 0x0

    .line 10
    :goto_5
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    const-string v2, "\u5ef6\u8fdf\u6df1\u5ea6\u94fe\u63a5\u5f00\u5173"

    :try_start_28
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isDeferredALinkEnabled()Z

    move-result v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    const-string v2, "\u7f13\u5b58\u6587\u4ef6\u540d\u79f0"

    :try_start_29
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getSpName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    const-string v2, "\u6570\u636e\u5e93\u6587\u4ef6\u540d\u79f0"

    :try_start_2a
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getDbName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    const-string v2, "\u76d1\u542c\u751f\u547d\u5468\u671f"

    :try_start_2b
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->isHandleLifeCycle()Z

    move-result v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    const-string v2, "\u5c0f\u7248\u672c\u53f7"

    :try_start_2c
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getVersionMinor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    const-string v2, "\u7248\u672c\u53f7\u7f16\u7801"

    :try_start_2d
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getVersionCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    const-string v2, "\u7248\u672c\u53f7"

    :try_start_2e
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    const-string v2, "\u5e94\u7528\u540d\u79f0"

    :try_start_2f
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    const-string v2, "\u5708\u9009\u914d\u7f6e"

    :try_start_30
    iget-object v6, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v6}, Lcom/bytedance/applog/InitConfig;->getPicker()Lcom/bytedance/applog/IPicker;

    move-result-object v6

    if-eqz v6, :cond_d

    const/4 v4, 0x1

    :cond_d
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    const-string v2, "\u5f53\u524d\u8fdb\u7a0b"

    :try_start_31
    iget-object v4, p0, Lgbsdk/optional/applog/abbo;->b:Lcom/bytedance/bdtracker/d;

    .line 11
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->o:Lgbsdk/optional/applog/abfl;

    .line 12
    invoke-virtual {v4}, Lgbsdk/optional/applog/abfl;->f()Z

    move-result v4
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    if-eqz v4, :cond_e

    const-string v4, "\u4e3b\u8fdb\u7a0b"

    goto :goto_6

    :cond_e
    const-string v4, "\u5b50\u8fdb\u7a0b"

    :goto_6
    :try_start_32
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    const-string v2, "\u5730\u533a"

    :try_start_33
    iget-object v4, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v4}, Lcom/bytedance/applog/InitConfig;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    const-string v2, "\u8bed\u8a00"

    :try_start_34
    iget-object v4, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v4}, Lcom/bytedance/applog/InitConfig;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    const-string v2, "PLAY \u5f00\u5173"

    :try_start_35
    iget-object v4, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v4}, Lcom/bytedance/applog/InitConfig;->isPlayEnable()Z

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    const-string v2, "Gaid \u5f00\u5173"

    :try_start_36
    iget-object v4, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v4}, Lcom/bytedance/applog/InitConfig;->isGaidEnabled()Z

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_0

    const-string v2, "\u5c4f\u5e55\u4fe1\u606f\u5f00\u5173"

    :try_start_37
    iget-object v4, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v4}, Lcom/bytedance/applog/InitConfig;->isDisplayDensityAndDpiEnabled()Z

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_0

    const-string v2, "CPU Abi \u5f00\u5173"

    :try_start_38
    iget-object v4, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v4}, Lcom/bytedance/applog/InitConfig;->isCPUAbiEnabled()Z

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_0

    const-string v2, "\u66dd\u5149\u4e8b\u4ef6\u662f\u5426\u91cd\u590d\u4ea7\u751f\u5f00\u5173"

    :try_start_39
    iget-object v4, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v4}, Lcom/bytedance/applog/InitConfig;->isAbTestExposureEventRepeatEnabled()Z

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_0

    const-string v2, "LaunchTerminate \u5f00\u5173"

    :try_start_3a
    iget-object v4, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v4}, Lcom/bytedance/applog/InitConfig;->isLaunchTerminateEnabled()Z

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v2, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->isGaidEnabled()Z

    move-result v2
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_0

    if-eqz v2, :cond_f

    const-string v2, "GAID \u83b7\u53d6\u8d85\u65f6\u65f6\u95f4"

    :try_start_3b
    iget-object v4, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v4}, Lcom/bytedance/applog/InitConfig;->getGaidTimeOutMilliSeconds()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0

    :cond_f
    const-string v2, "PageMeta \u63a5\u53e3\u6ce8\u89e3\u5f00\u5173"

    :try_start_3c
    iget-object v4, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v4}, Lcom/bytedance/applog/InitConfig;->isPageMetaAnnotationEnable()Z

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v2, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v2
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_0

    const-string v4, "\u670d\u52a1\u57df\u540d\u914d\u7f6e"

    if-eqz v2, :cond_1b

    :try_start_3d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getSendUris()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getSendUris()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_10
    iget-object v5, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getRegisterUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getRegisterUri()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    iget-object v5, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getSettingUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getSettingUri()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-object v5, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getAbUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getAbUri()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-object v5, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getActiveUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getActiveUri()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-object v5, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getSettingUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getSettingUri()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object v5, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getBusinessUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getBusinessUri()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    iget-object v5, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getProfileUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getProfileUri()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v5, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getReportOaidUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getReportOaidUri()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    iget-object v5, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getAlinkAttributionUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    iget-object v5, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getAlinkAttributionUri()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    iget-object v5, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getAlinkQueryUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    iget-object v5, p0, Lgbsdk/optional/applog/abbo;->a:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/applog/UriConfig;->getAlinkQueryUri()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    :goto_7
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_8

    :cond_1b
    const-string v2, "SaaS \u9ed8\u8ba4"

    goto :goto_7

    :goto_8
    const-string v2, "config"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_0

    :catchall_0
    return-object v0
.end method
