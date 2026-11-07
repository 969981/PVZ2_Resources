.class Lcom/tw/pay/sdk/util/TwWebUtil$5;
.super Landroid/webkit/WebViewClient;
.source "TwWebUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/util/TwWebUtil;->setWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/TwWebUtil;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwWebUtil;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwWebUtil;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "cardspaysuccess.jsp"

    .line 181
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwWebUtil;

    const-string p2, "01"

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/util/TwWebUtil;->access$402(Lcom/tw/pay/sdk/util/TwWebUtil;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwWebUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwWebUtil;->access$300(Lcom/tw/pay/sdk/util/TwWebUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/tw/pay/sdk/util/TwWebUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwWebUtil;

    invoke-static {p2}, Lcom/tw/pay/sdk/util/TwWebUtil;->access$400(Lcom/tw/pay/sdk/util/TwWebUtil;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
