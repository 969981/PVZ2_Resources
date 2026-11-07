.class Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$1;
.super Landroid/webkit/WebViewClient;
.source "TwgameAgreementWebViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->setupWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$1;->this$0:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 108
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$1;->this$0:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->access$000(Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$1;->this$0:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->access$100(Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;)Landroid/webkit/WebView;

    move-result-object p1

    const-string p2, "<html><body><h3>\u52a0\u8f7d\u534f\u8bae\u5931\u8d25</h3><p>\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5</p></body></html>"

    const-string p3, "text/html"

    const-string p4, "UTF-8"

    invoke-virtual {p1, p2, p3, p4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$1;->this$0:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->access$000(Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 102
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
