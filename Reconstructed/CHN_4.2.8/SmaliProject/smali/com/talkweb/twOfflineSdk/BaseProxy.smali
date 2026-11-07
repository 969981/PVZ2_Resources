.class public Lcom/talkweb/twOfflineSdk/BaseProxy;
.super Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;
.source "BaseProxy.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;


# instance fields
.field private carrierService:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;-><init>()V

    return-void
.end method

.method private initAllCarrier(Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method private onDestroy()V
    .locals 0

    return-void
.end method


# virtual methods
.method public carrierCancelOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    const-string p3, "\u53d6\u6d88\u8ba2\u8d2d\u6210\u529f"

    .line 340
    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getRealPrice()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x270f

    const-string v0, "\u8ba2\u8d2d\u6210\u529f"

    .line 341
    invoke-static {p3, v0, p2, p2, p1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public carrierOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    const-string v0, "carrierOrder \u8fdb\u884c\u8fd0\u8425\u5546\u8ba2\u8d2d"

    .line 304
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/BaseProxy;->carrierService:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/BaseProxy;->getCurPayGood()Lcom/talkweb/twOfflineSdk/bean/Goods;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->setCurPayGood(Lcom/talkweb/twOfflineSdk/bean/Goods;)V

    .line 307
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/BaseProxy;->carrierService:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/BaseProxy;->getCurPayWay()Lcom/talkweb/twOfflineSdk/bean/PayWay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->setCurPayWay(Lcom/talkweb/twOfflineSdk/bean/PayWay;)V

    .line 308
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/BaseProxy;->carrierService:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->carrierOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const-string p3, "carrierService is null"

    .line 311
    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    const/16 p3, 0x3e8

    .line 313
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getRealPrice()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u652f\u4ed8\u5931\u8d25"

    .line 312
    invoke-static {p3, v0, p2, p2, p1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public carrierPay(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    const-string v0, "\u8fdb\u884c\u8fd0\u8425\u5546\u652f\u4ed8"

    .line 269
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/BaseProxy;->carrierService:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/BaseProxy;->getCurPayGood()Lcom/talkweb/twOfflineSdk/bean/Goods;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->setCurPayGood(Lcom/talkweb/twOfflineSdk/bean/Goods;)V

    .line 272
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/BaseProxy;->carrierService:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/BaseProxy;->getCurPayWay()Lcom/talkweb/twOfflineSdk/bean/PayWay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->setCurPayWay(Lcom/talkweb/twOfflineSdk/bean/PayWay;)V

    .line 273
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/BaseProxy;->carrierService:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->carrierPay(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const-string p3, "carrierService is null"

    .line 276
    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    const/16 p3, 0x3e8

    .line 278
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getRealPrice()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u652f\u4ed8\u5931\u8d25"

    .line 277
    invoke-static {p3, v0, p2, p2, p1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public carrierQueryOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    const-string v0, "carrierOrder \u8fdb\u884c\u8fd0\u8425\u5546\u8ba2\u8d2d\u67e5\u8be2"

    .line 320
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/BaseProxy;->carrierService:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/BaseProxy;->getCurPayGood()Lcom/talkweb/twOfflineSdk/bean/Goods;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->setCurPayGood(Lcom/talkweb/twOfflineSdk/bean/Goods;)V

    .line 323
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/BaseProxy;->carrierService:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/BaseProxy;->getCurPayWay()Lcom/talkweb/twOfflineSdk/bean/PayWay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->setCurPayWay(Lcom/talkweb/twOfflineSdk/bean/PayWay;)V

    .line 324
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/BaseProxy;->carrierService:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->carrierQueryOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const-string p3, "carrierService is null"

    .line 327
    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    const/16 p3, 0x3e8

    .line 329
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getRealPrice()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u652f\u4ed8\u5931\u8d25"

    .line 328
    invoke-static {p3, v0, p2, p2, p1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public channelOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    .line 297
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getRealPrice()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x270f

    const-string v0, "\u652f\u4ed8\u6210\u529f"

    .line 296
    invoke-static {p3, v0, p2, p2, p1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public channelPay(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    .line 289
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getRealPrice()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x270f

    const-string v0, "\u652f\u4ed8\u6210\u529f"

    .line 288
    invoke-static {p3, v0, p2, p2, p1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public channelQueryOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public closeWithConfirm(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    return-void
.end method

.method public consume(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    .line 375
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayGood(Ljava/lang/String;)Lcom/talkweb/twOfflineSdk/bean/Goods;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 376
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPayWayList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    new-instance v0, Lcom/talkweb/twOfflineSdk/record/RecordManager;

    invoke-direct {v0, p3}, Lcom/talkweb/twOfflineSdk/record/RecordManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/talkweb/twOfflineSdk/record/RecordManager;->addConsumeRecord(Lcom/talkweb/twOfflineSdk/bean/Goods;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "consume \u6ca1\u6709\u914d\u7f6e\u652f\u4ed8\u65b9\u5f0f"

    .line 377
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwInitCallback;)V
    .locals 1

    const-string v0, "do base init"

    .line 258
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/talkweb/twOfflineSdk/BaseProxy;->init(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 260
    invoke-interface {p3, p1}, Lcom/talkweb/twOfflineSdk/callback/TwInitCallback;->initFinished(Z)V

    return-void
.end method

.method public initPush()V
    .locals 0

    return-void
.end method

.method public launch(Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public loginReport(Ljava/lang/String;)V
    .locals 2

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Baseproxy loginReport userId ==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public momentPublish([Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    return-void
.end method

.method public momentScene(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BaseProxy"

    invoke-static {v0, p2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object p2, p0, Lcom/talkweb/twOfflineSdk/BaseProxy;->carrierService:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz p2, :cond_0

    .line 235
    invoke-virtual {p2, p1, p1, p3}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/BaseProxy;->carrierService:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->onCreate(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/BaseProxy;->carrierService:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->onDestroy(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "Intent : onNewIntent intent =null"

    .line 243
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/BaseProxy;->carrierService:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {v0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->onNewIntent(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/BaseProxy;->carrierService:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->onPause(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/BaseProxy;->carrierService:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->onRestart(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/BaseProxy;->carrierService:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->onResume(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/BaseProxy;->carrierService:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->onStart(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/BaseProxy;->carrierService:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->onStop(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public openCertification(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;)V
    .locals 0

    const-string p1, "Baseproxy openCertification ==="

    .line 356
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public openCommunity(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public openGameMoment(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    return-void
.end method

.method public ququeryAllAchievementery(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    return-void
.end method

.method public setAchievement(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    return-void
.end method

.method public showCertification(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;Z)V
    .locals 0

    const-string p1, "Baseproxy showCertification ==="

    .line 366
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public syncCarrierService()V
    .locals 1

    const-string v0, "\u6ca1\u6709\u8fd0\u8425\u5546\u652f\u4ed8"

    .line 88
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public verifyFinished(ZZ)V
    .locals 0

    return-void
.end method
