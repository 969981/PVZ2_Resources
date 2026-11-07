.class public Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;
.super Lcom/tw/OnLinePaySdk/PayInterFace;
.source "PayToolTW.java"


# static fields
.field public static mActivity:Landroid/app/Activity;

.field public static mOrderCallback:Lcom/talkweb/twOfflineSdk/OrderCallback;

.field public static price:Ljava/lang/String;

.field public static productName:Ljava/lang/String;


# instance fields
.field private TwChannelSdkId:Ljava/lang/String;

.field private applicationName:Ljava/lang/String;

.field private channelId:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/tw/OnLinePaySdk/PayInterFace;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->initBDConvert()V

    return-void
.end method

.method static synthetic access$100(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->userId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->userId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-static {p0, p1, p2}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->getTalkwebUserInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->showPaylDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    return-void
.end method

.method static synthetic access$500(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p8}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->twSdkPay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->payTest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    return-void
.end method

.method private getPayIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 512
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "orderId"

    .line 513
    invoke-virtual {p5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "amount"

    .line 514
    invoke-virtual {p5, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "requestData"

    .line 515
    invoke-virtual {p5, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Description"

    .line 516
    invoke-virtual {p5, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "goodName"

    .line 517
    invoke-virtual {p5, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 519
    invoke-virtual {p1, p5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object p1
.end method

.method private static getTalkwebUserInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    .line 110
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$3;

    invoke-direct {v1}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$3;-><init>()V

    invoke-static {p0, p1, p2, v0, v1}, Lcom/talkweb/twOfflineSdk/SendLoginUtil2;->sendLoginInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/MyCallBack;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 138
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initBDConvert()V
    .locals 3

    .line 585
    new-instance v0, Lcom/bytedance/ads/convert/config/BDConvertConfig;

    invoke-direct {v0}, Lcom/bytedance/ads/convert/config/BDConvertConfig;-><init>()V

    .line 587
    sget-object v1, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    sget-object v2, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0, v2}, Lcom/bytedance/ads/convert/BDConvert;->init(Landroid/content/Context;Lcom/bytedance/ads/convert/config/BDConvertConfig;Landroid/app/Activity;)V

    return-void
.end method

.method private initTWSdk(Landroid/content/Context;ZLcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 0

    return-void
.end method

.method private loginTWSdk(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 0

    return-void
.end method

.method private logoutTWAccount(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 0

    .line 526
    :try_start_0
    invoke-static {p1}, Lcom/tw/pay/sdk/TwPay;->logout(Landroid/content/Context;)V

    const-string p1, "01"

    .line 528
    invoke-static {p1, p2}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->logoutCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "03"

    .line 531
    invoke-static {p1, p2}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->logoutCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    :goto_0
    return-void
.end method

.method private payTest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 2

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&ordercode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&price="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 386
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "paytestparams\uff1a"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 389
    :try_start_0
    new-instance p3, Lcom/talkweb/twOfflineSdk/TWHttpAsyncTask;

    new-instance v0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$5;

    invoke-direct {v0, p0, p2, p4}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$5;-><init>(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    invoke-direct {p3, p1, v0}, Lcom/talkweb/twOfflineSdk/TWHttpAsyncTask;-><init>(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V

    .line 408
    sget-object p1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0xb

    const/16 p4, 0x3ea

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p1, p2, :cond_0

    new-array p1, v1, [Ljava/lang/Integer;

    .line 410
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-virtual {p3, p1}, Lcom/talkweb/twOfflineSdk/TWHttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 412
    :cond_0
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p2, v1, [Ljava/lang/Integer;

    .line 413
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, v0

    .line 412
    invoke-virtual {p3, p1, p2}, Lcom/talkweb/twOfflineSdk/TWHttpAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private payTwSDk(Landroid/content/Context;Landroid/content/Intent;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 9

    .line 298
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "s"

    const-string v2, "Android"

    .line 299
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "n"

    .line 300
    iget-object v2, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->applicationName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    .line 301
    iget-object v2, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "memo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/gamesdk/core/GameSDK;->getCurrentUser()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->userId:Ljava/lang/String;

    new-instance v8, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;

    invoke-direct {v8, p0, p2, p3, p1}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;-><init>(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;Landroid/content/Intent;Lcom/tw/OnLinePaySdk/callback/TWCallback;Landroid/content/Context;)V

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v3 .. v8}, Lcom/tw/OnLinePaySdk/tools/GetOrderInfoUtil;->getOrderInfo(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/MyCallBack;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 371
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 372
    iget-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->userId:Ljava/lang/String;

    iget-object v0, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->channelId:Ljava/lang/String;

    sget-object v1, Lcom/tw/OnLinePaySdk/PayKey;->OrderSerial:Ljava/lang/String;

    .line 374
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "06"

    .line 372
    invoke-static {v1, p1, v0, p2, p3}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->payCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    :goto_0
    return-void
.end method

.method public static queryOrderID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/OrderCallback;)V
    .locals 0

    .line 550
    :try_start_0
    sput-object p7, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->mOrderCallback:Lcom/talkweb/twOfflineSdk/OrderCallback;

    .line 551
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&uid="

    invoke-virtual {p7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&cid="

    invoke-virtual {p7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&pname="

    invoke-virtual {p7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&version="

    invoke-virtual {p7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&ordercode="

    invoke-virtual {p7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&goodid="

    invoke-virtual {p7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 553
    new-instance p1, Lcom/talkweb/twOfflineSdk/TWHttpAsyncTask;

    new-instance p2, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$10;

    invoke-direct {p2}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$10;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/talkweb/twOfflineSdk/TWHttpAsyncTask;-><init>(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V

    .line 567
    sget-object p0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 p2, 0xb

    const/16 p3, 0x3e9

    const/4 p4, 0x0

    const/4 p5, 0x1

    if-ge p0, p2, :cond_0

    new-array p0, p5, [Ljava/lang/Integer;

    .line 569
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, p4

    invoke-virtual {p1, p0}, Lcom/talkweb/twOfflineSdk/TWHttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 571
    :cond_0
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p2, p5, [Ljava/lang/Integer;

    .line 572
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, p4

    .line 571
    invoke-virtual {p1, p0, p2}, Lcom/talkweb/twOfflineSdk/TWHttpAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private showPaylDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 2

    .line 427
    new-instance p1, Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u786e\u8ba4\u652f\u4ed8"

    .line 429
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bf4\u660e\uff1a\u70b9\u51fb\u786e\u8ba4\u652f\u4ed8\u5373\u6a21\u62df\u652f\u4ed8\u6210\u529f,\u70b9\u51fb\u6a21\u62df\u8865\u5355\u5373\u6a21\u62df\u6e38\u620f\u5f02\u5e38\u95ea\u9000\uff0c\u91cd\u8fdb\u6e38\u620f\u5f00\u542f\u8865\u5355! \u652f\u4ed8\u9879\u76ee\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->productName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u652f\u4ed8\u91d1\u989d\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 431
    new-instance v0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$6;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$6;-><init>(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 439
    new-instance v0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$7;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$7;-><init>(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    const-string p3, "\u6a21\u62df\u8865\u5355"

    invoke-virtual {p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 448
    new-instance p3, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$8;

    invoke-direct {p3, p0, p2, p4}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$8;-><init>(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    const-string p2, "\u53d6\u6d88"

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 459
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private twSdkPay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 468
    invoke-direct/range {v0 .. v5}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->getPayIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    new-instance p4, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;

    invoke-direct {p4, p0, p7, p2, p8}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;-><init>(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    .line 467
    invoke-static {p1, p3, p4}, Lcom/tw/pay/sdk/TwPay;->sdkPay(Landroid/content/Context;Landroid/content/Intent;Lcom/tw/pay/sdk/callback/TwPayCallBack;)V

    return-void
.end method


# virtual methods
.method public destroySDK(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 0

    const-string p1, "01"

    .line 213
    invoke-static {p1, p2}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->destroyCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    return-void
.end method

.method public existBbs()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public existDestroySDKWindow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public existFloatingWindow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public existLogoutAccount()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public existUserCenter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 279
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 284
    :catch_1
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public initSDK(Landroid/content/Context;Ljava/lang/String;ZLcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 3

    .line 59
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    sput-object v0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->mActivity:Landroid/app/Activity;

    .line 60
    invoke-static {}, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->getChannelId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->channelId:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v0

    sget-object v1, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$1;

    invoke-direct {v2, p0}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$1;-><init>(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)V

    invoke-virtual {v0, v1, p2, v2}, Lcom/tw/gamesdk/core/GameSDK;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/tw/gamesdk/callback/GameSDKCallback$InitCallback;)V

    .line 73
    invoke-direct {p0, p1, p3, p4}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->initTWSdk(Landroid/content/Context;ZLcom/tw/OnLinePaySdk/callback/TWCallback;)V

    return-void
.end method

.method public loginSDK(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 2

    .line 79
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v0

    new-instance v1, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$2;-><init>(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    invoke-virtual {v0, v1}, Lcom/tw/gamesdk/core/GameSDK;->login(Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;)V

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->loginTWSdk(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    return-void
.end method

.method public logoutAccount(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 0

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->logoutTWAccount(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onDestroy(Landroid/content/Context;)V
    .locals 0

    .line 243
    invoke-static {}, Lcom/tw/gamesdk/net/LoadingDialogUtils;->dismiss()V

    const/4 p1, 0x0

    .line 244
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onRestart(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onStart(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onStop(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public openBbs(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 0

    const-string p1, "03"

    .line 164
    invoke-static {p1, p2}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->sendUserInfoCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    return-void
.end method

.method public openFloatingWindow(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 0

    const-string p1, "03"

    .line 176
    invoke-static {p1, p2}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->sendUserInfoCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    return-void
.end method

.method public openUserCenter(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 0

    return-void
.end method

.method public pay(Landroid/content/Context;Landroid/content/Intent;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1, p2, p3}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->payTwSDk(Landroid/content/Context;Landroid/content/Intent;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    return-void
.end method

.method public queryOrderResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 0

    return-void
.end method

.method public redeemGiftPack(Landroid/content/Context;Landroid/content/Intent;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 0

    return-void
.end method
