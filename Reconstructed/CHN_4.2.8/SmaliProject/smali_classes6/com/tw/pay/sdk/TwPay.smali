.class public Lcom/tw/pay/sdk/TwPay;
.super Ljava/lang/Object;
.source "TwPay.java"


# static fields
.field public static isInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSplashScreen(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "TWPayConfig.xml"

    const-string v1, "splashScreen"

    .line 211
    invoke-static {p0, v0, v1}, Lcom/tw/pay/sdk/tool/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static initSdk(Landroid/content/Context;JLjava/lang/String;JZLcom/tw/pay/sdk/callback/TwInitCallback;)V
    .locals 7

    .line 43
    sput-boolean p6, Lcom/tw/pay/sdk/TwPaySetting;->isLandScape:Z

    const/4 p6, 0x0

    .line 44
    invoke-static {p0, p6}, Lcom/tw/pay/sdk/tool/Tools;->setLogined(Landroid/content/Context;Z)V

    .line 45
    invoke-static {p0}, Lcom/tw/pay/sdk/TwPay;->getSplashScreen(Landroid/content/Context;)Z

    move-result p6

    if-eqz p6, :cond_0

    .line 46
    new-instance p6, Landroid/content/Intent;

    const-class v0, Lcom/tw/pay/sdk/ui/TwSdkInitActivity;

    invoke-direct {p6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "appId"

    .line 47
    invoke-virtual {p6, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "appKey"

    .line 48
    invoke-virtual {p6, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "channelId"

    .line 49
    invoke-virtual {p6, p1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0, p6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 51
    sput-object p7, Lcom/tw/pay/sdk/ui/TwSdkInitActivity;->twInitCallback:Lcom/tw/pay/sdk/callback/TwInitCallback;

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Lcom/tw/pay/sdk/tool/InitTool;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/tool/InitTool;-><init>(Landroid/content/Context;)V

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p7

    .line 55
    invoke-virtual/range {v0 .. v6}, Lcom/tw/pay/sdk/tool/InitTool;->initSDK(JLjava/lang/String;JLcom/tw/pay/sdk/callback/TwInitCallback;)V

    :goto_0
    return-void
.end method

.method public static loginQuickSdk(Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwLoginCallback;)V
    .locals 2

    .line 112
    sget-boolean v0, Lcom/tw/pay/sdk/TwPay;->isInit:Z

    if-eqz v0, :cond_1

    const-string v0, "TWPayConfig.xml"

    const-string v1, "showQuickStart"

    .line 114
    invoke-static {p0, v0, v1}, Lcom/tw/pay/sdk/tool/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {p0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->getPopupWindowUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/PopupWindowUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->hidePopupWindow()V

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    sput-object p1, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->loginCallback:Lcom/tw/pay/sdk/callback/TwLoginCallback;

    .line 120
    new-instance p1, Lcom/tw/pay/sdk/TwPay$3;

    invoke-direct {p1, p0}, Lcom/tw/pay/sdk/TwPay$3;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->popupCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {p0}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->getTwLoadingUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;

    move-result-object v0

    new-instance v1, Lcom/tw/pay/sdk/TwPay$4;

    invoke-direct {v1, p0, p1}, Lcom/tw/pay/sdk/TwPay$4;-><init>(Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwLoginCallback;)V

    invoke-virtual {v0, v1}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->doLoadingDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V

    goto :goto_0

    :cond_1
    const-string p1, "\u672a\u6210\u529f\u521d\u59cb\u5316"

    .line 179
    invoke-static {p0, p1}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static loginSdk(Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwLoginCallback;)V
    .locals 2

    .line 69
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "TwPay_loginSdk"

    .line 70
    invoke-static {v1, v0}, Lcom/tw/pay/sdk/tool/ClickUtil;->canClick(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    sget-boolean v0, Lcom/tw/pay/sdk/TwPay;->isInit:Z

    if-eqz v0, :cond_2

    const-string v0, "TWPayConfig.xml"

    const-string v1, "showQuickStart"

    .line 75
    invoke-static {p0, v0, v1}, Lcom/tw/pay/sdk/tool/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-static {p0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->getPopupWindowUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/PopupWindowUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->hidePopupWindow()V

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    sput-object p1, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->loginCallback:Lcom/tw/pay/sdk/callback/TwLoginCallback;

    .line 81
    new-instance p1, Lcom/tw/pay/sdk/TwPay$1;

    invoke-direct {p1, p0}, Lcom/tw/pay/sdk/TwPay$1;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->popupCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 90
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 93
    :cond_1
    new-instance v0, Lcom/tw/pay/sdk/TwPay$2;

    invoke-direct {v0, p1}, Lcom/tw/pay/sdk/TwPay$2;-><init>(Lcom/tw/pay/sdk/callback/TwLoginCallback;)V

    invoke-static {p0, v0}, Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil;->tryOneClickThenFallback(Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwCallback;)V

    goto :goto_0

    :cond_2
    const-string p1, "\u672a\u6210\u529f\u521d\u59cb\u5316"

    .line 107
    invoke-static {p0, p1}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static logout(Landroid/content/Context;)V
    .locals 1

    .line 205
    invoke-static {p0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->getPopupWindowUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/PopupWindowUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->hidePopupWindow()V

    const/4 v0, 0x0

    .line 206
    invoke-static {p0, v0}, Lcom/tw/pay/sdk/tool/Tools;->setLogined(Landroid/content/Context;Z)V

    return-void
.end method

.method public static sdkPay(Landroid/content/Context;Landroid/content/Intent;Lcom/tw/pay/sdk/callback/TwPayCallBack;)V
    .locals 2

    .line 191
    sget-boolean v0, Lcom/tw/pay/sdk/TwPay;->isInit:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/tw/pay/sdk/tool/Tools;->getLogined(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-static {p0}, Lcom/tw/pay/sdk/util/TwPayUtil;->getTwPayUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/TwPayUtil;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/tw/pay/sdk/util/TwPayUtil;->doPayDialog(Landroid/content/Intent;Lcom/tw/pay/sdk/callback/TwPayCallBack;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u8bf7\u5148\u767b\u5f55"

    .line 194
    invoke-static {p0, p1}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
