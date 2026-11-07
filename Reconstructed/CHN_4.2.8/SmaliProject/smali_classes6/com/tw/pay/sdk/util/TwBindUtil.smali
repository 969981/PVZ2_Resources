.class public Lcom/tw/pay/sdk/util/TwBindUtil;
.super Ljava/lang/Object;
.source "TwBindUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tw/pay/sdk/util/TwBindUtil$MyTimerTask;
    }
.end annotation


# instance fields
.field private callback:Lcom/tw/pay/sdk/callback/TwCallback;

.field private clickListener:Landroid/view/View$OnClickListener;

.field clickableSpan:Landroid/text/style/ClickableSpan;

.field clickableSpan2:Landroid/text/style/ClickableSpan;

.field clickableSpan3:Landroid/text/style/ClickableSpan;

.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;

.field private dialogView:Landroid/view/View;

.field private getCodeBtn:Landroid/widget/Button;

.field private isAgreed:Z

.field private ivRegisterSelectPoliy:Landroid/widget/ImageView;

.field private loginResultBean:Lcom/tw/pay/sdk/bean/LoginResultBean;

.field private mTimerTask:Ljava/util/TimerTask;

.field private pwd:Ljava/lang/String;

.field private recLen:I

.field private regView:Landroid/view/View;

.field private timer:Ljava/util/Timer;

.field private tvRegisterSelectPoliy:Landroid/widget/TextView;

.field private twCallback:Lcom/tw/pay/sdk/callback/TwCallback;

.field private user:Ljava/lang/String;

.field private verifyCodeCallback:Lcom/tw/pay/sdk/callback/TwCallback;

.field private verifyCodeEdt:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->timer:Ljava/util/Timer;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->isAgreed:Z

    .line 186
    new-instance v0, Lcom/tw/pay/sdk/util/TwBindUtil$3;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/TwBindUtil$3;-><init>(Lcom/tw/pay/sdk/util/TwBindUtil;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->clickListener:Landroid/view/View$OnClickListener;

    .line 308
    new-instance v0, Lcom/tw/pay/sdk/util/TwBindUtil$5;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/TwBindUtil$5;-><init>(Lcom/tw/pay/sdk/util/TwBindUtil;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->twCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 415
    new-instance v0, Lcom/tw/pay/sdk/util/TwBindUtil$6;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/TwBindUtil$6;-><init>(Lcom/tw/pay/sdk/util/TwBindUtil;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->verifyCodeCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 466
    new-instance v0, Lcom/tw/pay/sdk/util/TwBindUtil$7;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/TwBindUtil$7;-><init>(Lcom/tw/pay/sdk/util/TwBindUtil;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->clickableSpan:Landroid/text/style/ClickableSpan;

    .line 480
    new-instance v0, Lcom/tw/pay/sdk/util/TwBindUtil$8;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/TwBindUtil$8;-><init>(Lcom/tw/pay/sdk/util/TwBindUtil;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->clickableSpan2:Landroid/text/style/ClickableSpan;

    .line 495
    new-instance v0, Lcom/tw/pay/sdk/util/TwBindUtil$9;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/TwBindUtil$9;-><init>(Lcom/tw/pay/sdk/util/TwBindUtil;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->clickableSpan3:Landroid/text/style/ClickableSpan;

    .line 90
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/pay/sdk/util/TwBindUtil;)Lcom/tw/pay/sdk/callback/TwCallback;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/widget/Button;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->getCodeBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/tw/pay/sdk/util/TwBindUtil;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->recLen:I

    return p0
.end method

.method static synthetic access$1102(Lcom/tw/pay/sdk/util/TwBindUtil;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->recLen:I

    return p1
.end method

.method static synthetic access$1110(Lcom/tw/pay/sdk/util/TwBindUtil;)I
    .locals 2

    .line 59
    iget v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->recLen:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->recLen:I

    return v0
.end method

.method static synthetic access$200(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/app/Dialog;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tw/pay/sdk/util/TwBindUtil;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->isAgreed:Z

    return p0
.end method

.method static synthetic access$302(Lcom/tw/pay/sdk/util/TwBindUtil;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->isAgreed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/tw/pay/sdk/util/TwBindUtil;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/tw/pay/sdk/util/TwBindUtil;->register()V

    return-void
.end method

.method static synthetic access$500(Lcom/tw/pay/sdk/util/TwBindUtil;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/tw/pay/sdk/util/TwBindUtil;->verifyCode()V

    return-void
.end method

.method static synthetic access$600(Lcom/tw/pay/sdk/util/TwBindUtil;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/tw/pay/sdk/util/TwBindUtil;->changeOption(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/tw/pay/sdk/util/TwBindUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->loginResultBean:Lcom/tw/pay/sdk/bean/LoginResultBean;

    return-object p0
.end method

.method static synthetic access$702(Lcom/tw/pay/sdk/util/TwBindUtil;Lcom/tw/pay/sdk/bean/LoginResultBean;)Lcom/tw/pay/sdk/bean/LoginResultBean;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->loginResultBean:Lcom/tw/pay/sdk/bean/LoginResultBean;

    return-object p1
.end method

.method static synthetic access$800(Lcom/tw/pay/sdk/util/TwBindUtil;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->pwd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/tw/pay/sdk/util/TwBindUtil;Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/tw/pay/sdk/util/TwBindUtil;->recordTerminal(Landroid/content/Context;)V

    return-void
.end method

.method private changeOption(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 226
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->ivRegisterSelectPoliy:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string v1, "hrg_account_policy_selected"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->ivRegisterSelectPoliy:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string v1, "hrg_account_policy_normal"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private doRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 248
    :cond_0
    invoke-static {p1}, Lcom/tw/pay/sdk/tool/Tools;->checkPhone(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string p2, "error_phone"

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 250
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    .line 251
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string p2, "pwdToShort"

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/pay/sdk/tool/Tools;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    :try_start_0
    new-instance v0, Lcom/talkweb/sdk/vo/RegisterInfo;

    invoke-direct {v0}, Lcom/talkweb/sdk/vo/RegisterInfo;-><init>()V

    .line 256
    invoke-static {p2}, Lcom/tw/pay/sdk/tool/DigestUtil;->encodeByMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/talkweb/sdk/vo/RegisterInfo;->setPassword(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0, p3}, Lcom/talkweb/sdk/vo/RegisterInfo;->setSmsVerifyCode(Ljava/lang/String;)V

    .line 258
    iget-object p2, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/tw/pay/sdk/tool/Tools;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/talkweb/sdk/vo/RegisterInfo;->setRegisterImei(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/vo/RegisterInfo;->setPhone(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0}, Lcom/talkweb/sdk/vo/RegisterInfo;->toJson()Ljava/lang/String;

    move-result-object p1

    .line 261
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "head"

    .line 262
    invoke-static {}, Lcom/tw/pay/sdk/TwPaySetting;->getHead()Lcom/talkweb/sdk/vo/Head;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/sdk/vo/Head;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "registerInfo"

    .line 263
    invoke-static {p1}, Lcom/talkweb/sdk/util/Des;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "md5"

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/tw/pay/sdk/TwPaySetting;->appKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-static {p1}, Lcom/tw/pay/sdk/tool/DigestUtil;->encodeByMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 264
    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance p1, Lcom/tw/pay/sdk/net/HttpAsyncTask;

    iget-object p3, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->twCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-direct {p1, p3, p2}, Lcom/tw/pay/sdk/net/HttpAsyncTask;-><init>(Lcom/tw/pay/sdk/callback/TwCallback;Ljava/util/HashMap;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Integer;

    const/4 p3, 0x0

    const/4 v0, 0x2

    .line 268
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p3

    invoke-virtual {p1, p2}, Lcom/tw/pay/sdk/net/HttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 271
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 274
    :cond_3
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string p2, "no_interent"

    .line 275
    invoke-static {p1, p2}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 274
    invoke-static {p1, p2}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 246
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string p2, "login_msg_null"

    .line 247
    invoke-static {p1, p2}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 246
    invoke-static {p1, p2}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected static doRegisterPhone(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    const-string v0, "userid"

    .line 281
    invoke-static {p1}, Lcom/tw/pay/sdk/tool/Tools;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    :try_start_0
    invoke-static {v0, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 285
    sget-wide v2, Lcom/tw/pay/sdk/TwPaySetting;->appId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    sget-wide v3, Lcom/tw/pay/sdk/TwPaySetting;->channelId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 286
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 287
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appid"

    .line 288
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "phone"

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "channel"

    .line 290
    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x14

    .line 292
    new-instance v1, Lcom/tw/pay/sdk/util/TwBindUtil$4;

    invoke-direct {v1, p0, p1}, Lcom/tw/pay/sdk/util/TwBindUtil$4;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0, v4, v1}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTaskUtil;->doRequest(ILjava/util/HashMap;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 301
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "no_interent"

    .line 305
    invoke-static {p1, p0}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 304
    invoke-static {p1, p0}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->isAgreed:Z

    .line 82
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "MyDialog"

    invoke-static {p1, v1}, Lcom/tw/pay/sdk/tool/Resource;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->dialog:Landroid/app/Dialog;

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private getVerifyCode(Ljava/lang/String;)V
    .locals 4

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/pay/sdk/tool/Tools;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    new-instance v0, Lcom/talkweb/sdk/vo/VerifySMS;

    invoke-direct {v0}, Lcom/talkweb/sdk/vo/VerifySMS;-><init>()V

    .line 394
    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/vo/VerifySMS;->setPhone(Ljava/lang/String;)V

    .line 395
    sget-object p1, Lcom/talkweb/sdk/vo/VerifySMSType;->register:Lcom/talkweb/sdk/vo/VerifySMSType;

    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/vo/VerifySMS;->setSmsType(Lcom/talkweb/sdk/vo/VerifySMSType;)V

    .line 396
    invoke-virtual {v0}, Lcom/talkweb/sdk/vo/VerifySMS;->toJson()Ljava/lang/String;

    move-result-object p1

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tw/pay/sdk/TwPaySetting;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tw/pay/sdk/tool/DigestUtil;->encodeByMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-static {p1}, Lcom/talkweb/sdk/util/Des;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 399
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "head"

    .line 400
    invoke-static {}, Lcom/tw/pay/sdk/TwPaySetting;->getHead()Lcom/talkweb/sdk/vo/Head;

    move-result-object v3

    invoke-virtual {v3}, Lcom/talkweb/sdk/vo/Head;->encode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "verifySMS"

    .line 401
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "md5"

    .line 402
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    new-instance p1, Lcom/tw/pay/sdk/net/HttpAsyncTask;

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->verifyCodeCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-direct {p1, v0, v1}, Lcom/tw/pay/sdk/net/HttpAsyncTask;-><init>(Lcom/tw/pay/sdk/callback/TwCallback;Ljava/util/HashMap;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 405
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/tw/pay/sdk/net/HttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 407
    :cond_0
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string v1, "no_interent"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 411
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private recordTerminal(Landroid/content/Context;)V
    .locals 3

    .line 361
    new-instance v0, Lcom/tw/pay/sdk/tool/RecordTerminal;

    invoke-direct {v0}, Lcom/tw/pay/sdk/tool/RecordTerminal;-><init>()V

    .line 362
    invoke-static {p1}, Lcom/tw/pay/sdk/tool/Tools;->getLoginUserBean(Landroid/content/Context;)Lcom/tw/pay/sdk/bean/UserBean;

    move-result-object v1

    iget-object v1, v1, Lcom/tw/pay/sdk/bean/UserBean;->userId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tw/pay/sdk/tool/RecordTerminal;->setUserId(Ljava/lang/Long;)V

    .line 363
    invoke-virtual {v0, p1}, Lcom/tw/pay/sdk/tool/RecordTerminal;->setContext(Landroid/content/Context;)V

    .line 364
    invoke-virtual {v0}, Lcom/tw/pay/sdk/tool/RecordTerminal;->start()V

    return-void
.end method

.method private register()V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->regView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string v2, "userEdt"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 235
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->regView:Landroid/view/View;

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string v3, "pwdEdt"

    invoke-static {v2, v3}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 237
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->user:Ljava/lang/String;

    .line 238
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->pwd:Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->verifyCodeEdt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->user:Ljava/lang/String;

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->pwd:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/tw/pay/sdk/util/TwBindUtil;->doRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private selectShowView()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->regView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->regView:Landroid/view/View;

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string v3, "backView"

    .line 150
    invoke-static {v2, v3}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 149
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->dialogView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string v2, "closeImg"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->clickListener:Landroid/view/View$OnClickListener;

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->dialogView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string v2, "regBtn"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->clickListener:Landroid/view/View$OnClickListener;

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->dialogView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string v2, "verifyCodeBtn"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->getCodeBtn:Landroid/widget/Button;

    .line 162
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->regView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string v2, "titleTxt"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 167
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string v2, "register"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->regView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string v2, "verifyCodeEdt"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->verifyCodeEdt:Landroid/widget/EditText;

    .line 171
    new-instance v1, Lcom/tw/pay/sdk/util/TwBindUtil$2;

    invoke-direct {v1, p0}, Lcom/tw/pay/sdk/util/TwBindUtil$2;-><init>(Lcom/tw/pay/sdk/util/TwBindUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private verifyCode()V
    .locals 7

    .line 369
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->regView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string v2, "userEdt"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 371
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-static {v0}, Lcom/tw/pay/sdk/tool/Tools;->checkPhone(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x3d

    .line 373
    iput v1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->recLen:I

    .line 374
    invoke-direct {p0, v0}, Lcom/tw/pay/sdk/util/TwBindUtil;->getVerifyCode(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 378
    :cond_0
    new-instance v2, Lcom/tw/pay/sdk/util/TwBindUtil$MyTimerTask;

    invoke-direct {v2, p0}, Lcom/tw/pay/sdk/util/TwBindUtil$MyTimerTask;-><init>(Lcom/tw/pay/sdk/util/TwBindUtil;)V

    iput-object v2, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->mTimerTask:Ljava/util/TimerTask;

    .line 379
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->timer:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 380
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->getCodeBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 381
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->getCodeBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string v2, "reg_btn_bg_hui"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string v1, "error_phone"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public doRegDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 5

    .line 94
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 95
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 96
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tw/pay/sdk/util/TwBindUtil;->getDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->dialog:Landroid/app/Dialog;

    .line 97
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string v1, "dialog_port"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string v2, "dialog"

    .line 98
    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 97
    invoke-static {p1, v0, v1}, Lcom/tw/pay/sdk/tool/Tools;->setSDKDialogScreen(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->dialogView:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string v1, "regView"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->regView:Landroid/view/View;

    .line 102
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->dialogView:Landroid/view/View;

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string v1, "register_mobile_policy"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->tvRegisterSelectPoliy:Landroid/widget/TextView;

    .line 104
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->dialogView:Landroid/view/View;

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string v1, "iv_register_selectpoliy"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->ivRegisterSelectPoliy:Landroid/widget/ImageView;

    .line 106
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->context:Landroid/content/Context;

    const-string v0, "hrg_signup_policy_and"

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 108
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->clickableSpan:Landroid/text/style/ClickableSpan;

    const/4 v2, 0x5

    const/16 v3, 0xb

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 112
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->clickableSpan2:Landroid/text/style/ClickableSpan;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 114
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->clickableSpan3:Landroid/text/style/ClickableSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 116
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->tvRegisterSelectPoliy:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 118
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->tvRegisterSelectPoliy:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->tvRegisterSelectPoliy:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 121
    invoke-direct {p0}, Lcom/tw/pay/sdk/util/TwBindUtil;->selectShowView()V

    .line 122
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->dialogView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 123
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 124
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->dialog:Landroid/app/Dialog;

    new-instance v0, Lcom/tw/pay/sdk/util/TwBindUtil$1;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/TwBindUtil$1;-><init>(Lcom/tw/pay/sdk/util/TwBindUtil;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 140
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 141
    iget-boolean p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil;->isAgreed:Z

    invoke-direct {p0, p1}, Lcom/tw/pay/sdk/util/TwBindUtil;->changeOption(Z)V

    return-void
.end method
