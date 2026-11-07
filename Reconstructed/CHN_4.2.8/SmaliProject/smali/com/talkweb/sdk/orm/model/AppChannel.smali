.class public Lcom/talkweb/sdk/orm/model/AppChannel;
.super Ljava/lang/Object;
.source "AppChannel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private appId:Ljava/lang/String;

.field private callbackUrl:Ljava/lang/String;

.field private channelId:Ljava/lang/Integer;

.field private createTime:Ljava/util/Date;

.field private id:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppChannel;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackUrl()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppChannel;->callbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/Integer;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppChannel;->channelId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppChannel;->createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppChannel;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppChannel;->appId:Ljava/lang/String;

    return-void
.end method

.method public setCallbackUrl(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppChannel;->callbackUrl:Ljava/lang/String;

    return-void
.end method

.method public setChannelId(Ljava/lang/Integer;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppChannel;->channelId:Ljava/lang/Integer;

    return-void
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppChannel;->createTime:Ljava/util/Date;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppChannel;->id:Ljava/lang/Integer;

    return-void
.end method
