.class public Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;
.super Lcom/tw/gamesdk/core/TwGameBaseDialog;
.source "TwgameChangePwdUtil.java"


# static fields
.field private static final INTERVAL:J = 0x3e8L

.field private static final TOTAL_TIME:J = 0xea60L


# instance fields
.field private context:Landroid/content/Context;

.field private loginView:Landroid/view/View;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mIsCountingDown:Z

.field private simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

.field private twgameAccountChange:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private twgameAccountChangePwdCode:Landroid/widget/EditText;

.field private twgameGetCode:Landroid/widget/TextView;

.field private twgamePhoneHint:Landroid/widget/TextView;

.field private twgameUsercenterChangeNext:Landroid/widget/Button;

.field private twgameUsercenterClose:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/tw/gamesdk/core/TwGameBaseDialog;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->mIsCountingDown:Z

    .line 67
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->startCountDown()V

    return-void
.end method

.method static synthetic access$200(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->twgameGetCode:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;)Lcom/tw/gamesdk/bean/SimpleUserData;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    return-object p0
.end method

.method static synthetic access$302(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;Lcom/tw/gamesdk/bean/SimpleUserData;)Lcom/tw/gamesdk/bean/SimpleUserData;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    return-object p1
.end method

.method static synthetic access$400(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->twgamePhoneHint:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->mIsCountingDown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->updateGetCodeButtonState()V

    return-void
.end method

.method static synthetic access$700(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->changePassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->sendSMS()V

    return-void
.end method

.method private changePassword(Ljava/lang/String;)V
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$3;

    invoke-direct {v2, p0}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$3;-><init>(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;)V

    const-string v3, "changePass"

    invoke-static {v0, p1, v1, v3, v2}, Lcom/tw/gamesdk/net/RequestUtils;->verifyOldPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method public static getTwgameChangePwdUtilUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;
    .locals 1

    .line 63
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;

    invoke-direct {v0, p0}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private initData()V
    .locals 2

    .line 92
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/gamesdk/core/GameSDK;->getCurrentUser()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    .line 93
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->twgamePhoneHint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initViews()V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->context:Landroid/content/Context;

    const-string v2, "tv_countdown"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->twgameGetCode:Landroid/widget/TextView;

    .line 263
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_close"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->twgameUsercenterClose:Landroid/widget/ImageView;

    .line 264
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_change_next"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->twgameUsercenterChangeNext:Landroid/widget/Button;

    .line 265
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_phone_hint"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->twgamePhoneHint:Landroid/widget/TextView;

    .line 266
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_account_change_pwd_code"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->twgameAccountChangePwdCode:Landroid/widget/EditText;

    return-void
.end method

.method private isValidPhoneNumber(Ljava/lang/String;)Z
    .locals 0

    .line 305
    invoke-static {p1}, Lcom/tw/pay/sdk/tool/Tools;->checkPhone(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$setupListeners$1(Landroid/view/View;)V
    .locals 0

    .line 137
    sget-object p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private sendSMS()V
    .locals 5

    .line 223
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$4;

    invoke-direct {v2, p0}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$4;-><init>(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;)V

    const-string v3, "changePassword"

    const-string v4, "-1"

    invoke-static {v0, v1, v3, v4, v2}, Lcom/tw/gamesdk/net/RequestUtils;->sendCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method private setupListeners()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->twgameGetCode:Landroid/widget/TextView;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameChangePwdUtil$K_uuuevSzSh6QpBcnzLVupJ_EZw;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameChangePwdUtil$K_uuuevSzSh6QpBcnzLVupJ_EZw;-><init>(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->twgameUsercenterClose:Landroid/widget/ImageView;

    sget-object v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameChangePwdUtil$1jfcfYYk8Th_6c2CkzNJV1b75Vc;->INSTANCE:Lcom/tw/gamesdk/ui/-$$Lambda$TwgameChangePwdUtil$1jfcfYYk8Th_6c2CkzNJV1b75Vc;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->twgameUsercenterChangeNext:Landroid/widget/Button;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameChangePwdUtil$QA090bRk0QTVtqMsSRCr50gcEKA;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameChangePwdUtil$QA090bRk0QTVtqMsSRCr50gcEKA;-><init>(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startCountDown()V
    .locals 8

    const/4 v0, 0x1

    .line 270
    iput-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->mIsCountingDown:Z

    .line 271
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->twgameGetCode:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 273
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$5;

    const-wide/32 v4, 0xea60

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$5;-><init>(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;JJ)V

    .line 289
    invoke-virtual {v0}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private updateGetCodeButtonState()V
    .locals 4

    .line 295
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->mIsCountingDown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 298
    :goto_0
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->twgameGetCode:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 299
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->twgameGetCode:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->context:Landroid/content/Context;

    const-string v3, "twgame_color_link_blue_pressed"

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->context:Landroid/content/Context;

    const-string v3, "twgame_color_text_hint"

    :goto_1
    invoke-static {v0, v3}, Lcom/tw/pay/sdk/tool/Resource;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public doChangePwdDialog()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->getDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->baseDialog:Landroid/app/Dialog;

    .line 72
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_change_pwd"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tw/pay/sdk/tool/Tools;->setSDKDialogScreen(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->loginView:Landroid/view/View;

    .line 76
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->baseDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->loginView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 79
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 82
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->initViews()V

    .line 84
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->initData()V

    .line 86
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->setupListeners()V

    return-void
.end method

.method public synthetic lambda$setupListeners$0$TwgameChangePwdUtil(Landroid/view/View;)V
    .locals 1

    .line 100
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->activity:Landroid/app/Activity;

    const-string v0, "UserCenterNewPhone"

    invoke-static {v0, p1}, Lcom/tw/pay/sdk/tool/ClickUtil;->canClick(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tw/gamesdk/core/GameSDK;->checkTokenExpires()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 104
    new-instance p1, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$1;

    invoke-direct {p1, p0}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$1;-><init>(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;)V

    invoke-static {p1}, Lcom/tw/gamesdk/core/TokenUtils;->refreshToken(Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->sendSMS()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$setupListeners$2$TwgameChangePwdUtil(Landroid/view/View;)V
    .locals 2

    .line 140
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->activity:Landroid/app/Activity;

    const-string v0, "UserCenterNewPhone"

    invoke-static {v0, p1}, Lcom/tw/pay/sdk/tool/ClickUtil;->canClick(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->twgameAccountChangePwdCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 149
    :cond_1
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/gamesdk/core/GameSDK;->checkTokenExpires()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$2;

    invoke-direct {v0, p0, p1}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$2;-><init>(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tw/gamesdk/core/TokenUtils;->refreshToken(Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;)V

    goto :goto_0

    .line 178
    :cond_2
    invoke-direct {p0, p1}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->changePassword(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 145
    :cond_3
    :goto_1
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->activity:Landroid/app/Activity;

    const-string v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u9a8c\u8bc1\u7801"

    invoke-static {v0, p1}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
