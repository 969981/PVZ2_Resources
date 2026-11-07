.class public Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;
.super Lcom/tw/gamesdk/core/TwGameBaseDialog;
.source "TwgameUserCenterUtil.java"


# instance fields
.field private context:Landroid/content/Context;

.field private loginView:Landroid/view/View;

.field private twgameAccountChangePhone:Landroid/widget/TextView;

.field private twgameAccountUsername:Landroid/widget/TextView;

.field private twgameUsercenterBindPhone:Landroid/widget/TextView;

.field private twgameUsercenterChangePwd:Landroid/widget/TextView;

.field private twgameUsercenterClose:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/tw/gamesdk/core/TwGameBaseDialog;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->context:Landroid/content/Context;

    return-void
.end method

.method public static getTwGameUserCenterUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;
    .locals 1

    .line 34
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;

    invoke-direct {v0, p0}, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private initData()V
    .locals 3

    .line 60
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/gamesdk/core/GameSDK;->getCurrentUser()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TwgameUserCenterUtil simpleUserData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->twgameUsercenterBindPhone:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tw/gamesdk/utils/DataMaskingUtil;->maskPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->twgameAccountUsername:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initViews()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_change_password"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->twgameUsercenterChangePwd:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_close"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->twgameUsercenterClose:Landroid/widget/ImageView;

    .line 89
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_account_change_phone"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->twgameAccountChangePhone:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_bind_phone"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->twgameUsercenterBindPhone:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_account_username"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->twgameAccountUsername:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic lambda$setupListeners$1(Landroid/view/View;)V
    .locals 0

    .line 75
    sget-object p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private setupListeners()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->twgameUsercenterChangePwd:Landroid/widget/TextView;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUserCenterUtil$GiEzW4gVkpSK8mzRjquwMJ-1_lk;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUserCenterUtil$GiEzW4gVkpSK8mzRjquwMJ-1_lk;-><init>(Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->twgameUsercenterClose:Landroid/widget/ImageView;

    sget-object v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUserCenterUtil$oB0HFChByq-NV4zH_60A4ZSUz44;->INSTANCE:Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUserCenterUtil$oB0HFChByq-NV4zH_60A4ZSUz44;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->twgameAccountChangePhone:Landroid/widget/TextView;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUserCenterUtil$lsAIt4L5kglB61H39ni3c8XyD3I;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUserCenterUtil$lsAIt4L5kglB61H39ni3c8XyD3I;-><init>(Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public doUserCenterDialog()V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->getDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->baseDialog:Landroid/app/Dialog;

    .line 43
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_user_center_account"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tw/pay/sdk/tool/Tools;->setSDKDialogScreen(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->loginView:Landroid/view/View;

    .line 47
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->baseDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->loginView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 50
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 52
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->initViews()V

    .line 54
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->initData()V

    .line 56
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->setupListeners()V

    return-void
.end method

.method public synthetic lambda$setupListeners$0$TwgameUserCenterUtil(Landroid/view/View;)V
    .locals 1

    .line 68
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->activity:Landroid/app/Activity;

    const-string v0, "UserCenter"

    invoke-static {v0, p1}, Lcom/tw/pay/sdk/tool/ClickUtil;->canClick(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 71
    :cond_0
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 72
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->getTwGameChangeAccountUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->doChangeAccoutDialog()V

    return-void
.end method

.method public synthetic lambda$setupListeners$2$TwgameUserCenterUtil(Landroid/view/View;)V
    .locals 1

    .line 78
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->activity:Landroid/app/Activity;

    const-string v0, "UserCenter"

    invoke-static {v0, p1}, Lcom/tw/pay/sdk/tool/ClickUtil;->canClick(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 81
    :cond_0
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 82
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->getTwgameUsercenterChangePhoneUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangePhoneUtil;->doTwgameUsercenterChangePhoneDialog()V

    return-void
.end method
