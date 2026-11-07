.class Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$2;
.super Landroid/webkit/WebChromeClient;
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

    .line 124
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 127
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 128
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->access$000(Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
