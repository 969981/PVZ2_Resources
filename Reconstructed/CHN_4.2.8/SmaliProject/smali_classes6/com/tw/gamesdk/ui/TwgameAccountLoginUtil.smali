.class public Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;
.super Lcom/tw/gamesdk/core/TwGameBaseDialog;
.source "TwgameAccountLoginUtil.java"


# instance fields
.field private context:Landroid/content/Context;

.field private isPasswordVisible:Z

.field private loginView:Landroid/view/View;

.field private mCbAgreement:Landroid/widget/CheckBox;

.field private mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

.field private tvPrivacyPolicy:Landroid/widget/TextView;

.field private tvUserAgreement:Landroid/widget/TextView;

.field private twgameCallBackBtn:Landroid/widget/ImageView;

.field private twgameCloseBtn:Landroid/widget/ImageView;

.field private twgameIconVisibility:Landroid/widget/ImageView;

.field private twgameLoginAccountPassword:Landroid/widget/EditText;

.field private twgameLoginAccountSub:Landroid/widget/Button;

.field private twgameLoginAccountUsername:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/tw/gamesdk/core/TwGameBaseDialog;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->isPasswordVisible:Z

    .line 64
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;)Lcom/tw/pay/sdk/callback/TwCallback;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;)Landroid/widget/CheckBox;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->mCbAgreement:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private getLoginParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 183
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "account"

    .line 184
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "phone"

    const-string v1, "-1"

    .line 185
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "login_type"

    invoke-virtual {v0, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string p1, "token"

    .line 187
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "code"

    .line 188
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "password"

    .line 189
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getTwGameLoginUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;
    .locals 1

    .line 59
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;

    invoke-direct {v0, p0}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private initData()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->twgameCloseBtn:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private initViews()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_top_close"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->twgameCloseBtn:Landroid/widget/ImageView;

    .line 195
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_top_back"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->twgameCallBackBtn:Landroid/widget/ImageView;

    .line 196
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_login_account_username"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->twgameLoginAccountUsername:Landroid/widget/EditText;

    .line 197
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_login_account_password"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->twgameLoginAccountPassword:Landroid/widget/EditText;

    .line 198
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_agreement_cb"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->mCbAgreement:Landroid/widget/CheckBox;

    .line 199
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_login_account_sub"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->twgameLoginAccountSub:Landroid/widget/Button;

    .line 200
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->context:Landroid/content/Context;

    const-string v2, "tv_user_agreement"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->tvUserAgreement:Landroid/widget/TextView;

    .line 201
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->context:Landroid/content/Context;

    const-string v2, "tv_privacy_policy"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->tvPrivacyPolicy:Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_icon_visibility"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->twgameIconVisibility:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic lambda$setupListeners$0(Landroid/view/View;)V
    .locals 0

    .line 205
    sget-object p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private performLogin()V
    .locals 6

    .line 98
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->twgameLoginAccountUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->twgameLoginAccountPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->activity:Landroid/app/Activity;

    const-string v1, "\u8bf7\u8f93\u5165\u8d26\u53f7"

    invoke-static {v1, v0}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    .line 104
    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void

    .line 107
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    .line 108
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 109
    sget-object v1, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    return-void

    .line 112
    :cond_1
    invoke-static {v1}, Lcom/tw/pay/sdk/tool/PasswordValidator;->isValidPassword(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "pwdToRule"

    if-nez v2, :cond_2

    .line 113
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->context:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    return-void

    .line 116
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v4, "pwdToShort"

    const/16 v5, 0x8

    if-ge v2, v5, :cond_3

    .line 117
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->context:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    return-void

    .line 120
    :cond_3
    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->mCbAgreement:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v0, "\u8bf7\u9605\u8bfb\u5e76\u540c\u610f\u534f\u8bae"

    .line 121
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 122
    sget-object v1, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    .line 123
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->showAgreementDialog()V

    return-void

    .line 125
    :cond_4
    invoke-static {v1}, Lcom/tw/pay/sdk/tool/PasswordValidator;->isValidPassword(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 126
    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_6

    .line 128
    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->context:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    :cond_6
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->getLoginParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil$1;

    invoke-direct {v2, p0, v0}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil$1;-><init>(Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tw/gamesdk/net/RequestUtils;->twgameLogin(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method private setupListeners()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->twgameCloseBtn:Landroid/widget/ImageView;

    sget-object v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameAccountLoginUtil$_ONV_viUbTISlN7oh8BO8ofZAFU;->INSTANCE:Lcom/tw/gamesdk/ui/-$$Lambda$TwgameAccountLoginUtil$_ONV_viUbTISlN7oh8BO8ofZAFU;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->twgameCallBackBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameAccountLoginUtil$aX7Hx3L5WK0yQI0Ow0CNZM-bxbw;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameAccountLoginUtil$aX7Hx3L5WK0yQI0Ow0CNZM-bxbw;-><init>(Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->twgameLoginAccountSub:Landroid/widget/Button;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameAccountLoginUtil$TmxRoqYfTDpTkYpXQfYCfVhE_Mw;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameAccountLoginUtil$TmxRoqYfTDpTkYpXQfYCfVhE_Mw;-><init>(Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->tvUserAgreement:Landroid/widget/TextView;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameAccountLoginUtil$2VBe9Hc-zZbRxY26FzAYPwWBdQ4;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameAccountLoginUtil$2VBe9Hc-zZbRxY26FzAYPwWBdQ4;-><init>(Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->tvPrivacyPolicy:Landroid/widget/TextView;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameAccountLoginUtil$e1gDcAmVY0ONV8e5pTqLQEBHKVM;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameAccountLoginUtil$e1gDcAmVY0ONV8e5pTqLQEBHKVM;-><init>(Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->twgameIconVisibility:Landroid/widget/ImageView;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameAccountLoginUtil$uTj5IHlN_iYcMNhipDC-CcnuYtY;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameAccountLoginUtil$uTj5IHlN_iYcMNhipDC-CcnuYtY;-><init>(Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showAgreementDialog()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->getTwgameAgreementUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameAgreementUtil;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->doTwgameAgreementDialog()V

    .line 236
    new-instance v1, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil$2;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil$2;-><init>(Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;)V

    invoke-virtual {v0, v1}, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->setOnButtonClickListener(Lcom/tw/gamesdk/ui/TwgameAgreementUtil$OnButtonClickListener;)V

    return-void
.end method

.method private togglePasswordVisibility()V
    .locals 3

    .line 246
    iget-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->isPasswordVisible:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->twgameLoginAccountPassword:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 250
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->twgameLoginAccountPassword:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 251
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->twgameIconVisibility:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_login_visibility_off"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->twgameLoginAccountPassword:Landroid/widget/EditText;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 256
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->twgameLoginAccountPassword:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 257
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->twgameIconVisibility:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_login_visibility"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    :goto_0
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->twgameLoginAccountPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 263
    iget-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->isPasswordVisible:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->isPasswordVisible:Z

    return-void
.end method


# virtual methods
.method public doLoginAccountDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 3

    .line 69
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 71
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->getDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->baseDialog:Landroid/app/Dialog;

    .line 75
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->context:Landroid/content/Context;

    const-string v1, "twgame_login_account_view"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/tw/pay/sdk/tool/Tools;->setSDKDialogScreen(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->loginView:Landroid/view/View;

    .line 77
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->baseDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->loginView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 79
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 82
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->initViews()V

    .line 85
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->setupListeners()V

    .line 87
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->initData()V

    return-void
.end method

.method public synthetic lambda$setupListeners$1$TwgameAccountLoginUtil(Landroid/view/View;)V
    .locals 1

    .line 207
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const-string p1, "\u8d85\u65f6 \u2192 \u81ea\u52a8\u56de\u9000\u9a8c\u8bc1\u7801\u767b\u5f55 twgameCallBackBtn"

    .line 208
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->getTwPayLoginUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-virtual {p1, v0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->doLoginDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void
.end method

.method public synthetic lambda$setupListeners$2$TwgameAccountLoginUtil(Landroid/view/View;)V
    .locals 1

    .line 212
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->activity:Landroid/app/Activity;

    const-string v0, "AccountLogin"

    invoke-static {v0, p1}, Lcom/tw/pay/sdk/tool/ClickUtil;->canClick(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->performLogin()V

    return-void
.end method

.method public synthetic lambda$setupListeners$3$TwgameAccountLoginUtil(Landroid/view/View;)V
    .locals 0

    const-string p1, "\u70b9\u51fb\u7528\u6237\u534f\u8bae"

    .line 219
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 220
    sget-object p1, Lcom/tw/gamesdk/net/RequestUtils;->USER_AGREEMENT_URL:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->openWebView(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setupListeners$4$TwgameAccountLoginUtil(Landroid/view/View;)V
    .locals 0

    const-string p1, "\u70b9\u51fb\u9690\u79c1\u653f\u7b56"

    .line 226
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 227
    sget-object p1, Lcom/tw/gamesdk/net/RequestUtils;->PRIVACY_POLICY_URL:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->openWebView(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setupListeners$5$TwgameAccountLoginUtil(Landroid/view/View;)V
    .locals 0

    .line 230
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->togglePasswordVisibility()V

    return-void
.end method
