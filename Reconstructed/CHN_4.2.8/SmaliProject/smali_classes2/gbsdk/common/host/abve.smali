.class public final Lgbsdk/common/host/abve;
.super Lcom/volcengine/zeus/apm/AbsApm;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Object;

.field private final cD:Ljava/lang/Object;

.field private volatile d:Z

.field private volatile e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/volcengine/zeus/apm/AbsApm;-><init>()V

    const-string v0, "334386"

    .line 99
    iput-object v0, p0, Lgbsdk/common/host/abve;->a:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abve;->b:Ljava/lang/Object;

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abve;->cD:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lgbsdk/common/host/abve;->d:Z

    .line 108
    iput-boolean v0, p0, Lgbsdk/common/host/abve;->e:Z

    return-void
.end method

.method static synthetic a(Lgbsdk/common/host/abve;)V
    .locals 8

    .line 2114
    iget-boolean v0, p0, Lgbsdk/common/host/abve;->e:Z

    if-nez v0, :cond_1

    .line 2115
    iget-object v0, p0, Lgbsdk/common/host/abve;->cD:Ljava/lang/Object;

    monitor-enter v0

    .line 2116
    :try_start_0
    iget-boolean v1, p0, Lgbsdk/common/host/abve;->e:Z

    if-nez v1, :cond_0

    .line 2162
    new-instance v1, Lgbsdk/common/host/abve$3;

    invoke-direct {v1}, Lgbsdk/common/host/abve$3;-><init>()V

    invoke-static {v1}, Lgbsdk/common/host/abxy;->d(Ljava/lang/Runnable;)V

    .line 2121
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :try_start_1
    const-string v2, "aid"

    const-string v3, "334386"

    .line 2123
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "host_aid"

    .line 2124
    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "device_id"

    .line 2125
    invoke-static {}, Lgbsdk/common/host/acbw;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sdk_version"

    const-string v3, "0.0.1-beta.4200.106-osdk.21-removeApmCrash"

    .line 2126
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "channel"

    const-string v3, "channel"

    .line 2127
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "package_name"

    .line 2128
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "app_version"

    .line 2130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2134
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :catch_1
    :goto_0
    const-string v2, "334386"

    const-string v3, "https://dispatch-api-online.vemarsdev.com/settings/get"

    .line 2137
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->setConfigUrl(Ljava/lang/String;Ljava/util/List;)V

    const-string v2, "334386"

    const-string v3, "https://dispatch-api-online.vemarsdev.com/monitor/collect/c/performance/"

    .line 2139
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->setDefaultReportUrl(Ljava/lang/String;Ljava/util/List;)V

    .line 2140
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "334386"

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v7, Lgbsdk/common/host/abve$2;

    invoke-direct {v7, p0}, Lgbsdk/common/host/abve$2;-><init>(Lgbsdk/common/host/abve;)V

    invoke-static/range {v2 .. v7}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->initMonitor(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;ZZLcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;)V

    .line 2153
    iput-boolean v1, p0, Lgbsdk/common/host/abve;->e:Z

    .line 2155
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public final getDid()Ljava/lang/String;
    .locals 3

    const-string v0, "334386"

    .line 55
    invoke-static {v0}, Lcom/apm/applog/AppLog;->getInstance(Ljava/lang/String;)Lcom/apm/applog/AppLog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/apm/applog/AppLog;->getDid()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 63
    :cond_0
    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v0

    .line 1303
    iget-object v0, v0, Lgbsdk/common/host/acam;->cv:Landroid/content/SharedPreferences;

    const-string v1, "zeus_did"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final init()V
    .locals 8

    .line 37
    iget-boolean v0, p0, Lgbsdk/common/host/abve;->d:Z

    if-nez v0, :cond_2

    .line 38
    iget-object v0, p0, Lgbsdk/common/host/abve;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-boolean v1, p0, Lgbsdk/common/host/abve;->d:Z

    if-nez v1, :cond_1

    .line 1191
    new-instance v1, Lcom/apm/applog/InitConfig;

    const-string v2, "334386"

    const-string v3, "channel"

    invoke-direct {v1, v2, v3}, Lcom/apm/applog/InitConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    invoke-static {}, Lgbsdk/common/host/acal;->b()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const-string v2, "http://apmplus.volces.com"

    .line 1194
    new-instance v4, Lcom/apm/applog/UriConfig$Builder;

    invoke-direct {v4}, Lcom/apm/applog/UriConfig$Builder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/apm/device_register"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1195
    invoke-virtual {v4, v5}, Lcom/apm/applog/UriConfig$Builder;->setRegisterUri(Ljava/lang/String;)Lcom/apm/applog/UriConfig$Builder;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/monitor/collect/c/session"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    .line 1196
    invoke-virtual {v4, v5}, Lcom/apm/applog/UriConfig$Builder;->setSendUris([Ljava/lang/String;)Lcom/apm/applog/UriConfig$Builder;

    move-result-object v2

    .line 1199
    invoke-virtual {v2}, Lcom/apm/applog/UriConfig$Builder;->build()Lcom/apm/applog/UriConfig;

    move-result-object v2

    .line 1200
    invoke-virtual {v1, v2}, Lcom/apm/applog/InitConfig;->setUriConfig(Lcom/apm/applog/UriConfig;)Lcom/apm/applog/InitConfig;

    .line 1202
    :cond_0
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/apm/applog/AppLog;->init(Landroid/content/Context;Lcom/apm/applog/InitConfig;)Lcom/apm/applog/AppLog;

    const-string v1, "334386"

    .line 1203
    invoke-static {v1}, Lcom/apm/applog/AppLog;->getInstance(Ljava/lang/String;)Lcom/apm/applog/AppLog;

    move-result-object v1

    new-instance v2, Lgbsdk/common/host/abve$4;

    invoke-direct {v2, p0}, Lgbsdk/common/host/abve$4;-><init>(Lgbsdk/common/host/abve;)V

    invoke-virtual {v1, v2}, Lcom/apm/applog/AppLog;->addDataObserver(Lcom/apm/applog/IDataObserver;)V

    .line 46
    iput-boolean v3, p0, Lgbsdk/common/host/abve;->d:Z

    .line 48
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    return-void
.end method

.method public final monitorEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 5

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 78
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 82
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 83
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 84
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 86
    invoke-virtual {p3, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p3, "334386"

    .line 88
    invoke-static {p3}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->getInstance(Ljava/lang/String;)Lcom/bytedance/framwork/core/apm/SDKMonitor;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p4}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->monitorEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)V

    .line 89
    invoke-static {p3}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->getInstance(Ljava/lang/String;)Lcom/bytedance/framwork/core/apm/SDKMonitor;

    move-result-object p1

    new-instance p2, Lgbsdk/common/host/abve$1;

    invoke-direct {p2, p0}, Lgbsdk/common/host/abve$1;-><init>(Lgbsdk/common/host/abve;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->flushBuffer(Lcom/bytedance/framwork/core/apm/SDKMonitor$ICallback;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
