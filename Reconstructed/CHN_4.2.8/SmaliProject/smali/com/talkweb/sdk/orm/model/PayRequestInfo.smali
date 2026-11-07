.class public Lcom/talkweb/sdk/orm/model/PayRequestInfo;
.super Lcom/talkweb/sdk/vo/BaseVO;
.source "PayRequestInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private amount:Ljava/math/BigDecimal;

.field private appId:Ljava/lang/Integer;

.field private channelId:Ljava/lang/Integer;

.field private channelOrderCode:Ljava/lang/String;

.field private createTime:Ljava/util/Date;

.field private finishTime:Ljava/util/Date;

.field private imei:Ljava/lang/String;

.field private memo:Ljava/lang/String;

.field private payAmount:Ljava/math/BigDecimal;

.field private payId:Ljava/lang/Long;

.field private payWayId:Ljava/lang/String;

.field private requestdata:Ljava/lang/String;

.field private sdkId:Ljava/lang/Integer;

.field private sdkVersion:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private thirdTradeNumber:Ljava/lang/String;

.field private thirdTradeParam:Ljava/lang/String;

.field private thirdTradeTime:Ljava/util/Date;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/talkweb/sdk/vo/BaseVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getAppId()Ljava/lang/Integer;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->appId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/Integer;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->channelId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getChannelOrderCode()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->channelOrderCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getFinishTime()Ljava/util/Date;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->finishTime:Ljava/util/Date;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getPayAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->payAmount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getPayId()Ljava/lang/Long;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->payId:Ljava/lang/Long;

    return-object v0
.end method

.method public getPayWayId()Ljava/lang/String;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->payWayId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestdata()Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->requestdata:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkId()Ljava/lang/Integer;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->sdkId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdTradeNumber()Ljava/lang/String;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->thirdTradeNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdTradeParam()Ljava/lang/String;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->thirdTradeParam:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdTradeTime()Ljava/util/Date;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->thirdTradeTime:Ljava/util/Date;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/math/BigDecimal;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->amount:Ljava/math/BigDecimal;

    return-void
.end method

.method public setAppId(Ljava/lang/Integer;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->appId:Ljava/lang/Integer;

    return-void
.end method

.method public setChannelId(Ljava/lang/Integer;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->channelId:Ljava/lang/Integer;

    return-void
.end method

.method public setChannelOrderCode(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 253
    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->channelOrderCode:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->createTime:Ljava/util/Date;

    return-void
.end method

.method public setFinishTime(Ljava/util/Date;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->finishTime:Ljava/util/Date;

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->imei:Ljava/lang/String;

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->memo:Ljava/lang/String;

    return-void
.end method

.method public setPayAmount(Ljava/math/BigDecimal;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->payAmount:Ljava/math/BigDecimal;

    return-void
.end method

.method public setPayId(Ljava/lang/Long;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->payId:Ljava/lang/Long;

    return-void
.end method

.method public setPayWayId(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->payWayId:Ljava/lang/String;

    return-void
.end method

.method public setRequestdata(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->requestdata:Ljava/lang/String;

    return-void
.end method

.method public setSdkId(Ljava/lang/Integer;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->sdkId:Ljava/lang/Integer;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->state:Ljava/lang/String;

    return-void
.end method

.method public setThirdTradeNumber(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 399
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 398
    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->thirdTradeNumber:Ljava/lang/String;

    return-void
.end method

.method public setThirdTradeParam(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 435
    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->thirdTradeParam:Ljava/lang/String;

    return-void
.end method

.method public setThirdTradeTime(Ljava/util/Date;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->thirdTradeTime:Ljava/util/Date;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->userId:Ljava/lang/String;

    return-void
.end method
