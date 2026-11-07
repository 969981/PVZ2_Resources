.class public Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;
.super Lcom/tw/gamesdk/core/TwGameBaseDialog;
.source "TwgameChangeAccountUtil.java"


# instance fields
.field private context:Landroid/content/Context;

.field private loginView:Landroid/view/View;

.field private twgameAccountChange:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private twgameBtnClose:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/tw/gamesdk/core/TwGameBaseDialog;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->context:Landroid/content/Context;

    return-void
.end method

.method public static getTwGameChangeAccountUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;
    .locals 1

    .line 30
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;

    invoke-direct {v0, p0}, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private initData()V
    .locals 0

    return-void
.end method

.method private initViews()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_account_change"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->twgameAccountChange:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 91
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_btn_close"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->twgameBtnClose:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic lambda$setupListeners$1(Landroid/view/View;)V
    .locals 0

    .line 85
    sget-object p0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private setupListeners()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->twgameAccountChange:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameChangeAccountUtil$Jx6_glo1GDX70bwbFGRo78xuTHY;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameChangeAccountUtil$Jx6_glo1GDX70bwbFGRo78xuTHY;-><init>(Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->twgameBtnClose:Landroid/widget/ImageView;

    sget-object v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameChangeAccountUtil$YF5OJQt9UZpgduqV4XUoISQ-GSE;->INSTANCE:Lcom/tw/gamesdk/ui/-$$Lambda$TwgameChangeAccountUtil$YF5OJQt9UZpgduqV4XUoISQ-GSE;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public doChangeAccoutDialog()V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->getDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->baseDialog:Landroid/app/Dialog;

    .line 39
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_change_account"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tw/pay/sdk/tool/Tools;->setSDKDialogScreen(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->loginView:Landroid/view/View;

    .line 43
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->baseDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->loginView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 46
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 48
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->initViews()V

    .line 52
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->setupListeners()V

    return-void
.end method

.method public doChangeAccoutDialog(Z)V
    .locals 3

    .line 55
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->getDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p1

    sput-object p1, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->baseDialog:Landroid/app/Dialog;

    .line 57
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->context:Landroid/content/Context;

    const-string v1, "twgame_usercenter_change_account"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/tw/pay/sdk/tool/Tools;->setSDKDialogScreen(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->loginView:Landroid/view/View;

    .line 61
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->baseDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->loginView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 64
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 66
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->initViews()V

    .line 68
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->initData()V

    .line 70
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->setupListeners()V

    return-void
.end method

.method public synthetic lambda$setupListeners$0$TwgameChangeAccountUtil(Landroid/view/View;)V
    .locals 1

    .line 78
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->activity:Landroid/app/Activity;

    const-string v0, "UserCenterPhone"

    invoke-static {v0, p1}, Lcom/tw/pay/sdk/tool/ClickUtil;->canClick(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 81
    :cond_0
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 82
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->getTwgameChangePwdUtilUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->doChangePwdDialog()V

    return-void
.end method
