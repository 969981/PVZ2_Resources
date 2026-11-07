.class public Lcom/tw/pay/sdk/ui/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private context:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    iput-object p0, p0, Lcom/tw/pay/sdk/ui/MainActivity;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/pay/sdk/ui/MainActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/tw/pay/sdk/ui/MainActivity;->login()V

    return-void
.end method

.method static synthetic access$100(Lcom/tw/pay/sdk/ui/MainActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/tw/pay/sdk/ui/MainActivity;->paySDK()V

    return-void
.end method

.method static synthetic access$200(Lcom/tw/pay/sdk/ui/MainActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/tw/pay/sdk/ui/MainActivity;->logoutBtn()V

    return-void
.end method

.method static synthetic access$300(Lcom/tw/pay/sdk/ui/MainActivity;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tw/pay/sdk/ui/MainActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tw/pay/sdk/ui/MainActivity;)Landroid/content/Intent;
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/tw/pay/sdk/ui/MainActivity;->getPayIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private getPayIntent()Landroid/content/Intent;
    .locals 4

    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "orderId"

    .line 132
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "amount"

    const-string v2, "0.1"

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "requestData"

    const-string v2, "weqewq"

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "goodName"

    .line 136
    invoke-virtual {v0, v1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Description"

    const-string v2, "hao"

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 139
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v1
.end method

.method private initSDK()V
    .locals 8

    .line 54
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/MainActivity;->context:Landroid/content/Context;

    new-instance v7, Lcom/tw/pay/sdk/ui/MainActivity$1;

    invoke-direct {v7, p0}, Lcom/tw/pay/sdk/ui/MainActivity$1;-><init>(Lcom/tw/pay/sdk/ui/MainActivity;)V

    const-wide/32 v1, 0x98967f

    const-string v3, "cc502477-2e8b-4951-88a2-99872de8edb0"

    const-wide/16 v4, 0x2711

    const/4 v6, 0x0

    invoke-static/range {v0 .. v7}, Lcom/tw/pay/sdk/TwPay;->initSdk(Landroid/content/Context;JLjava/lang/String;JZLcom/tw/pay/sdk/callback/TwInitCallback;)V

    return-void
.end method

.method private login()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/MainActivity;->context:Landroid/content/Context;

    new-instance v1, Lcom/tw/pay/sdk/ui/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/tw/pay/sdk/ui/MainActivity$3;-><init>(Lcom/tw/pay/sdk/ui/MainActivity;)V

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/TwPay;->loginSdk(Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwLoginCallback;)V

    return-void
.end method

.method private loginSdk()V
    .locals 2

    .line 69
    sget v0, Lcom/talkweb/gamesdk/R$id;->loginBtn:I

    invoke-virtual {p0, v0}, Lcom/tw/pay/sdk/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 70
    new-instance v1, Lcom/tw/pay/sdk/ui/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/tw/pay/sdk/ui/MainActivity$2;-><init>(Lcom/tw/pay/sdk/ui/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private logoutBtn()V
    .locals 2

    .line 145
    sget v0, Lcom/talkweb/gamesdk/R$id;->login:I

    invoke-virtual {p0, v0}, Lcom/tw/pay/sdk/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x0

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    new-instance v1, Lcom/tw/pay/sdk/ui/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/tw/pay/sdk/ui/MainActivity$5;-><init>(Lcom/tw/pay/sdk/ui/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private paySDK()V
    .locals 2

    .line 104
    sget v0, Lcom/talkweb/gamesdk/R$id;->pay:I

    invoke-virtual {p0, v0}, Lcom/tw/pay/sdk/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    new-instance v1, Lcom/tw/pay/sdk/ui/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/tw/pay/sdk/ui/MainActivity$4;-><init>(Lcom/tw/pay/sdk/ui/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected dialog(Ljava/lang/String;)V
    .locals 2

    .line 158
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tw/pay/sdk/ui/MainActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 160
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/tw/pay/sdk/ui/MainActivity;->mDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x1

    .line 161
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 162
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/MainActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/tw/pay/sdk/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/4 p1, 0x1

    .line 35
    invoke-virtual {p0, p1}, Lcom/tw/pay/sdk/ui/MainActivity;->requestWindowFeature(I)Z

    .line 36
    sget p1, Lcom/talkweb/gamesdk/R$layout;->activity_main:I

    invoke-virtual {p0, p1}, Lcom/tw/pay/sdk/ui/MainActivity;->setContentView(I)V

    .line 37
    invoke-direct {p0}, Lcom/tw/pay/sdk/ui/MainActivity;->initSDK()V

    .line 38
    invoke-direct {p0}, Lcom/tw/pay/sdk/ui/MainActivity;->loginSdk()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    .line 169
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
