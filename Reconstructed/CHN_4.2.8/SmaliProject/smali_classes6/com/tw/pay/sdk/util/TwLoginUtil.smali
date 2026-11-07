.class public Lcom/tw/pay/sdk/util/TwLoginUtil;
.super Ljava/lang/Object;
.source "TwLoginUtil.java"


# static fields
.field protected static final isSubmitSerStr:Ljava/lang/String; = "SubmitServiceString"

.field private static final isUpdatePwd:Ljava/lang/String; = "isPasswordUpdate"


# instance fields
.field private callback:Lcom/tw/pay/sdk/callback/TwCallback;

.field private channelName:Landroid/widget/TextView;

.field private clickListener:Landroid/view/View$OnClickListener;

.field clickableSpan:Landroid/text/style/ClickableSpan;

.field clickableSpan2:Landroid/text/style/ClickableSpan;

.field clickableSpan3:Landroid/text/style/ClickableSpan;

.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;

.field private dialogView:Landroid/view/View;

.field private isAgreed:Z

.field private ivRegisterSelectPoliy:Landroid/widget/ImageView;

.field private loginResultBean:Lcom/tw/pay/sdk/bean/LoginResultBean;

.field private loginTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

.field private loginView:Landroid/view/View;

.field private oneKeyTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

.field private pwd:Ljava/lang/String;

.field private pwdTxt:Lcom/tw/pay/sdk/widget/MyEditTextPwd;

.field private realPwd:Ljava/lang/String;

.field private showPwd:Ljava/lang/String;

.field private tvRegisterSelectPoliy:Landroid/widget/TextView;

.field private user:Ljava/lang/String;

.field private userTxt:Lcom/tw/pay/sdk/widget/MyEditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->isAgreed:Z

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->showPwd:Ljava/lang/String;

    .line 82
    iput-object v2, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->realPwd:Ljava/lang/String;

    .line 161
    new-instance v0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/TwLoginUtil$2;-><init>(Lcom/tw/pay/sdk/util/TwLoginUtil;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->clickListener:Landroid/view/View$OnClickListener;

    .line 357
    new-instance v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/TwLoginUtil$3;-><init>(Lcom/tw/pay/sdk/util/TwLoginUtil;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->loginTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 506
    new-instance v0, Lcom/tw/pay/sdk/util/TwLoginUtil$4;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/TwLoginUtil$4;-><init>(Lcom/tw/pay/sdk/util/TwLoginUtil;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->oneKeyTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 601
    new-instance v0, Lcom/tw/pay/sdk/util/TwLoginUtil$6;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/TwLoginUtil$6;-><init>(Lcom/tw/pay/sdk/util/TwLoginUtil;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->clickableSpan:Landroid/text/style/ClickableSpan;

    .line 615
    new-instance v0, Lcom/tw/pay/sdk/util/TwLoginUtil$7;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/TwLoginUtil$7;-><init>(Lcom/tw/pay/sdk/util/TwLoginUtil;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->clickableSpan2:Landroid/text/style/ClickableSpan;

    .line 630
    new-instance v0, Lcom/tw/pay/sdk/util/TwLoginUtil$8;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/TwLoginUtil$8;-><init>(Lcom/tw/pay/sdk/util/TwLoginUtil;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->clickableSpan3:Landroid/text/style/ClickableSpan;

    .line 93
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    return-void
.end method

.method private RecordTerminal(Landroid/content/Context;)V
    .locals 3

    .line 475
    new-instance v0, Lcom/tw/pay/sdk/tool/RecordTerminal;

    invoke-direct {v0}, Lcom/tw/pay/sdk/tool/RecordTerminal;-><init>()V

    .line 476
    invoke-static {p1}, Lcom/tw/pay/sdk/tool/Tools;->getLoginUserBean(Landroid/content/Context;)Lcom/tw/pay/sdk/bean/UserBean;

    move-result-object v1

    iget-object v1, v1, Lcom/tw/pay/sdk/bean/UserBean;->userId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tw/pay/sdk/tool/RecordTerminal;->setUserId(Ljava/lang/Long;)V

    .line 477
    invoke-virtual {v0, p1}, Lcom/tw/pay/sdk/tool/RecordTerminal;->setContext(Landroid/content/Context;)V

    .line 478
    invoke-virtual {v0}, Lcom/tw/pay/sdk/tool/RecordTerminal;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->loginResultBean:Lcom/tw/pay/sdk/bean/LoginResultBean;

    return-object p0
.end method

.method static synthetic access$002(Lcom/tw/pay/sdk/util/TwLoginUtil;Lcom/tw/pay/sdk/bean/LoginResultBean;)Lcom/tw/pay/sdk/bean/LoginResultBean;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->loginResultBean:Lcom/tw/pay/sdk/bean/LoginResultBean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/app/Dialog;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->realPwd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/tw/pay/sdk/util/TwLoginUtil;Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->RecordTerminal(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->user:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/tw/pay/sdk/util/TwLoginUtil;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/tw/pay/sdk/util/TwLoginUtil;->genForgetBindPhonedUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/tw/pay/sdk/util/TwLoginUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/callback/TwCallback;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tw/pay/sdk/util/TwLoginUtil;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->genForgetPasswordUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/tw/pay/sdk/util/TwLoginUtil;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->doOneKeyRegister()V

    return-void
.end method

.method static synthetic access$600(Lcom/tw/pay/sdk/util/TwLoginUtil;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->isAgreed:Z

    return p0
.end method

.method static synthetic access$602(Lcom/tw/pay/sdk/util/TwLoginUtil;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->isAgreed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/tw/pay/sdk/util/TwLoginUtil;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->login()V

    return-void
.end method

.method static synthetic access$800(Lcom/tw/pay/sdk/util/TwLoginUtil;Z)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->changeOption(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/tw/pay/sdk/util/TwLoginUtil;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->pwd:Ljava/lang/String;

    return-object p0
.end method

.method private changeOption(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->ivRegisterSelectPoliy:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    const-string v1, "hrg_account_policy_selected"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->ivRegisterSelectPoliy:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    const-string v1, "hrg_account_policy_normal"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private checkPwd(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/pay/sdk/tool/Tools;->getLoginUserBean(Landroid/content/Context;)Lcom/tw/pay/sdk/bean/UserBean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->showPwd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/tw/pay/sdk/tool/Tools;->getLoginUserBean(Landroid/content/Context;)Lcom/tw/pay/sdk/bean/UserBean;

    move-result-object p1

    iget-object p1, p1, Lcom/tw/pay/sdk/bean/UserBean;->userPwd:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method private doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/pay/sdk/tool/Tools;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    const-string p2, "no_interent"

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 333
    :cond_1
    :goto_0
    :try_start_0
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->user:Ljava/lang/String;

    .line 334
    iput-object p3, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->pwd:Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    const-string v2, "logining"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/DialogTool;->dialogShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 336
    new-instance v0, Lcom/talkweb/sdk/vo/Login;

    invoke-direct {v0}, Lcom/talkweb/sdk/vo/Login;-><init>()V

    .line 337
    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/vo/Login;->setPhone(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0, p2}, Lcom/talkweb/sdk/vo/Login;->setToken(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0, p3}, Lcom/talkweb/sdk/vo/Login;->setPassword(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0, p4}, Lcom/talkweb/sdk/vo/Login;->setIndentifyCode(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0}, Lcom/talkweb/sdk/vo/Login;->toJson()Ljava/lang/String;

    move-result-object p1

    .line 342
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "head"

    .line 343
    invoke-static {}, Lcom/tw/pay/sdk/TwPaySetting;->getHead()Lcom/talkweb/sdk/vo/Head;

    move-result-object p4

    invoke-virtual {p4}, Lcom/talkweb/sdk/vo/Head;->encode()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "login"

    .line 344
    invoke-static {p1}, Lcom/talkweb/sdk/util/Des;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "md5"

    .line 345
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/tw/pay/sdk/TwPaySetting;->appKey:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tw/pay/sdk/tool/DigestUtil;->encodeByMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    new-instance p1, Lcom/tw/pay/sdk/net/HttpAsyncTask;

    iget-object p3, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->loginTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-direct {p1, p3, p2}, Lcom/tw/pay/sdk/net/HttpAsyncTask;-><init>(Lcom/tw/pay/sdk/callback/TwCallback;Ljava/util/HashMap;)V

    const/4 p2, 0x1

    new-array p3, p2, [Ljava/lang/Integer;

    const/4 p4, 0x0

    .line 347
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, p4

    invoke-virtual {p1, p3}, Lcom/tw/pay/sdk/net/HttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 350
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private doOneKeyRegister()V
    .locals 5

    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    const-string v2, "registering"

    .line 485
    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 484
    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/DialogTool;->dialogShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 486
    new-instance v0, Lcom/talkweb/sdk/vo/RegisterInfo;

    invoke-direct {v0}, Lcom/talkweb/sdk/vo/RegisterInfo;-><init>()V

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->pwd:Ljava/lang/String;

    .line 488
    invoke-static {v1}, Lcom/tw/pay/sdk/tool/DigestUtil;->encodeByMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/sdk/vo/RegisterInfo;->setPassword(Ljava/lang/String;)V

    .line 489
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tw/pay/sdk/tool/Tools;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/sdk/vo/RegisterInfo;->setRegisterImei(Ljava/lang/String;)V

    .line 490
    invoke-static {}, Lcom/tw/pay/sdk/tool/Tools;->genarateUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/sdk/vo/RegisterInfo;->setRegisterIdfa(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v0}, Lcom/talkweb/sdk/vo/RegisterInfo;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tw/pay/sdk/TwPaySetting;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tw/pay/sdk/tool/DigestUtil;->encodeByMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 493
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "head"

    .line 494
    invoke-static {}, Lcom/tw/pay/sdk/TwPaySetting;->getHead()Lcom/talkweb/sdk/vo/Head;

    move-result-object v4

    invoke-virtual {v4}, Lcom/talkweb/sdk/vo/Head;->encode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "registerInfo"

    .line 495
    invoke-static {v0}, Lcom/talkweb/sdk/util/Des;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "md5"

    .line 496
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    new-instance v0, Lcom/tw/pay/sdk/net/HttpAsyncTask;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->oneKeyTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-direct {v0, v1, v2}, Lcom/tw/pay/sdk/net/HttpAsyncTask;-><init>(Lcom/tw/pay/sdk/callback/TwCallback;Ljava/util/HashMap;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 499
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tw/pay/sdk/net/HttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 502
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private genForgetBindPhonedUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 572
    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lcom/tw/pay/sdk/net/HttpUrl;->web_url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "/sdk-api/user/toBindPhone"

    .line 574
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "?userId="

    .line 575
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 576
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "&token="

    .line 577
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 578
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private genForgetPasswordUrl()Ljava/lang/String;
    .locals 4

    .line 564
    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lcom/tw/pay/sdk/net/HttpUrl;->web_url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v2, Lcom/tw/pay/sdk/TwPaySetting;->appId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tw/pay/sdk/TwPaySetting;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tw/pay/sdk/tool/DigestUtil;->encodeByMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/sdk-api/user/forgetPassword"

    .line 567
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "?appId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-wide v2, Lcom/tw/pay/sdk/TwPaySetting;->appId:J

    .line 568
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, "&md5="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 569
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 2

    .line 84
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil;->getRegisterSelectPoliy(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->isAgreed:Z

    .line 85
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "MyDialog"

    invoke-static {p1, v1}, Lcom/tw/pay/sdk/tool/Resource;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->dialog:Landroid/app/Dialog;

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public static getQuickRegistration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "getQuickRegistration"

    .line 582
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 583
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appId"

    .line 584
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "channelId"

    .line 585
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    new-instance p0, Lcom/tw/pay/sdk/util/TwLoginUtil$5;

    invoke-direct {p0}, Lcom/tw/pay/sdk/util/TwLoginUtil$5;-><init>()V

    const/4 p1, 0x7

    invoke-static {p1, v0, p0}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTaskUtil;->doRequest(ILjava/util/HashMap;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V

    return-void
.end method

.method private getToken()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/pay/sdk/tool/Tools;->getLoginUserBean(Landroid/content/Context;)Lcom/tw/pay/sdk/bean/UserBean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    .line 326
    invoke-static {v0}, Lcom/tw/pay/sdk/tool/Tools;->getLoginUserBean(Landroid/content/Context;)Lcom/tw/pay/sdk/bean/UserBean;

    move-result-object v0

    iget-object v0, v0, Lcom/tw/pay/sdk/bean/UserBean;->token:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getTwPayLoginUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/TwLoginUtil;
    .locals 1

    .line 80
    new-instance v0, Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/TwLoginUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getUpdataPhone()Ljava/lang/String;
    .locals 1

    const-string v0, "http://tgpay.talkyun.com.cn/tw-sdk/bind_phone.jsp"

    return-object v0
.end method

.method public static isValidPhoneNumber(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 308
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^1[3-9]\\d{9}$"

    .line 309
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private login()V
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->userTxt:Lcom/tw/pay/sdk/widget/MyEditText;

    invoke-virtual {v0}, Lcom/tw/pay/sdk/widget/MyEditText;->getText()Ljava/lang/String;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->pwdTxt:Lcom/tw/pay/sdk/widget/MyEditTextPwd;

    invoke-virtual {v1}, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 300
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    invoke-direct {p0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->checkPwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/tw/pay/sdk/util/TwLoginUtil;->doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 301
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    const-string v1, "login_msg_null"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private selectShowView()V
    .locals 7

    .line 218
    invoke-static {}, Lcom/tw/pay/sdk/TwPaySetting;->isIsQuickRegistration()Z

    move-result v0

    const/16 v1, 0x8

    const-string v2, "oneKeyRegBtn"

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->loginView:Landroid/view/View;

    iget-object v3, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->loginView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->loginView:Landroid/view/View;

    iget-object v3, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    const-string v4, "titleTxt"

    invoke-static {v3, v4}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->channelName:Landroid/widget/TextView;

    .line 224
    sget-wide v5, Lcom/tw/pay/sdk/TwPaySetting;->channelId:J

    long-to-int v0, v5

    const/16 v3, 0x88

    if-eq v0, v3, :cond_7

    const/16 v3, 0xd0

    if-eq v0, v3, :cond_6

    const/16 v3, 0xd7

    if-eq v0, v3, :cond_5

    const/16 v3, 0xfa

    if-eq v0, v3, :cond_4

    const/16 v3, 0x105

    if-eq v0, v3, :cond_3

    const/16 v3, 0x107

    if-eq v0, v3, :cond_2

    const/16 v3, 0x118

    if-eq v0, v3, :cond_1

    .line 248
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->channelName:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->channelName:Landroid/widget/TextView;

    const-string v3, "\u5b9d\u5f00\u5468\u8fb9\u5305"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->channelName:Landroid/widget/TextView;

    const-string v3, "\u609f\u996d"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->channelName:Landroid/widget/TextView;

    const-string v3, "\u597d\u6e38\u5feb\u7206"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 230
    :cond_4
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->channelName:Landroid/widget/TextView;

    const-string v3, "taptap"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 236
    :cond_5
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->channelName:Landroid/widget/TextView;

    const-string v3, "\u52aa\u6bd4\u4e9a"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 227
    :cond_6
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->channelName:Landroid/widget/TextView;

    const-string v3, "\u5b98\u7f51"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 239
    :cond_7
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->channelName:Landroid/widget/TextView;

    const-string v3, "2345"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :goto_0
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->dialogView:Landroid/view/View;

    iget-object v3, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    const-string v5, "closeImg"

    invoke-static {v3, v5}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 253
    iget-object v3, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->dialogView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 261
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->clickListener:Landroid/view/View$OnClickListener;

    .line 262
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    const-string v3, "loginBtn"

    invoke-static {v1, v3}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->clickListener:Landroid/view/View$OnClickListener;

    .line 265
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->clickListener:Landroid/view/View$OnClickListener;

    .line 268
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    const-string v2, "findPwdTxt"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->clickListener:Landroid/view/View$OnClickListener;

    .line 271
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setLoginedUserAndPwd()V
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    const-string v2, "userNameTxt"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tw/pay/sdk/widget/MyEditText;

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->userTxt:Lcom/tw/pay/sdk/widget/MyEditText;

    .line 279
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    const-string v2, "userPwdTxt"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tw/pay/sdk/widget/MyEditTextPwd;

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->pwdTxt:Lcom/tw/pay/sdk/widget/MyEditTextPwd;

    .line 281
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/pay/sdk/tool/Tools;->getLoginUserBean(Landroid/content/Context;)Lcom/tw/pay/sdk/bean/UserBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/pay/sdk/tool/Tools;->getLoginUserBean(Landroid/content/Context;)Lcom/tw/pay/sdk/bean/UserBean;

    move-result-object v0

    iget-object v0, v0, Lcom/tw/pay/sdk/bean/UserBean;->phone:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/pay/sdk/tool/Tools;->getLoginUserBean(Landroid/content/Context;)Lcom/tw/pay/sdk/bean/UserBean;

    move-result-object v0

    iget-object v0, v0, Lcom/tw/pay/sdk/bean/UserBean;->phone:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->userTxt:Lcom/tw/pay/sdk/widget/MyEditText;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tw/pay/sdk/tool/Tools;->getLoginUserBean(Landroid/content/Context;)Lcom/tw/pay/sdk/bean/UserBean;

    move-result-object v1

    iget-object v1, v1, Lcom/tw/pay/sdk/bean/UserBean;->phone:Ljava/lang/String;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/tw/pay/sdk/tool/Tools;->getLoginUserBean(Landroid/content/Context;)Lcom/tw/pay/sdk/bean/UserBean;

    move-result-object v3

    iget-object v3, v3, Lcom/tw/pay/sdk/bean/UserBean;->phone:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tw/pay/sdk/widget/MyEditText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->userTxt:Lcom/tw/pay/sdk/widget/MyEditText;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tw/pay/sdk/tool/Tools;->getLoginUserBean(Landroid/content/Context;)Lcom/tw/pay/sdk/bean/UserBean;

    move-result-object v1

    iget-object v1, v1, Lcom/tw/pay/sdk/bean/UserBean;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tw/pay/sdk/widget/MyEditText;->setText(Ljava/lang/String;)V

    .line 287
    :goto_0
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    const-string v1, "isPasswordUpdate"

    invoke-static {v1, v0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->pwdTxt:Lcom/tw/pay/sdk/widget/MyEditTextPwd;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->showPwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->setText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public doLoginDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 6

    .line 98
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 99
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->getDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->dialog:Landroid/app/Dialog;

    .line 103
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    const-string v2, "dialog_port"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    const-string v3, "dialog"

    invoke-static {v2, v3}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tw/pay/sdk/tool/Tools;->setSDKDialogScreen(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->dialogView:Landroid/view/View;

    .line 104
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    const-string v2, "loginView"

    .line 105
    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->loginView:Landroid/view/View;

    .line 106
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    const-string v2, "login_mobile_policy"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->tvRegisterSelectPoliy:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    const-string v2, "iv_login_selectpoliy"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->ivRegisterSelectPoliy:Landroid/widget/ImageView;

    .line 110
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    const-string v1, "hrg_signup_policy_and"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->clickableSpan:Landroid/text/style/ClickableSpan;

    const/4 v3, 0x5

    const/16 v4, 0xb

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 116
    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->clickableSpan2:Landroid/text/style/ClickableSpan;

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 118
    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->clickableSpan3:Landroid/text/style/ClickableSpan;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 120
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->tvRegisterSelectPoliy:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 122
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->tvRegisterSelectPoliy:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->tvRegisterSelectPoliy:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 125
    invoke-direct {p0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->setLoginedUserAndPwd()V

    .line 126
    invoke-direct {p0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->selectShowView()V

    .line 127
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->dialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->dialogView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 128
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->dialogView:Landroid/view/View;

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->context:Landroid/content/Context;

    const-string v3, "moblieRegBtn"

    invoke-static {v2, v3}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 130
    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->dialog:Landroid/app/Dialog;

    new-instance v2, Lcom/tw/pay/sdk/util/TwLoginUtil$1;

    invoke-direct {v2, p0, p1}, Lcom/tw/pay/sdk/util/TwLoginUtil$1;-><init>(Lcom/tw/pay/sdk/util/TwLoginUtil;Lcom/tw/pay/sdk/callback/TwCallback;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 150
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 151
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 152
    iget-boolean p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil;->isAgreed:Z

    invoke-direct {p0, p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->changeOption(Z)V

    return-void
.end method
