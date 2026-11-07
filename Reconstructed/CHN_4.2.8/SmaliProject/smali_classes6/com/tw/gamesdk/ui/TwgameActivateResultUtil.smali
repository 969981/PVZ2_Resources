.class public Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;
.super Lcom/tw/gamesdk/core/TwGameBaseDialog;
.source "TwgameActivateResultUtil.java"


# instance fields
.field private context:Landroid/content/Context;

.field private isSuccess:Z

.field private loginView:Landroid/view/View;

.field private mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

.field private simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

.field private twgameActivateResult:Landroid/widget/TextView;

.field private twgameActivateResultConfirm:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/tw/gamesdk/core/TwGameBaseDialog;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->context:Landroid/content/Context;

    return-void
.end method

.method public static getTwgameActivateResultUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;
    .locals 1

    .line 37
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;

    invoke-direct {v0, p0}, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private initData()V
    .locals 2

    .line 72
    iget-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->twgameActivateResult:Landroid/widget/TextView;

    const-string v1, "\u6fc0\u6d3b\u6210\u529f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->twgameActivateResult:Landroid/widget/TextView;

    const-string v1, "\u6fc0\u6d3b\u5931\u8d25"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->twgameActivateResultConfirm:Landroid/widget/Button;

    const-string v1, "\u518d\u6b21\u8f93\u5165"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private initViews()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_activate_result"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->twgameActivateResult:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_activate_result_confirm"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->twgameActivateResultConfirm:Landroid/widget/Button;

    return-void
.end method

.method private setupListeners()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->twgameActivateResultConfirm:Landroid/widget/Button;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameActivateResultUtil$wlSwOeuDC-_LvqpK_9-X_s3XHIo;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameActivateResultUtil$wlSwOeuDC-_LvqpK_9-X_s3XHIo;-><init>(Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public doActivateResultDialog(Lcom/tw/pay/sdk/callback/TwCallback;ZLcom/tw/gamesdk/bean/SimpleUserData;)V
    .locals 1

    .line 46
    iput-boolean p2, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->isSuccess:Z

    .line 48
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 49
    iput-object p3, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    .line 50
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 52
    iget-object p2, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->context:Landroid/content/Context;

    const-string p3, "TwGameDialogTheme"

    invoke-virtual {p0, p2, p3}, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->getOtherDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p2

    sput-object p2, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->baseOtherDialog:Landroid/app/Dialog;

    .line 54
    iget-object p2, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->context:Landroid/content/Context;

    const-string p3, "twgame_activate_success"

    invoke-static {p2, p3}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->context:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/tw/pay/sdk/tool/Tools;->setSDKDialogScreen(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->loginView:Landroid/view/View;

    .line 56
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->baseOtherDialog:Landroid/app/Dialog;

    iget-object p2, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->loginView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 58
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->baseOtherDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 61
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->initViews()V

    .line 64
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->setupListeners()V

    .line 67
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->initData()V

    return-void
.end method

.method public synthetic lambda$setupListeners$0$TwgameActivateResultUtil(Landroid/view/View;)V
    .locals 2

    .line 82
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->baseOtherDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 83
    iget-boolean p1, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->isSuccess:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->getTwgameActivateUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {p1, v0, v1}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->doActivateDialog(Lcom/tw/pay/sdk/callback/TwCallback;Lcom/tw/gamesdk/bean/SimpleUserData;)V

    :goto_0
    return-void
.end method
