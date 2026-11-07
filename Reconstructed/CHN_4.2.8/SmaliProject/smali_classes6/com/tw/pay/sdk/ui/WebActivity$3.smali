.class Lcom/tw/pay/sdk/ui/WebActivity$3;
.super Landroid/webkit/WebViewClient;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/ui/WebActivity;->setWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/ui/WebActivity;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/ui/WebActivity;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/tw/pay/sdk/ui/WebActivity$3;->this$0:Lcom/tw/pay/sdk/ui/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "cardspaysuccess.jsp"

    .line 185
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/tw/pay/sdk/ui/WebActivity;->webType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/WebActivity$3;->this$0:Lcom/tw/pay/sdk/ui/WebActivity;

    const-string p2, "01"

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/ui/WebActivity;->access$302(Lcom/tw/pay/sdk/ui/WebActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    sget-object p1, Lcom/tw/pay/sdk/ui/WebActivity;->twCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    if-eqz p1, :cond_1

    .line 188
    sget-object p1, Lcom/tw/pay/sdk/ui/WebActivity;->twCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    iget-object p2, p0, Lcom/tw/pay/sdk/ui/WebActivity$3;->this$0:Lcom/tw/pay/sdk/ui/WebActivity;

    invoke-static {p2}, Lcom/tw/pay/sdk/ui/WebActivity;->access$300(Lcom/tw/pay/sdk/ui/WebActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    .line 189
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/WebActivity$3;->this$0:Lcom/tw/pay/sdk/ui/WebActivity;

    invoke-virtual {p1}, Lcom/tw/pay/sdk/ui/WebActivity;->finish()V

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
