.class public Lcom/talkweb/sdk/orm/model/UserLoginInfo;
.super Ljava/lang/Object;
.source "UserLoginInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private appId:Ljava/lang/Long;

.field private channelId:Ljava/lang/Long;

.field private id:Ljava/lang/Long;

.field private imei:Ljava/lang/String;

.field private loginDate:Ljava/util/Date;

.field private sdkId:Ljava/lang/Long;

.field private sdkVersion:Ljava/lang/String;

.field private userId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/Long;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserLoginInfo;->appId:Ljava/lang/Long;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/Long;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserLoginInfo;->channelId:Ljava/lang/Long;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserLoginInfo;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserLoginInfo;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginDate()Ljava/util/Date;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserLoginInfo;->loginDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSdkId()Ljava/lang/Long;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserLoginInfo;->sdkId:Ljava/lang/Long;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserLoginInfo;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Long;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserLoginInfo;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public setAppId(Ljava/lang/Long;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserLoginInfo;->appId:Ljava/lang/Long;

    return-void
.end method

.method public setChannelId(Ljava/lang/Long;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserLoginInfo;->channelId:Ljava/lang/Long;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserLoginInfo;->id:Ljava/lang/Long;

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserLoginInfo;->imei:Ljava/lang/String;

    return-void
.end method

.method public setLoginDate(Ljava/util/Date;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserLoginInfo;->loginDate:Ljava/util/Date;

    return-void
.end method

.method public setSdkId(Ljava/lang/Long;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserLoginInfo;->sdkId:Ljava/lang/Long;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserLoginInfo;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/Long;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserLoginInfo;->userId:Ljava/lang/Long;

    return-void
.end method
