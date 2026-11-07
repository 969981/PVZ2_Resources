.class public Lcom/talkweb/twOfflineSdk/bean/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field private channelUserId:Ljava/lang/String;

.field private code:I

.field private nickName:Ljava/lang/String;

.field private talkwebUserId:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelUserId()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->channelUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->code:I

    return v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getTalkwebUserId()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->talkwebUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelUserId(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->channelUserId:Ljava/lang/String;

    return-void
.end method

.method public setCode(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->code:I

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setTalkwebUserId(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->talkwebUserId:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->token:Ljava/lang/String;

    return-void
.end method
