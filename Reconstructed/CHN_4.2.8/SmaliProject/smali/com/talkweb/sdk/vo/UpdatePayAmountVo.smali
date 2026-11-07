.class public Lcom/talkweb/sdk/vo/UpdatePayAmountVo;
.super Lcom/talkweb/sdk/vo/BaseVO;
.source "UpdatePayAmountVo.java"


# instance fields
.field private payAmount:Ljava/math/BigDecimal;

.field private payId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/talkweb/sdk/vo/BaseVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getPayAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/talkweb/sdk/vo/UpdatePayAmountVo;->payAmount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getPayId()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/talkweb/sdk/vo/UpdatePayAmountVo;->payId:J

    return-wide v0
.end method

.method public setPayAmount(Ljava/math/BigDecimal;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/talkweb/sdk/vo/UpdatePayAmountVo;->payAmount:Ljava/math/BigDecimal;

    return-void
.end method

.method public setPayId(J)V
    .locals 0

    .line 16
    iput-wide p1, p0, Lcom/talkweb/sdk/vo/UpdatePayAmountVo;->payId:J

    return-void
.end method
