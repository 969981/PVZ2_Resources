.class public final Lgbsdk/common/host/abyp;
.super Lgbsdk/common/host/abyv;
.source "SourceFile"


# instance fields
.field private final aLA:Lgbsdk/common/host/abyo;

.field private final aLB:Ljava/util/concurrent/CountDownLatch;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Z


# direct methods
.method public constructor <init>(Lgbsdk/common/host/abyo;ZLjava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lgbsdk/common/host/abyv;-><init>()V

    .line 45
    iput-object p1, p0, Lgbsdk/common/host/abyp;->aLA:Lgbsdk/common/host/abyo;

    .line 46
    iput-object p3, p0, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    .line 47
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lgbsdk/common/host/abyp;->aLB:Ljava/util/concurrent/CountDownLatch;

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lgbsdk/common/host/abyp;->c:Z

    .line 49
    iput-boolean p2, p0, Lgbsdk/common/host/abyp;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lgbsdk/common/host/abyv;-><init>()V

    .line 37
    iput-object p1, p0, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lgbsdk/common/host/abyp;->aLB:Ljava/util/concurrent/CountDownLatch;

    .line 39
    iput-object p1, p0, Lgbsdk/common/host/abyp;->aLA:Lgbsdk/common/host/abyo;

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lgbsdk/common/host/abyp;->c:Z

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lgbsdk/common/host/abyp;->d:Z

    return-void
.end method

.method private hI()Lcom/volcengine/zeus/download/PluginDownloadBean;
    .locals 6

    const-string v0, "Zeus/download_zeus"

    .line 155
    :try_start_0
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lgbsdk/common/host/abys;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "asyncFetchPlugins skip. Network off. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/volcengine/zeus/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v1, Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget-object v2, p0, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/volcengine/zeus/download/PluginDownloadBean;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 161
    :cond_0
    invoke-static {}, Lgbsdk/common/host/abys;->hK()Lgbsdk/common/host/abys;

    move-result-object v1

    invoke-static {}, Lgbsdk/common/host/abyr;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    invoke-static {v3}, Lgbsdk/common/host/abyr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/json; charset=utf-8"

    iget-object v5, p0, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lgbsdk/common/host/abys;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/acbq;

    move-result-object v1

    .line 162
    iget-object v2, v1, Lgbsdk/common/host/acbq;->aE:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Request plugin failed! response is empty! pkg = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " logId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lgbsdk/common/host/acbq;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v1, Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget-object v2, p0, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/volcengine/zeus/download/PluginDownloadBean;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 166
    :cond_1
    iget-object v2, v1, Lgbsdk/common/host/acbq;->aE:Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "error_msg"

    const-string v4, ""

    .line 167
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "error_no"

    const/4 v5, -0x1

    .line 168
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Request plugin failed! errorNo =["

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] errorMsg=["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] logId=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lgbsdk/common/host/acbq;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] pluginPkg=["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v1, Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget-object v2, p0, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v4}, Lcom/volcengine/zeus/download/PluginDownloadBean;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 177
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "response:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lgbsdk/common/host/acbq;->aE:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " logId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lgbsdk/common/host/acbq;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/volcengine/zeus/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data"

    .line 178
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 181
    invoke-static {v1}, Lgbsdk/common/host/abyr;->P(Lorg/json/JSONObject;)Lcom/volcengine/zeus/download/PluginDownloadBean;

    move-result-object v1

    .line 182
    invoke-static {v1}, Lgbsdk/common/host/abyp;->b(Lcom/volcengine/zeus/download/PluginDownloadBean;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 186
    invoke-static {v1}, Lgbsdk/common/host/abyp;->a(Lcom/volcengine/zeus/download/PluginDownloadBean;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 187
    new-instance v1, Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget-object v2, p0, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/volcengine/zeus/download/PluginDownloadBean;-><init>(Ljava/lang/String;I)V

    :cond_3
    return-object v1

    .line 191
    :cond_4
    new-instance v1, Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget-object v2, p0, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/volcengine/zeus/download/PluginDownloadBean;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 194
    :cond_5
    new-instance v1, Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget-object v2, p0, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/volcengine/zeus/download/PluginDownloadBean;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Request plugin config failed!!! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    new-instance v0, Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget-object v1, p0, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/volcengine/zeus/download/PluginDownloadBean;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 203
    iget-object v0, p0, Lgbsdk/common/host/abyp;->aLB:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public final hJ()Lcom/volcengine/zeus/download/PluginDownloadBean;
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "Zeus/download_zeus"

    .line 210
    iget-boolean v0, v1, Lgbsdk/common/host/abyp;->c:Z

    if-eqz v0, :cond_0

    .line 211
    invoke-direct/range {p0 .. p0}, Lgbsdk/common/host/abyp;->hI()Lcom/volcengine/zeus/download/PluginDownloadBean;

    move-result-object v0

    return-object v0

    .line 1055
    :cond_0
    iget-object v0, v1, Lgbsdk/common/host/abyp;->aLA:Lgbsdk/common/host/abyo;

    const/4 v3, 0x0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lgbsdk/common/host/abyp;->aLB:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    const/16 v4, 0xc

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1057
    :try_start_0
    iget-object v0, v1, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    const/16 v7, 0xb

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/volcengine/zeus/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1059
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1060
    iget-object v0, v1, Lgbsdk/common/host/abyp;->aLA:Lgbsdk/common/host/abyo;

    iget-object v0, v0, Lgbsdk/common/host/abyo;->a:Ljava/util/Map;

    iget-object v9, v1, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_2

    const-wide/16 v9, 0x0

    .line 1062
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1064
    :cond_2
    iget-boolean v9, v1, Lgbsdk/common/host/abyp;->d:Z

    if-nez v9, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/32 v9, 0x493e0

    cmp-long v0, v7, v9

    if-gez v0, :cond_3

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "asyncFetchPlugins skip. Short interval. "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1066
    invoke-static {v2, v0}, Lcom/volcengine/zeus/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    iget-object v7, v1, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v0, v8, v6

    invoke-static {v7, v4, v8}, Lcom/volcengine/zeus/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1071
    :cond_3
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abys;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "asyncFetchPlugins skip. Network off. "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1073
    invoke-static {v2, v0}, Lcom/volcengine/zeus/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget-object v7, v1, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v0, v8, v6

    invoke-static {v7, v4, v8}, Lcom/volcengine/zeus/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1078
    :cond_4
    iget-object v0, v1, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/volcengine/zeus/Zeus;->getPlugin(Ljava/lang/String;)Lcom/volcengine/zeus/plugin/Plugin;

    move-result-object v0

    .line 1082
    iget-object v7, v0, Lcom/volcengine/zeus/plugin/Plugin;->response:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v8, ""

    if-nez v7, :cond_5

    .line 1083
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    iget-object v9, v0, Lcom/volcengine/zeus/plugin/Plugin;->response:Ljava/lang/String;

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v9, v8

    goto :goto_0

    .line 1086
    :cond_5
    invoke-static {}, Lgbsdk/common/host/abys;->hK()Lgbsdk/common/host/abys;

    move-result-object v7

    invoke-static {}, Lgbsdk/common/host/abyr;->a()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    invoke-static {v10}, Lgbsdk/common/host/abyr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "application/json; charset=utf-8"

    iget-object v12, v1, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    invoke-virtual {v7, v9, v10, v11, v12}, Lgbsdk/common/host/abys;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/acbq;

    move-result-object v7

    .line 1087
    iget-object v9, v7, Lgbsdk/common/host/acbq;->aE:Ljava/lang/Object;

    check-cast v9, Lorg/json/JSONObject;

    .line 1088
    iget-object v7, v7, Lgbsdk/common/host/acbq;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    if-nez v9, :cond_6

    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "Request plugin failed! response is empty! pkg = "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " logId = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1091
    invoke-static {v2, v0}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iget-object v7, v1, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v0, v8, v6

    invoke-static {v7, v4, v8}, Lcom/volcengine/zeus/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_6
    move-object/from16 v19, v9

    move-object v9, v7

    move-object/from16 v7, v19

    :goto_0
    const-string v10, "error_msg"

    .line 1096
    invoke-virtual {v7, v10, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "error_no"

    const/4 v11, -0x1

    .line 1097
    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_7

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Request plugin failed! errorNo =["

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] errorMsg=["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] logId=["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] pluginPkg=["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1103
    invoke-static {v2, v0}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iget-object v7, v1, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v0, v8, v6

    invoke-static {v7, v4, v8}, Lcom/volcengine/zeus/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1108
    :cond_7
    iget-object v8, v1, Lgbsdk/common/host/abyp;->aLA:Lgbsdk/common/host/abyo;

    iget-object v10, v1, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lgbsdk/common/host/abyo;->a(Ljava/lang/String;)V

    .line 1109
    iget-object v8, v1, Lgbsdk/common/host/abyp;->aLA:Lgbsdk/common/host/abyo;

    iget-object v8, v8, Lgbsdk/common/host/abyo;->a:Ljava/util/Map;

    iget-object v10, v1, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "response:"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " logId:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/volcengine/zeus/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "data"

    .line 1111
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 1114
    invoke-static {v7}, Lgbsdk/common/host/abyr;->P(Lorg/json/JSONObject;)Lcom/volcengine/zeus/download/PluginDownloadBean;

    move-result-object v7

    .line 1115
    invoke-static {v7}, Lgbsdk/common/host/abyp;->b(Lcom/volcengine/zeus/download/PluginDownloadBean;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1118
    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v8

    iget-object v9, v1, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    iget-object v10, v7, Lcom/volcengine/zeus/download/PluginDownloadBean;->mMd5:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lgbsdk/common/host/acam;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    invoke-static {v7}, Lgbsdk/common/host/abyp;->a(Lcom/volcengine/zeus/download/PluginDownloadBean;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1126
    iget v8, v7, Lcom/volcengine/zeus/download/PluginDownloadBean;->mVersionCode:I

    iget v9, v7, Lcom/volcengine/zeus/download/PluginDownloadBean;->mApiVersionMin:I

    iget v10, v7, Lcom/volcengine/zeus/download/PluginDownloadBean;->mApiVersionMax:I

    invoke-virtual {v0, v8, v9, v10}, Lcom/volcengine/zeus/plugin/Plugin;->setApiCompatVersion(III)V

    .line 1127
    iget-object v0, v1, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v7, v8, v6

    invoke-static {v0, v6, v8}, Lcom/volcengine/zeus/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1130
    :try_start_2
    invoke-static {}, Lgbsdk/common/host/abym;->hL()Lgbsdk/common/host/abym;

    move-result-object v0

    .line 2060
    new-instance v15, Lgbsdk/common/host/abym$1;

    invoke-direct {v15, v0, v7, v1}, Lgbsdk/common/host/abym$1;-><init>(Lgbsdk/common/host/abym;Lcom/volcengine/zeus/download/PluginDownloadBean;Lgbsdk/common/host/abyp;)V

    .line 2093
    new-instance v14, Lgbsdk/common/host/abym$2;

    invoke-direct {v14, v0, v7, v1}, Lgbsdk/common/host/abym$2;-><init>(Lgbsdk/common/host/abym;Lcom/volcengine/zeus/download/PluginDownloadBean;Lgbsdk/common/host/abyp;)V

    .line 2110
    iget-object v8, v0, Lgbsdk/common/host/abym;->aLF:Lcom/volcengine/zeus/download/IDownloader;

    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v9

    iget-object v10, v7, Lcom/volcengine/zeus/download/PluginDownloadBean;->mUrl:Ljava/lang/String;

    const-string v0, "%s_%s.jar"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, v7, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    aput-object v12, v11, v6

    iget-object v12, v7, Lcom/volcengine/zeus/download/PluginDownloadBean;->mMd5:Ljava/lang/String;

    aput-object v12, v11, v5

    .line 2112
    invoke-static {v0, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 2114
    invoke-static {}, Lgbsdk/common/host/abxw;->a()Ljava/lang/String;

    move-result-object v13

    const/4 v0, 0x5

    const-string v16, "mime_type_plugin"

    iget-object v7, v7, Lcom/volcengine/zeus/download/PluginDownloadBean;->mBackupUrlList:Ljava/util/List;

    move-object/from16 v18, v14

    move v14, v0

    move-object v0, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v7

    move-object/from16 v17, v0

    .line 2110
    invoke-interface/range {v8 .. v18}, Lcom/volcengine/zeus/download/IDownloader;->downloader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/volcengine/zeus/download/IZeusDownloadListener;Lcom/volcengine/zeus/download/IZeusDownloadInterceptor;)V

    .line 1131
    iget-object v0, v1, Lgbsdk/common/host/abyp;->aLB:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    const/4 v7, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x1

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    :goto_1
    const/4 v7, 0x0

    :goto_2
    if-nez v0, :cond_a

    .line 1138
    :try_start_3
    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v0

    iget-object v8, v1, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    const-string v9, "0"

    invoke-virtual {v0, v8, v9}, Lgbsdk/common/host/acam;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_a
    :goto_3
    if-nez v7, :cond_b

    .line 1141
    iget-object v0, v1, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v3, v8, v6

    invoke-static {v0, v6, v8}, Lcom/volcengine/zeus/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_2
    move-exception v0

    const/4 v7, 0x0

    .line 1144
    :goto_4
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Request plugin config failed!!! "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v0}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez v7, :cond_b

    .line 1146
    iget-object v2, v1, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v2, v4, v5}, Lcom/volcengine/zeus/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1149
    :cond_b
    :goto_5
    iget-object v0, v1, Lgbsdk/common/host/abyp;->aLA:Lgbsdk/common/host/abyo;

    iget-object v0, v0, Lgbsdk/common/host/abyo;->cG:Ljava/util/Map;

    iget-object v2, v1, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :catchall_3
    move-exception v0

    iget-object v2, v1, Lgbsdk/common/host/abyp;->aLA:Lgbsdk/common/host/abyo;

    iget-object v2, v2, Lgbsdk/common/host/abyo;->cG:Ljava/util/Map;

    iget-object v3, v1, Lgbsdk/common/host/abyp;->b:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    throw v0

    :cond_c
    :goto_6
    return-object v3
.end method
