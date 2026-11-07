.class public Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickAuthDelegate;
.super Lcom/mobile/auth/gatewayauth/ui/AbstractPnsViewDelegate;
.source "TwgameOneClickAuthDelegate.java"


# instance fields
.field private final mManager:Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;


# direct methods
.method public constructor <init>(Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/ui/AbstractPnsViewDelegate;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickAuthDelegate;->mManager:Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onViewCreated$0$TwgameOneClickAuthDelegate(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 40
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "OneClickOtherLogin"

    .line 41
    invoke-static {p2, p1}, Lcom/tw/pay/sdk/tool/ClickUtil;->canClick(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickAuthDelegate;->mManager:Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;

    invoke-virtual {p1}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->onOtherLoginRequested()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 2

    .line 31
    invoke-virtual {p0}, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickAuthDelegate;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "twgame_custom_other_login"

    .line 34
    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 33
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 37
    new-instance v1, Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickAuthDelegate$kvAvKO8f4fPREhJkEwfaYqjqXAc;

    invoke-direct {v1, p0, v0}, Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickAuthDelegate$kvAvKO8f4fPREhJkEwfaYqjqXAc;-><init>(Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickAuthDelegate;Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
