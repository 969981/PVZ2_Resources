.class public Lcom/tw/pay/sdk/util/TwWebUtil;
.super Ljava/lang/Object;
.source "TwWebUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tw/pay/sdk/util/TwWebUtil$MyWebViewClient;,
        Lcom/tw/pay/sdk/util/TwWebUtil$jsOfMine;
    }
.end annotation


# static fields
.field private static twWebUtil:Lcom/tw/pay/sdk/util/TwWebUtil;

.field public static webType:I


# instance fields
.field private callback:Lcom/tw/pay/sdk/callback/TwCallback;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private code:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;

.field private dialogView:Landroid/view/View;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/view/View;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lcom/tw/pay/sdk/util/TwWebUtil$3;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/TwWebUtil$3;-><init>(Lcom/tw/pay/sdk/util/TwWebUtil;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->clickListener:Landroid/view/View$OnClickListener;

    .line 56
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/pay/sdk/util/TwWebUtil;)Landroid/webkit/WebView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tw/pay/sdk/util/TwWebUtil;)Landroid/app/Dialog;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tw/pay/sdk/util/TwWebUtil;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tw/pay/sdk/util/TwWebUtil;)Lcom/tw/pay/sdk/callback/TwCallback;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tw/pay/sdk/util/TwWebUtil;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->code:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/tw/pay/sdk/util/TwWebUtil;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->code:Ljava/lang/String;

    return-object p1
.end method

.method private getDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "MyDialog"

    invoke-static {p1, v1}, Lcom/tw/pay/sdk/tool/Resource;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->dialog:Landroid/app/Dialog;

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public static getWebUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/TwWebUtil;
    .locals 1

    .line 41
    sget-object v0, Lcom/tw/pay/sdk/util/TwWebUtil;->twWebUtil:Lcom/tw/pay/sdk/util/TwWebUtil;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/tw/pay/sdk/util/TwWebUtil;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/TwWebUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tw/pay/sdk/util/TwWebUtil;->twWebUtil:Lcom/tw/pay/sdk/util/TwWebUtil;

    .line 44
    :cond_0
    sget-object p0, Lcom/tw/pay/sdk/util/TwWebUtil;->twWebUtil:Lcom/tw/pay/sdk/util/TwWebUtil;

    return-object p0
.end method

.method private selectShowView(Ljava/lang/String;)V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->dialogView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->context:Landroid/content/Context;

    const-string v2, "closeImg"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->clickListener:Landroid/view/View$OnClickListener;

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->mWebView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->context:Landroid/content/Context;

    const-string v2, "titleTxt"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-direct {p0}, Lcom/tw/pay/sdk/util/TwWebUtil;->setWebView()V

    return-void
.end method

.method private setWebView()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->mWebView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->context:Landroid/content/Context;

    const-string v2, "webView"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->webView:Landroid/webkit/WebView;

    .line 142
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 144
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 145
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/tw/pay/sdk/util/TwWebUtil$jsOfMine;

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/tw/pay/sdk/util/TwWebUtil$jsOfMine;-><init>(Lcom/tw/pay/sdk/util/TwWebUtil;Landroid/content/Context;)V

    const-string v2, "exitListner"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/tw/pay/sdk/util/TwWebUtil$MyWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tw/pay/sdk/util/TwWebUtil$MyWebViewClient;-><init>(Lcom/tw/pay/sdk/util/TwWebUtil;Lcom/tw/pay/sdk/util/TwWebUtil$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 147
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/tw/pay/sdk/util/TwWebUtil$4;

    invoke-direct {v1, p0}, Lcom/tw/pay/sdk/util/TwWebUtil$4;-><init>(Lcom/tw/pay/sdk/util/TwWebUtil;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 178
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/tw/pay/sdk/util/TwWebUtil$5;

    invoke-direct {v1, p0}, Lcom/tw/pay/sdk/util/TwWebUtil$5;-><init>(Lcom/tw/pay/sdk/util/TwWebUtil;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 191
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doWebDialog(Ljava/lang/String;Ljava/lang/String;Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 1

    .line 61
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->mUrl:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 63
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 64
    iget-object p3, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->context:Landroid/content/Context;

    invoke-direct {p0, p3}, Lcom/tw/pay/sdk/util/TwWebUtil;->getDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p3

    iput-object p3, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->dialog:Landroid/app/Dialog;

    .line 65
    iget-object p3, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->context:Landroid/content/Context;

    const-string v0, "dialog_web"

    .line 66
    invoke-static {p3, v0}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->dialogView:Landroid/view/View;

    .line 67
    iget-object p3, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->context:Landroid/content/Context;

    const-string v0, "mWebView"

    invoke-static {p3, v0}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->mWebView:Landroid/view/View;

    .line 68
    invoke-direct {p0, p2}, Lcom/tw/pay/sdk/util/TwWebUtil;->selectShowView(Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->dialog:Landroid/app/Dialog;

    iget-object p2, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->dialogView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 71
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x12

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 73
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 74
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->dialog:Landroid/app/Dialog;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 75
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->dialog:Landroid/app/Dialog;

    new-instance p3, Lcom/tw/pay/sdk/util/TwWebUtil$1;

    invoke-direct {p3, p0}, Lcom/tw/pay/sdk/util/TwWebUtil$1;-><init>(Lcom/tw/pay/sdk/util/TwWebUtil;)V

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 96
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->dialog:Landroid/app/Dialog;

    new-instance p3, Lcom/tw/pay/sdk/util/TwWebUtil$2;

    invoke-direct {p3, p0}, Lcom/tw/pay/sdk/util/TwWebUtil$2;-><init>(Lcom/tw/pay/sdk/util/TwWebUtil;)V

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 108
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method
