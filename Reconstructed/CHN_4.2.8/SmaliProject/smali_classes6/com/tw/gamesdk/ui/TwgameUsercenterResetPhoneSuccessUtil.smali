.class public Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;
.super Lcom/tw/gamesdk/core/TwGameBaseDialog;
.source "TwgameUsercenterResetPhoneSuccessUtil.java"


# instance fields
.field private context:Landroid/content/Context;

.field private loginView:Landroid/view/View;

.field private twgameUsercenterBindOk:Landroid/widget/Button;

.field private twgameUsercenterPhoneSuccess:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/tw/gamesdk/core/TwGameBaseDialog;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->context:Landroid/content/Context;

    return-void
.end method

.method public static getTwgameUsercenterResetPhoneUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;
    .locals 1

    .line 33
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;

    invoke-direct {v0, p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private initData()V
    .locals 4

    .line 68
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/gamesdk/core/GameSDK;->getCurrentUser()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->twgameUsercenterPhoneSuccess:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tw/gamesdk/utils/DataMaskingUtil;->maskPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "\u60a8\u53ef\u4f7f\u7528%s\u767b\u5f55\u6b64\u8d26\u53f7"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initViews()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_bind_ok"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->twgameUsercenterBindOk:Landroid/widget/Button;

    .line 75
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_phone_success"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->twgameUsercenterPhoneSuccess:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic lambda$setupListeners$0(Landroid/view/View;)V
    .locals 1

    .line 60
    sget-object p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->activity:Landroid/app/Activity;

    const-string v0, "BindPhoneSuccess"

    invoke-static {v0, p0}, Lcom/tw/pay/sdk/tool/ClickUtil;->canClick(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 63
    :cond_0
    sget-object p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private setupListeners()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->twgameUsercenterBindOk:Landroid/widget/Button;

    sget-object v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUsercenterResetPhoneSuccessUtil$j2G1-eU7uEjUFCCGJn4Ahgnwp8g;->INSTANCE:Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUsercenterResetPhoneSuccessUtil$j2G1-eU7uEjUFCCGJn4Ahgnwp8g;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public doTwgameUsercenterResetPhoneDialog()V
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->getDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->baseDialog:Landroid/app/Dialog;

    .line 42
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_reset_phone_success"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tw/pay/sdk/tool/Tools;->setSDKDialogScreen(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->loginView:Landroid/view/View;

    .line 46
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->baseDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->loginView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 49
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 51
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->initViews()V

    .line 53
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->initData()V

    .line 55
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneSuccessUtil;->setupListeners()V

    return-void
.end method
