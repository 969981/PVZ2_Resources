.class public Lgbsdk/common/host/abgi;
.super Ljava/lang/Object;
.source "SDKEventManager.java"


# static fields
.field public static final fU:Lgbsdk/common/host/abgi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lgbsdk/common/host/abgi;

    invoke-direct {v0}, Lgbsdk/common/host/abgi;-><init>()V

    sput-object v0, Lgbsdk/common/host/abgi;->fU:Lgbsdk/common/host/abgi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static N(Ljava/lang/String;)Lcom/bytedance/framwork/core/apm/SDKMonitor;
    .locals 0

    .line 86
    invoke-static {p0}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->getInstance(Ljava/lang/String;)Lcom/bytedance/framwork/core/apm/SDKMonitor;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/apmplus/sdk/event/SDKEventInitConfig;)V
    .locals 9

    if-nez p0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/apmplus/sdk/event/SDKEventInitConfig;->getAid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 48
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "aid"

    .line 50
    invoke-virtual {p0}, Lcom/apmplus/sdk/event/SDKEventInitConfig;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "host_aid"

    .line 51
    invoke-virtual {p0}, Lcom/apmplus/sdk/event/SDKEventInitConfig;->getHostAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "channel"

    .line 52
    invoke-virtual {p0}, Lcom/apmplus/sdk/event/SDKEventInitConfig;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app_version"

    .line 53
    invoke-virtual {p0}, Lcom/apmplus/sdk/event/SDKEventInitConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version_code"

    .line 54
    invoke-virtual {p0}, Lcom/apmplus/sdk/event/SDKEventInitConfig;->getUpdateVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/apmplus/sdk/event/SDKEventInitConfig;->getAid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apmplus/sdk/event/SDKEventInitConfig;->getEventRequestUrls()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->setConfigUrl(Ljava/lang/String;Ljava/util/List;)V

    .line 59
    invoke-virtual {p0}, Lcom/apmplus/sdk/event/SDKEventInitConfig;->getAid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apmplus/sdk/event/SDKEventInitConfig;->getEventUploadUrls()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->setDefaultReportUrl(Ljava/lang/String;Ljava/util/List;)V

    .line 60
    invoke-virtual {p0}, Lcom/apmplus/sdk/event/SDKEventInitConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 61
    invoke-virtual {p0}, Lcom/apmplus/sdk/event/SDKEventInitConfig;->getAid()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-virtual {p0}, Lcom/apmplus/sdk/event/SDKEventInitConfig;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {p0}, Lcom/apmplus/sdk/event/SDKEventInitConfig;->isDebug()Z

    move-result v5

    const/4 v6, 0x0

    new-instance v7, Lgbsdk/common/host/abgi$1;

    invoke-direct {v7}, Lgbsdk/common/host/abgi$1;-><init>()V

    .line 76
    invoke-virtual {p0}, Lcom/apmplus/sdk/event/SDKEventInitConfig;->getDynamicParams()Lcom/apmplus/sdk/event/SDKEventIDynamicParams;

    move-result-object v8

    .line 60
    invoke-static/range {v1 .. v8}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->initMonitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ZZLcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;Lcom/apmplus/sdk/event/SDKEventIDynamicParams;)V

    return-void
.end method
