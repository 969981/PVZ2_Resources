.class public interface abstract Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;
.super Ljava/lang/Object;
.source "GBCommonApi.java"

# interfaces
.implements Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;


# virtual methods
.method public abstract getApkAttribution()Ljava/lang/String;
.end method

.method public abstract getApkAttributionEx()Ljava/lang/String;
.end method

.method public abstract getHumeChannel()Ljava/lang/String;
.end method

.method public abstract getHumeSDKVersion()Ljava/lang/String;
.end method

.method public abstract getOpenExtraInfo()Ljava/lang/String;
.end method

.method public abstract getPackageChannel()Ljava/lang/String;
.end method

.method public abstract getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract handleOpenURL(Ljava/lang/String;)Z
.end method

.method public abstract init(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V
.end method

.method public abstract init(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;)V
.end method

.method public abstract isInited()Z
.end method

.method public abstract isRunningCloud()Z
.end method

.method public abstract isStarted()Z
.end method

.method public abstract prepare(Landroid/content/Context;)V
.end method

.method public abstract sendLog(Ljava/lang/String;Lorg/json/JSONObject;)V
.end method

.method public abstract setGameActivity(Landroid/app/Activity;)V
.end method

.method public abstract setUserId(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract start(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/StartCallBack;Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig;)V
.end method
