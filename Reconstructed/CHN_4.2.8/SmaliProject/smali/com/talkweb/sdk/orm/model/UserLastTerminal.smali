.class public Lcom/talkweb/sdk/orm/model/UserLastTerminal;
.super Ljava/lang/Object;
.source "UserLastTerminal.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private appId:Ljava/lang/Integer;

.field private channelId:Ljava/lang/Integer;

.field private createTime:Ljava/util/Date;

.field private iccid:Ljava/lang/String;

.field private idfa:Ljava/lang/String;

.field private idfv:Ljava/lang/String;

.field private ifa:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private sdkId:Ljava/lang/Integer;

.field private sdkVersion:Ljava/lang/String;

.field private userId:Ljava/lang/Long;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/Integer;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->appId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/Integer;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->channelId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getIccid()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->iccid:Ljava/lang/String;

    return-object v0
.end method

.method public getIdfa()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->idfa:Ljava/lang/String;

    return-object v0
.end method

.method public getIdfv()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->idfv:Ljava/lang/String;

    return-object v0
.end method

.method public getIfa()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->ifa:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkId()Ljava/lang/Integer;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->sdkId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Long;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/Integer;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->appId:Ljava/lang/Integer;

    return-void
.end method

.method public setChannelId(Ljava/lang/Integer;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->channelId:Ljava/lang/Integer;

    return-void
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->createTime:Ljava/util/Date;

    return-void
.end method

.method public setIccid(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->iccid:Ljava/lang/String;

    return-void
.end method

.method public setIdfa(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->idfa:Ljava/lang/String;

    return-void
.end method

.method public setIdfv(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->idfv:Ljava/lang/String;

    return-void
.end method

.method public setIfa(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->ifa:Ljava/lang/String;

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->imei:Ljava/lang/String;

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->imsi:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->mac:Ljava/lang/String;

    return-void
.end method

.method public setSdkId(Ljava/lang/Integer;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->sdkId:Ljava/lang/Integer;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/Long;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->userId:Ljava/lang/Long;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserLastTerminal;->uuid:Ljava/lang/String;

    return-void
.end method
