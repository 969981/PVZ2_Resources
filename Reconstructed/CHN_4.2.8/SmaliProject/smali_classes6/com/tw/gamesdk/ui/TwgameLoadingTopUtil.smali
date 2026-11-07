.class public Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;
.super Lcom/tw/gamesdk/core/TwGameBaseDialog;
.source "TwgameLoadingTopUtil.java"


# instance fields
.field private btnSwitchAccount:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private isSwitchAccount:Z

.field private loginView:Landroid/view/View;

.field private mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

.field private simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

.field private twgameLoginTopText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/tw/gamesdk/core/TwGameBaseDialog;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->isSwitchAccount:Z

    .line 55
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->twgameLoginTopText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;)Lcom/tw/pay/sdk/callback/TwCallback;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->isSwitchAccount:Z

    return p0
.end method

.method static synthetic access$400(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->refreshToken()V

    return-void
.end method

.method static synthetic access$502(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;Lcom/tw/gamesdk/bean/SimpleUserData;)Lcom/tw/gamesdk/bean/SimpleUserData;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    return-object p1
.end method

.method static synthetic access$600(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->initData()V

    return-void
.end method

.method private getLoginParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 263
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "account"

    .line 264
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "phone"

    const-string v1, "-1"

    .line 265
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 266
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "login_type"

    invoke-virtual {v0, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string p1, "token"

    .line 267
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "code"

    .line 268
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "password"

    .line 269
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getRefreshTokenParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 274
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "account"

    .line 275
    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTwLoadingUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;
    .locals 1

    .line 52
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;

    invoke-direct {v0, p0}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private initData()V
    .locals 3

    const-string v0, "TwgameLoadingTopUtil initData"

    .line 99
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/gamesdk/core/GameSDK;->getCurrentUser()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    sget-object v1, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$1;

    invoke-direct {v2, p0, v0}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$1;-><init>(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;Lcom/tw/gamesdk/bean/SimpleUserData;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->getLoginParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;

    invoke-direct {v2, p0, v0}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;-><init>(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;Lcom/tw/gamesdk/bean/SimpleUserData;)V

    invoke-static {v1, v2}, Lcom/tw/gamesdk/net/RequestUtils;->twgameLogin(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "simpleUserData.getUid() null"

    .line 102
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method private initViews()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->loginView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_switch_account_btn"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->btnSwitchAccount:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_top_login_text"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->twgameLoginTopText:Landroid/widget/TextView;

    return-void
.end method

.method private refreshToken()V
    .locals 1

    const-string v0, "\u5237\u65b0token begin"

    .line 184
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 238
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$3;

    invoke-direct {v0, p0}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$3;-><init>(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;)V

    invoke-static {v0}, Lcom/tw/gamesdk/core/TokenUtils;->refreshToken(Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;)V

    return-void
.end method

.method private setupListeners()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->btnSwitchAccount:Landroid/widget/TextView;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameLoadingTopUtil$8FIEYLPbImiSE_kEK6PQPbqO2G8;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameLoadingTopUtil$8FIEYLPbImiSE_kEK6PQPbqO2G8;-><init>(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public doLoadingDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 3

    .line 58
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 60
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 62
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->context:Landroid/content/Context;

    const-string v1, "LoginDialogLoadingTheme"

    invoke-virtual {p0, v0, v1}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->getDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->baseTopDialog:Landroid/app/Dialog;

    .line 64
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->context:Landroid/content/Context;

    const-string v1, "twgame_floating_loading_top"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/tw/pay/sdk/tool/Tools;->setSDKDialogScreen(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->loginView:Landroid/view/View;

    .line 66
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->baseTopDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->loginView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 68
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->baseTopDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 70
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->initViews()V

    .line 72
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->setupListeners()V

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->isSwitchAccount:Z

    .line 76
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->initData()V

    return-void
.end method

.method public synthetic lambda$setupListeners$0$TwgameLoadingTopUtil(Landroid/view/View;)V
    .locals 1

    .line 81
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->activity:Landroid/app/Activity;

    const-string v0, "SwitchAccount"

    invoke-static {v0, p1}, Lcom/tw/pay/sdk/tool/ClickUtil;->canClick(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->isSwitchAccount:Z

    .line 85
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->baseTopDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 86
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->getTwLoginQuickUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-virtual {p1, v0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->doLoginQuickDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void
.end method
