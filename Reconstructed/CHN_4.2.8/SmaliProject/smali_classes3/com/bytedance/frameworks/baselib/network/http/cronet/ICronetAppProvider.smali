.class public interface abstract Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;
.super Ljava/lang/Object;
.source "ICronetAppProvider.java"


# virtual methods
.method public abstract doLoadLibrary(Ljava/lang/String;)V
.end method

.method public abstract getAbClient()Ljava/lang/String;
.end method

.method public abstract getAbFeature()Ljava/lang/String;
.end method

.method public abstract getAbFlag()Ljava/lang/String;
.end method

.method public abstract getAbVersion()Ljava/lang/String;
.end method

.method public abstract getAbi()Ljava/lang/String;
.end method

.method public abstract getAppId()Ljava/lang/String;
.end method

.method public abstract getAppName()Ljava/lang/String;
.end method

.method public abstract getBypassBOEJSON()Ljava/lang/String;
.end method

.method public abstract getCarrierRegion()Ljava/lang/String;
.end method

.method public abstract getChannel()Ljava/lang/String;
.end method

.method public abstract getCityName()Ljava/lang/String;
.end method

.method public abstract getClientOpaqueData()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "[",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "[B[B>;>;"
        }
    .end annotation
.end method

.method public abstract getCronetSoPath()Ljava/lang/String;
.end method

.method public abstract getDPI()Ljava/lang/String;
.end method

.method public abstract getDeviceBrand()Ljava/lang/String;
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDeviceModel()Ljava/lang/String;
.end method

.method public abstract getDevicePlatform()Ljava/lang/String;
.end method

.method public abstract getDeviceType()Ljava/lang/String;
.end method

.method public abstract getGetDomainDefaultJSON()Ljava/lang/String;
.end method

.method public abstract getGetDomainDependHostMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHttpDnsRequestFlags()Ljava/lang/String;
.end method

.method public abstract getIId()Ljava/lang/String;
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getManifestVersionCode()Ljava/lang/String;
.end method

.method public abstract getNetAccessType()Ljava/lang/String;
.end method

.method public abstract getOSApi()Ljava/lang/String;
.end method

.method public abstract getOSVersion()Ljava/lang/String;
.end method

.method public abstract getOpaqueData()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract getOpenUdid()Ljava/lang/String;
.end method

.method public abstract getProcessFlag()I
.end method

.method public abstract getQuicHint()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getRegion()Ljava/lang/String;
.end method

.method public abstract getResolution()Ljava/lang/String;
.end method

.method public abstract getRticket()Ljava/lang/String;
.end method

.method public abstract getSdkAppId()Ljava/lang/String;
.end method

.method public abstract getSdkVersion()Ljava/lang/String;
.end method

.method public abstract getSsmix()Ljava/lang/String;
.end method

.method public abstract getStoreIdc()Ljava/lang/String;
.end method

.method public abstract getStoreIdcRuleJSON()Ljava/lang/String;
.end method

.method public abstract getSysRegion()Ljava/lang/String;
.end method

.method public abstract getTNCRequestFlags()Ljava/lang/String;
.end method

.method public abstract getTNCRequestHeader()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTNCRequestQuery()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUUID()Ljava/lang/String;
.end method

.method public abstract getUpdateVersionCode()Ljava/lang/String;
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract getVersionCode()Ljava/lang/String;
.end method

.method public abstract getVersionName()Ljava/lang/String;
.end method

.method public abstract handleApiResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJJJJJJZJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract isBOEProxyEnabled()Z
.end method

.method public abstract isEnableBrotli()Z
.end method

.method public abstract isEnableHttp2()Z
.end method

.method public abstract isEnableQuic()Z
.end method

.method public abstract needCustomLoadLibrary()Z
.end method

.method public abstract onCallToAddSecurityFactor(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onClientIPChanged(Ljava/lang/String;)V
.end method

.method public abstract onColdStartFinish()V
.end method

.method public abstract onCronetBootSucceed()V
.end method

.method public abstract onEffectiveConnectionTypeChanged(I)V
.end method

.method public abstract onMultiNetworkStateChanged(II)V
.end method

.method public abstract onNetworkQualityLevelChanged(I)V
.end method

.method public abstract onNetworkQualityRttAndThroughputNotified(III)V
.end method

.method public abstract onPacketLossComputed(IDDDD)V
.end method

.method public abstract onPublicIPsChanged(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRTTOrThroughputEstimatesComputed(III)V
.end method

.method public abstract onServerConfigABTestChanged(Ljava/lang/String;)V
.end method

.method public abstract onServerConfigEtagChanged(Ljava/lang/String;)V
.end method

.method public abstract onServerConfigUpdated(Ljava/lang/String;)V
.end method

.method public abstract onStoreIdcChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onTNCUpdateFailed(Ljava/util/ArrayList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onTTDnsResolveResult(Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onTTNetDetectInfoChanged(Ljava/lang/String;)V
.end method

.method public abstract sendAppMonitorEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method
