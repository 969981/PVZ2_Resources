.class public Lcom/talkweb/twOfflineSdk/TwOfflineSDK;
.super Ljava/lang/Object;
.source "TwOfflineSDK.java"


# static fields
.field private static TAG:Ljava/lang/String; = "TwOfflineSDK"

.field private static channelId:Ljava/lang/String; = null

.field private static dialog:Landroid/app/AlertDialog; = null

.field private static fpsMonitor:Lcom/talkweb/twOfflineSdk/tools/FPSMonitor; = null

.field public static mainActivity:Landroid/app/Activity; = null

.field public static mainPermissionActivity:Landroid/app/Activity; = null

.field public static onPaused:Z = false

.field private static showPay:Z = true

.field private static showPayTime:J = 0x7d0L

.field static twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl; = null

.field public static userId:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetGameDeeplink(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwGameDeeplinkCallback;)V
    .locals 1

    const-string v0, "TwOfflineSDK GetGameDeeplink----"

    .line 1187
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1188
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz v0, :cond_0

    .line 1189
    invoke-virtual {v0, p0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->GameDeeplink(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwGameDeeplinkCallback;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1191
    invoke-interface {p1, p0}, Lcom/talkweb/twOfflineSdk/callback/TwGameDeeplinkCallback;->resultGameDeeplink(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static StartGameCenter(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/StartGameCenterCallback;)V
    .locals 1

    const-string v0, "TwOfflineSDK StartGameCenter----"

    .line 1213
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1214
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz v0, :cond_0

    .line 1215
    invoke-virtual {v0, p0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->StartGameCenter(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/StartGameCenterCallback;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1217
    invoke-interface {p1, p0}, Lcom/talkweb/twOfflineSdk/callback/StartGameCenterCallback;->isGameCenter(Z)V

    :goto_0
    return-void
.end method

.method public static StartPermission(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "\u8c03\u7528\u83b7\u53d6\u6743\u9650\u63a5\u53e3!---------------------"

    .line 1228
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1229
    sput-object p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainPermissionActivity:Landroid/app/Activity;

    .line 1230
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isPermission"

    const/4 v2, 0x1

    .line 1231
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1232
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string p0, "\u542f\u52a8\u83b7\u53d6\u6743\u9650activity!---------------------"

    .line 1233
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 68
    sput-boolean p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->showPay:Z

    return p0
.end method

.method static synthetic access$100()J
    .locals 2

    .line 68
    sget-wide v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->showPayTime:J

    return-wide v0
.end method

.method static synthetic access$200()V
    .locals 0

    .line 68
    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->goToAppSetting()V

    return-void
.end method

.method static synthetic access$300(Landroid/app/Activity;)V
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->goToAppSetting(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$400(Ljava/util/List;)Ljava/lang/String;
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->toast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static cancelOrder(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 1

    const-string v0, "talkweb"

    .line 502
    invoke-static {p0, p1, v0, p2, p3}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->cancelOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method public static cancelOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 1

    .line 516
    invoke-static {p4}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->setPayCallBack(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    .line 517
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "order\u652f\u4ed8\u5f00\u59cb payCode\uff1a"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " orderNumber:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " gameBak:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 519
    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->setGameBak(Ljava/lang/String;)V

    .line 520
    sget-object p2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz p2, :cond_0

    .line 521
    new-instance p2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$11;

    invoke-direct {p2, p0, p1, p3}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$11;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {p3, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x3e8

    const-string p2, "\u53c2\u6570\u9519\u8bef"

    const-string p3, ""

    .line 530
    invoke-static {p0, p2, p1, p1, p3}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static checkNumber(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/CheckNumberCallback;)V
    .locals 1

    .line 571
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz v0, :cond_0

    .line 572
    new-instance v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$13;

    invoke-direct {v0, p1}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$13;-><init>(Lcom/talkweb/twOfflineSdk/callback/CheckNumberCallback;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 581
    invoke-interface {p1, p0}, Lcom/talkweb/twOfflineSdk/callback/CheckNumberCallback;->result(Z)V

    :goto_0
    return-void
.end method

.method public static checkOrder(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 1

    const-string v0, "\u8ba2\u5355\u68c0\u67e5\u5f00\u59cb "

    .line 546
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 547
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->setCheckOrderCallBack(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    .line 548
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz v0, :cond_0

    .line 549
    new-instance v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$12;

    invoke-direct {v0, p0, p1}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$12;-><init>(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p0, "twOfflineSDK = null"

    .line 558
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const/16 p0, 0x1771

    const/4 p1, 0x0

    .line 559
    invoke-static {p0, p1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onCheckOrderCallBack(ILjava/util/Map;)V

    :goto_0
    return-void
.end method

.method public static closeWithConfirm(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 2

    .line 1282
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->TAG:Ljava/lang/String;

    const-string v1, "\u5173\u95ed\u793e\u533a!"

    invoke-static {v0, v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1284
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->closeWithConfirm(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    :cond_0
    return-void
.end method

.method public static consume(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TwOfflineSDK consume payCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " orderNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1177
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->consume(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method private static create(Landroid/app/Activity;)V
    .locals 3

    .line 812
    :try_start_0
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/SDKConfig;->getTwOfflineSDKInstance(Landroid/content/Context;)Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    move-result-object v0

    sput-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate failed\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 818
    :goto_0
    :try_start_1
    sput-object p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    const-string v0, "TwOfflineSDK mainActivity onCreate"

    .line 819
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 820
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->onCreate(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 827
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static destory(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 1

    const-string v0, "tw destory"

    .line 627
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 628
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->setExitCallBack(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    .line 629
    sget-object p1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz p1, :cond_0

    .line 630
    new-instance p1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$15;

    invoke-direct {p1, p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$15;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x1388

    .line 639
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onExitCallBack(I)V

    :goto_0
    return-void
.end method

.method public static dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 872
    :try_start_0
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->dispatchTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTouchEvent\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static doInit(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 5

    const-string v0, ""

    const/16 v1, 0xfa1

    .line 156
    :try_start_0
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/SDKConfig;->getTwOfflineSDKInstance(Landroid/content/Context;)Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    move-result-object v2

    sput-object v2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u521d\u59cb\u5316\u5931\u8d25xxx\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 159
    invoke-static {v1, v0}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onInitCallBack(ILjava/lang/String;)V

    :goto_0
    const-string v2, "9"

    .line 161
    invoke-static {p0, v2}, Lcom/talkweb/twOfflineSdk/tools/BuryingPointUtil;->BuryingPoin(Landroid/app/Activity;Ljava/lang/String;)V

    .line 163
    sget-object v2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz v2, :cond_0

    .line 164
    new-instance v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 182
    :cond_0
    invoke-static {v1, v0}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onInitCallBack(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static get(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwStorageGetCallBack;)V
    .locals 3

    .line 1011
    :try_start_0
    invoke-static {p0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->get(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwStorageGetCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1013
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do get catched exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TwOfflineSDK"

    invoke-static {v1, v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3ed

    .line 1015
    invoke-interface {p1, p0, v0}, Lcom/talkweb/twOfflineSdk/callback/TwStorageGetCallBack;->onError(Ljava/lang/String;I)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static getCarrierPayType()Ljava/lang/String;
    .locals 3

    .line 1044
    :try_start_0
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object v0

    .line 1045
    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getCurCarrierPayWay()Lcom/talkweb/twOfflineSdk/bean/PayWay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1046
    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCarrierPayType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1051
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do getCarrierPayType catched exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    :cond_0
    const-string v0, "unknown"

    return-object v0
.end method

.method public static getChannelId()Ljava/lang/String;
    .locals 3

    .line 1065
    :try_start_0
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "twOfflinePay.xml"

    const-string v2, "channelId"

    invoke-static {v0, v1, v2}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1068
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChannelId new:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1072
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1073
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do getChannelId catched exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    :cond_0
    const-string v0, "unknown"

    return-object v0
.end method

.method public static getDeclareMsg()Ljava/lang/String;
    .locals 2

    .line 930
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz v0, :cond_0

    .line 932
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->getDeclareMsg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 3

    .line 123
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->genarateDeviceIDnew(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceId deviceId=:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getGoodsById(Ljava/lang/String;)Lcom/talkweb/twOfflineSdk/bean/Goods;
    .locals 2

    .line 946
    :try_start_0
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayGood(Ljava/lang/String;)Lcom/talkweb/twOfflineSdk/bean/Goods;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 948
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "do getGoodsById catched exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TwOfflineSDK"

    invoke-static {v0, p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLoginTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/talkweb/twOfflineSdk/bean/LoginTypeBean;",
            ">;"
        }
    .end annotation

    .line 979
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz v0, :cond_0

    .line 980
    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->getLoginTypeList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "getLoginTypeList return null"

    .line 982
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getOaId()Ljava/lang/String;
    .locals 3

    .line 134
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->genarateDeviceIDnew(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOaId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getRequestHead()Ljava/lang/String;
    .locals 4

    .line 1297
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRequestHead! ch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->getChannelSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "appId"

    .line 1300
    invoke-static {}, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->getTwAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appVersion"

    .line 1301
    invoke-static {}, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->getTwAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channelId"

    .line 1302
    invoke-static {}, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channelSdkVersion"

    .line 1303
    invoke-static {}, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->getChannelSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "talkwebSdkVersion"

    .line 1304
    invoke-static {}, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->getTwSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1306
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1308
    :goto_0
    sget-object v1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRequestHead!  String :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSignature(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    .line 145
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->getSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static goToAppSetting()V
    .locals 4

    .line 777
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 779
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    sget-object v1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 781
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 783
    sget-object v1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    const/16 v2, 0x7b

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private static goToAppSetting(Landroid/app/Activity;)V
    .locals 4

    .line 905
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 907
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 909
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v1, 0x7b

    .line 911
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 3

    .line 99
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$1;

    invoke-direct {v1, p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$1;-><init>(Landroid/app/Activity;)V

    const-string v2, "oaid-thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 109
    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->setInitCallBack(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    .line 111
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->setGameContext(Landroid/content/Context;)V

    .line 112
    invoke-static {p0, p1, p2}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->doInit(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    .line 113
    sget-object p0, Lcom/talkweb/twOfflineSdk/tools/FilePath;->LOG_Path:Ljava/lang/String;

    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/FileUtil;->cleanLogFiles(Ljava/lang/String;)V

    return-void
.end method

.method private static isBlank(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 1537
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isPayWayOpened(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1088
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz v0, :cond_0

    .line 1089
    invoke-virtual {v0, p0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->isPayWayOpened(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static join(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1530
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, "\u3001"

    .line 1531
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1532
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1534
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static login(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 1

    const-string v0, "11"

    .line 195
    invoke-static {p0, v0}, Lcom/talkweb/twOfflineSdk/tools/BuryingPointUtil;->BuryingPoin(Landroid/app/Activity;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 197
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->setLoginCallBack(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    .line 198
    sget-object p1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p1, p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->loginTalkweb(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0xbb9

    const-string p1, ""

    .line 202
    invoke-static {p0, p1, p1, p1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onLoginCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, " login loginCallback is null !!!"

    .line 206
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static loginWithoutUI(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;I)V
    .locals 0

    const-string p0, "loginWithoutUI failed"

    .line 968
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void
.end method

.method public static matchService(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/MatchServiceTems;)V
    .locals 1

    .line 1243
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->matchService(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/MatchServiceTems;)V

    return-void
.end method

.method public static momentPublish([Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 2

    .line 1277
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->TAG:Ljava/lang/String;

    const-string v1, "\u4e00\u952e\u53d1\u5e03!"

    invoke-static {v0, v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1279
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->momentPublish([Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    :cond_0
    return-void
.end method

.method public static momentScene(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 2

    .line 1287
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->TAG:Ljava/lang/String;

    const-string v1, "\u6253\u5f00\u793e\u533a\u573a\u666f!"

    invoke-static {v0, v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1289
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->closeWithConfirm(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    :cond_0
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v0, 0x7b

    if-ne p0, v0, :cond_2

    .line 838
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 843
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/PermissionManager;->hasNecessaryPMSGranted(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u63d0\u793a\u7528\u6237\u5e94\u8be5\u53bb\u5e94\u7528\u8bbe\u7f6e\u754c\u9762\u624b\u52a8\u5f00\u542f\u6743\u9650"

    .line 845
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 846
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->showDialogTipUserGoToAppSettting(Landroid/app/Activity;)V

    goto :goto_0

    .line 848
    :cond_0
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 851
    :cond_1
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    const-string v2, "\u6743\u9650\u83b7\u53d6\u6210\u529f"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 852
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    const-string v0, "TwOfflineSDK mainActivity onActivityResult"

    .line 856
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 858
    :try_start_0
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 861
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 0

    .line 746
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->create(Landroid/app/Activity;)V

    return-void
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "TwOfflineSDK mainActivity onDestroy"

    .line 695
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 697
    :try_start_0
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->fpsMonitor:Lcom/talkweb/twOfflineSdk/tools/FPSMonitor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 698
    sput-object v1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->fpsMonitor:Lcom/talkweb/twOfflineSdk/tools/FPSMonitor;

    .line 700
    :cond_0
    sput-object v1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    .line 701
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->onDestroy(Landroid/app/Activity;)V

    .line 703
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    .line 702
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->getMultiPayDialog(Landroid/app/Activity;)Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;

    move-result-object p0

    .line 704
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->dismissDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 707
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "TwOfflineSDK mainActivity onNewIntent"

    .line 918
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 920
    :try_start_0
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->onNewIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "TwOfflineSDK mainActivity onPause"

    .line 668
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 670
    :try_start_0
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->onPause(Landroid/app/Activity;)V

    const/4 p0, 0x1

    .line 671
    sput-boolean p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->onPaused:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 674
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x64

    if-ne p0, p2, :cond_1

    .line 753
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p0, p2, :cond_1

    .line 755
    sget-object p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/PermissionManager;->hasNecessaryPMSGranted(Landroid/app/Activity;)Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_0

    .line 757
    array-length p0, p1

    if-lez p0, :cond_1

    .line 758
    sget-object p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 762
    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->showDialogTipUserGoToAppSettting()V

    goto :goto_0

    .line 768
    :cond_0
    sget-object p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    const-string p1, "\u6743\u9650\u83b7\u53d6\u6210\u529f"

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onRestart(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "TwOfflineSDK mainActivity onRestart"

    .line 715
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 717
    :try_start_0
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->onRestart(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 720
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "TwOfflineSDK mainActivity onResume"

    .line 647
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 649
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->setGameContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 650
    sput-boolean v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->onPaused:Z

    .line 652
    :try_start_0
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/SDKConfig;->getTwOfflineSDKInstance(Landroid/content/Context;)Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    move-result-object v0

    sput-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 657
    :goto_0
    :try_start_1
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->onResume(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 660
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static onStart(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "TwOfflineSDK mainActivity onStart"

    .line 728
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 730
    :try_start_0
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/SDKConfig;->getTwOfflineSDKInstance(Landroid/content/Context;)Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    move-result-object v0

    sput-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 735
    :goto_0
    :try_start_1
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->onStart(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 738
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static onStop(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "TwOfflineSDK mainActivity onStop"

    .line 682
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 684
    :try_start_0
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->onStop(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 687
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static openCertification(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;)V
    .locals 1

    const-string v0, "TwOfflineSDK openCertification"

    .line 1137
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const-string v0, "TwOfflineSDK == permision is : 0"

    .line 1158
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1160
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->openCertification(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;)V

    return-void
.end method

.method public static openCommunity(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "TwOfflineSDK openCommunity"

    .line 1129
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1130
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->openCommunity(Landroid/app/Activity;)V

    return-void
.end method

.method public static openGameMoment(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 2

    .line 1272
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->TAG:Ljava/lang/String;

    const-string v1, "\u6253\u5f00\u793e\u533a\u63a5\u53e3!"

    invoke-static {v0, v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 1274
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->openGameMoment(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    :cond_0
    return-void
.end method

.method private static orEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static order(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 1

    const-string v0, "talkweb"

    .line 457
    invoke-static {p0, p1, v0, p2, p3}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->order(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method public static order(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 1

    .line 471
    invoke-static {p4}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->setPayCallBack(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    .line 472
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "order\u652f\u4ed8\u5f00\u59cb payCode\uff1a"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " orderNumber:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " gameBak:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 474
    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->setGameBak(Ljava/lang/String;)V

    .line 475
    sget-object p2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz p2, :cond_0

    .line 476
    new-instance p2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$10;

    invoke-direct {p2, p0, p1, p3}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$10;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {p3, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x3e8

    const-string p2, "\u53c2\u6570\u9519\u8bef"

    const-string p3, ""

    .line 485
    invoke-static {p0, p2, p1, p1, p3}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static pay(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 6

    .line 344
    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->setPayCallBack(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    .line 345
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u652f\u4ed8\u5f00\u59cb payCode\uff1a"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " orderNumber:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 348
    sget-boolean p3, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->showPay:Z

    const-string v0, ""

    const/16 v1, 0x3e8

    if-nez p3, :cond_0

    .line 349
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u8c03\u7528\u65f6\u95f4\u5c11\u4e8e"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->showPayTime:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "\u79d2"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 350
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8c03\u7528\u95f4\u9694\u65f6\u95f4\u5c11\u4e8e"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->showPayTime:J

    div-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1, p1, v0}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    new-instance p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$5;

    invoke-direct {p0, p2}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p2, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 363
    :cond_0
    sget-object p3, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    .line 365
    sput-boolean p3, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->showPay:Z

    .line 366
    new-instance p3, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$6;

    invoke-direct {p3, p0, p1, p2}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$6;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const-string p0, "\u53c2\u6570\u9519\u8bef"

    .line 375
    invoke-static {v1, p0, p1, p1, v0}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static pay(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 1

    .line 1106
    invoke-static {p4}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->setPayCallBack(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    .line 1107
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u652f\u4ed8\u5f00\u59cb payCode\uff1a"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " orderNumber:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1108
    sget-object p4, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz p4, :cond_0

    .line 1109
    new-instance p4, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$20;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$20;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x3e8

    const-string p2, "\u53c2\u6570\u9519\u8bef"

    const-string p3, ""

    .line 1118
    invoke-static {p0, p2, p1, p1, p3}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 5

    .line 409
    invoke-static {p4}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->setPayCallBack(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    .line 410
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pay\u652f\u4ed8\u5f00\u59cb payCode\uff1a"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " orderNumber:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " gameBak:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 412
    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->setGameBak(Ljava/lang/String;)V

    .line 413
    sget-boolean p2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->showPay:Z

    const-string p4, ""

    const/16 v0, 0x3e8

    if-nez p2, :cond_0

    .line 414
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u8c03\u7528\u65f6\u95f4\u5c11\u4e8e"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->showPayTime:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "\u79d2"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 415
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8c03\u7528\u95f4\u9694\u65f6\u95f4\u5c11\u4e8e"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->showPayTime:J

    div-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1, p1, p4}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    new-instance p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$8;

    invoke-direct {p0, p3}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$8;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p3, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 428
    :cond_0
    sget-object p2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 430
    sput-boolean p2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->showPay:Z

    .line 431
    new-instance p2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$9;

    invoke-direct {p2, p0, p1, p3}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$9;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {p3, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const-string p0, "\u53c2\u6570\u9519\u8bef"

    .line 441
    invoke-static {v0, p0, p1, p1, p4}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static queryOrder(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 597
    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->setQueryCallBack(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    goto :goto_0

    :cond_0
    const-string p3, "callback is null"

    .line 599
    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 601
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "order\u67e5\u8be2\u5f00\u59cb payCode\uff1a"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " orderNumber:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 603
    sget-object p3, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz p3, :cond_1

    .line 604
    new-instance p3, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$14;

    invoke-direct {p3, p0, p1, p2}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$14;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x4

    .line 614
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onQueryCallBack(I)V

    :goto_1
    return-void
.end method

.method public static queryPayment(Ljava/lang/String;)V
    .locals 3

    .line 1247
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryPayment userId\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->queryPayment(Ljava/lang/String;)V

    return-void
.end method

.method public static ququeryAllAchievementery(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 2

    .line 1256
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->TAG:Ljava/lang/String;

    const-string v1, "\u67e5\u8be2\u7528\u6237\u6240\u6709\u5e73\u53f0\u8bbe\u7f6e\u8fc7\u7684\u6210\u5c31!"

    invoke-static {v0, v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 1258
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->ququeryAllAchievementery(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    :cond_0
    return-void
.end method

.method private static readConfig(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    const-string v0, "twonlinepay.xml"

    .line 1506
    invoke-static {p0, v0, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1508
    :catchall_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "read "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 1510
    :goto_0
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1511
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static redeemCode(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwRedeemCallback;)V
    .locals 2

    .line 1027
    :try_start_0
    invoke-static {p0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->redeemCode(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwRedeemCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1029
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "do redeemCode catched exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TwOfflineSDK"

    invoke-static {v0, p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x274d

    const-string v0, "Unknown"

    .line 1031
    invoke-interface {p1, p0, v0}, Lcom/talkweb/twOfflineSdk/callback/TwRedeemCallback;->onError(ILjava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private static secondLockInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    const-string v1, ""

    .line 1380
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1383
    invoke-static/range {p0 .. p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "appId"

    if-eqz v0, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1384
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "userId"

    if-eqz v0, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1385
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "chanelUserId"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1386
    :cond_2
    invoke-static/range {p3 .. p3}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "channelToken"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1387
    :cond_3
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    if-nez v0, :cond_4

    const-string v0, "mainActivity"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1390
    :cond_4
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v5, "gameContext"

    .line 1391
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v5, "appVersion"

    .line 1393
    invoke-static {v0, v5, v3}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->readConfig(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "channelSdkVersion"

    .line 1394
    invoke-static {v0, v7, v3}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->readConfig(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "talkwebSdkVersion"

    .line 1395
    invoke-static {v0, v9, v3}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->readConfig(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "twAppKey"

    .line 1396
    invoke-static {v0, v11, v3}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->readConfig(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    .line 1398
    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getChannelId()Ljava/lang/String;

    move-result-object v12

    .line 1400
    invoke-static {v12}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->isBlank(Ljava/lang/String;)Z

    move-result v13

    const-string v14, "channelId"

    const-string v15, ")"

    if-eqz v13, :cond_6

    .line 1401
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1404
    :cond_6
    :try_start_0
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v16, v0

    goto :goto_1

    .line 1406
    :catch_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "channelId(\u975e\u6570\u5b57:"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/16 v16, 0x0

    .line 1413
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->orEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v17, v15

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 1415
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v15

    const-string v15, "secondLockInit getDeviceId failed: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    move-object v0, v1

    .line 1425
    :goto_2
    :try_start_2
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    const-string v15, "channelParam"

    .line 1426
    invoke-virtual {v13, v15, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v15, "idfa"

    .line 1427
    invoke-static {}, Lcom/talkweb/twOfflineSdk/tools/Tools;->genarateUUID()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v11

    invoke-static/range {v18 .. v18}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->orEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v15, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "imei"

    .line 1428
    invoke-virtual {v13, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1429
    invoke-static/range {p2 .. p2}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->orEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "requestIp"

    .line 1430
    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "oauthKey"

    .line 1431
    invoke-static/range {p3 .. p3}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->orEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1433
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1434
    invoke-static/range {p0 .. p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->orEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1435
    invoke-static {v6}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->orEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1436
    invoke-static {v12}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->orEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1437
    invoke-static {v8}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->orEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1438
    invoke-static {v10}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->orEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1440
    sget-object v2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secondLockInit headJson="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    sget-object v2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secondLockInit login="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tw/OnLinePaySdk/tools/EncryptionTools;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1444
    :try_start_3
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tw/OnLinePaySdk/tools/EncryptionTools;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_7

    .line 1447
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const-string v0, "encrypt(head)\u8fd4\u56de\u7a7a"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v4, :cond_9

    .line 1448
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    const-string v0, "encrypt(login)\u8fd4\u56de\u7a7a"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1449
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->orEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->orEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->orEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tw/OnLinePaySdk/tools/EncryptionTools;->encodeByMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v8, v0

    move-object v7, v2

    move-object v5, v4

    move-object/from16 v6, v17

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v4, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v1

    move-object v4, v2

    .line 1451
    :goto_3
    sget-object v5, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "secondLockInit  build/encrypt failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u52a0\u5bc6\u6216\u7b7e\u540d\u5931\u8d25("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v17

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v8, v1

    move-object v7, v2

    move-object v5, v4

    .line 1457
    :goto_4
    :try_start_5
    new-instance v0, Lcom/tw/OnLinePaySdk/SdkTW/NativeUtils;

    invoke-direct {v0}, Lcom/tw/OnLinePaySdk/SdkTW/NativeUtils;-><init>()V

    invoke-virtual {v0}, Lcom/tw/OnLinePaySdk/SdkTW/NativeUtils;->getApiKey()Ljava/lang/String;

    move-result-object v0

    .line 1458
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v0, "apiKey(\u7a7a)"

    .line 1459
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_5

    :cond_b
    move-object v1, v0

    goto :goto_5

    :catchall_4
    move-exception v0

    .line 1464
    sget-object v2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "secondLockInit  getApiKey failed: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apiKey(native\u5f02\u5e38:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    move-object v10, v1

    .line 1469
    invoke-static/range {p1 .. p1}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->orEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1470
    invoke-static/range {p2 .. p2}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->orEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1477
    new-instance v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$21;

    move-object v2, v0

    move/from16 v9, v16

    invoke-direct/range {v2 .. v10}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$21;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1495
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_c

    .line 1496
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    .line 1498
    :cond_c
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_6
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwStorageSetCallBack;)V
    .locals 2

    .line 995
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->set(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwStorageSetCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 997
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "do set catched exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TwOfflineSDK"

    invoke-static {v0, p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3ed

    .line 999
    invoke-interface {p2, p0, p1}, Lcom/talkweb/twOfflineSdk/callback/TwStorageSetCallBack;->onError(Ljava/lang/String;I)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static setAchievement(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 3

    .line 1266
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbe\u7f6e\u7528\u6237\u6210\u5c31!achievementId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 1268
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->setAchievement(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    :cond_0
    return-void
.end method

.method public static setSecondLock()V
    .locals 2

    .line 1554
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    new-instance v1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$22;

    invoke-direct {v1}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$22;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static showDialogTipUserGoToAppSettting()V
    .locals 3

    .line 788
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5b58\u50a8\u6743\u9650\u4e0d\u53ef\u7528"

    .line 789
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u8bf7\u5728-\u5e94\u7528\u8bbe\u7f6e-\u6743\u9650-\u4e2d\uff0c\u5141\u8bb8\u4f7f\u7528\u5b58\u50a8\u6743\u9650\u6765\u4fdd\u5b58\u7528\u6237\u6570\u636e"

    .line 790
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$17;

    invoke-direct {v1}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$17;-><init>()V

    const-string v2, "\u7acb\u5373\u5f00\u542f"

    .line 791
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$16;

    invoke-direct {v1}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$16;-><init>()V

    const-string v2, "\u53d6\u6d88"

    .line 800
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 806
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->dialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private static showDialogTipUserGoToAppSettting(Landroid/app/Activity;)V
    .locals 3

    .line 880
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5b58\u50a8\u6743\u9650\u4e0d\u53ef\u7528"

    .line 881
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u8bf7\u5728-\u5e94\u7528\u8bbe\u7f6e-\u6743\u9650-\u4e2d\uff0c\u5141\u8bb8\u4f7f\u7528\u5b58\u50a8\u6743\u9650\u6765\u4fdd\u5b58\u7528\u6237\u6570\u636e"

    .line 882
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$19;

    invoke-direct {v1, p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$19;-><init>(Landroid/app/Activity;)V

    const-string v2, "\u7acb\u5373\u5f00\u542f"

    .line 883
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$18;

    invoke-direct {v1, p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$18;-><init>(Landroid/app/Activity;)V

    const-string p0, "\u53d6\u6d88"

    .line 892
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 898
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->dialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public static startPrivacyAgreementDialog(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;)V
    .locals 1

    const-string v0, "TwOfflineSDK startPrivacyAgreementDialog----"

    .line 1199
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1200
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-eqz v0, :cond_0

    .line 1201
    invoke-virtual {v0, p0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->startPrivacyAgreementDialog(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1203
    invoke-interface {p1, p0}, Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;->isAgreement(Z)V

    :goto_0
    return-void
.end method

.method private static submitUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubmitUserInfo--\u4e0a\u4f20\u8bbe\u5907\u4fe1\u606f \u8bb0\u5f55 userId\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " channeluserid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "appid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deviceiduserid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "channelId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 282
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appid"

    .line 285
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceid"

    .line 286
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "userid"

    .line 287
    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "channeluserid"

    .line 288
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "channelid"

    .line 289
    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "talkwebCert"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/MD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sign"

    .line 291
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x17

    .line 292
    new-instance p2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$4;

    invoke-direct {p2, p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$4;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, p2}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTaskUtil;->doRequest(ILjava/util/HashMap;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 319
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u6570\u636e\u4e0a\u4f20\u5931\u8d25:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static toast(Ljava/lang/String;)V
    .locals 2

    .line 1518
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 1522
    :try_start_0
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1524
    :catchall_0
    sget-object p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->TAG:Ljava/lang/String;

    const-string v0, "toast failed"

    invoke-static {p0, v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static uploadTracking(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 1292
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->TAG:Ljava/lang/String;

    const-string v1, "\u4e0a\u4f20\u57cb\u70b9\u4fe1\u606f!"

    invoke-static {v0, v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->uploadTracking(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static uploadUserInfo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 333
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->setUserInfoP(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static userInfo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7528\u6237\u4fe1\u606fuserInfo\u63a5\u53e3 deviceid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " characterid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const-string v0, "deviceid"

    .line 221
    invoke-static {v0, p1, p0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->storeData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "userid"

    .line 222
    invoke-static {v0, p2, p0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->storeData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v1, "16"

    .line 223
    invoke-static {p0, v1}, Lcom/talkweb/twOfflineSdk/tools/BuryingPointUtil;->BuryingPoin(Landroid/app/Activity;Ljava/lang/String;)V

    .line 225
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/BuryingPointUtil;->UserInfoToTga(Landroid/app/Activity;)V

    .line 226
    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getDeviceId()Ljava/lang/String;

    const-string v1, "characterid"

    .line 227
    invoke-static {v1, p3, p0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->storeData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 228
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 229
    new-instance v2, Lcom/talkweb/twOfflineSdk/record/RecordManager;

    invoke-direct {v2, p0}, Lcom/talkweb/twOfflineSdk/record/RecordManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/talkweb/twOfflineSdk/record/RecordManager;->addLaunchRecord()V

    const-string v2, "109"

    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    sget-object v2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    if-nez v2, :cond_0

    .line 233
    :try_start_0
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/SDKConfig;->getTwOfflineSDKInstance(Landroid/content/Context;)Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    move-result-object v2

    sput-object v2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "userInfo\u5931\u8d25\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void

    .line 239
    :cond_0
    :goto_0
    sget-object v2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v2, p0, p1, p2, p3}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->uploadUserInfo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sget-object v2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {v2, p1, p2, p3}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->channelUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object p1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {p1, p2}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->loginReport(Ljava/lang/String;)V

    goto :goto_1

    .line 243
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "other games appid:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 244
    sget-object p1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Landroid/app/Activity;

    new-instance v2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$3;

    invoke-direct {v2}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$3;-><init>()V

    invoke-virtual {p1, p3, v2}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->openCertification(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;)V

    :goto_1
    const-string p1, "SubmitUserInfo--\u4e0a\u4f20\u8bbe\u5907\u4fe1\u606f \u8bb0\u5f55"

    .line 253
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "SubmitUserInfo"

    .line 254
    invoke-static {p3, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 256
    sget-object p3, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->strUserId:Ljava/lang/String;

    .line 257
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getChannelsId()Ljava/lang/String;

    move-result-object v8

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "djChannelUserid :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " userIdX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, ""

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 261
    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    const-string v3, "1003"

    .line 262
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object p1

    const-string v4, "HonorunionId"

    invoke-static {v4, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "honor deviceId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    :cond_2
    move-object v5, p1

    .line 266
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object v3, p3

    move-object v4, v1

    move-object v7, v8

    invoke-static/range {v2 .. v7}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->submitUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p1, "10011"

    .line 269
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 270
    sget-object p1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {p1, p0, p3, p2}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->activeGame(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_4
    sget-object p1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {p1, p0, p3, p2}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->dataReport(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->getLoginToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p2, p3, p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->secondLockInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static verifySecondLock(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 2

    .line 1577
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    new-instance v1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$23;

    invoke-direct {v1, p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$23;-><init>(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static wait(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 382
    sput-boolean v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->showPay:Z

    .line 383
    new-instance v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$7;

    invoke-direct {v0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$7;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
