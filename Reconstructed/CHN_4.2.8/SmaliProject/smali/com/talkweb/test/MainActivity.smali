.class public Lcom/talkweb/test/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private btnPay:Landroid/widget/Button;

.field private declareBtn:Landroid/widget/Button;

.field private exitBtn:Landroid/widget/Button;

.field private getBtn:Landroid/widget/Button;

.field private initBtn:Landroid/widget/Button;

.field private key:Landroid/widget/EditText;

.field private login:Landroid/widget/Button;

.field private redeem:Landroid/widget/Button;

.field private setBtn:Landroid/widget/Button;

.field private value:Landroid/widget/EditText;

.field private verified:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/talkweb/test/MainActivity;)Landroid/widget/EditText;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/talkweb/test/MainActivity;->key:Landroid/widget/EditText;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    .line 55
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity;->setContentView(I)V

    .line 56
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->onCreate(Landroid/app/Activity;)V

    const p1, 0x7f080099

    .line 57
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity;->initBtn:Landroid/widget/Button;

    const p1, 0x7f0800c0

    .line 58
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity;->btnPay:Landroid/widget/Button;

    const p1, 0x7f0800a9

    .line 59
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity;->login:Landroid/widget/Button;

    const p1, 0x7f080085

    .line 60
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity;->declareBtn:Landroid/widget/Button;

    const p1, 0x7f08007f

    .line 61
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity;->exitBtn:Landroid/widget/Button;

    const p1, 0x7f0800e6

    .line 62
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity;->setBtn:Landroid/widget/Button;

    const p1, 0x7f080084

    .line 63
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity;->getBtn:Landroid/widget/Button;

    const p1, 0x7f0800e7

    .line 64
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity;->key:Landroid/widget/EditText;

    const p1, 0x7f0800e8

    .line 65
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity;->value:Landroid/widget/EditText;

    const p1, 0x7f0800cf

    .line 66
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity;->redeem:Landroid/widget/Button;

    const p1, 0x7f080141

    .line 67
    invoke-virtual {p0, p1}, Lcom/talkweb/test/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/talkweb/test/MainActivity;->verified:Landroid/widget/Button;

    .line 68
    new-instance v0, Lcom/talkweb/test/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity$1;-><init>(Lcom/talkweb/test/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object p1, p0, Lcom/talkweb/test/MainActivity;->initBtn:Landroid/widget/Button;

    new-instance v0, Lcom/talkweb/test/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity$2;-><init>(Lcom/talkweb/test/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object p1, p0, Lcom/talkweb/test/MainActivity;->login:Landroid/widget/Button;

    new-instance v0, Lcom/talkweb/test/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity$3;-><init>(Lcom/talkweb/test/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object p1, p0, Lcom/talkweb/test/MainActivity;->btnPay:Landroid/widget/Button;

    new-instance v0, Lcom/talkweb/test/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity$4;-><init>(Lcom/talkweb/test/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object p1, p0, Lcom/talkweb/test/MainActivity;->declareBtn:Landroid/widget/Button;

    new-instance v0, Lcom/talkweb/test/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity$5;-><init>(Lcom/talkweb/test/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object p1, p0, Lcom/talkweb/test/MainActivity;->exitBtn:Landroid/widget/Button;

    new-instance v0, Lcom/talkweb/test/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity$6;-><init>(Lcom/talkweb/test/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object p1, p0, Lcom/talkweb/test/MainActivity;->setBtn:Landroid/widget/Button;

    new-instance v0, Lcom/talkweb/test/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity$7;-><init>(Lcom/talkweb/test/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object p1, p0, Lcom/talkweb/test/MainActivity;->getBtn:Landroid/widget/Button;

    new-instance v0, Lcom/talkweb/test/MainActivity$8;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity$8;-><init>(Lcom/talkweb/test/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iget-object p1, p0, Lcom/talkweb/test/MainActivity;->redeem:Landroid/widget/Button;

    new-instance v0, Lcom/talkweb/test/MainActivity$9;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity$9;-><init>(Lcom/talkweb/test/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
