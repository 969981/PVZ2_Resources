.class public Lcom/tw/pay/sdk/util/OneKeyLoginUtil;
.super Ljava/lang/Object;
.source "OneKeyLoginUtil.java"


# instance fields
.field private callback:Lcom/tw/pay/sdk/callback/TwCallback;

.field private context:Landroid/content/Context;

.field private loginResultBean:Lcom/tw/pay/sdk/bean/LoginResultBean;

.field private loginTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

.field private pwd:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;-><init>(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->loginTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 35
    iput-object p1, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->context:Landroid/content/Context;

    return-void
.end method

.method private RecordTerminal(Landroid/content/Context;)V
    .locals 3

    .line 146
    new-instance v0, Lcom/tw/pay/sdk/tool/RecordTerminal;

    invoke-direct {v0}, Lcom/tw/pay/sdk/tool/RecordTerminal;-><init>()V

    .line 147
    invoke-static {p1}, Lcom/tw/pay/sdk/tool/Tools;->getLoginUserBean(Landroid/content/Context;)Lcom/tw/pay/sdk/bean/UserBean;

    move-result-object v1

    iget-object v1, v1, Lcom/tw/pay/sdk/bean/UserBean;->userId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tw/pay/sdk/tool/RecordTerminal;->setUserId(Ljava/lang/Long;)V

    .line 148
    invoke-virtual {v0, p1}, Lcom/tw/pay/sdk/tool/RecordTerminal;->setContext(Landroid/content/Context;)V

    .line 149
    invoke-virtual {v0}, Lcom/tw/pay/sdk/tool/RecordTerminal;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->loginResultBean:Lcom/tw/pay/sdk/bean/LoginResultBean;

    return-object p0
.end method

.method static synthetic access$002(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;Lcom/tw/pay/sdk/bean/LoginResultBean;)Lcom/tw/pay/sdk/bean/LoginResultBean;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->loginResultBean:Lcom/tw/pay/sdk/bean/LoginResultBean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->RecordTerminal(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Lcom/tw/pay/sdk/callback/TwCallback;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->user:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->pwd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/pay/sdk/tool/Tools;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    :try_start_0
    iput-object p1, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->user:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->pwd:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/talkweb/sdk/vo/Login;

    invoke-direct {v0}, Lcom/talkweb/sdk/vo/Login;-><init>()V

    .line 52
    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/vo/Login;->setPhone(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, p2}, Lcom/talkweb/sdk/vo/Login;->setToken(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, p3}, Lcom/talkweb/sdk/vo/Login;->setPassword(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, p4}, Lcom/talkweb/sdk/vo/Login;->setIndentifyCode(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Lcom/talkweb/sdk/vo/Login;->toJson()Ljava/lang/String;

    move-result-object p1

    .line 57
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "head"

    .line 58
    invoke-static {}, Lcom/tw/pay/sdk/TwPaySetting;->getHead()Lcom/talkweb/sdk/vo/Head;

    move-result-object p4

    invoke-virtual {p4}, Lcom/talkweb/sdk/vo/Head;->encode()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "login"

    .line 59
    invoke-static {p1}, Lcom/talkweb/sdk/util/Des;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "md5"

    .line 60
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/tw/pay/sdk/TwPaySetting;->appKey:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-static {p1}, Lcom/tw/pay/sdk/tool/DigestUtil;->encodeByMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance p1, Lcom/tw/pay/sdk/net/HttpAsyncTask;

    iget-object p3, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->loginTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-direct {p1, p3, p2}, Lcom/tw/pay/sdk/net/HttpAsyncTask;-><init>(Lcom/tw/pay/sdk/callback/TwCallback;Ljava/util/HashMap;)V

    const/4 p2, 0x1

    new-array p3, p2, [Ljava/lang/Integer;

    const/4 p4, 0x0

    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, p4

    invoke-virtual {p1, p3}, Lcom/tw/pay/sdk/net/HttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->context:Landroid/content/Context;

    const-string p2, "no_interent"

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public login(Lcom/tw/pay/sdk/bean/UserBean;Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 2

    .line 40
    iput-object p2, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 41
    iget-object p2, p1, Lcom/tw/pay/sdk/bean/UserBean;->userId:Ljava/lang/String;

    iget-object v0, p1, Lcom/tw/pay/sdk/bean/UserBean;->token:Ljava/lang/String;

    iget-object p1, p1, Lcom/tw/pay/sdk/bean/UserBean;->userPwd:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, p1, v1}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
