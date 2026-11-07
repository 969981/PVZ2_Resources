.class public Lcom/talkweb/sdk/vo/Head;
.super Lcom/talkweb/sdk/vo/BaseVO;
.source "Head.java"


# instance fields
.field public appId:Ljava/lang/Long;

.field public channelId:Ljava/lang/Long;

.field public sdkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/talkweb/sdk/vo/BaseVO;-><init>()V

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/talkweb/sdk/vo/BaseVO;-><init>()V

    .line 23
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/talkweb/sdk/vo/Head;->appId:Ljava/lang/Long;

    .line 24
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/talkweb/sdk/vo/Head;->channelId:Ljava/lang/Long;

    .line 25
    iput-object p5, p0, Lcom/talkweb/sdk/vo/Head;->sdkVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/Long;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/talkweb/sdk/vo/Head;->appId:Ljava/lang/Long;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/Long;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/talkweb/sdk/vo/Head;->channelId:Ljava/lang/Long;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/talkweb/sdk/vo/Head;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/Long;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/talkweb/sdk/vo/Head;->appId:Ljava/lang/Long;

    return-void
.end method

.method public setChannelId(Ljava/lang/Long;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/talkweb/sdk/vo/Head;->channelId:Ljava/lang/Long;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/talkweb/sdk/vo/Head;->sdkVersion:Ljava/lang/String;

    return-void
.end method
