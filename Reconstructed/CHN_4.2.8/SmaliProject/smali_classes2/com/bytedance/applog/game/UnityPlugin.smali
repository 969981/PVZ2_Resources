.class public Lcom/bytedance/applog/game/UnityPlugin;
.super Ljava/lang/Object;
.source "UnityPlugin.java"


# instance fields
.field private unityActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/bytedance/applog/game/UnityPlugin;->unityActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.unity3d.player.UnityPlayer"

    .line 29
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentActivity"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/bytedance/applog/game/UnityPlugin;->unityActivity:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/bytedance/applog/game/UnityPlugin;->unityActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public flush()V
    .locals 0

    .line 150
    invoke-static {}, Lcom/bytedance/applog/AppLog;->flush()V

    return-void
.end method

.method public getAbConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 130
    invoke-static {p1, p2}, Lcom/bytedance/applog/AppLog;->getAbConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAbSdkVersion()Ljava/lang/String;
    .locals 1

    .line 122
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getAbSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .line 162
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getAid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllAbTestConfigs()Ljava/lang/String;
    .locals 1

    .line 126
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getAllAbTestConfigs()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 138
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getDid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIid()Ljava/lang/String;
    .locals 1

    .line 146
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getIid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 142
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getSsid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserUniqueID()Ljava/lang/String;
    .locals 1

    .line 158
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getUserUniqueID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V
    .locals 1

    .line 55
    new-instance v0, Lcom/bytedance/applog/InitConfig;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/applog/InitConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, p3}, Lcom/bytedance/applog/InitConfig;->setAbEnable(Z)V

    .line 57
    invoke-static {p4}, Lcom/bytedance/applog/AppLog;->setEncryptAndCompress(Z)V

    if-eqz p5, :cond_0

    .line 59
    new-instance p1, Lcom/bytedance/applog/game/UnityPlugin$1;

    invoke-direct {p1, p0}, Lcom/bytedance/applog/game/UnityPlugin$1;-><init>(Lcom/bytedance/applog/game/UnityPlugin;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/applog/InitConfig;->setLogger(Lcom/bytedance/applog/ILogger;)Lcom/bytedance/applog/InitConfig;

    .line 67
    :cond_0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 68
    invoke-static {p6, p1}, Lcom/bytedance/applog/UriConfig;->createByDomain(Ljava/lang/String;[Ljava/lang/String;)Lcom/bytedance/applog/UriConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/applog/InitConfig;->setUriConfig(Lcom/bytedance/applog/UriConfig;)Lcom/bytedance/applog/InitConfig;

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/applog/game/UnityPlugin;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/applog/AppLog;->init(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;)V

    return-void
.end method

.method public onEventV3(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 41
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object p2

    const-string v0, "UnityPlugin"

    .line 44
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "JSON handle failed"

    invoke-interface {p2, v0, v2, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public profileAppend(Ljava/lang/String;)V
    .locals 4

    .line 92
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/applog/AppLog;->profileAppend(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    const-string v1, "UnityPlugin"

    .line 95
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "JSON handle failed"

    invoke-interface {v0, v1, v3, p1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public profileIncrement(Ljava/lang/String;)V
    .locals 4

    .line 114
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/applog/AppLog;->profileIncrement(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 116
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    const-string v1, "UnityPlugin"

    .line 117
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "JSON handle failed"

    invoke-interface {v0, v1, v3, p1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public profileSet(Ljava/lang/String;)V
    .locals 4

    .line 83
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/applog/AppLog;->profileSet(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    const-string v1, "UnityPlugin"

    .line 86
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "JSON handle failed"

    invoke-interface {v0, v1, v3, p1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public profileSetOnce(Ljava/lang/String;)V
    .locals 4

    .line 101
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/applog/AppLog;->profileSetOnce(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    const-string v1, "UnityPlugin"

    .line 104
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "JSON handle failed"

    invoke-interface {v0, v1, v3, p1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public profileUnset(Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-static {p1}, Lcom/bytedance/applog/AppLog;->profileUnset(Ljava/lang/String;)V

    return-void
.end method

.method public removeCustomHeaderInfo(Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-static {p1}, Lcom/bytedance/applog/AppLog;->removeHeaderInfo(Ljava/lang/String;)V

    return-void
.end method

.method public setCustomHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-static {p1, p2}, Lcom/bytedance/applog/AppLog;->setHeaderInfo(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setExternalAbVersion(Ljava/lang/String;)V
    .locals 0

    .line 134
    invoke-static {p1}, Lcom/bytedance/applog/AppLog;->setExternalAbVersion(Ljava/lang/String;)V

    return-void
.end method

.method public setUserUniqueID(Ljava/lang/String;)V
    .locals 0

    .line 154
    invoke-static {p1}, Lcom/bytedance/applog/AppLog;->setUserUniqueID(Ljava/lang/String;)V

    return-void
.end method
