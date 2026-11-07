.class public Lcom/talkweb/sdk/orm/model/SdkPayway;
.super Ljava/lang/Object;
.source "SdkPayway.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private id:Ljava/lang/Integer;

.field private payWayId:Ljava/lang/String;

.field private sdkId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/SdkPayway;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPayWayId()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/SdkPayway;->payWayId:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkId()Ljava/lang/Integer;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/SdkPayway;->sdkId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/SdkPayway;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setPayWayId(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/SdkPayway;->payWayId:Ljava/lang/String;

    return-void
.end method

.method public setSdkId(Ljava/lang/Integer;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/SdkPayway;->sdkId:Ljava/lang/Integer;

    return-void
.end method
