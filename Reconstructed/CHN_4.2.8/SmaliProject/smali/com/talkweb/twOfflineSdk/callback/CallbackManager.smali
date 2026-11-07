.class public Lcom/talkweb/twOfflineSdk/callback/CallbackManager;
.super Ljava/lang/Object;
.source "CallbackManager.java"


# static fields
.field private static checkOrderCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback; = null

.field private static exitCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback; = null

.field private static initCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback; = null

.field private static loginCall:Z = false

.field private static loginCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback; = null

.field private static loginToken:Ljava/lang/String; = ""

.field private static payCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback; = null

.field private static queryCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback; = null

.field public static strUserId:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V
    .locals 0

    .line 46
    invoke-static/range {p0 .. p5}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->payCallBackImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V

    return-void
.end method

.method static synthetic access$100()Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;
    .locals 1

    .line 46
    sget-object v0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->payCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    return-object v0
.end method

.method static synthetic access$200()Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;
    .locals 1

    .line 46
    sget-object v0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->loginCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .line 46
    sput-boolean p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->loginCall:Z

    return p0
.end method

.method public static getCheckOrderCallBack()Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;
    .locals 1

    .line 95
    sget-object v0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->checkOrderCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    return-object v0
.end method

.method public static getExitCallBack()Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;
    .locals 1

    .line 127
    sget-object v0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->exitCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    return-object v0
.end method

.method public static getInitCallBack()Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;
    .locals 1

    .line 103
    sget-object v0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->initCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    return-object v0
.end method

.method public static getLoginCallBack()Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;
    .locals 1

    .line 111
    sget-object v0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->loginCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    return-object v0
.end method

.method public static getLoginToken()Ljava/lang/String;
    .locals 1

    .line 87
    sget-object v0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->loginToken:Ljava/lang/String;

    return-object v0
.end method

.method private static getLoginUserId(Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, ",\"nickName\":\"\",\"token\":\"\",\"userId\":\"\"}"

    const-string v1, "{\"code\":"

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loginCallBack getLoginUserId userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 428
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "appId"

    .line 430
    invoke-virtual {v2, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "channelId"

    .line 431
    iget-object v5, p0, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;->userId:Ljava/lang/String;

    invoke-virtual {v2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "channelName"

    .line 432
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 434
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6570\u636e\u4e0a\u4f20\u5931\u8d25:"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 435
    sput-boolean v4, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->loginCall:Z

    .line 436
    sget-object p1, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->loginCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;->code:I

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v3, p2}, Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;->onResponse(ILjava/lang/String;)V

    .line 440
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/Des;->encryption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 441
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLoginUserId mj:"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 442
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLoginUserId encrypt:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    const/16 p2, 0x15

    .line 443
    new-instance v2, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$4;

    invoke-direct {v2, p0}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$4;-><init>(Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;)V

    invoke-static {p2, p1, v2}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTaskUtil;->doRequest(ILjava/lang/String;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 463
    :catch_1
    sput-boolean v4, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->loginCall:Z

    .line 464
    sget-object p1, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->loginCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;->code:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v3, p0}, Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;->onResponse(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static getPayCallBack()Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;
    .locals 1

    .line 119
    sget-object v0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->payCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    return-object v0
.end method

.method public static getQueryCallBack()Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;
    .locals 1

    .line 150
    sget-object v0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->queryCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    return-object v0
.end method

.method public static onCheckOrderCallBack(ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;",
            ">;)V"
        }
    .end annotation

    .line 514
    sget-object v0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->checkOrderCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    if-eqz v0, :cond_0

    .line 515
    new-instance v0, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResultBean;

    invoke-direct {v0}, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResultBean;-><init>()V

    .line 516
    iput p0, v0, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResultBean;->code:I

    .line 517
    iput-object p1, v0, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResultBean;->checkOrderMap:Ljava/util/Map;

    .line 518
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 519
    sget-object p1, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->checkOrderCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    const/4 v1, 0x6

    invoke-interface {p1, v1, p0}, Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;->onResponse(ILjava/lang/String;)V

    .line 520
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkOrderCallBack finished:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResultBean;->code:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " msg\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "checkOrderCallBack is null"

    .line 522
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static onExitCallBack(I)V
    .locals 4

    .line 474
    sget-object v0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->exitCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    if-eqz v0, :cond_0

    .line 475
    new-instance v0, Lcom/talkweb/twOfflineSdk/bean/ExitResultBean;

    invoke-direct {v0}, Lcom/talkweb/twOfflineSdk/bean/ExitResultBean;-><init>()V

    .line 476
    iput p0, v0, Lcom/talkweb/twOfflineSdk/bean/ExitResultBean;->code:I

    const/4 v1, 0x4

    .line 478
    :try_start_0
    sget-object v2, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->exitCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    .line 479
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-interface {v2, v1, v0}, Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;->onResponse(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 481
    :catch_0
    sget-object v0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->exitCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"code\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;->onResponse(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "exitCallBack is null"

    .line 486
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static onInitCallBack(ILjava/lang/String;)V
    .locals 6

    const-string v0, "}"

    const-string v1, "\",\"code\":"

    const-string v2, "{\"channelId\":\""

    .line 333
    sget-object v3, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->initCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    if-eqz v3, :cond_0

    .line 334
    new-instance v3, Lcom/talkweb/twOfflineSdk/bean/InitResultBean;

    invoke-direct {v3}, Lcom/talkweb/twOfflineSdk/bean/InitResultBean;-><init>()V

    .line 335
    iput p0, v3, Lcom/talkweb/twOfflineSdk/bean/InitResultBean;->code:I

    .line 336
    iput-object p1, v3, Lcom/talkweb/twOfflineSdk/bean/InitResultBean;->channelId:Ljava/lang/String;

    const/4 v3, 0x1

    .line 338
    :try_start_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Tools.ToJson(initResultBean)"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 339
    sget-object v4, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->initCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;->onResponse(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 344
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 345
    sget-object v4, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->initCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;->onResponse(ILjava/lang/String;)V

    .line 349
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initCallBack finished code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " channelId\uff1a"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p0, "initCallBack is null"

    .line 351
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static onLoginCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 368
    sget-boolean v0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->loginCall:Z

    if-eqz v0, :cond_0

    const-string p0, "L\u5df2\u7ecf\u56de\u8c03\u8fc7\u4e86"

    .line 369
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_5

    .line 373
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 375
    sput-boolean v0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->loginCall:Z

    .line 377
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "twSetting.xml"

    const-string v2, "testUser"

    .line 376
    invoke-static {v0, v1, v2}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "testUserStr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " loginCall\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->loginCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    const-string v1, "true"

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 382
    sget-object v1, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->loginCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    if-eqz v1, :cond_4

    .line 383
    new-instance v1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;

    invoke-direct {v1}, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;-><init>()V

    .line 384
    iput p0, v1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;->code:I

    .line 385
    iput-object p1, v1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;->userId:Ljava/lang/String;

    .line 387
    iput-object p2, v1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;->nickName:Ljava/lang/String;

    .line 388
    iput-object p3, v1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;->token:Ljava/lang/String;

    .line 389
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getApplicationId()Ljava/lang/String;

    move-result-object p0

    .line 391
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getChannelsId()Ljava/lang/String;

    move-result-object p2

    const-string v2, "1000010"

    .line 393
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;->code:I

    const/16 v3, 0xbb8

    if-ne v2, v3, :cond_2

    .line 394
    invoke-static {v1, p0, p2}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->getLoginUserId(Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    if-eqz v0, :cond_3

    const-string p0, "12345678"

    .line 397
    iput-object p0, v1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;->userId:Ljava/lang/String;

    goto :goto_1

    .line 399
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "X"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;->userId:Ljava/lang/String;

    .line 400
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Userid code:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;->userId:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 401
    sput-object p1, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->strUserId:Ljava/lang/String;

    const/4 p0, 0x0

    const/4 p2, 0x2

    .line 403
    :try_start_0
    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loginCallBack loginResultStr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 405
    sget-object v1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->saveChannelUserId(Landroid/app/Activity;Ljava/lang/String;)V

    .line 406
    sget-object p1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    const-string v1, "12"

    invoke-static {p1, v1, p0}, Lcom/talkweb/twutil/TgaPointUtil;->BuryingPoin(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/network/ApiCallback;)V

    .line 407
    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->setLoginToken(Ljava/lang/String;)V

    .line 408
    sget-object p1, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->loginCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    invoke-interface {p1, p2, v0}, Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;->onResponse(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 410
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 411
    sget-object p1, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->loginCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    const-string p3, "{\"code\":3001,\"nickName\":\"\",\"token\":\"\",\"userId\":\"\"}"

    invoke-interface {p1, p2, p3}, Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;->onResponse(ILjava/lang/String;)V

    .line 414
    :goto_0
    sput-object p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->loginCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    const/4 p0, 0x0

    .line 415
    sput-boolean p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->loginCall:Z

    return-void

    :cond_4
    const-string p0, "loginCallBack is null"

    .line 420
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    const/4 v0, 0x0

    .line 171
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->setPaying(Z)V

    .line 176
    :try_start_0
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/SDKConfig;->getTwOfflineSDKInstance(Landroid/content/Context;)Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u521d\u59cb\u5316\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    const/16 v0, 0xfa1

    const-string v1, ""

    .line 179
    invoke-static {v0, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onInitCallBack(ILjava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    const/16 v0, 0x3e8

    move v4, p0

    if-ne v4, v0, :cond_0

    .line 183
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->getCurPayGood()Lcom/talkweb/twOfflineSdk/bean/Goods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getGoodsId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->getCurPayGood()Lcom/talkweb/twOfflineSdk/bean/Goods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPrice()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getChannelUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getDeviceId()Ljava/lang/String;

    move-result-object v14

    const-string v8, "21"

    move-object/from16 v9, p2

    invoke-static/range {v7 .. v14}, Lcom/talkweb/twutil/TgaPointUtil;->payFlow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;

    move-object v1, v0

    move-object/from16 v2, p2

    move-object v3, v6

    move v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;-><init>(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->queryOrder(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V

    goto :goto_1

    :cond_0
    move-object/from16 v3, p2

    move v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 203
    invoke-static/range {v1 .. v6}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->payCallBackImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V

    :goto_1
    return-void
.end method

.method public static onQueryCallBack(I)V
    .locals 3

    .line 496
    sget-object v0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->queryCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    if-eqz v0, :cond_0

    .line 497
    new-instance v0, Lcom/talkweb/twOfflineSdk/bean/QueryOrderResultBean;

    invoke-direct {v0}, Lcom/talkweb/twOfflineSdk/bean/QueryOrderResultBean;-><init>()V

    .line 498
    iput p0, v0, Lcom/talkweb/twOfflineSdk/bean/QueryOrderResultBean;->code:I

    .line 499
    sget-object p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->queryCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    const/4 v1, 0x6

    .line 500
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 499
    invoke-interface {p0, v1, v2}, Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;->onResponse(ILjava/lang/String;)V

    .line 501
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallBack finished:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/talkweb/twOfflineSdk/bean/QueryOrderResultBean;->code:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "queryCallBack is null"

    .line 503
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static payCallBackImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V
    .locals 16

    move/from16 v1, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 215
    sget-object v0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->payCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    if-eqz v0, :cond_8

    if-eqz v10, :cond_8

    if-nez p1, :cond_0

    const-string v0, "unknow"

    move-object v12, v0

    goto :goto_0

    :cond_0
    move-object/from16 v12, p1

    .line 220
    :goto_0
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v0, 0x270f

    const-string v13, "0"

    if-eqz p5, :cond_4

    .line 222
    invoke-virtual/range {p5 .. p5}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->getCurPayGood()Lcom/talkweb/twOfflineSdk/bean/Goods;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 223
    invoke-virtual/range {p5 .. p5}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->getCurPayWay()Lcom/talkweb/twOfflineSdk/bean/PayWay;

    move-result-object v2

    if-eqz v2, :cond_4

    if-nez p4, :cond_1

    move-object v14, v13

    goto :goto_1

    :cond_1
    move-object/from16 v14, p4

    .line 227
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    if-ne v1, v0, :cond_2

    .line 230
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->getCurPayGood()Lcom/talkweb/twOfflineSdk/bean/Goods;

    move-result-object v3

    invoke-virtual {v3}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getGoodsId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->getCurPayGood()Lcom/talkweb/twOfflineSdk/bean/Goods;

    move-result-object v3

    invoke-virtual {v3}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPrice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p5 .. p5}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->getCurPayGood()Lcom/talkweb/twOfflineSdk/bean/Goods;

    move-result-object v3

    invoke-virtual {v3}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getGoodsId()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getChannelUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    const-string v3, "2"

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v9}, Lcom/talkweb/twutil/TgaPointUtil;->payFlow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "0000"

    move-object v3, v2

    goto :goto_2

    :cond_2
    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_3

    .line 232
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->getCurPayGood()Lcom/talkweb/twOfflineSdk/bean/Goods;

    move-result-object v3

    invoke-virtual {v3}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getGoodsId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->getCurPayGood()Lcom/talkweb/twOfflineSdk/bean/Goods;

    move-result-object v3

    invoke-virtual {v3}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPrice()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getChannelUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    const-string v3, "24"

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v9}, Lcom/talkweb/twutil/TgaPointUtil;->payFlow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v3, v15

    .line 234
    :goto_2
    new-instance v2, Lcom/talkweb/twOfflineSdk/record/RecordManager;

    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/talkweb/twOfflineSdk/record/RecordManager;-><init>(Landroid/content/Context;)V

    .line 236
    invoke-virtual/range {p5 .. p5}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->getCurPayWay()Lcom/talkweb/twOfflineSdk/bean/PayWay;

    move-result-object v4

    .line 237
    invoke-virtual/range {p5 .. p5}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->getCurPayGood()Lcom/talkweb/twOfflineSdk/bean/Goods;

    move-result-object v5

    move-object/from16 v6, p2

    move-object v7, v14

    .line 235
    invoke-virtual/range {v2 .. v7}, Lcom/talkweb/twOfflineSdk/record/RecordManager;->addPayRecord(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object/from16 v14, p4

    .line 242
    :goto_3
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v2

    .line 241
    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil;->getVerifyNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "userid"

    .line 243
    invoke-static {v4, v3}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 250
    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/IDCardUtil;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v3}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eq v14, v13, :cond_5

    if-ne v1, v0, :cond_5

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://adapi.talkyun.com.cn/ad-aggregation-api/pvz/addpay"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?identityCard="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&money="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd

    .line 254
    new-instance v3, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$2;

    invoke-direct {v3}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$2;-><init>()V

    invoke-static {v2, v0, v3}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTaskUtil;->doRequest(ILjava/lang/String;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V

    .line 277
    :cond_5
    :try_start_0
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 276
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->getMultiPayDialog(Landroid/app/Activity;)Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->dismissDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5173\u95ed\u652f\u4ed8\u754c\u9762\u5f02\u5e38:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 284
    :goto_4
    new-instance v0, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;

    invoke-direct {v0}, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;-><init>()V

    .line 285
    iput v1, v0, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;->code:I

    .line 286
    iput-object v12, v0, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;->msg:Ljava/lang/String;

    .line 288
    iput-object v10, v0, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;->orderId:Ljava/lang/String;

    .line 289
    iput-object v11, v0, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;->tradeId:Ljava/lang/String;

    .line 290
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 291
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getChannelsId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;->channelId:Ljava/lang/String;

    .line 294
    :cond_6
    iget-object v2, v0, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;->payType:Ljava/lang/String;

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    .line 301
    iput-boolean v2, v0, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;->isOnlinePay:Z

    .line 304
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "payCallBack code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " orderNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " tradeNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " payType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;->payType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$3;

    invoke-direct {v3, v0, v1, v10}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$3;-><init>(Lcom/talkweb/twOfflineSdk/bean/PayResultBean;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 320
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->wait(Landroid/app/Activity;)V

    goto :goto_5

    :cond_8
    const-string v0, "payCallBack or orderNumber is null"

    .line 322
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method public static queryOrder(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V
    .locals 2

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "d"

    .line 208
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x1b

    .line 209
    invoke-static {p0, v0, p1}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTaskUtil;->doRequest(ILjava/util/HashMap;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V

    return-void
.end method

.method public static setCheckOrderCallBack(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    .line 99
    sput-object p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->checkOrderCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    return-void
.end method

.method public static setExitCallBack(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    .line 131
    sput-object p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->exitCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    return-void
.end method

.method public static setInitCallBack(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    .line 107
    sput-object p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->initCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    return-void
.end method

.method public static setLoginCallBack(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    .line 115
    sput-object p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->loginCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    return-void
.end method

.method public static setLoginToken(Ljava/lang/String;)V
    .locals 0

    .line 91
    sput-object p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->loginToken:Ljava/lang/String;

    return-void
.end method

.method public static setPayCallBack(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    .line 123
    sput-object p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->payCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    return-void
.end method

.method public static setQueryCallBack(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    .line 154
    sput-object p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->queryCallBack:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    return-void
.end method
