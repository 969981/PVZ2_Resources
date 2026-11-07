.class public interface abstract Lcom/talkweb/twOfflineSdk/sdk/ITwOfflineSDK;
.super Ljava/lang/Object;
.source "ITwOfflineSDK.java"


# virtual methods
.method public abstract activeGame(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract carrierCancelOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V
.end method

.method public abstract carrierOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V
.end method

.method public abstract carrierPay(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V
.end method

.method public abstract carrierQueryOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V
.end method

.method public abstract channelOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V
.end method

.method public abstract channelPay(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V
.end method

.method public abstract channelQueryOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V
.end method

.method public abstract checkOrder(Ljava/util/Map;Lcom/talkweb/twOfflineSdk/callback/CheckOrderCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;",
            ">;",
            "Lcom/talkweb/twOfflineSdk/callback/CheckOrderCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract checkorder(Lcom/talkweb/twOfflineSdk/callback/CheckNumberCallback;)V
.end method

.method public abstract cleanOrder(Ljava/lang/String;Landroid/content/Context;)V
.end method

.method public abstract closeWithConfirm(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
.end method

.method public abstract consume(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
.end method

.method public abstract dataReport(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract exit(Landroid/app/Activity;)V
.end method

.method public abstract getPayIconByType(Landroid/content/Context;Ljava/lang/String;)I
.end method

.method public abstract init(Landroid/app/Activity;Ljava/lang/String;)V
.end method

.method public abstract init(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwInitCallback;)V
.end method

.method public abstract initPush()V
.end method

.method public abstract launch(Landroid/app/Application;)V
.end method

.method public abstract loginChannel(Landroid/app/Activity;)Lcom/talkweb/twOfflineSdk/bean/UserInfo;
.end method

.method public abstract loginChannelWithoutUi(Landroid/app/Activity;)Lcom/talkweb/twOfflineSdk/bean/UserInfo;
.end method

.method public abstract loginReport(Ljava/lang/String;)V
.end method

.method public abstract momentPublish([Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
.end method

.method public abstract momentScene(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onCreate(Landroid/app/Activity;)V
.end method

.method public abstract onDestroy(Landroid/app/Activity;)V
.end method

.method public abstract onNewIntent(Landroid/content/Intent;)V
.end method

.method public abstract onPause(Landroid/app/Activity;)V
.end method

.method public abstract onRestart(Landroid/app/Activity;)V
.end method

.method public abstract onResume(Landroid/app/Activity;)V
.end method

.method public abstract onStart(Landroid/app/Activity;)V
.end method

.method public abstract onStop(Landroid/app/Activity;)V
.end method

.method public abstract openCertification(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;)V
.end method

.method public abstract openCommunity(Landroid/app/Activity;)V
.end method

.method public abstract openGameMoment(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
.end method

.method public abstract ququeryAllAchievementery(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
.end method

.method public abstract saveOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
.end method

.method public abstract setAchievement(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
.end method

.method public abstract showCertification(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;Z)V
.end method

.method public abstract uploadTracking(Landroid/app/Activity;Ljava/lang/String;)V
.end method
