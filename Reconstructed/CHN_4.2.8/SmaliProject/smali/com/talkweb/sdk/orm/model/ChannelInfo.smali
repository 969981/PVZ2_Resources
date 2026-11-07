.class public Lcom/talkweb/sdk/orm/model/ChannelInfo;
.super Ljava/lang/Object;
.source "ChannelInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private channelContent:Ljava/lang/String;

.field private channelId:Ljava/lang/Long;

.field private channelName:Ljava/lang/String;

.field private createTime:Ljava/util/Date;

.field private enable:Ljava/lang/Boolean;

.field private serverKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelContent()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/ChannelInfo;->channelContent:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/Long;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/ChannelInfo;->channelId:Ljava/lang/Long;

    return-object v0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/ChannelInfo;->channelName:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/ChannelInfo;->createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getEnable()Ljava/lang/Boolean;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/ChannelInfo;->enable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getServerKey()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/ChannelInfo;->serverKey:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelContent(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 106
    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/ChannelInfo;->channelContent:Ljava/lang/String;

    return-void
.end method

.method public setChannelId(Ljava/lang/Long;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/ChannelInfo;->channelId:Ljava/lang/Long;

    return-void
.end method

.method public setChannelName(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/ChannelInfo;->channelName:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/ChannelInfo;->createTime:Ljava/util/Date;

    return-void
.end method

.method public setEnable(Ljava/lang/Boolean;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/ChannelInfo;->enable:Ljava/lang/Boolean;

    return-void
.end method

.method public setServerKey(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/ChannelInfo;->serverKey:Ljava/lang/String;

    return-void
.end method
