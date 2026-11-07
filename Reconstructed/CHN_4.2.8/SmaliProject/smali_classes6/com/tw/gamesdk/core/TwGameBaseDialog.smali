.class public Lcom/tw/gamesdk/core/TwGameBaseDialog;
.super Ljava/lang/Object;
.source "TwGameBaseDialog.java"


# static fields
.field public static activity:Landroid/app/Activity;

.field public static baseDialog:Landroid/app/Dialog;

.field public static baseOtherDialog:Landroid/app/Dialog;

.field public static baseTopDialog:Landroid/app/Dialog;

.field public static channleid:Ljava/lang/String;

.field public static mContext:Landroid/content/Context;


# instance fields
.field private userAgreementDialog:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyFixedConfiguration()V
    .locals 5

    .line 172
    sget-object v0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 173
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 174
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 176
    iput v3, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 177
    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    iput v3, v2, Landroid/util/DisplayMetrics;->density:F

    .line 178
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    iput v3, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 181
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method


# virtual methods
.method public activateCode(Lcom/tw/gamesdk/bean/SimpleUserData;Lcom/tw/pay/sdk/callback/TwCallback;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 124
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getIsActive()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 125
    sget-object p4, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    const-string v0, "\u60a8\u5df2\u5728\u65b0\u8bbe\u5907\u767b\u5f55\uff0c\u8bf7\u8f93\u5165\u65b0\u6fc0\u6d3b\u7801\u6216\u524d\u5f80\u65e7\u8bbe\u5907\u767b\u5f55!"

    invoke-static {v0, p4}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    .line 127
    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/tw/gamesdk/core/TwGameBaseDialog$1;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/tw/gamesdk/core/TwGameBaseDialog$1;-><init>(Lcom/tw/gamesdk/core/TwGameBaseDialog;Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwCallback;Lcom/tw/gamesdk/bean/SimpleUserData;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getIsActive()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 134
    sget-object p4, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    const-string v0, "\u6fc0\u6d3b\u7801\u5df2\u4f5c\u5e9f\uff0c\u8bf7\u91cd\u65b0\u6fc0\u6d3b"

    invoke-static {v0, p4}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    .line 135
    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/tw/gamesdk/core/TwGameBaseDialog$2;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/tw/gamesdk/core/TwGameBaseDialog$2;-><init>(Lcom/tw/gamesdk/core/TwGameBaseDialog;Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwCallback;Lcom/tw/gamesdk/bean/SimpleUserData;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getIsActive()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 142
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tw/gamesdk/core/GameSDK;->saveUserInfo(Lcom/tw/gamesdk/bean/SimpleUserData;)V

    .line 143
    invoke-interface {p2, p4}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    .line 144
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_2

    .line 146
    invoke-static {p3}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->getPopupWindowUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/PopupWindowUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->showPopupWindow()V

    goto :goto_0

    .line 149
    :cond_2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/tw/gamesdk/core/TwGameBaseDialog$3;

    invoke-direct {p2, p0, p3}, Lcom/tw/gamesdk/core/TwGameBaseDialog$3;-><init>(Lcom/tw/gamesdk/core/TwGameBaseDialog;Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getIsActive()I

    move-result p4

    if-nez p4, :cond_4

    .line 158
    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/tw/gamesdk/core/TwGameBaseDialog$4;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/tw/gamesdk/core/TwGameBaseDialog$4;-><init>(Lcom/tw/gamesdk/core/TwGameBaseDialog;Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwCallback;Lcom/tw/gamesdk/bean/SimpleUserData;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public getDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 6

    .line 40
    sput-object p1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getChannelsId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->channleid:Ljava/lang/String;

    .line 42
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 43
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    sput-object v0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    .line 45
    :cond_0
    sget-object v0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseDialog:Landroid/app/Dialog;

    if-nez v0, :cond_2

    .line 46
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "TwGameDialogTheme"

    invoke-static {p1, v1}, Lcom/tw/pay/sdk/tool/Resource;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseDialog:Landroid/app/Dialog;

    .line 47
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, p1

    const-wide v4, 0x3fd47ae147ae147bL    # 0.32

    mul-double v2, v2, v4

    double-to-int p1, v2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p1, -0x2

    .line 51
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 54
    :cond_1
    sget-object p1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 56
    :cond_2
    invoke-static {}, Lcom/tw/gamesdk/core/TwGameBaseDialog;->applyFixedConfiguration()V

    .line 57
    sget-object p1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public getDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    .line 61
    sput-object p1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getChannelsId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->channleid:Ljava/lang/String;

    .line 63
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 64
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    sput-object v0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    .line 66
    :cond_0
    sget-object v0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseTopDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Landroid/app/Dialog;

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/tool/Resource;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-direct {v0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseTopDialog:Landroid/app/Dialog;

    .line 68
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "transparent"

    .line 70
    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Resource;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 71
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v0, 0x31

    .line 72
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, -0x1

    .line 73
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v0, 0x28

    .line 74
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 75
    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 78
    :cond_1
    sget-object p1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseTopDialog:Landroid/app/Dialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 79
    invoke-static {}, Lcom/tw/gamesdk/core/TwGameBaseDialog;->applyFixedConfiguration()V

    .line 80
    sget-object p1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseTopDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public getOtherDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    .line 84
    sput-object p1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->mContext:Landroid/content/Context;

    .line 85
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getChannelsId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->channleid:Ljava/lang/String;

    .line 86
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 87
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    sput-object v0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    .line 89
    :cond_0
    sget-object v0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseOtherDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Landroid/app/Dialog;

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/tool/Resource;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-direct {v0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseOtherDialog:Landroid/app/Dialog;

    .line 91
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "transparent"

    .line 93
    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Resource;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 94
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v0, 0x31

    .line 95
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, -0x1

    .line 96
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v0, 0x3c

    .line 97
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 98
    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 101
    :cond_1
    sget-object p1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseOtherDialog:Landroid/app/Dialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 102
    invoke-static {}, Lcom/tw/gamesdk/core/TwGameBaseDialog;->applyFixedConfiguration()V

    .line 103
    sget-object p1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseOtherDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public openWebView(Ljava/lang/String;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->userAgreementDialog:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;

    if-nez v0, :cond_0

    .line 109
    sget-object v0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->getTwgameAgreementWebViewUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->userAgreementDialog:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->userAgreementDialog:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;

    invoke-virtual {v0, p1}, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->setAgreementUrl(Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->userAgreementDialog:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;

    invoke-virtual {p1}, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->doTwgameAgreementWebViewDialog()V

    return-void
.end method
