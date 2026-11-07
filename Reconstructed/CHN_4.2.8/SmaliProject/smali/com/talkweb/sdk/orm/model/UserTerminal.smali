.class public Lcom/talkweb/sdk/orm/model/UserTerminal;
.super Lcom/talkweb/sdk/vo/BaseVO;
.source "UserTerminal.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private appId:Ljava/lang/Long;

.field private channelId:Ljava/lang/Long;

.field private iccid:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private idfa:Ljava/lang/String;

.field private idfv:Ljava/lang/String;

.field private ifa:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private sdkId:Ljava/lang/Long;

.field private sdkVersion:Ljava/lang/String;

.field private userId:Ljava/lang/Long;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/talkweb/sdk/vo/BaseVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/Long;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->appId:Ljava/lang/Long;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/Long;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->channelId:Ljava/lang/Long;

    return-object v0
.end method

.method public getIccid()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->iccid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIdfa()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->idfa:Ljava/lang/String;

    return-object v0
.end method

.method public getIdfv()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->idfv:Ljava/lang/String;

    return-object v0
.end method

.method public getIfa()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->ifa:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkId()Ljava/lang/Long;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->sdkId:Ljava/lang/Long;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Long;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/Long;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->appId:Ljava/lang/Long;

    return-void
.end method

.method public setChannelId(Ljava/lang/Long;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->channelId:Ljava/lang/Long;

    return-void
.end method

.method public setIccid(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->iccid:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->id:Ljava/lang/Long;

    return-void
.end method

.method public setIdfa(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->idfa:Ljava/lang/String;

    return-void
.end method

.method public setIdfv(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->idfv:Ljava/lang/String;

    return-void
.end method

.method public setIfa(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->ifa:Ljava/lang/String;

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->imei:Ljava/lang/String;

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->imsi:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->mac:Ljava/lang/String;

    return-void
.end method

.method public setSdkId(Ljava/lang/Long;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->sdkId:Ljava/lang/Long;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/Long;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->userId:Ljava/lang/Long;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserTerminal;->uuid:Ljava/lang/String;

    return-void
.end method
