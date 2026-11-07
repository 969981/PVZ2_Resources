.class public Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;
.super Lcom/tw/gamesdk/core/TwGameBaseDialog;
.source "TwgameUsercenterChangePhoneUtil.java"


# static fields
.field private static final INTERVAL:J = 0x3e8L

.field private static final TOTAL_TIME:J = 0xea60L


# instance fields
.field private context:Landroid/content/Context;

.field private loginView:Landroid/view/View;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mIsCountingDown:Z

.field private phoneNumber:Ljava/lang/String;

.field private simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

.field private twgameUsercenterChangePutCode:Landroid/widget/EditText;

.field private twgameUsercenterClose:Landroid/widget/ImageView;

.field private twgameUsercenterGetCode:Landroid/widget/TextView;

.field private twgameUsercenterNext:Landroid/widget/Button;

.field private twgameUsercenterPhoneText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/tw/gamesdk/core/TwGameBaseDialog;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->mIsCountingDown:Z

    .line 63
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->twgameUsercenterGetCode:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->mIsCountingDown:Z

    return p1
.end method

.method static synthetic access$300(Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->updateGetCodeButtonState()V

    return-void
.end method

.method static synthetic access$400(Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->startCountDown()V

    return-void
.end method

.method static synthetic access$502(Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;Lcom/tw/gamesdk/bean/SimpleUserData;)Lcom/tw/gamesdk/bean/SimpleUserData;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    return-object p1
.end method

.method static synthetic access$600(Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->requestSMSCode()V

    return-void
.end method

.method static synthetic access$700(Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->verifyOldPhone(Ljava/lang/String;)V

    return-void
.end method

.method public static getTwgameUsercenterChangePhoneUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;
    .locals 1

    .line 59
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;

    invoke-direct {v0, p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private initData()V
    .locals 2

    .line 208
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/gamesdk/core/GameSDK;->getCurrentUser()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    .line 209
    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getPhone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->phoneNumber:Ljava/lang/String;

    .line 210
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->twgameUsercenterPhoneText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/tw/gamesdk/utils/DataMaskingUtil;->maskPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initViews()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_change_phone_close"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->twgameUsercenterClose:Landroid/widget/ImageView;

    .line 215
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_next"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->twgameUsercenterNext:Landroid/widget/Button;

    .line 216
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_phone_text"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->twgameUsercenterPhoneText:Landroid/widget/TextView;

    .line 217
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_get_code"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->twgameUsercenterGetCode:Landroid/widget/TextView;

    .line 218
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_change_put_code"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->twgameUsercenterChangePutCode:Landroid/widget/EditText;

    return-void
.end method

.method private isValidPhoneNumber(Ljava/lang/String;)Z
    .locals 0

    .line 258
    invoke-static {p1}, Lcom/tw/pay/sdk/tool/Tools;->checkPhone(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$setupListeners$0(Landroid/view/View;)V
    .locals 0

    .line 121
    sget-object p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private requestSMSCode()V
    .locals 5

    .line 264
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil$5;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil$5;-><init>(Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 270
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil$6;

    invoke-direct {v2, p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil$6;-><init>(Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;)V

    const-string v3, "verifyOldPhone"

    const-string v4, "-1"

    invoke-static {v0, v1, v3, v4, v2}, Lcom/tw/gamesdk/net/RequestUtils;->sendCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method private setupListeners()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->twgameUsercenterClose:Landroid/widget/ImageView;

    sget-object v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUsercenterChangePhoneUtil$UoageVnhTqX2xrJ6iVFORhaa6SI;->INSTANCE:Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUsercenterChangePhoneUtil$UoageVnhTqX2xrJ6iVFORhaa6SI;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->twgameUsercenterNext:Landroid/widget/Button;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUsercenterChangePhoneUtil$nbt9cq5P6Ek812Jd_XdYMuccI3U;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUsercenterChangePhoneUtil$nbt9cq5P6Ek812Jd_XdYMuccI3U;-><init>(Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->twgameUsercenterGetCode:Landroid/widget/TextView;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUsercenterChangePhoneUtil$Tqa3VKZYPDpC-UKTBIouva2C7i0;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUsercenterChangePhoneUtil$Tqa3VKZYPDpC-UKTBIouva2C7i0;-><init>(Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startCountDown()V
    .locals 8

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->mIsCountingDown:Z

    .line 225
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->twgameUsercenterGetCode:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 227
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil$4;

    const-wide/32 v4, 0xea60

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil$4;-><init>(Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;JJ)V

    .line 241
    invoke-virtual {v0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private updateGetCodeButtonState()V
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->mIsCountingDown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 250
    :goto_0
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->twgameUsercenterGetCode:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 251
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->twgameUsercenterGetCode:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->context:Landroid/content/Context;

    const-string v3, "twgame_color_link_blue_pressed"

    goto :goto_1

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->context:Landroid/content/Context;

    const-string v3, "twgame_color_text_hint"

    :goto_1
    invoke-static {v0, v3}, Lcom/tw/pay/sdk/tool/Resource;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 251
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private verifyOldPhone(Ljava/lang/String;)V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil$1;

    invoke-direct {v2, p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil$1;-><init>(Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;)V

    const-string v3, "changePhone"

    invoke-static {v0, p1, v1, v3, v2}, Lcom/tw/gamesdk/net/RequestUtils;->verifyOldPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method


# virtual methods
.method public doTwgameUsercenterChangePhoneDialog()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->getDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->baseDialog:Landroid/app/Dialog;

    .line 68
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_change_phone"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tw/pay/sdk/tool/Tools;->setSDKDialogScreen(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->loginView:Landroid/view/View;

    .line 72
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->baseDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->loginView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 75
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 77
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->initViews()V

    .line 79
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->initData()V

    .line 81
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->setupListeners()V

    return-void
.end method

.method public synthetic lambda$setupListeners$1$TwgameUsercenterChangePhoneUtil(Landroid/view/View;)V
    .locals 2

    .line 124
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->activity:Landroid/app/Activity;

    const-string v0, "UserCenterOldPhone"

    invoke-static {v0, p1}, Lcom/tw/pay/sdk/tool/ClickUtil;->canClick(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->twgameUsercenterChangePutCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/gamesdk/core/GameSDK;->checkTokenExpires()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil$2;

    invoke-direct {v0, p0, p1}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil$2;-><init>(Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tw/gamesdk/core/TokenUtils;->refreshToken(Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;)V

    goto :goto_0

    .line 162
    :cond_2
    invoke-direct {p0, p1}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->verifyOldPhone(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 129
    :cond_3
    :goto_1
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->activity:Landroid/app/Activity;

    const-string v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u9a8c\u8bc1\u7801"

    invoke-static {v0, p1}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public synthetic lambda$setupListeners$2$TwgameUsercenterChangePhoneUtil(Landroid/view/View;)V
    .locals 1

    .line 169
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->activity:Landroid/app/Activity;

    const-string v0, "UserCenterOldPhone"

    invoke-static {v0, p1}, Lcom/tw/pay/sdk/tool/ClickUtil;->canClick(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tw/gamesdk/core/GameSDK;->checkTokenExpires()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 173
    new-instance p1, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil$3;

    invoke-direct {p1, p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil$3;-><init>(Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;)V

    invoke-static {p1}, Lcom/tw/gamesdk/core/TokenUtils;->refreshToken(Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;)V

    goto :goto_0

    .line 201
    :cond_1
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->requestSMSCode()V

    :goto_0
    return-void
.end method
