.class public Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;
.super Ljava/lang/Object;
.source "TwMultiPayDialog.java"


# static fields
.field private static doPay:Z = false

.field private static doPayDelayTime:J = 0x3e8L

.field private static multiPayDialog:Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private context:Landroid/app/Activity;

.field private dialog:Landroid/app/Dialog;

.field private dialogView:Landroid/view/View;

.field private isOpened:Z

.field private orderNumber:Ljava/lang/String;

.field private payView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->isOpened:Z

    .line 124
    new-instance v0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$1;

    invoke-direct {v0, p0}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$1;-><init>(Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;)V

    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->clickListener:Landroid/view/View$OnClickListener;

    .line 66
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->context:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;)Landroid/app/Activity;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->context:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->orderNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->doPay:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 39
    sput-boolean p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->doPay:Z

    return p0
.end method

.method static synthetic access$300()J
    .locals 2

    .line 39
    sget-wide v0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->doPayDelayTime:J

    return-wide v0
.end method

.method private getDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 2

    .line 92
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "MyDialog"

    invoke-static {p1, v1}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static getMultiPayDialog(Landroid/app/Activity;)Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;
    .locals 1

    .line 85
    sget-object v0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->multiPayDialog:Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;

    invoke-direct {v0, p0}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->multiPayDialog:Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;

    .line 88
    :cond_0
    sget-object p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->multiPayDialog:Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;

    return-object p0
.end method

.method private selectShowView()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->payView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->dialogView:Landroid/view/View;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->context:Landroid/app/Activity;

    const-string v2, "closeImg"

    invoke-static {v1, v2}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->clickListener:Landroid/view/View$OnClickListener;

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->payView:Landroid/view/View;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->context:Landroid/app/Activity;

    const-string v2, "titleTxt"

    invoke-static {v1, v2}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 148
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->payView:Landroid/view/View;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->context:Landroid/app/Activity;

    const-string v3, "payPrompt"

    invoke-static {v2, v3}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 151
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->context:Landroid/app/Activity;

    const-string v2, "payCenter"

    invoke-static {v1, v2}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setAppName()V
    .locals 0

    return-void
.end method

.method private setGridView(Lcom/talkweb/twOfflineSdk/bean/Goods;)V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->payView:Landroid/view/View;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->context:Landroid/app/Activity;

    const-string v2, "payGridView"

    .line 170
    invoke-static {v1, v2}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/talkweb/twOfflineSdk/ui/TwGridView;

    .line 172
    new-instance v1, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->context:Landroid/app/Activity;

    .line 173
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPayWayList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 174
    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/ui/TwGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    new-instance v1, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2;-><init>(Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;Lcom/talkweb/twOfflineSdk/bean/Goods;)V

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/ui/TwGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private setPayAmount(Lcom/talkweb/twOfflineSdk/bean/Goods;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 58
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

.method public doPayDialog(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/bean/Goods;)V
    .locals 5

    const-string v0, "\u6253\u5f00\u652f\u4ed8\u754c\u9762"

    .line 97
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->isOpened:Z

    .line 99
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->orderNumber:Ljava/lang/String;

    .line 100
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->context:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 101
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->context:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->getDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->dialog:Landroid/app/Dialog;

    .line 102
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->context:Landroid/app/Activity;

    .line 103
    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->isLandScape(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->context:Landroid/app/Activity;

    const-string v3, "tw_offline_dialog_port"

    .line 104
    invoke-static {v2, v3}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->context:Landroid/app/Activity;

    const-string v4, "tw_offline_dialog"

    .line 105
    invoke-static {v3, v4}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 102
    invoke-static {v1, p1, v2, v3}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->setSDKDialogScreen(ZLandroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->dialogView:Landroid/view/View;

    .line 106
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->context:Landroid/app/Activity;

    const-string v2, "payView"

    invoke-static {v1, v2}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->payView:Landroid/view/View;

    .line 107
    invoke-direct {p0}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->selectShowView()V

    .line 108
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->dialogView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 110
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 111
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 112
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 113
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 114
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v3

    mul-int/2addr v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 115
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    mul-int/2addr v1, v0

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 116
    invoke-virtual {p1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 117
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 118
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->dialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 119
    invoke-direct {p0}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->setAppName()V

    .line 120
    invoke-direct {p0, p2}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->setPayAmount(Lcom/talkweb/twOfflineSdk/bean/Goods;)V

    .line 121
    invoke-direct {p0, p2}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->setGridView(Lcom/talkweb/twOfflineSdk/bean/Goods;)V

    return-void
.end method

.method public isOpened()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->isOpened:Z

    return v0
.end method

.method public setOpened(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->isOpened:Z

    return-void
.end method
