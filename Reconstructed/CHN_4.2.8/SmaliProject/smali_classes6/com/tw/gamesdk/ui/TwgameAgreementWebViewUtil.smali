.class public Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;
.super Lcom/tw/gamesdk/core/TwGameBaseDialog;
.source "TwgameAgreementWebViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$OnAgreementConfirmListener;
    }
.end annotation


# instance fields
.field private agreementUrl:Ljava/lang/String;

.field private btnConfirm:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private listener:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$OnAgreementConfirmListener;

.field private loginView:Landroid/view/View;

.field private progressBar:Landroid/widget/ProgressBar;

.field private webViewAgreement:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/tw/gamesdk/core/TwGameBaseDialog;-><init>()V

    const-string v0, "file:android_asset/xieyi_content.html"

    .line 38
    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->agreementUrl:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$OnAgreementConfirmListener;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/tw/gamesdk/core/TwGameBaseDialog;-><init>()V

    const-string v0, "file:android_asset/xieyi_content.html"

    .line 38
    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->agreementUrl:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->context:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->listener:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$OnAgreementConfirmListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;)Landroid/widget/ProgressBar;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;)Landroid/webkit/WebView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->webViewAgreement:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;)Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$OnAgreementConfirmListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->listener:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$OnAgreementConfirmListener;

    return-object p0
.end method

.method private destroyWebView()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->webViewAgreement:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 225
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->webViewAgreement:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->webViewAgreement:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->webViewAgreement:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method public static getTwgameAgreementWebViewUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;
    .locals 1

    .line 45
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;

    invoke-direct {v0, p0}, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private initViews()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->context:Landroid/content/Context;

    const-string v2, "webView_agreement"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->webViewAgreement:Landroid/webkit/WebView;

    .line 89
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->context:Landroid/content/Context;

    const-string v2, "progress_bar"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->progressBar:Landroid/widget/ProgressBar;

    .line 90
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->context:Landroid/content/Context;

    const-string v2, "btn_confirm"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->btnConfirm:Landroid/widget/Button;

    return-void
.end method

.method private setDialogStyle(Landroid/app/Dialog;)V
    .locals 8

    .line 168
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 180
    iget-object v3, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 181
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double v4, v4, v6

    double-to-int v4, v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 182
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v3, v3

    const-wide v5, 0x3feb851eb851eb85L    # 0.86

    mul-double v3, v3, v5

    double-to-int v3, v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v3, 0x11

    .line 185
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v3, 0x3f19999a    # 0.6f

    .line 188
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 191
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 194
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 195
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    return-void
.end method

.method private setupListeners()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->btnConfirm:Landroid/widget/Button;

    new-instance v1, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$3;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$3;-><init>(Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupWebView()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->webViewAgreement:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->webViewAgreement:Landroid/webkit/WebView;

    new-instance v1, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$1;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$1;-><init>(Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 124
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->webViewAgreement:Landroid/webkit/WebView;

    new-instance v1, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$2;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$2;-><init>(Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 133
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->agreementUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->webViewAgreement:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->agreementUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public doTwgameAgreementWebViewDialog()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->context:Landroid/content/Context;

    const-string v1, "TwGameDialogTheme"

    invoke-virtual {p0, v0, v1}, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->getOtherDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->baseOtherDialog:Landroid/app/Dialog;

    .line 67
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_user_agreement"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tw/pay/sdk/tool/Tools;->setSDKDialogScreen(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->loginView:Landroid/view/View;

    .line 71
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->baseOtherDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->loginView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 73
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->baseOtherDialog:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->setDialogStyle(Landroid/app/Dialog;)V

    .line 75
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->baseOtherDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 77
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->initViews()V

    .line 79
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->setupWebView()V

    .line 81
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->setupListeners()V

    return-void
.end method

.method public reloadAgreement()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->webViewAgreement:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->agreementUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->webViewAgreement:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->agreementUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAgreementUrl(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->agreementUrl:Ljava/lang/String;

    return-void
.end method

.method public setOnAgreementConfirmListener(Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$OnAgreementConfirmListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->listener:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$OnAgreementConfirmListener;

    return-void
.end method
