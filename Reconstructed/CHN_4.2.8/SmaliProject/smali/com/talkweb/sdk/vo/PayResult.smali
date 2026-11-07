.class public Lcom/talkweb/sdk/vo/PayResult;
.super Lcom/talkweb/sdk/vo/BaseVO;
.source "PayResult.java"


# instance fields
.field private amount:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private channelId:Ljava/lang/String;

.field private orderCode:Ljava/lang/String;

.field private payRequestTime:Ljava/lang/String;

.field private payResult:Ljava/lang/String;

.field private paySuccessTime:Ljava/lang/String;

.field private payWayCode:Ljava/lang/String;

.field private serialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/talkweb/sdk/vo/BaseVO;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/talkweb/sdk/vo/PayResult;->appId:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/talkweb/sdk/vo/PayResult;->channelId:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/talkweb/sdk/vo/PayResult;->payResult:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/talkweb/sdk/vo/PayResult;->payWayCode:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/talkweb/sdk/vo/PayResult;->orderCode:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/talkweb/sdk/vo/PayResult;->serialNumber:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/talkweb/sdk/vo/PayResult;->payRequestTime:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/talkweb/sdk/vo/PayResult;->paySuccessTime:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/talkweb/sdk/vo/PayResult;->amount:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/talkweb/sdk/vo/PayResult;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/talkweb/sdk/vo/PayResult;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/talkweb/sdk/vo/PayResult;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderCode()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/talkweb/sdk/vo/PayResult;->orderCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPayRequestTime()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/talkweb/sdk/vo/PayResult;->payRequestTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPayResult()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/talkweb/sdk/vo/PayResult;->payResult:Ljava/lang/String;

    return-object v0
.end method

.method public getPaySuccessTime()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/talkweb/sdk/vo/PayResult;->paySuccessTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPayWayCode()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/talkweb/sdk/vo/PayResult;->payWayCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/talkweb/sdk/vo/PayResult;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/talkweb/sdk/vo/PayResult;->amount:Ljava/lang/String;

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/talkweb/sdk/vo/PayResult;->appId:Ljava/lang/String;

    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/talkweb/sdk/vo/PayResult;->channelId:Ljava/lang/String;

    return-void
.end method

.method public setOrderCode(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/talkweb/sdk/vo/PayResult;->orderCode:Ljava/lang/String;

    return-void
.end method

.method public setPayRequestTime(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/talkweb/sdk/vo/PayResult;->payRequestTime:Ljava/lang/String;

    return-void
.end method

.method public setPayResult(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/talkweb/sdk/vo/PayResult;->payResult:Ljava/lang/String;

    return-void
.end method

.method public setPaySuccessTime(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/talkweb/sdk/vo/PayResult;->paySuccessTime:Ljava/lang/String;

    return-void
.end method

.method public setPayWayCode(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/talkweb/sdk/vo/PayResult;->payWayCode:Ljava/lang/String;

    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/talkweb/sdk/vo/PayResult;->serialNumber:Ljava/lang/String;

    return-void
.end method
