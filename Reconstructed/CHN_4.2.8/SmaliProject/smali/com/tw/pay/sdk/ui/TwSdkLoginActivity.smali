.class public Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;
.super Landroid/app/Activity;
.source "TwSdkLoginActivity.java"


# static fields
.field public static loginCallback:Lcom/tw/pay/sdk/callback/TwLoginCallback;

.field public static popupCallback:Lcom/tw/pay/sdk/callback/TwCallback;


# instance fields
.field private accountView:Landroid/view/View;

.field private bean:Lcom/tw/pay/sdk/bean/LoginResultBean;

.field private callback:Lcom/tw/pay/sdk/callback/TwCallback;

.field private context:Landroid/content/Context;

.field private isfirstonekeylogin:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->isfirstonekeylogin:Z

    .line 72
    new-instance v0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$3;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$3;-><init>(Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->isfirstonekeylogin:Z

    return p0
.end method

.method static synthetic access$002(Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->isfirstonekeylogin:Z

    return p1
.end method

.method static synthetic access$100(Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;)Lcom/tw/pay/sdk/callback/TwCallback;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    return-object p0
.end method

.method static synthetic access$302(Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;Lcom/tw/pay/sdk/bean/LoginResultBean;)Lcom/tw/pay/sdk/bean/LoginResultBean;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->bean:Lcom/tw/pay/sdk/bean/LoginResultBean;

    return-object p1
.end method

.method private setLoginMsg()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->context:Landroid/content/Context;

    const-string v1, "accountView"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->accountView:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/pay/sdk/tool/Tools;->getLoginUserBean(Landroid/content/Context;)Lcom/tw/pay/sdk/bean/UserBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->context:Landroid/content/Context;

    const-string v1, "userIdTxt"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    iget-object v1, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tw/pay/sdk/tool/Tools;->getLoginUserBean(Landroid/content/Context;)Lcom/tw/pay/sdk/bean/UserBean;

    move-result-object v1

    iget-object v1, v1, Lcom/tw/pay/sdk/bean/UserBean;->userNick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->accountView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    iput-object p0, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->context:Landroid/content/Context;

    .line 33
    invoke-virtual {p0}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/4 p1, 0x1

    .line 35
    invoke-virtual {p0, p1}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->requestWindowFeature(I)Z

    .line 36
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->context:Landroid/content/Context;

    const-string v0, "activity_login"

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->context:Landroid/content/Context;

    .line 37
    invoke-static {v1, v0}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 36
    invoke-static {p0, p1, v0}, Lcom/tw/pay/sdk/tool/Tools;->setSDKScreen(Landroid/app/Activity;II)V

    .line 39
    invoke-direct {p0}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->setLoginMsg()V

    .line 40
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->context:Landroid/content/Context;

    const-string v0, "startGameBtn"

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$1;-><init>(Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;)V

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->accountView:Landroid/view/View;

    new-instance v0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$2;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity$2;-><init>(Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 89
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->bean:Lcom/tw/pay/sdk/bean/LoginResultBean;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/tw/pay/sdk/bean/LoginResultBean;

    invoke-direct {v0}, Lcom/tw/pay/sdk/bean/LoginResultBean;-><init>()V

    iput-object v0, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->bean:Lcom/tw/pay/sdk/bean/LoginResultBean;

    const-string v1, "02"

    .line 91
    iput-object v1, v0, Lcom/tw/pay/sdk/bean/LoginResultBean;->code:Ljava/lang/String;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->bean:Lcom/tw/pay/sdk/bean/LoginResultBean;

    iget-object v0, v0, Lcom/tw/pay/sdk/bean/LoginResultBean;->code:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    sget-object v0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->popupCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-interface {v0, v1}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    .line 96
    :cond_1
    sget-object v0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->loginCallback:Lcom/tw/pay/sdk/callback/TwLoginCallback;

    iget-object v1, p0, Lcom/tw/pay/sdk/ui/TwSdkLoginActivity;->bean:Lcom/tw/pay/sdk/bean/LoginResultBean;

    invoke-static {v1}, Lcom/tw/pay/sdk/tool/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tw/pay/sdk/callback/TwLoginCallback;->responseData(Ljava/lang/String;)V

    return-void
.end method
