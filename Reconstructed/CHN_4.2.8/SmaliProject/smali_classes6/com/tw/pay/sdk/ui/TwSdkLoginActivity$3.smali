.class Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$3;
.super Ljava/lang/Object;
.source "TwSdkLoginActivity.java"

# interfaces
.implements Lcom/tw/pay/sdk/callback/TwCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;
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

    .line 72
    iput-object p1, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$3;->this$0:Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 77
    move-object v0, p1

    check-cast v0, Lcom/tw/pay/sdk/bean/LoginResultBean;

    iget-object v0, v0, Lcom/tw/pay/sdk/bean/LoginResultBean;->code:Ljava/lang/String;

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$3;->this$0:Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;

    invoke-static {p1}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->access$100(Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "startGameBtn"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$3;->this$0:Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;

    check-cast p1, Lcom/tw/pay/sdk/bean/LoginResultBean;

    invoke-static {v0, p1}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->access$302(Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;Lcom/tw/pay/sdk/bean/LoginResultBean;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    .line 81
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$3;->this$0:Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;

    invoke-virtual {p1}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->finish()V

    :goto_0
    return-void
.end method
