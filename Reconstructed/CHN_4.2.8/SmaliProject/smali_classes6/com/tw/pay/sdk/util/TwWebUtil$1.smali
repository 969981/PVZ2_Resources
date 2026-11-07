.class Lcom/tw/pay/sdk/util/TwWebUtil$1;
.super Ljava/lang/Object;
.source "TwWebUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/util/TwWebUtil;->doWebDialog(Ljava/lang/String;Ljava/lang/String;Lcom/tw/pay/sdk/callback/TwCallback;)V
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

    .line 75
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwWebUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string p1, "index.jsp"

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    .line 81
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwWebUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwWebUtil;

    .line 82
    invoke-static {v2}, Lcom/tw/pay/sdk/util/TwWebUtil;->access$000(Lcom/tw/pay/sdk/util/TwWebUtil;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwWebUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwWebUtil;

    .line 83
    invoke-static {v2}, Lcom/tw/pay/sdk/util/TwWebUtil;->access$000(Lcom/tw/pay/sdk/util/TwWebUtil;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwWebUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwWebUtil;->access$000(Lcom/tw/pay/sdk/util/TwWebUtil;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    return v1

    :cond_0
    if-ne p2, v0, :cond_2

    .line 86
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Lcom/tw/pay/sdk/util/TwWebUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwWebUtil;

    .line 87
    invoke-static {p2}, Lcom/tw/pay/sdk/util/TwWebUtil;->access$000(Lcom/tw/pay/sdk/util/TwWebUtil;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/tw/pay/sdk/util/TwWebUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwWebUtil;

    invoke-static {p2}, Lcom/tw/pay/sdk/util/TwWebUtil;->access$000(Lcom/tw/pay/sdk/util/TwWebUtil;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwWebUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwWebUtil;->access$100(Lcom/tw/pay/sdk/util/TwWebUtil;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
