.class Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$1;
.super Ljava/lang/Object;
.source "TwSdkLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$1;->this$0:Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 46
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$1;->this$0:Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;

    invoke-static {p1}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->access$000(Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$1;->this$0:Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;

    .line 47
    invoke-static {p1}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->access$100(Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tw/pay/sdk/tool/Tools;->getLoginUserBean(Landroid/content/Context;)Lcom/tw/pay/sdk/bean/UserBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 48
    new-instance p1, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    iget-object v0, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$1;->this$0:Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;

    invoke-static {v0}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->access$100(Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$1;->this$0:Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;

    .line 49
    invoke-static {v0}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->access$100(Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tw/pay/sdk/tool/Tools;->getLoginUserBean(Landroid/content/Context;)Lcom/tw/pay/sdk/bean/UserBean;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$1;->this$0:Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;

    invoke-static {v1}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->access$200(Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object v1

    .line 48
    invoke-virtual {p1, v0, v1}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->login(Lcom/tw/pay/sdk/bean/UserBean;Lcom/tw/pay/sdk/callback/TwCallback;)V

    .line 50
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$1;->this$0:Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->access$002(Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;Z)Z

    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$1;->this$0:Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;

    invoke-static {p1}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->access$100(Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->getTwPayLoginUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/TwLoginUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$1;->this$0:Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;

    .line 53
    invoke-static {v0}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->access$200(Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->doLoginDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V

    .line 54
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$1;->this$0:Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;

    invoke-static {p1}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->access$100(Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "startGameBtn"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
