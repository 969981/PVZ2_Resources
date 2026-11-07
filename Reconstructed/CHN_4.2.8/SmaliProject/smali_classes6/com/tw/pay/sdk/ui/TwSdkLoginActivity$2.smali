.class Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$2;
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

    .line 60
    iput-object p1, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$2;->this$0:Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 65
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$2;->this$0:Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;

    invoke-static {p1}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->access$100(Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->getTwPayLoginUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/TwLoginUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$2;->this$0:Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;

    invoke-static {v0}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->access$200(Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->doLoginDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V

    .line 66
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$2;->this$0:Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;

    invoke-static {p1}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->access$100(Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "startGameBtn"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
