.class public Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;
.super Ljava/lang/Object;
.source "RealNameHintDialog.java"


# instance fields
.field private callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

.field private isMust:Z

.field private mActivity:Landroid/app/Activity;

.field private twOfflineSDKImpl:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

.field private twverify:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;ZLcom/talkweb/twOfflineSdk/callback/CertificationCallback;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;->mActivity:Landroid/app/Activity;

    .line 29
    iput-object p4, p0, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;->callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    .line 30
    iput-boolean p3, p0, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;->isMust:Z

    .line 31
    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;->twverify:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    .line 32
    iput-object p5, p0, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;->twOfflineSDKImpl:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    return-void
.end method

.method static synthetic access$000(Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;->isMust:Z

    return p0
.end method

.method static synthetic access$100(Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;)Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;->callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;)Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;->twOfflineSDKImpl:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    return-object p0
.end method

.method static synthetic access$300(Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;)Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;->twverify:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    return-object p0
.end method


# virtual methods
.method public showHintDialog(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u8fdb\u5165\u4e86showHintDialog\u65b9\u6cd5"

    .line 37
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;->mActivity:Landroid/app/Activity;

    const-string v2, "tw_offline_verify_hint_land"

    invoke-static {v1, v2}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;->mActivity:Landroid/app/Activity;

    const-string v2, "hint_close"

    invoke-static {v1, v2}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 40
    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;->mActivity:Landroid/app/Activity;

    const-string v3, "hint_content"

    invoke-static {v2, v3}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 42
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u5b9e\u540d\u8ba4\u8bc1\u5931\u8d25"

    .line 44
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :goto_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 47
    new-instance v0, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog$1;-><init>(Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
