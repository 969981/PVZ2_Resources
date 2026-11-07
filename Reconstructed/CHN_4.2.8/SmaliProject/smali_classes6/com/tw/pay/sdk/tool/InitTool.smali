.class public Lcom/tw/pay/sdk/tool/InitTool;
.super Ljava/lang/Object;
.source "InitTool.java"


# instance fields
.field private context:Landroid/content/Context;

.field private initSDKResultBean:Lcom/tw/pay/sdk/bean/InitSDKResultBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/tw/pay/sdk/tool/InitTool;->context:Landroid/content/Context;

    return-void
.end method

.method private recordTerminal()V
    .locals 5

    .line 62
    new-instance v0, Lcom/talkweb/sdk/orm/model/UserTerminal;

    invoke-direct {v0}, Lcom/talkweb/sdk/orm/model/UserTerminal;-><init>()V

    .line 63
    sget-wide v1, Lcom/tw/pay/sdk/TwPaySetting;->appId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/sdk/orm/model/UserTerminal;->setAppId(Ljava/lang/Long;)V

    .line 64
    sget-wide v1, Lcom/tw/pay/sdk/TwPaySetting;->channelId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/sdk/orm/model/UserTerminal;->setChannelId(Ljava/lang/Long;)V

    .line 65
    sget-object v1, Lcom/tw/pay/sdk/TwPaySetting;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/sdk/orm/model/UserTerminal;->setSdkVersion(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/tw/pay/sdk/tool/InitTool;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tw/pay/sdk/tool/Tools;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/sdk/orm/model/UserTerminal;->setImei(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Lcom/talkweb/sdk/orm/model/UserTerminal;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tw/pay/sdk/TwPaySetting;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tw/pay/sdk/tool/DigestUtil;->encodeByMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    :try_start_0
    invoke-static {v0}, Lcom/talkweb/sdk/util/Des;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    .line 75
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 76
    invoke-static {}, Lcom/tw/pay/sdk/TwPaySetting;->getHead()Lcom/talkweb/sdk/vo/Head;

    move-result-object v3

    invoke-virtual {v3}, Lcom/talkweb/sdk/vo/Head;->encode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "head"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "userTerminal"

    .line 77
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "md5"

    .line 78
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v0, Lcom/tw/pay/sdk/net/HttpAsyncTask;

    new-instance v1, Lcom/tw/pay/sdk/tool/InitTool$1;

    invoke-direct {v1, p0}, Lcom/tw/pay/sdk/tool/InitTool$1;-><init>(Lcom/tw/pay/sdk/tool/InitTool;)V

    invoke-direct {v0, v1, v2}, Lcom/tw/pay/sdk/net/HttpAsyncTask;-><init>(Lcom/tw/pay/sdk/callback/TwCallback;Ljava/util/HashMap;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tw/pay/sdk/net/HttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public initSDK(JLjava/lang/String;JLcom/tw/pay/sdk/callback/TwInitCallback;)V
    .locals 5

    const-string v0, "02"

    const-string v1, "TWPayConfig.xml"

    .line 30
    new-instance v2, Lcom/tw/pay/sdk/bean/InitSDKResultBean;

    invoke-direct {v2}, Lcom/tw/pay/sdk/bean/InitSDKResultBean;-><init>()V

    iput-object v2, p0, Lcom/tw/pay/sdk/tool/InitTool;->initSDKResultBean:Lcom/tw/pay/sdk/bean/InitSDKResultBean;

    .line 32
    :try_start_0
    iget-object v2, p0, Lcom/tw/pay/sdk/tool/InitTool;->context:Landroid/content/Context;

    const-string v3, "TWPayUrl.xml"

    invoke-static {v2, v3}, Lcom/tw/pay/sdk/net/HttpUrl;->initSetUrl(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-eqz v4, :cond_1

    if-eqz p3, :cond_1

    const-string v4, ""

    .line 33
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    cmp-long v4, p4, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    sput-wide p1, Lcom/tw/pay/sdk/TwPaySetting;->appId:J

    .line 37
    sput-object p3, Lcom/tw/pay/sdk/TwPaySetting;->appKey:Ljava/lang/String;

    .line 38
    sput-wide p4, Lcom/tw/pay/sdk/TwPaySetting;->channelId:J

    .line 40
    iget-object p1, p0, Lcom/tw/pay/sdk/tool/InitTool;->context:Landroid/content/Context;

    const-string p2, "sdkVersion"

    invoke-static {p1, v1, p2}, Lcom/tw/pay/sdk/tool/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tw/pay/sdk/TwPaySetting;->sdkVersion:Ljava/lang/String;

    .line 42
    iget-object p1, p0, Lcom/tw/pay/sdk/tool/InitTool;->context:Landroid/content/Context;

    const-string p2, "newSdkVersion"

    invoke-static {p1, v1, p2}, Lcom/tw/pay/sdk/tool/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tw/pay/sdk/TwPaySetting;->newSdkVersion:Ljava/lang/String;

    .line 44
    iget-object p1, p0, Lcom/tw/pay/sdk/tool/InitTool;->context:Landroid/content/Context;

    const-string p2, "newAppId"

    invoke-static {p1, v1, p2}, Lcom/tw/pay/sdk/tool/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    sput-wide p1, Lcom/tw/pay/sdk/TwPaySetting;->newAppId:J

    .line 46
    iget-object p1, p0, Lcom/tw/pay/sdk/tool/InitTool;->initSDKResultBean:Lcom/tw/pay/sdk/bean/InitSDKResultBean;

    const-string p2, "01"

    iput-object p2, p1, Lcom/tw/pay/sdk/bean/InitSDKResultBean;->code:Ljava/lang/String;

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TwPaySetting.sdkVersion:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/tw/pay/sdk/TwPaySetting;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/tw/pay/sdk/TwPaySetting;->setHead()V

    const/4 p1, 0x1

    .line 49
    sput-boolean p1, Lcom/tw/pay/sdk/TwPay;->isInit:Z

    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tw/pay/sdk/tool/InitTool;->initSDKResultBean:Lcom/tw/pay/sdk/bean/InitSDKResultBean;

    iput-object v0, p1, Lcom/tw/pay/sdk/bean/InitSDKResultBean;->code:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    iget-object p1, p0, Lcom/tw/pay/sdk/tool/InitTool;->initSDKResultBean:Lcom/tw/pay/sdk/bean/InitSDKResultBean;

    iput-object v0, p1, Lcom/tw/pay/sdk/bean/InitSDKResultBean;->code:Ljava/lang/String;

    .line 56
    :goto_1
    iget-object p1, p0, Lcom/tw/pay/sdk/tool/InitTool;->initSDKResultBean:Lcom/tw/pay/sdk/bean/InitSDKResultBean;

    invoke-static {p1}, Lcom/tw/pay/sdk/tool/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p6, p1}, Lcom/tw/pay/sdk/callback/TwInitCallback;->responseData(Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/tw/pay/sdk/tool/InitTool;->recordTerminal()V

    return-void
.end method
