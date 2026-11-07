.class public Lcom/talkweb/twOfflineSdk/TalkwebProxy;
.super Lcom/talkweb/twOfflineSdk/BaseProxy;
.source "TalkwebProxy.java"


# static fields
.field public static aliPayAppid:Ljava/lang/String; = "2016070604908731"

.field public static checkOrderNum:Ljava/lang/String;

.field public static feeCode:Ljava/lang/String;

.field public static isFistLogin:Z

.field public static isLogined:Z

.field public static mActivity:Landroid/app/Activity;

.field public static mAppId:Ljava/lang/String;

.field public static orderNum:Ljava/lang/String;

.field public static price:Ljava/lang/String;

.field public static saveOrderTime:Ljava/lang/String;

.field public static testHJ:Z


# instance fields
.field private channelSpecialCallback:Lcom/tw/OnLinePaySdk/callback/ChannelSpecialCallback;

.field private characterid:Ljava/lang/String;

.field private checkOrderResult:Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;

.field private index:I

.field private mDialog:Landroid/app/Dialog;

.field private packageName:Ljava/lang/String;

.field private returnMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;",
            ">;"
        }
    .end annotation
.end field

.field private userid:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/talkweb/twOfflineSdk/BaseProxy;-><init>()V

    .line 82
    new-instance v0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$1;

    invoke-direct {v0, p0}, Lcom/talkweb/twOfflineSdk/TalkwebProxy$1;-><init>(Lcom/talkweb/twOfflineSdk/TalkwebProxy;)V

    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->channelSpecialCallback:Lcom/tw/OnLinePaySdk/callback/ChannelSpecialCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/talkweb/twOfflineSdk/TalkwebProxy;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->index:I

    return p0
.end method

.method static synthetic access$008(Lcom/talkweb/twOfflineSdk/TalkwebProxy;)I
    .locals 2

    .line 71
    iget v0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->index:I

    return v0
.end method

.method static synthetic access$100(Lcom/talkweb/twOfflineSdk/TalkwebProxy;)Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->checkOrderResult:Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;

    return-object p0
.end method

.method static synthetic access$102(Lcom/talkweb/twOfflineSdk/TalkwebProxy;Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;)Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->checkOrderResult:Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;

    return-object p1
.end method

.method static synthetic access$200(Lcom/talkweb/twOfflineSdk/TalkwebProxy;)Ljava/util/Map;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->returnMap:Ljava/util/Map;

    return-object p0
.end method

.method private getRechargeIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 247
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 248
    sget-object v1, Lcom/tw/OnLinePaySdk/PayKey;->GoodId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-object p1, Lcom/tw/OnLinePaySdk/PayKey;->OrderSerial:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object p1
.end method

.method private pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "goodsCode----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---orderNumber---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 198
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 199
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->saveOrderTime:Ljava/lang/String;

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveOrderTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->saveOrderTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",orderNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->orderNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",price:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 202
    sget-object v2, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->feeCode:Ljava/lang/String;

    sget-object v3, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->saveOrderTime:Ljava/lang/String;

    sget-object v5, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->orderNum:Ljava/lang/String;

    sget-object v6, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->price:Ljava/lang/String;

    sget-object v7, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->mActivity:Landroid/app/Activity;

    move-object v1, p0

    move-object v4, v5

    invoke-virtual/range {v1 .. v7}, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->saveOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 204
    invoke-direct {p0, p2, p3, p1}, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->getRechargeIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    new-instance v0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$4;

    invoke-direct {v0, p0, p3, p4}, Lcom/talkweb/twOfflineSdk/TalkwebProxy$4;-><init>(Lcom/talkweb/twOfflineSdk/TalkwebProxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {p1, p2, v0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->pay(Landroid/content/Context;Landroid/content/Intent;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    return-void
.end method


# virtual methods
.method public activeGame(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public channelPay(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    const-string v0, "\u8fdb\u884c\u6e20\u9053\u652f\u4ed8"

    .line 112
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 113
    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->haveInternet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$2;

    invoke-direct {v0, p0, p3}, Lcom/talkweb/twOfflineSdk/TalkwebProxy$2;-><init>(Lcom/talkweb/twOfflineSdk/TalkwebProxy;Landroid/app/Activity;)V

    invoke-virtual {p3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string p3, "\u6ca1\u6709\u7f51\u7edc\u8fde\u63a5"

    .line 124
    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    .line 126
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getRealPrice()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-static {v0, p3, p2, p2, p1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "price:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getRealPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",feeCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getFeeCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",orderNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getRealPrice()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->price:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getFeeCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->feeCode:Ljava/lang/String;

    .line 132
    sput-object p2, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->orderNum:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getFeeCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getRealPrice()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, v0, p2, p1}, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public channelUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 515
    sget-object p1, Lcom/tw/pay/sdk/tool/Tools;->userInfoStr:Ljava/lang/String;

    .line 516
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/tw/pay/sdk/tool/Tools;->userid:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "---"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 519
    :try_start_0
    invoke-static {p1}, Lcom/talkweb/sdk/util/Des;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 521
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 523
    :goto_0
    new-instance p2, Lcom/tw/pay/sdk/tool/FileUtil;

    invoke-direct {p2}, Lcom/tw/pay/sdk/tool/FileUtil;-><init>()V

    .line 524
    sget-object p3, Lcom/tw/pay/sdk/tool/FilePath;->User_Path2:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/tw/pay/sdk/tool/FileUtil;->readSDFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    sget-object p1, Lcom/tw/pay/sdk/tool/FilePath;->User_Path2:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/tw/pay/sdk/tool/FileUtil;->writeSDFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 530
    :cond_0
    sget-object p3, Lcom/tw/pay/sdk/tool/FilePath;->User_Path2:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/tw/pay/sdk/tool/FileUtil;->writeSDFile(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string p1, ""

    .line 532
    sput-object p1, Lcom/tw/pay/sdk/tool/Tools;->userInfoStr:Ljava/lang/String;

    return-void
.end method

.method public checkOrder(Ljava/util/Map;Lcom/talkweb/twOfflineSdk/callback/CheckOrderCallback;)V
    .locals 12
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

    const-string v0, "\u8c03\u7528checkOrder1"

    .line 311
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 312
    sget-object v0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->mActivity:Landroid/app/Activity;

    const-string v1, "characterid"

    invoke-static {v1, v0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->characterid:Ljava/lang/String;

    .line 313
    sget-object v0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->version:Ljava/lang/String;

    .line 314
    sget-object v0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->getAppProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->packageName:Ljava/lang/String;

    .line 315
    sget-object v0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->mActivity:Landroid/app/Activity;

    const-string v1, "userid"

    invoke-static {v1, v0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->userid:Ljava/lang/String;

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "characterid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->characterid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",userid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->userid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 318
    :try_start_0
    sget-object v0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->haveInternet(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 325
    iput v0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->index:I

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u67e5\u8be2\u8ba2\u5355\u6709"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6761\u8ba2\u5355\u9700\u8981\u67e5\u8be2!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 328
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->returnMap:Ljava/util/Map;

    .line 329
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 330
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->returnMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Lcom/talkweb/twOfflineSdk/callback/CheckOrderCallback;->checkOrderBack(Ljava/util/Map;)V

    return-void

    .line 333
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 334
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 335
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckOrderResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",entry.getKey():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 337
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;

    iput-object v2, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->checkOrderResult:Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;

    .line 338
    iget-object v2, v2, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;->orderNumber:Ljava/lang/String;

    sput-object v2, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->checkOrderNum:Ljava/lang/String;

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOrderNum:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->checkOrderNum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    .line 341
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 342
    sget-object v4, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->mAppId:Ljava/lang/String;

    sget-object v5, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->checkOrderNum:Ljava/lang/String;

    iget-object v6, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->userid:Ljava/lang/String;

    iget-object v7, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->characterid:Ljava/lang/String;

    iget-object v8, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->packageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->version:Ljava/lang/String;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->checkOrderResult:Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;

    iget-object v10, v2, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;->payCode:Ljava/lang/String;

    new-instance v11, Lcom/talkweb/twOfflineSdk/TalkwebProxy$6;

    invoke-direct {v11, p0, v1, p1, p2}, Lcom/talkweb/twOfflineSdk/TalkwebProxy$6;-><init>(Lcom/talkweb/twOfflineSdk/TalkwebProxy;Ljava/util/Map$Entry;Ljava/util/Map;Lcom/talkweb/twOfflineSdk/callback/CheckOrderCallback;)V

    invoke-static/range {v4 .. v11}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->queryOrderID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/OrderCallback;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 367
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 368
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->returnMap:Ljava/util/Map;

    invoke-interface {p2, v1}, Lcom/talkweb/twOfflineSdk/callback/CheckOrderCallback;->checkOrderBack(Ljava/util/Map;)V

    goto/16 :goto_0

    :catch_1
    :cond_2
    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    .line 264
    invoke-super {p0, p1, p2}, Lcom/talkweb/twOfflineSdk/BaseProxy;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 265
    sput-object p1, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->mActivity:Landroid/app/Activity;

    .line 266
    sput-object p2, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->mAppId:Ljava/lang/String;

    .line 267
    sget-object v0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->aliPayAppid:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/sdk/app/AlipayApi;->registerApp(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "twOfflinePay.xml"

    const-string v2, "testhj"

    .line 269
    invoke-static {p1, v1, v2}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    .line 270
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->testHJ:Z

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "testHj\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->testHJ:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 272
    sget-boolean v1, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->testHJ:Z

    if-eqz v1, :cond_0

    const-string v1, "\u8bf7\u6ce8\u610f\u5f53\u524d\u4e3a\u6d4b\u8bd5\u73af\u5883!"

    .line 273
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 275
    :cond_0
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->isLandScape(Landroid/content/Context;)Z

    move-result v1

    new-instance v2, Lcom/talkweb/twOfflineSdk/TalkwebProxy$5;

    invoke-direct {v2, p0}, Lcom/talkweb/twOfflineSdk/TalkwebProxy$5;-><init>(Lcom/talkweb/twOfflineSdk/TalkwebProxy;)V

    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->channelSpecialCallback:Lcom/tw/OnLinePaySdk/callback/ChannelSpecialCallback;

    invoke-static {p1, p2, v1, v2, v3}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->initSDK(Landroid/content/Context;Ljava/lang/String;ZLcom/tw/OnLinePaySdk/callback/TWCallback;Lcom/tw/OnLinePaySdk/callback/ChannelSpecialCallback;)V

    const-string p2, "\u4f7f\u7528\u7f51\u6e38SDK\u521d\u59cb\u5316\u6210\u529f\uff01----------"

    .line 292
    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 293
    sget-wide v1, Lcom/tw/pay/sdk/TwPaySetting;->appId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    sget-wide v1, Lcom/tw/pay/sdk/TwPaySetting;->channelId:J

    .line 294
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {p2, v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->getQuickRegistration(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 297
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const-string p2, "\u6ca1\u6709\u53d1\u73b0\u7c7bcom.tw.OnLinePaySdk.TwOnlineSDK"

    .line 298
    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 300
    :goto_0
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ByteInitConfig;->init(Landroid/app/Activity;)V

    .line 301
    invoke-static {p1}, Lcom/tw/pay/sdk/tool/Tools;->getFistLogin(Landroid/content/Context;)Z

    move-result p2

    sput-boolean p2, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->isFistLogin:Z

    if-nez p2, :cond_1

    .line 303
    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Tools;->setFistLogin(Landroid/content/Context;Z)V

    .line 305
    :cond_1
    invoke-static {p1}, Lcom/tw/pay/sdk/wxpay/WXUtils;->regToWx(Landroid/content/Context;)V

    return-void
.end method

.method public launch(Landroid/app/Application;)V
    .locals 0

    .line 257
    invoke-super {p0, p1}, Lcom/talkweb/twOfflineSdk/BaseProxy;->launch(Landroid/app/Application;)V

    .line 258
    invoke-static {p1}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->onCreate(Landroid/content/Context;)V

    return-void
.end method

.method public loginChannel(Landroid/app/Activity;)Lcom/talkweb/twOfflineSdk/bean/UserInfo;
    .locals 4

    .line 162
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/talkweb/twOfflineSdk/TalkwebProxy$3;

    invoke-direct {v1, p0, p1}, Lcom/talkweb/twOfflineSdk/TalkwebProxy$3;-><init>(Lcom/talkweb/twOfflineSdk/TalkwebProxy;Landroid/app/Activity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method public loginSend(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_2

    const-string v0, ""

    .line 537
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 540
    :cond_0
    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getChannelId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "208"

    .line 541
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "261"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "250"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 543
    const-class v2, Lcom/bytedance/ttgame/tob/optional/datalink/api/IDataLinkService;

    invoke-static {v2}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ttgame/tob/optional/datalink/api/IDataLinkService;

    invoke-interface {v2, p1, v0, v1}, Lcom/bytedance/ttgame/tob/optional/datalink/api/IDataLinkService;->onAccountLogin(Ljava/lang/String;J)Z

    move-result v2

    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8c03\u7528\u6296\u97f3\u767b\u5f55 loginReport result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "gameUserLastLoginTime:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " userId:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public openCertification(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;)V
    .locals 1

    const-string v0, "TalkwebProxy,====openCertification"

    .line 433
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 439
    invoke-static {p1, p2, v0, p0}, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil;->showCertification(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;ZLcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V

    return-void
.end method

.method public reyun(Landroid/app/Activity;)V
    .locals 5

    const-string v0, "\u5f00\u59cb\u70ed\u4e91\u521d\u59cb\u5316"

    .line 467
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 468
    sget-object v0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->mActivity:Landroid/app/Activity;

    const-string v1, "userid"

    invoke-static {v1, v0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 474
    new-instance v1, Lcom/talkweb/twOfflineSdk/TWHttpAsyncTask;

    new-instance v2, Lcom/talkweb/twOfflineSdk/TalkwebProxy$7;

    invoke-direct {v2, p0, p1}, Lcom/talkweb/twOfflineSdk/TalkwebProxy$7;-><init>(Lcom/talkweb/twOfflineSdk/TalkwebProxy;Landroid/app/Activity;)V

    invoke-direct {v1, v0, v2}, Lcom/talkweb/twOfflineSdk/TWHttpAsyncTask;-><init>(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V

    .line 502
    sget-object p1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x3eb

    .line 507
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xb

    if-ge p1, v4, :cond_0

    new-array p1, v3, [Ljava/lang/Integer;

    aput-object v0, p1, v2

    .line 504
    invoke-virtual {v1, p1}, Lcom/talkweb/twOfflineSdk/TWHttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 506
    :cond_0
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/Integer;

    aput-object v0, v3, v2

    invoke-virtual {v1, p1, v3}, Lcom/talkweb/twOfflineSdk/TWHttpAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method
