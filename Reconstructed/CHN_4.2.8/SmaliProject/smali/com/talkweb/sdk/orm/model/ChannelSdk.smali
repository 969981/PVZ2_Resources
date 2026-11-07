.class public Lcom/talkweb/sdk/orm/model/ChannelSdk;
.super Ljava/lang/Object;
.source "ChannelSdk.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private channelId:Ljava/lang/Integer;

.field private id:Ljava/lang/Integer;

.field private sdkId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelId()Ljava/lang/Integer;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/ChannelSdk;->channelId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/ChannelSdk;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSdkId()Ljava/lang/Integer;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/ChannelSdk;->sdkId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setChannelId(Ljava/lang/Integer;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/ChannelSdk;->channelId:Ljava/lang/Integer;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/ChannelSdk;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setSdkId(Ljava/lang/Integer;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/ChannelSdk;->sdkId:Ljava/lang/Integer;

    return-void
.end method
