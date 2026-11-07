.class public Lcom/tw/pay/sdk/tool/RecordTerminal;
.super Ljava/lang/Thread;
.source "RecordTerminal.java"


# instance fields
.field private context:Landroid/content/Context;

.field private userId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 27
    new-instance v0, Lcom/talkweb/sdk/orm/model/UserTerminal;

    invoke-direct {v0}, Lcom/talkweb/sdk/orm/model/UserTerminal;-><init>()V

    .line 28
    sget-wide v1, Lcom/tw/pay/sdk/TwPaySetting;->appId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/sdk/orm/model/UserTerminal;->setAppId(Ljava/lang/Long;)V

    .line 29
    sget-wide v1, Lcom/tw/pay/sdk/TwPaySetting;->channelId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/sdk/orm/model/UserTerminal;->setChannelId(Ljava/lang/Long;)V

    .line 30
    sget-object v1, Lcom/tw/pay/sdk/TwPaySetting;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/sdk/orm/model/UserTerminal;->setSdkVersion(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/tw/pay/sdk/tool/RecordTerminal;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tw/pay/sdk/tool/Tools;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/sdk/orm/model/UserTerminal;->setImei(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/tw/pay/sdk/tool/RecordTerminal;->userId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/talkweb/sdk/orm/model/UserTerminal;->setUserId(Ljava/lang/Long;)V

    .line 33
    invoke-virtual {v0}, Lcom/talkweb/sdk/orm/model/UserTerminal;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tw/pay/sdk/TwPaySetting;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tw/pay/sdk/tool/DigestUtil;->encodeByMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    :try_start_0
    invoke-static {v0}, Lcom/talkweb/sdk/util/Des;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    .line 41
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 42
    invoke-static {}, Lcom/tw/pay/sdk/TwPaySetting;->getHead()Lcom/talkweb/sdk/vo/Head;

    move-result-object v3

    invoke-virtual {v3}, Lcom/talkweb/sdk/vo/Head;->encode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "head"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "userTerminal"

    .line 43
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "md5"

    .line 44
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v0, Lcom/tw/pay/sdk/net/HttpDataNet;

    invoke-direct {v0}, Lcom/tw/pay/sdk/net/HttpDataNet;-><init>()V

    .line 46
    invoke-virtual {v0, v2}, Lcom/tw/pay/sdk/net/HttpDataNet;->recordTerminal(Ljava/util/HashMap;)Lcom/talkweb/sdk/vo/ReturnObject;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/tw/pay/sdk/tool/RecordTerminal;->context:Landroid/content/Context;

    return-void
.end method

.method public setUserId(Ljava/lang/Long;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/tw/pay/sdk/tool/RecordTerminal;->userId:Ljava/lang/Long;

    return-void
.end method
