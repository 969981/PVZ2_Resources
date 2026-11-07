.class public Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;
.super Ljava/lang/Object;
.source "TwPrivacyAgreementDilog.java"


# static fields
.field public static final ISPRIVACYAGREEMENT:Ljava/lang/String; = "isPrivacyAgreement"

.field private static mAgreementCallback:Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;

.field private static mTwPrivacyAgreementDilog:Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private context:Landroid/app/Activity;

.field private dialog:Landroid/app/Dialog;

.field private dialogView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog$1;

    invoke-direct {v0, p0}, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog$1;-><init>(Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;)V

    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->clickListener:Landroid/view/View$OnClickListener;

    .line 57
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->context:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;)Landroid/app/Activity;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->context:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100()Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;
    .locals 1

    .line 33
    sget-object v0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->mAgreementCallback:Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;)Landroid/app/Dialog;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private getDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 2

    .line 70
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "MyDialog"

    invoke-static {p1, v1}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static getPrivacyAgreementDialog(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;)Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;
    .locals 0

    .line 62
    sput-object p1, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->mAgreementCallback:Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;

    .line 63
    sget-object p1, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->mTwPrivacyAgreementDilog:Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;

    if-nez p1, :cond_0

    .line 64
    new-instance p1, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;

    invoke-direct {p1, p0}, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;-><init>(Landroid/app/Activity;)V

    sput-object p1, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->mTwPrivacyAgreementDilog:Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;

    .line 66
    :cond_0
    sget-object p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->mTwPrivacyAgreementDilog:Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;

    return-object p0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog.dismiss:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public showPrivacyAgreementDialog()V
    .locals 9

    const-string v0, "\u6253\u5f00\u670d\u9690\u79c1\u534f\u8bae\u754c\u9762"

    .line 80
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->context:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->getDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->dialog:Landroid/app/Dialog;

    .line 89
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->context:Landroid/app/Activity;

    .line 90
    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->isLandScape(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->context:Landroid/app/Activity;

    const-string v3, "tw_offline_privacyagreement_view_port"

    .line 91
    invoke-static {v2, v3}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v4, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->context:Landroid/app/Activity;

    const-string v5, "tw_offline_privacyagreement_view_land"

    .line 92
    invoke-static {v4, v5}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 89
    invoke-static {v1, v0, v2, v4}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->setSDKDialogScreen(ZLandroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->dialogView:Landroid/view/View;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource.getLayout(context, \"tw_offline_privacyagreement_view_port\"):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->context:Landroid/app/Activity;

    invoke-static {v1, v3}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",Resource.getLayout(context, \"tw_offline_privacyagreement_view_land\")\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->context:Landroid/app/Activity;

    .line 94
    invoke-static {v1, v5}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->dialogView:Landroid/view/View;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->context:Landroid/app/Activity;

    const-string v2, "bt_tongtyi"

    invoke-static {v1, v2}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->clickListener:Landroid/view/View$OnClickListener;

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->dialogView:Landroid/view/View;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->context:Landroid/app/Activity;

    const-string v2, "web_xieyi_content"

    invoke-static {v1, v2}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    const/high16 v2, 0x2000000

    .line 103
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    const-string v2, "file:android_asset/xieyi_content.html"

    .line 104
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->dialogView:Landroid/view/View;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->context:Landroid/app/Activity;

    const-string v3, "bt_butongtyi"

    invoke-static {v2, v3}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->clickListener:Landroid/view/View$OnClickListener;

    .line 106
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->dialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->dialogView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 110
    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 112
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5c4f\u5e55\u7684\u9ad8\u5ea6\u4e3a\uff1a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 115
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 116
    iget-object v5, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->context:Landroid/app/Activity;

    invoke-static {v5}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->isLandScape(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x4b0

    if-le v3, v5, :cond_0

    const/16 v3, 0x360

    .line 118
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v5, v3

    const-wide v7, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v5, v7

    double-to-int v3, v5

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 121
    :goto_0
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v5, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v2, v5

    double-to-int v2, v2

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v5, v3

    const-wide v7, 0x3fdd70a3d70a3d71L    # 0.46

    mul-double/2addr v5, v7

    double-to-int v3, v5

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 124
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v5

    double-to-int v2, v2

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 127
    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 128
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 129
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    const-string v0, "\u521b\u5efadailog\u6210\u529f!"

    .line 130
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method
