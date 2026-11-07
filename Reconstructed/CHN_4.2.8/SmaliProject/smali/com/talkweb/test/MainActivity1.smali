.class public Lcom/talkweb/test/MainActivity1;
.super Landroid/app/Activity;
.source "MainActivity1.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;


# instance fields
.field private activate:Landroid/widget/Button;

.field private authNumber:Landroid/widget/Button;

.field private btnPay:Landroid/widget/Button;

.field private declareBtn:Landroid/widget/Button;

.field private exitBtn:Landroid/widget/Button;

.field private initBtn:Landroid/widget/Button;

.field private loadWebview:Landroid/widget/Button;

.field private login:Landroid/widget/Button;

.field private mActivity:Landroid/app/Activity;

.field private payCode:Landroid/widget/EditText;

.field private quckLogin:Landroid/widget/Button;

.field private setPhone1:Landroid/widget/Button;

.field private setPhone2:Landroid/widget/Button;

.field private setPhone3:Landroid/widget/Button;

.field private setPhone4:Landroid/widget/Button;

.field private setPwd1:Landroid/widget/Button;

.field private setPwd2:Landroid/widget/Button;

.field private setPwd3:Landroid/widget/Button;

.field private uploaduinfo:Landroid/widget/Button;

.field private userAgreementDialog:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;

.field private verity:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/talkweb/test/MainActivity1;)Landroid/widget/EditText;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/talkweb/test/MainActivity1;->payCode:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/talkweb/test/MainActivity1;)Landroid/app/Activity;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/talkweb/test/MainActivity1;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/talkweb/test/MainActivity1;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/talkweb/test/MainActivity1;->getPayCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPayCode()Ljava/lang/String;
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/talkweb/test/MainActivity1;->payCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 565
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "400109195"

    :cond_0
    return-object v0
.end method

.method private showUserAgreementDialog()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/talkweb/test/MainActivity1;->userAgreementDialog:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;

    invoke-direct {v0, p0}, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/talkweb/test/MainActivity1;->userAgreementDialog:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/talkweb/test/MainActivity1;->userAgreementDialog:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;

    invoke-virtual {v0}, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->doTwgameAgreementWebViewDialog()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 514
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 515
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001f

    .line 101
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity1;->setContentView(I)V

    const/4 p1, 0x0

    .line 103
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity1;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 104
    iput-object p0, p0, Lcom/talkweb/test/MainActivity1;->mActivity:Landroid/app/Activity;

    .line 105
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->onCreate(Landroid/app/Activity;)V

    const p1, 0x7f08010c

    .line 108
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity1;->initBtn:Landroid/widget/Button;

    const p1, 0x7f08015b

    .line 109
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity1;->btnPay:Landroid/widget/Button;

    const p1, 0x7f08012e

    .line 110
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity1;->login:Landroid/widget/Button;

    const p1, 0x7f0800e9

    .line 111
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity1;->declareBtn:Landroid/widget/Button;

    const p1, 0x7f0800dc

    .line 112
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity1;->exitBtn:Landroid/widget/Button;

    const p1, 0x7f08025c

    .line 113
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity1;->uploaduinfo:Landroid/widget/Button;

    const p1, 0x7f08026d

    .line 114
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity1;->verity:Landroid/widget/Button;

    const p1, 0x7f080161

    .line 115
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity1;->payCode:Landroid/widget/EditText;

    const p1, 0x7f080177

    .line 116
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity1;->quckLogin:Landroid/widget/Button;

    const p1, 0x7f08012b

    .line 117
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity1;->loadWebview:Landroid/widget/Button;

    const p1, 0x7f080044

    .line 118
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity1;->activate:Landroid/widget/Button;

    const p1, 0x7f080058

    .line 119
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity1;->authNumber:Landroid/widget/Button;

    .line 120
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1;->loadWebview:Landroid/widget/Button;

    new-instance v0, Lcom/talkweb/test/MainActivity1$1;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity1$1;-><init>(Lcom/talkweb/test/MainActivity1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1;->authNumber:Landroid/widget/Button;

    new-instance v0, Lcom/talkweb/test/MainActivity1$2;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity1$2;-><init>(Lcom/talkweb/test/MainActivity1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1;->activate:Landroid/widget/Button;

    new-instance v0, Lcom/talkweb/test/MainActivity1$3;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity1$3;-><init>(Lcom/talkweb/test/MainActivity1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1;->quckLogin:Landroid/widget/Button;

    new-instance v0, Lcom/talkweb/test/MainActivity1$4;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity1$4;-><init>(Lcom/talkweb/test/MainActivity1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1;->payCode:Landroid/widget/EditText;

    const-string v0, "400109195"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1;->verity:Landroid/widget/Button;

    new-instance v0, Lcom/talkweb/test/MainActivity1$5;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity1$5;-><init>(Lcom/talkweb/test/MainActivity1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1;->initBtn:Landroid/widget/Button;

    new-instance v0, Lcom/talkweb/test/MainActivity1$6;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity1$6;-><init>(Lcom/talkweb/test/MainActivity1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1;->uploaduinfo:Landroid/widget/Button;

    new-instance v0, Lcom/talkweb/test/MainActivity1$7;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity1$7;-><init>(Lcom/talkweb/test/MainActivity1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1;->login:Landroid/widget/Button;

    new-instance v0, Lcom/talkweb/test/MainActivity1$8;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity1$8;-><init>(Lcom/talkweb/test/MainActivity1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1;->btnPay:Landroid/widget/Button;

    new-instance v0, Lcom/talkweb/test/MainActivity1$9;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity1$9;-><init>(Lcom/talkweb/test/MainActivity1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1;->declareBtn:Landroid/widget/Button;

    new-instance v0, Lcom/talkweb/test/MainActivity1$10;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity1$10;-><init>(Lcom/talkweb/test/MainActivity1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1;->exitBtn:Landroid/widget/Button;

    new-instance v0, Lcom/talkweb/test/MainActivity1$11;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity1$11;-><init>(Lcom/talkweb/test/MainActivity1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08019d

    .line 416
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity1;->setPwd1:Landroid/widget/Button;

    .line 417
    new-instance v0, Lcom/talkweb/test/MainActivity1$12;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity1$12;-><init>(Lcom/talkweb/test/MainActivity1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08019e

    .line 428
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity1;->setPwd2:Landroid/widget/Button;

    .line 429
    new-instance v0, Lcom/talkweb/test/MainActivity1$13;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity1$13;-><init>(Lcom/talkweb/test/MainActivity1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08019f

    .line 441
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity1;->setPwd3:Landroid/widget/Button;

    .line 442
    new-instance v0, Lcom/talkweb/test/MainActivity1$14;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity1$14;-><init>(Lcom/talkweb/test/MainActivity1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080199

    .line 455
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity1;->setPhone1:Landroid/widget/Button;

    .line 456
    new-instance v0, Lcom/talkweb/test/MainActivity1$15;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity1$15;-><init>(Lcom/talkweb/test/MainActivity1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08019a

    .line 468
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity1;->setPhone2:Landroid/widget/Button;

    .line 469
    new-instance v0, Lcom/talkweb/test/MainActivity1$16;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity1$16;-><init>(Lcom/talkweb/test/MainActivity1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08019b

    .line 482
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity1;->setPhone3:Landroid/widget/Button;

    .line 483
    new-instance v0, Lcom/talkweb/test/MainActivity1$17;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity1$17;-><init>(Lcom/talkweb/test/MainActivity1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08019c

    .line 495
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity1;->setPhone4:Landroid/widget/Button;

    .line 496
    new-instance v0, Lcom/talkweb/test/MainActivity1$18;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity1$18;-><init>(Lcom/talkweb/test/MainActivity1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 546
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public queryOrder()V
    .locals 1

    .line 519
    new-instance v0, Lcom/talkweb/test/MainActivity1$19;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity1$19;-><init>(Lcom/talkweb/test/MainActivity1;)V

    invoke-static {p0, v0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->checkOrder(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method public showWeb(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 551
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 554
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 555
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 556
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    const-string v0, "\u672a\u5b89\u88c5\u6d4f\u89c8\u5668"

    .line 559
    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public verifyFinished(ZZ)V
    .locals 0

    return-void
.end method
