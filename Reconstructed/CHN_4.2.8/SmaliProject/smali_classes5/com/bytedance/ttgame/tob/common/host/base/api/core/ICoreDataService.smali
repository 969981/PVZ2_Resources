.class public interface abstract Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;
.super Ljava/lang/Object;
.source "ICoreDataService.java"

# interfaces
.implements Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;


# virtual methods
.method public abstract addDebugInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addEventExternalParam(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract addEventExternalParams(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAdAttribution()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAdFeatureSwitch()Z
.end method

.method public abstract getAllPluginVersion()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getApkAttribution()Ljava/lang/String;
.end method

.method public abstract getApkAttributionEx()Ljava/lang/String;
.end method

.method public abstract getAppContext()Landroid/content/Context;
.end method

.method public abstract getAwemeAuthSwitch()Z
.end method

.method public abstract getBroadcastSwitch()Z
.end method

.method public abstract getComponents()Ljava/lang/String;
.end method

.method public abstract getComponentsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConfig()Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;
.end method

.method public abstract getEnv()Ljava/lang/String;
.end method

.method public abstract getGameActivity()Landroid/app/Activity;
.end method

.method public abstract getHostVersion()Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHumeChannel()Ljava/lang/String;
.end method

.method public abstract getInitConfig()Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;
.end method

.method public abstract getInitSwitchData()Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;
.end method

.method public abstract getInstallRandomId()J
.end method

.method public abstract getIsCloudGameValue()I
.end method

.method public abstract getLaunchId()Ljava/lang/String;
.end method

.method public abstract getOpenExtraInfo()Ljava/lang/String;
.end method

.method public abstract getOpenURLInfo()Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;
.end method

.method public abstract getOsdkType()Ljava/lang/String;
.end method

.method public abstract getPackageChannel()Ljava/lang/String;
.end method

.method public abstract getPluginVersion()Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProfileSwitch()Z
.end method

.method public abstract getScreenSwitch()Z
.end method

.method public abstract getSessionValue()Ljava/lang/String;
.end method

.method public abstract getSettingsResponse()Ljava/lang/String;
.end method

.method public abstract getShareSwitch()Z
.end method

.method public abstract getTicketId()Ljava/lang/String;
.end method

.method public abstract getTraceId()Ljava/lang/String;
.end method

.method public abstract getUnionMode()I
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract getUserUniqueId()Ljava/lang/String;
.end method

.method public abstract getVideoEditSwitch()Z
.end method

.method public abstract isCloudTest()Z
.end method

.method public abstract isDataCheck()Z
.end method

.method public abstract isDebugMode()Z
.end method

.method public abstract isDouyinChannel()Z
.end method

.method public abstract isOmnichannel()Z
.end method

.method public abstract isPluginSdk()Z
.end method

.method public abstract isPrivacyAgreed()Z
.end method

.method public abstract isRunningCloud()Z
.end method

.method public abstract sendLog(Ljava/lang/String;Lorg/json/JSONObject;)V
.end method

.method public abstract sendLog(ZLjava/lang/String;Lorg/json/JSONObject;)V
.end method

.method public abstract sendLogWithCache(Ljava/lang/String;Lorg/json/JSONObject;Z)V
.end method

.method public abstract setCloudTest(Z)V
.end method

.method public abstract setRunningCloud(Z)V
.end method

.method public abstract setUserId(Ljava/lang/String;)V
.end method

.method public abstract setUserUniqueId(Ljava/lang/String;)V
.end method
