.class public Lcom/talkweb/sdk/orm/model/PaywayInfo;
.super Lcom/talkweb/sdk/vo/BaseVO;
.source "PaywayInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private configJson:Ljava/lang/String;

.field private createTime:Ljava/util/Date;

.field private logo:Ljava/lang/String;

.field private payCallbackUrl:Ljava/lang/String;

.field private payRequestUrl:Ljava/lang/String;

.field private payStyle:Ljava/lang/String;

.field private payType:Ljava/lang/String;

.field private payWayId:Ljava/lang/String;

.field private payWayName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/talkweb/sdk/vo/BaseVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfigJson()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PaywayInfo;->configJson:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PaywayInfo;->createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PaywayInfo;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getPayCallbackUrl()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PaywayInfo;->payCallbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPayRequestUrl()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PaywayInfo;->payRequestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPayStyle()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PaywayInfo;->payStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getPayType()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PaywayInfo;->payType:Ljava/lang/String;

    return-object v0
.end method

.method public getPayWayId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PaywayInfo;->payWayId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayWayName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PaywayInfo;->payWayName:Ljava/lang/String;

    return-object v0
.end method

.method public setConfigJson(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PaywayInfo;->configJson:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PaywayInfo;->createTime:Ljava/util/Date;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PaywayInfo;->logo:Ljava/lang/String;

    return-void
.end method

.method public setPayCallbackUrl(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 119
    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PaywayInfo;->payCallbackUrl:Ljava/lang/String;

    return-void
.end method

.method public setPayRequestUrl(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 138
    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PaywayInfo;->payRequestUrl:Ljava/lang/String;

    return-void
.end method

.method public setPayStyle(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PaywayInfo;->payStyle:Ljava/lang/String;

    return-void
.end method

.method public setPayType(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PaywayInfo;->payType:Ljava/lang/String;

    return-void
.end method

.method public setPayWayId(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PaywayInfo;->payWayId:Ljava/lang/String;

    return-void
.end method

.method public setPayWayName(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PaywayInfo;->payWayName:Ljava/lang/String;

    return-void
.end method
