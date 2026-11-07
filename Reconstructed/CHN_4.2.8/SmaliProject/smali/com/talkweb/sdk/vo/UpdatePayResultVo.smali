.class public Lcom/talkweb/sdk/vo/UpdatePayResultVo;
.super Lcom/talkweb/sdk/vo/BaseVO;
.source "UpdatePayResultVo.java"


# instance fields
.field private finishTime:Ljava/util/Date;

.field private payId:J

.field private state:Ljava/lang/String;

.field private thirdTradeNumber:Ljava/lang/String;

.field private thirdTradeTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/talkweb/sdk/vo/BaseVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getFinishTime()Ljava/util/Date;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/talkweb/sdk/vo/UpdatePayResultVo;->finishTime:Ljava/util/Date;

    return-object v0
.end method

.method public getPayId()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/talkweb/sdk/vo/UpdatePayResultVo;->payId:J

    return-wide v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/talkweb/sdk/vo/UpdatePayResultVo;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdTradeNumber()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/talkweb/sdk/vo/UpdatePayResultVo;->thirdTradeNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdTradeTime()Ljava/util/Date;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/talkweb/sdk/vo/UpdatePayResultVo;->thirdTradeTime:Ljava/util/Date;

    return-object v0
.end method

.method public setFinishTime(Ljava/util/Date;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/talkweb/sdk/vo/UpdatePayResultVo;->finishTime:Ljava/util/Date;

    return-void
.end method

.method public setPayId(J)V
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/talkweb/sdk/vo/UpdatePayResultVo;->payId:J

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/talkweb/sdk/vo/UpdatePayResultVo;->state:Ljava/lang/String;

    return-void
.end method

.method public setThirdTradeNumber(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/talkweb/sdk/vo/UpdatePayResultVo;->thirdTradeNumber:Ljava/lang/String;

    return-void
.end method

.method public setThirdTradeTime(Ljava/util/Date;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/talkweb/sdk/vo/UpdatePayResultVo;->thirdTradeTime:Ljava/util/Date;

    return-void
.end method
