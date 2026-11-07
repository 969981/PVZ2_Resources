.class public Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;
.super Ljava/lang/Object;
.source "TwVerifyRewardDialog.java"


# static fields
.field private static serviceNoteDialog:Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;


# instance fields
.field private context:Landroid/app/Activity;

.field private dialog:Landroid/app/Dialog;

.field private dialogView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->context:Landroid/app/Activity;

    return-void
.end method

.method private getDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 2

    .line 57
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "MyDialog"

    invoke-static {p1, v1}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static getTwVerifyNoteDialog(Landroid/app/Activity;)Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;
    .locals 1

    .line 50
    sget-object v0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->serviceNoteDialog:Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;

    invoke-direct {v0, p0}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->serviceNoteDialog:Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;

    .line 53
    :cond_0
    sget-object p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->serviceNoteDialog:Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;

    return-object p0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 37
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog.dismiss:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public showVerifyDialog()V
    .locals 10

    const-string v0, "\u6253\u5f00\u5b9e\u540d\u5956\u52b1\u5217\u8868\u754c\u9762"

    .line 62
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->context:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->getDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->dialog:Landroid/app/Dialog;

    .line 65
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->context:Landroid/app/Activity;

    .line 66
    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->isLandScape(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->context:Landroid/app/Activity;

    const-string v3, "tw_offline_verify_reward_land"

    .line 67
    invoke-static {v2, v3}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v4, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->context:Landroid/app/Activity;

    .line 68
    invoke-static {v4, v3}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 65
    invoke-static {v1, v0, v2, v3}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->setSDKDialogScreen(ZLandroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->dialogView:Landroid/view/View;

    .line 70
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->context:Landroid/app/Activity;

    const-string v2, "verify_close"

    invoke-static {v1, v2}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 71
    new-instance v1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog$1;

    invoke-direct {v1, p0}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog$1;-><init>(Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->dialogView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 84
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 85
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 86
    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->context:Landroid/app/Activity;

    invoke-static {v3}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->isLandScape(Landroid/content/Context;)Z

    move-result v3

    const-wide v4, 0x3fe6666666666666L    # 0.7

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v8, v3

    mul-double/2addr v8, v4

    double-to-int v3, v8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 88
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-double v3, v1

    mul-double/2addr v3, v6

    double-to-int v1, v3

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v8, v3

    mul-double/2addr v8, v6

    double-to-int v3, v8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 91
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-double v6, v1

    mul-double/2addr v6, v4

    double-to-int v1, v6

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 93
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 94
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 95
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method
