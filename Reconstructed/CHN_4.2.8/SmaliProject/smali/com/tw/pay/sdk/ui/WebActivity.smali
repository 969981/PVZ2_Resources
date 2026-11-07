.class public Lcom/tw/pay/sdk/ui/WebActivity;
.super Landroid/app/Activity;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tw/pay/sdk/ui/WebActivity$MyWebViewClient;,
        Lcom/tw/pay/sdk/ui/WebActivity$jsOfMine;
    }
.end annotation


# static fields
.field public static twCallback:Lcom/tw/pay/sdk/callback/TwCallback;

.field public static webType:I


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private code:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private mWebView:Landroid/view/View;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    iput-object p0, p0, Lcom/tw/pay/sdk/ui/WebActivity;->context:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/tw/pay/sdk/ui/WebActivity$1;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/ui/WebActivity$1;-><init>(Lcom/tw/pay/sdk/ui/WebActivity;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/ui/WebActivity;->clickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/pay/sdk/ui/WebActivity;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tw/pay/sdk/ui/WebActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tw/pay/sdk/ui/WebActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tw/pay/sdk/ui/WebActivity;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tw/pay/sdk/ui/WebActivity;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tw/pay/sdk/ui/WebActivity;->code:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/tw/pay/sdk/ui/WebActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/tw/pay/sdk/ui/WebActivity;->code:Ljava/lang/String;

    return-object p1
.end method

.method private getUrl()Ljava/lang/String;
    .locals 3

    .line 61
    invoke-virtual {p0}, Lcom/tw/pay/sdk/ui/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "webUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8c03\u7528 WebUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method private init()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/tw/pay/sdk/ui/WebActivity;->setTitle()V

    .line 49
    invoke-direct {p0}, Lcom/tw/pay/sdk/ui/WebActivity;->setWebView()V

    return-void
.end method

.method private selectShowView(Ljava/lang/String;)V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/WebActivity;->mWebView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/ui/WebActivity;->context:Landroid/content/Context;

    const-string v2, "close"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object v2, p0, Lcom/tw/pay/sdk/ui/WebActivity;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/WebActivity;->mWebView:Landroid/view/View;

    iget-object v2, p0, Lcom/tw/pay/sdk/ui/WebActivity;->context:Landroid/content/Context;

    const-string v3, "backView"

    invoke-static {v2, v3}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v1, p0, Lcom/tw/pay/sdk/ui/WebActivity;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/WebActivity;->mWebView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/ui/WebActivity;->context:Landroid/content/Context;

    const-string v2, "titleTxt"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-direct {p0}, Lcom/tw/pay/sdk/ui/WebActivity;->setWebView()V

    return-void
.end method

.method private setTitle()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/WebActivity;->context:Landroid/content/Context;

    const-string v1, "mWebView"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tw/pay/sdk/ui/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/pay/sdk/ui/WebActivity;->mWebView:Landroid/view/View;

    .line 55
    invoke-virtual {p0}, Lcom/tw/pay/sdk/ui/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "webTitle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-direct {p0, v0}, Lcom/tw/pay/sdk/ui/WebActivity;->selectShowView(Ljava/lang/String;)V

    return-void
.end method

.method private setWebView()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/WebActivity;->mWebView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/ui/WebActivity;->context:Landroid/content/Context;

    const-string v2, "webView"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/tw/pay/sdk/ui/WebActivity;->webView:Landroid/webkit/WebView;

    .line 146
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 148
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 149
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/WebActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/tw/pay/sdk/ui/WebActivity$jsOfMine;

    iget-object v2, p0, Lcom/tw/pay/sdk/ui/WebActivity;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/tw/pay/sdk/ui/WebActivity$jsOfMine;-><init>(Lcom/tw/pay/sdk/ui/WebActivity;Landroid/content/Context;)V

    const-string v2, "exitListner"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/WebActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/tw/pay/sdk/ui/WebActivity$MyWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tw/pay/sdk/ui/WebActivity$MyWebViewClient;-><init>(Lcom/tw/pay/sdk/ui/WebActivity;Lcom/tw/pay/sdk/ui/WebActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 151
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/WebActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/tw/pay/sdk/ui/WebActivity$2;

    invoke-direct {v1, p0}, Lcom/tw/pay/sdk/ui/WebActivity$2;-><init>(Lcom/tw/pay/sdk/ui/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 182
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/WebActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/tw/pay/sdk/ui/WebActivity$3;

    invoke-direct {v1, p0}, Lcom/tw/pay/sdk/ui/WebActivity$3;-><init>(Lcom/tw/pay/sdk/ui/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 198
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/tw/pay/sdk/ui/WebActivity;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/WebActivity;->context:Landroid/content/Context;

    const-string v0, "dialog_web"

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/tw/pay/sdk/ui/WebActivity;->context:Landroid/content/Context;

    .line 42
    invoke-static {v1, v0}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 41
    invoke-static {p0, p1, v0}, Lcom/tw/pay/sdk/tool/Tools;->setSDKScreen(Landroid/app/Activity;II)V

    .line 43
    invoke-direct {p0}, Lcom/tw/pay/sdk/ui/WebActivity;->init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 133
    sget-object v0, Lcom/tw/pay/sdk/ui/WebActivity;->twCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/WebActivity;->code:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "05"

    .line 135
    iput-object v0, p0, Lcom/tw/pay/sdk/ui/WebActivity;->code:Ljava/lang/String;

    .line 137
    :cond_0
    sget-object v0, Lcom/tw/pay/sdk/ui/WebActivity;->twCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    iget-object v1, p0, Lcom/tw/pay/sdk/ui/WebActivity;->code:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const-string v0, "index.jsp"

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    .line 112
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lcom/tw/pay/sdk/ui/WebActivity;->webView:Landroid/webkit/WebView;

    .line 113
    invoke-virtual {v3}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tw/pay/sdk/ui/WebActivity;->webView:Landroid/webkit/WebView;

    .line 114
    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    return v2

    :cond_0
    if-ne p1, v1, :cond_2

    .line 117
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/tw/pay/sdk/ui/WebActivity;->webView:Landroid/webkit/WebView;

    .line 118
    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tw/pay/sdk/ui/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/tw/pay/sdk/ui/WebActivity;->finish()V

    return v2

    .line 123
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
