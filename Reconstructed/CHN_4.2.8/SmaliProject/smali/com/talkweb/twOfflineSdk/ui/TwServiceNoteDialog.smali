.class public Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;
.super Ljava/lang/Object;
.source "TwServiceNoteDialog.java"


# static fields
.field private static serviceNoteDialog:Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;


# instance fields
.field private cid:Ljava/lang/String;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private context:Landroid/app/Activity;

.field private dialog:Landroid/app/Dialog;

.field private dialogView:Landroid/view/View;

.field private isOpened:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->cid:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->isOpened:Z

    .line 100
    new-instance v0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog$1;

    invoke-direct {v0, p0}, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog$1;-><init>(Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;)V

    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->clickListener:Landroid/view/View$OnClickListener;

    .line 45
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->context:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;)Landroid/app/Activity;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->context:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$102(Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->isOpened:Z

    return p1
.end method

.method static synthetic access$200(Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->cid:Ljava/lang/String;

    return-object p0
.end method

.method private getDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 2

    .line 66
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "MyDialog"

    invoke-static {p1, v1}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static getTwServiceNoteDialog(Landroid/app/Activity;)Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;
    .locals 1

    .line 59
    sget-object v0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->serviceNoteDialog:Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;

    invoke-direct {v0, p0}, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->serviceNoteDialog:Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;

    .line 62
    :cond_0
    sget-object p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->serviceNoteDialog:Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;

    return-object p0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->dialog:Landroid/app/Dialog;

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

.method public isOpened()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->isOpened:Z

    return v0
.end method

.method public setOpened(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->isOpened:Z

    return-void
.end method

.method public showServiceDialog(Ljava/lang/String;)V
    .locals 6

    const-string v0, "\u6253\u5f00\u670d\u52a1\u534f\u8bae\u754c\u9762"

    .line 71
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->cid:Ljava/lang/String;

    .line 73
    iget-boolean p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->isOpened:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->isOpened:Z

    .line 77
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->context:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->context:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->getDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->dialog:Landroid/app/Dialog;

    .line 79
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->context:Landroid/app/Activity;

    .line 80
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->isLandScape(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->context:Landroid/app/Activity;

    const-string v2, "tw_offline_service_dialog"

    .line 81
    invoke-static {v1, v2}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->context:Landroid/app/Activity;

    .line 82
    invoke-static {v3, v2}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 79
    invoke-static {v0, p1, v1, v2}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->setSDKDialogScreen(ZLandroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->dialogView:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->context:Landroid/app/Activity;

    const-string v1, "agreeButton"

    invoke-static {v0, v1}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->clickListener:Landroid/view/View$OnClickListener;

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->dialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->dialogView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 88
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 91
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 92
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 93
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 94
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 95
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 96
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->dialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method
