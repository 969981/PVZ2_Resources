.class public Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;
.super Ljava/lang/Object;
.source "TwVerifyNoteDialog.java"


# static fields
.field public static MD5Key:Ljava/lang/String; = "talkwebCert"

.field private static final MIN_CLICK_DELAY_TIME:J = 0x1388L

.field public static appId:Ljava/lang/String; = "78e2777b85784c869970b344ed4137c7"

.field public static bizId:Ljava/lang/String; = "1101999999"

.field public static isDialog:I = 0x0

.field public static isQuereDialog:I = 0x0

.field public static isTheadRun:I = 0x0

.field public static secretKey:Ljava/lang/String; = "a22ec3ae0c90c90071b34bb93dda9e4e"

.field private static serviceNoteDialog:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;


# instance fields
.field private athenticationBean:Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

.field private context:Landroid/app/Activity;

.field private dialog:Landroid/app/Dialog;

.field private dialogView:Landroid/view/View;

.field private et_name:Landroid/widget/EditText;

.field private et_sfz:Landroid/widget/EditText;

.field private lastClickTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 69
    iput-wide v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->lastClickTime:J

    .line 85
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->context:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Dialog;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->context:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/widget/EditText;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->et_sfz:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/widget/EditText;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->et_name:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->athenticationBean:Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    return-object p0
.end method

.method static synthetic access$402(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->athenticationBean:Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    return-object p1
.end method

.method private getDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 2

    .line 96
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "MyDialog"

    invoke-static {p1, v1}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static getTwVerifyNoteDialog(Landroid/app/Activity;)Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;
    .locals 1

    .line 89
    sget-object v0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->serviceNoteDialog:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-direct {v0, p0}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->serviceNoteDialog:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    .line 92
    :cond_0
    sget-object p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->serviceNoteDialog:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    return-object p0
.end method


# virtual methods
.method public antiAddiction()V
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->context:Landroid/app/Activity;

    new-instance v1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$7;

    invoke-direct {v1, p0}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$7;-><init>(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismissDialog()V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 77
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

.method public getNetworkState(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "connectivity"

    .line 553
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 556
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    const-string v0, "3G"

    if-eqz p1, :cond_2

    .line 557
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 558
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, "WIFI"

    goto :goto_0

    .line 560
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_2

    .line 561
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    .line 564
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "TD-SCDMA"

    .line 589
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "WCDMA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "CDMA2000"

    .line 590
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :pswitch_0
    const-string v0, "4G"

    goto :goto_0

    :pswitch_1
    const-string v0, "2G"

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string v0, ""

    :cond_3
    :goto_0
    :pswitch_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getSystemTime(Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;)V
    .locals 2

    .line 631
    new-instance v0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$8;

    invoke-direct {v0, p0, p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$8;-><init>(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;)V

    const/16 p1, 0x13

    const-string v1, "https://adh5.talkyun.com.cn/ad-aggregation-api/getDay"

    invoke-static {p1, v1, v0}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTaskUtil;->doRequest(ILjava/lang/String;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V

    return-void
.end method

.method public onButtonClick()Z
    .locals 6

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 103
    iget-wide v2, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 105
    iput-wide v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->lastClickTime:J

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public queryAuthentication(ZLcom/talkweb/twOfflineSdk/callback/CertificationCallback;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V
    .locals 5

    .line 401
    sget v0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->isQuereDialog:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 402
    sput v0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->isQuereDialog:I

    const-string v0, "\u67e5\u8be2\u662f\u5426\u5b9e\u540d\u8ba4\u8bc1!-----------"

    .line 404
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->context:Landroid/app/Activity;

    const-string v1, "userid"

    invoke-static {v1, v0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 406
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userId ----------is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x10

    .line 409
    new-instance v1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;-><init>(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Z)V

    invoke-static {v0, v2, v1}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTaskUtil;->doRequest(ILjava/util/HashMap;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V

    :cond_0
    return-void
.end method

.method public showVerifyDialog(ZLcom/talkweb/twOfflineSdk/callback/CertificationCallback;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V
    .locals 5

    const-string v0, "\u6253\u5f00\u5b9e\u540d\u8ba4\u8bc1\u754c\u9762 xxxx"

    .line 117
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDialog value is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->isDialog:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 121
    sget v0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->isDialog:I

    if-nez v0, :cond_3

    const-string v0, "\u5b9e\u540d dialog.show begin"

    .line 122
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 123
    sput v0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->isDialog:I

    .line 125
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->context:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->getDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->dialog:Landroid/app/Dialog;

    .line 127
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->context:Landroid/app/Activity;

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->isLandScape(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->context:Landroid/app/Activity;

    const-string v3, "tw_offline_verify_view_prot"

    .line 128
    invoke-static {v2, v3}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->context:Landroid/app/Activity;

    const-string v4, "tw_offline_verify_view_land"

    .line 129
    invoke-static {v3, v4}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 127
    invoke-static {v1, v0, v2, v3}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->setSDKDialogScreen(ZLandroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->dialogView:Landroid/view/View;

    .line 131
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->context:Landroid/app/Activity;

    const-string v2, "verify_close"

    invoke-static {v1, v2}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 132
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->dialogView:Landroid/view/View;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->context:Landroid/app/Activity;

    const-string v3, "bt_exit"

    invoke-static {v2, v3}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 134
    new-instance v2, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$1;

    invoke-direct {v2, p0}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$1;-><init>(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->dialogView:Landroid/view/View;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->context:Landroid/app/Activity;

    const-string v3, "bt_rewardverify"

    .line 146
    invoke-static {v2, v3}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const/4 v2, 0x4

    .line 149
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    :cond_1
    new-instance v2, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$2;

    invoke-direct {v2, p0, p2}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$2;-><init>(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->dialogView:Landroid/view/View;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->context:Landroid/app/Activity;

    const-string v3, "bt_verify"

    invoke-static {v2, v3}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;-><init>(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    new-instance p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$4;

    invoke-direct {p1, p0}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$4;-><init>(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->dialogView:Landroid/view/View;

    iget-object p2, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->context:Landroid/app/Activity;

    const-string p3, "et_name"

    invoke-static {p2, p3}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->et_name:Landroid/widget/EditText;

    .line 374
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->dialogView:Landroid/view/View;

    iget-object p2, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->context:Landroid/app/Activity;

    const-string p3, "et_sfz"

    invoke-static {p2, p3}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->et_sfz:Landroid/widget/EditText;

    .line 375
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->dialog:Landroid/app/Dialog;

    iget-object p2, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->dialogView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 376
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 377
    iget-object p2, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->context:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    .line 378
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    .line 379
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    .line 380
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->isLandScape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 381
    invoke-virtual {p2}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 382
    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    move-result p2

    int-to-double v0, p2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int p2, v0

    iput p2, p3, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    .line 384
    :cond_2
    invoke-virtual {p2}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 385
    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    move-result p2

    int-to-double v0, p2

    const-wide v2, 0x3fee666666666666L    # 0.95

    mul-double/2addr v0, v2

    double-to-int p2, v0

    iput p2, p3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 387
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 388
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 389
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->dialog:Landroid/app/Dialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    const-string p1, "\u5b9e\u540d dialog.show end"

    .line 390
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public uploadUsrinfo_NEW_TGA(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 8

    const-string v0, "userid"

    .line 510
    invoke-static {v0, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceid"

    .line 511
    invoke-static {v1, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "characterid"

    .line 512
    invoke-static {v2, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 513
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 514
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 518
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->getAppProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 520
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 521
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u4e0a\u4f20\u7528\u6237\u4fe1\u606f\u5230TGA\u7684\u53c2\u6570deviceid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "userid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "characterid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",dateString:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", packageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",verSionName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 525
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|10078|Android|"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "||"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil;->getAgeByCertificateNo(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {p0, p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->getNetworkState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 528
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uploadParams:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 529
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "key"

    const-string v1, "10078"

    .line 530
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    .line 531
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 534
    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$6;

    invoke-direct {p2, p0}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$6;-><init>(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)V

    const/16 v0, 0xf

    invoke-static {v0, p1, p2}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTaskUtil;->doRequest(ILjava/lang/String;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V

    return-void
.end method
