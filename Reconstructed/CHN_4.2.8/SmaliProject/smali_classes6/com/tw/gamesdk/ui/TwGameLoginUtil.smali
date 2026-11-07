.class public Lcom/tw/gamesdk/ui/TwGameLoginUtil;
.super Lcom/tw/gamesdk/core/TwGameBaseDialog;
.source "TwGameLoginUtil.java"


# static fields
.field private static final CHANNEL_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTERVAL:J = 0x3e8L

.field private static final TOTAL_TIME:J = 0xea60L

.field private static mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;


# instance fields
.field private context:Landroid/content/Context;

.field private isAgreed:Z

.field private loginView:Landroid/view/View;

.field private mBtnBack:Landroid/widget/ImageView;

.field private mBtnPasswordLogin:Landroid/widget/Button;

.field private mCbAgreement:Landroid/widget/CheckBox;

.field private mCodeLine:Landroid/view/View;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mDialogContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mEtCode:Landroid/widget/EditText;

.field private mIsCountingDown:Z

.field private mIvClose:Landroid/widget/ImageView;

.field private mPhoneLine:Landroid/view/View;

.field private mTvCountryCode:Landroid/widget/TextView;

.field private mTvPrivacyPolicy:Landroid/widget/TextView;

.field private mTvUserAgreement:Landroid/widget/TextView;

.field private twgameDownloadApk:Landroid/widget/TextView;

.field private twgameGetCode:Landroid/widget/Button;

.field private twgameLoginBtn:Landroid/widget/Button;

.field private twgameLoginChannel:Landroid/widget/TextView;

.field private twgameLoginIsdebug:Landroid/widget/TextView;

.field private twgameOneClickLoginBtn:Landroid/widget/Button;

.field private twgamePhoneEt:Landroid/widget/EditText;

.field private userAgreementDialog:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$1;

    invoke-direct {v0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil$1;-><init>()V

    sput-object v0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->CHANNEL_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/tw/gamesdk/core/TwGameBaseDialog;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mIsCountingDown:Z

    .line 87
    iput-boolean v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->isAgreed:Z

    .line 95
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->updateGetCodeButtonState()V

    return-void
.end method

.method static synthetic access$100(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->updateLoginButtonState()V

    return-void
.end method

.method static synthetic access$200(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->startCountDown()V

    return-void
.end method

.method static synthetic access$300(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)Landroid/widget/Button;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgameGetCode:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$402(Lcom/tw/gamesdk/ui/TwGameLoginUtil;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mIsCountingDown:Z

    return p1
.end method

.method static synthetic access$500(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600()Lcom/tw/pay/sdk/callback/TwCallback;
    .locals 1

    .line 51
    sget-object v0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)Landroid/widget/CheckBox;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mCbAgreement:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->requestSMSCode()V

    return-void
.end method

.method private getCodeParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 379
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "account"

    .line 380
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "phone"

    const-string v1, "-1"

    .line 381
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "code_type"

    const-string v1, "login"

    .line 382
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getLoginParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 515
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "account"

    .line 516
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "phone"

    const-string v1, "-1"

    .line 517
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 518
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "login_type"

    invoke-virtual {v0, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string p1, "token"

    .line 519
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "code"

    .line 520
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "password"

    .line 521
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getTwPayLoginUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwGameLoginUtil;
    .locals 1

    .line 90
    new-instance v0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    invoke-direct {v0, p0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private initDate()V
    .locals 4

    .line 130
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/gamesdk/core/GameSDK;->getHelpTitle()Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgameDownloadApk:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgameDownloadApk:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :goto_0
    sget-wide v2, Lcom/tw/pay/sdk/TwPaySetting;->channelId:J

    long-to-int v0, v2

    .line 137
    sget-object v2, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->CHANNEL_MAP:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgameLoginChannel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "twOfflinePay.xml"

    const-string v3, "debug"

    invoke-static {v0, v2, v3}, Lcom/tw/pay/sdk/tool/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgameLoginIsdebug:Landroid/widget/TextView;

    const-string v1, "\u6d4b\u8bd5\u5305"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgameLoginIsdebug:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private initViews()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->loginView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v2, "dialog_container"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mDialogContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 152
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v2, "tv_country_code"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mTvCountryCode:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_phone_et"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgamePhoneEt:Landroid/widget/EditText;

    .line 154
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v2, "et_code"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mEtCode:Landroid/widget/EditText;

    .line 155
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_get_code_btn"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgameGetCode:Landroid/widget/Button;

    .line 156
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v2, "cb_agreement"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mCbAgreement:Landroid/widget/CheckBox;

    .line 157
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v2, "tv_user_agreement"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mTvUserAgreement:Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v2, "tv_privacy_policy"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mTvPrivacyPolicy:Landroid/widget/TextView;

    .line 159
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_login_btn"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgameLoginBtn:Landroid/widget/Button;

    .line 160
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_password_login"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mBtnPasswordLogin:Landroid/widget/Button;

    .line 161
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_oneclick_login_btn"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgameOneClickLoginBtn:Landroid/widget/Button;

    .line 162
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v2, "phone_line"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mPhoneLine:Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v2, "code_line"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mCodeLine:Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_top_close"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mIvClose:Landroid/widget/ImageView;

    .line 165
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_top_back"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mBtnBack:Landroid/widget/ImageView;

    .line 166
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_download_apk"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgameDownloadApk:Landroid/widget/TextView;

    .line 167
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_login_channel"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgameLoginChannel:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_login_isdebug"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgameLoginIsdebug:Landroid/widget/TextView;

    .line 169
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mBtnBack:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mIvClose:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->updateLoginButtonState()V

    return-void
.end method

.method private isValidPhoneNumber(Ljava/lang/String;)Z
    .locals 0

    .line 546
    invoke-static {p1}, Lcom/tw/pay/sdk/tool/Tools;->checkPhone(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$setupListeners$1(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$setupListeners$11(Landroid/view/View;)V
    .locals 2

    .line 277
    sget-object p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->activity:Landroid/app/Activity;

    const-string v0, "OneClickBack"

    invoke-static {v0, p0}, Lcom/tw/pay/sdk/tool/ClickUtil;->canClick(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 280
    :cond_0
    sget-object p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 282
    sget-object p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->activity:Landroid/app/Activity;

    sget-object v0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil;->tryOneClickThenFallback(Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwCallback;Z)V

    return-void
.end method

.method public static openBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 554
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "URL\u4e0d\u80fd\u4e3a\u7a7a"

    .line 555
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 560
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 562
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 563
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "\u6253\u5f00\u6d4f\u89c8\u5668\u5931\u8d25"

    .line 569
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 570
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "\u672a\u627e\u5230\u6d4f\u89c8\u5668\u5e94\u7528"

    .line 566
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 567
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private performLogin()V
    .locals 5

    .line 415
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgamePhoneEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 416
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mEtCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-direct {p0, v0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 418
    sget-object v0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->activity:Landroid/app/Activity;

    const-string v1, "\u8bf7\u8f93\u5165\u6709\u6548\u7684\u624b\u673a\u53f7\u7801"

    invoke-static {v1, v0}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    return-void

    .line 421
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 425
    :cond_1
    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mTvCountryCode:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 426
    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mCbAgreement:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 427
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->showAgreementDialog()V

    return-void

    .line 430
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->getLoginParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tw/gamesdk/ui/TwGameLoginUtil$7;

    invoke-direct {v2, p0, v0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil$7;-><init>(Lcom/tw/gamesdk/ui/TwGameLoginUtil;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tw/gamesdk/net/RequestUtils;->twgameLogin(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void

    .line 422
    :cond_3
    :goto_0
    sget-object v0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->activity:Landroid/app/Activity;

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u9a8c\u8bc1\u7801"

    invoke-static {v1, v0}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method private requestSMSCode()V
    .locals 4

    .line 322
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgamePhoneEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mTvCountryCode:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 324
    invoke-direct {p0, v0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    sget-object v0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->activity:Landroid/app/Activity;

    const-string v1, "\u8bf7\u8f93\u5165\u6709\u6548\u7684\u624b\u673a\u53f7\u7801"

    invoke-static {v1, v0}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    .line 326
    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mCbAgreement:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 331
    sget-object v0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->activity:Landroid/app/Activity;

    const-string v1, "\u8bf7\u9605\u8bfb\u5e76\u540c\u610f\u534f\u8bae"

    invoke-static {v1, v0}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    .line 332
    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 333
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->showAgreementDialog()V

    return-void

    .line 339
    :cond_1
    sget-object v1, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/tw/gamesdk/ui/TwGameLoginUtil$4;

    invoke-direct {v2, p0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil$4;-><init>(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 347
    invoke-direct {p0, v0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->getCodeParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tw/gamesdk/ui/TwGameLoginUtil$5;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil$5;-><init>(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V

    invoke-static {v0, v1}, Lcom/tw/gamesdk/net/RequestUtils;->sendLoginCode(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method private setupListeners()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mTvCountryCode:Landroid/widget/TextView;

    sget-object v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$E9ofNbLTEiuHJMpJAJbqbc1oBbQ;->INSTANCE:Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$E9ofNbLTEiuHJMpJAJbqbc1oBbQ;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgameDownloadApk:Landroid/widget/TextView;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$FOavnWCzjTuhI6TN0sRX1hYu6Ak;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$FOavnWCzjTuhI6TN0sRX1hYu6Ak;-><init>(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgamePhoneEt:Landroid/widget/EditText;

    new-instance v1, Lcom/tw/gamesdk/ui/TwGameLoginUtil$2;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil$2;-><init>(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 210
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgamePhoneEt:Landroid/widget/EditText;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$wyPoUp8FJs6EvSDByXqKonsBI8M;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$wyPoUp8FJs6EvSDByXqKonsBI8M;-><init>(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 217
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mEtCode:Landroid/widget/EditText;

    new-instance v1, Lcom/tw/gamesdk/ui/TwGameLoginUtil$3;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil$3;-><init>(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 233
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mEtCode:Landroid/widget/EditText;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$YSpGcUizljS69NRHWHINvI_ML_w;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$YSpGcUizljS69NRHWHINvI_ML_w;-><init>(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 240
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgameGetCode:Landroid/widget/Button;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$K3u0vQpSI8fdZIp0h20qprd3gc4;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$K3u0vQpSI8fdZIp0h20qprd3gc4;-><init>(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mTvUserAgreement:Landroid/widget/TextView;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$2syCY7BymVGLgrSATbIU0r9y1NQ;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$2syCY7BymVGLgrSATbIU0r9y1NQ;-><init>(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mTvPrivacyPolicy:Landroid/widget/TextView;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$8cPD9D38EUhTQ4lsctT-EqWl78I;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$8cPD9D38EUhTQ4lsctT-EqWl78I;-><init>(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mCbAgreement:Landroid/widget/CheckBox;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$LPbO9YYTK75oIhA3rxcm6qIEEKE;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$LPbO9YYTK75oIhA3rxcm6qIEEKE;-><init>(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 258
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgameLoginBtn:Landroid/widget/Button;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$NN89gh7xB_I96f1Zsy5WpAWsGDQ;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$NN89gh7xB_I96f1Zsy5WpAWsGDQ;-><init>(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mBtnPasswordLogin:Landroid/widget/Button;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$joh555eqUl5olvubXaf2dI4w57A;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$joh555eqUl5olvubXaf2dI4w57A;-><init>(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgameOneClickLoginBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 276
    sget-object v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$HbTHSFJun6dwzxi8upZYjlprYlw;->INSTANCE:Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$HbTHSFJun6dwzxi8upZYjlprYlw;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private showAccountLoginDialog()V
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->getTwGameLoginUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;

    move-result-object v0

    sget-object v1, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-virtual {v0, v1}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->doLoginAccountDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void
.end method

.method private showAgreementDialog()V
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->getTwgameAgreementUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameAgreementUtil;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->doTwgameAgreementDialog()V

    .line 528
    new-instance v1, Lcom/tw/gamesdk/ui/TwGameLoginUtil$8;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil$8;-><init>(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V

    invoke-virtual {v0, v1}, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->setOnButtonClickListener(Lcom/tw/gamesdk/ui/TwgameAgreementUtil$OnButtonClickListener;)V

    return-void
.end method

.method private startCountDown()V
    .locals 8

    const/4 v0, 0x1

    .line 390
    iput-boolean v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mIsCountingDown:Z

    .line 391
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgameGetCode:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 393
    new-instance v0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$6;

    const-wide/32 v4, 0xea60

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/tw/gamesdk/ui/TwGameLoginUtil$6;-><init>(Lcom/tw/gamesdk/ui/TwGameLoginUtil;JJ)V

    .line 407
    invoke-virtual {v0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil$6;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private updateGetCodeButtonState()V
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgamePhoneEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-direct {p0, v0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-boolean v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mIsCountingDown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 295
    :goto_0
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgameGetCode:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 296
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgameGetCode:Landroid/widget/Button;

    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v3, "twgame_color_link_blue_pressed"

    goto :goto_1

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v3, "twgame_color_text_hint"

    :goto_1
    invoke-static {v0, v3}, Lcom/tw/pay/sdk/tool/Resource;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 296
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private updateLoginButtonState()V
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->twgamePhoneEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mEtCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 308
    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mCbAgreement:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 310
    invoke-direct {p0, v0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    .line 313
    :cond_0
    iput-boolean v2, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->isAgreed:Z

    return-void
.end method


# virtual methods
.method public doLoginDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 3

    .line 102
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$c8ZRGgDGFq5nKxc-Zj8sBfnPMGI;

    invoke-direct {v1, p0, p1}, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$c8ZRGgDGFq5nKxc-Zj8sBfnPMGI;-><init>(Lcom/tw/gamesdk/ui/TwGameLoginUtil;Lcom/tw/pay/sdk/callback/TwCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 107
    :cond_0
    sput-object p1, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 110
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->getDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->baseDialog:Landroid/app/Dialog;

    .line 114
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v1, "twgame_login_view"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/tw/pay/sdk/tool/Tools;->setSDKDialogScreen(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->loginView:Landroid/view/View;

    .line 116
    sget-object p1, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->baseDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->loginView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 118
    sget-object p1, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 120
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->initViews()V

    .line 122
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->initDate()V

    .line 125
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->setupListeners()V

    return-void
.end method

.method public synthetic lambda$doLoginDialog$0$TwGameLoginUtil(Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->doLoginDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void
.end method

.method public synthetic lambda$setupListeners$10$TwGameLoginUtil(Landroid/view/View;)V
    .locals 1

    .line 267
    sget-object p1, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->activity:Landroid/app/Activity;

    const-string v0, "SMSLogin"

    invoke-static {v0, p1}, Lcom/tw/pay/sdk/tool/ClickUtil;->canClick(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 270
    :cond_0
    sget-object p1, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 271
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->showAccountLoginDialog()V

    return-void
.end method

.method public synthetic lambda$setupListeners$2$TwGameLoginUtil(Landroid/view/View;)V
    .locals 1

    .line 190
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/gamesdk/core/GameSDK;->getHelpLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->openBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setupListeners$3$TwGameLoginUtil(Landroid/view/View;Z)V
    .locals 2

    .line 211
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mPhoneLine:Landroid/view/View;

    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v1, "twgame_color_primary"

    goto :goto_0

    .line 212
    :cond_0
    iget-object p2, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v1, "twgame_color_line_divider"

    :goto_0
    invoke-static {p2, v1}, Lcom/tw/pay/sdk/tool/Resource;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    .line 211
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public synthetic lambda$setupListeners$4$TwGameLoginUtil(Landroid/view/View;Z)V
    .locals 2

    .line 234
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->mCodeLine:Landroid/view/View;

    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v1, "twgame_color_primary"

    goto :goto_0

    .line 235
    :cond_0
    iget-object p2, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->context:Landroid/content/Context;

    const-string v1, "twgame_color_line_divider"

    :goto_0
    invoke-static {p2, v1}, Lcom/tw/pay/sdk/tool/Resource;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    .line 234
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public synthetic lambda$setupListeners$5$TwGameLoginUtil(Landroid/view/View;)V
    .locals 0

    .line 240
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->requestSMSCode()V

    return-void
.end method

.method public synthetic lambda$setupListeners$6$TwGameLoginUtil(Landroid/view/View;)V
    .locals 0

    const-string p1, "\u70b9\u51fb\u7528\u6237\u534f\u8bae"

    .line 244
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 245
    sget-object p1, Lcom/tw/gamesdk/net/RequestUtils;->USER_AGREEMENT_URL:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->openWebView(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setupListeners$7$TwGameLoginUtil(Landroid/view/View;)V
    .locals 0

    const-string p1, "\u70b9\u51fb\u9690\u79c1\u653f\u7b56"

    .line 250
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 251
    sget-object p1, Lcom/tw/gamesdk/net/RequestUtils;->PRIVACY_POLICY_URL:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->openWebView(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setupListeners$8$TwGameLoginUtil(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 255
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->updateLoginButtonState()V

    return-void
.end method

.method public synthetic lambda$setupListeners$9$TwGameLoginUtil(Landroid/view/View;)V
    .locals 1

    .line 259
    sget-object p1, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->activity:Landroid/app/Activity;

    const-string v0, "SMSLogin"

    invoke-static {v0, p1}, Lcom/tw/pay/sdk/tool/ClickUtil;->canClick(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 262
    :cond_0
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->performLogin()V

    return-void
.end method
