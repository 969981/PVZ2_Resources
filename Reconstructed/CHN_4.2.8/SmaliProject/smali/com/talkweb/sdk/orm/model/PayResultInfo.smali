.class public Lcom/talkweb/sdk/orm/model/PayResultInfo;
.super Ljava/lang/Object;
.source "PayResultInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private amount:Ljava/math/BigDecimal;

.field private appId:Ljava/lang/Long;

.field private channelId:Ljava/lang/Integer;

.field private channelOrderCode:Ljava/lang/String;

.field private createTime:Ljava/util/Date;

.field private finishTime:Ljava/util/Date;

.field private id:Ljava/lang/Long;

.field private imei:Ljava/lang/String;

.field private memo:Ljava/lang/String;

.field private payAmount:Ljava/math/BigDecimal;

.field private payWayId:Ljava/lang/String;

.field private requestdata:Ljava/lang/String;

.field private sdkId:Ljava/lang/Integer;

.field private sdkVersion:Ljava/lang/String;

.field private thirdTradeNumber:Ljava/lang/String;

.field private thirdTradeParam:Ljava/lang/String;

.field private thirdTradeTime:Ljava/util/Date;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getAppId()Ljava/lang/Long;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->appId:Ljava/lang/Long;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/Integer;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->channelId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getChannelOrderCode()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->channelOrderCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getFinishTime()Ljava/util/Date;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->finishTime:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getPayAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->payAmount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getPayWayId()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->payWayId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestdata()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->requestdata:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkId()Ljava/lang/Integer;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->sdkId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdTradeNumber()Ljava/lang/String;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->thirdTradeNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdTradeParam()Ljava/lang/String;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->thirdTradeParam:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdTradeTime()Ljava/util/Date;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->thirdTradeTime:Ljava/util/Date;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/math/BigDecimal;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->amount:Ljava/math/BigDecimal;

    return-void
.end method

.method public setAppId(Ljava/lang/Long;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->appId:Ljava/lang/Long;

    return-void
.end method

.method public setChannelId(Ljava/lang/Integer;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->channelId:Ljava/lang/Integer;

    return-void
.end method

.method public setChannelOrderCode(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 246
    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->channelOrderCode:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->createTime:Ljava/util/Date;

    return-void
.end method

.method public setFinishTime(Ljava/util/Date;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->finishTime:Ljava/util/Date;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->id:Ljava/lang/Long;

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->imei:Ljava/lang/String;

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->memo:Ljava/lang/String;

    return-void
.end method

.method public setPayAmount(Ljava/math/BigDecimal;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->payAmount:Ljava/math/BigDecimal;

    return-void
.end method

.method public setPayWayId(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->payWayId:Ljava/lang/String;

    return-void
.end method

.method public setRequestdata(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 355
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->requestdata:Ljava/lang/String;

    return-void
.end method

.method public setSdkId(Ljava/lang/Integer;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->sdkId:Ljava/lang/Integer;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public setThirdTradeNumber(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 373
    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->thirdTradeNumber:Ljava/lang/String;

    return-void
.end method

.method public setThirdTradeParam(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 411
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 410
    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->thirdTradeParam:Ljava/lang/String;

    return-void
.end method

.method public setThirdTradeTime(Ljava/util/Date;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->thirdTradeTime:Ljava/util/Date;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayResultInfo;->userId:Ljava/lang/String;

    return-void
.end method
