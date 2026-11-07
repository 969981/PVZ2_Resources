.class Lcom/tw/pay/sdk/ui/WebActivity$1;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/ui/WebActivity;
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

    .line 66
    iput-object p1, p0, Lcom/tw/pay/sdk/ui/WebActivity$1;->this$0:Lcom/tw/pay/sdk/ui/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tw/pay/sdk/ui/WebActivity$1;->this$0:Lcom/tw/pay/sdk/ui/WebActivity;

    invoke-static {v1}, Lcom/tw/pay/sdk/ui/WebActivity;->access$000(Lcom/tw/pay/sdk/ui/WebActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "close"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/WebActivity$1;->this$0:Lcom/tw/pay/sdk/ui/WebActivity;

    invoke-virtual {p1}, Lcom/tw/pay/sdk/ui/WebActivity;->finish()V

    return-void

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/tw/pay/sdk/ui/WebActivity$1;->this$0:Lcom/tw/pay/sdk/ui/WebActivity;

    invoke-static {v0}, Lcom/tw/pay/sdk/ui/WebActivity;->access$000(Lcom/tw/pay/sdk/ui/WebActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "backView"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 76
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/WebActivity$1;->this$0:Lcom/tw/pay/sdk/ui/WebActivity;

    invoke-static {p1}, Lcom/tw/pay/sdk/ui/WebActivity;->access$100(Lcom/tw/pay/sdk/ui/WebActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tw/pay/sdk/ui/WebActivity$1;->this$0:Lcom/tw/pay/sdk/ui/WebActivity;

    invoke-static {p1}, Lcom/tw/pay/sdk/ui/WebActivity;->access$100(Lcom/tw/pay/sdk/ui/WebActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "index.jsp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/WebActivity$1;->this$0:Lcom/tw/pay/sdk/ui/WebActivity;

    invoke-static {p1}, Lcom/tw/pay/sdk/ui/WebActivity;->access$100(Lcom/tw/pay/sdk/ui/WebActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_1

    .line 78
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/WebActivity$1;->this$0:Lcom/tw/pay/sdk/ui/WebActivity;

    invoke-virtual {p1}, Lcom/tw/pay/sdk/ui/WebActivity;->finish()V

    :cond_3
    :goto_1
    return-void
.end method
