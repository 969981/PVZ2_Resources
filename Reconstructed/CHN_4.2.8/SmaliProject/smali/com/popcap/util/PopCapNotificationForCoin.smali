.class public Lcom/popcap/util/PopCapNotificationForCoin;
.super Lcom/popcap/util/PopCapNotificationAbstract;
.source "PopCapNotificationForCoin.java"


# instance fields
.field public _coinIncraseRatePerMinute:I

.field public _coinMax:I

.field public _coinRemains:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    .line 11
    invoke-direct/range {p0 .. p6}, Lcom/popcap/util/PopCapNotificationAbstract;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/popcap/util/PopCapNotificationForCoin;->_coinRemains:I

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/popcap/util/PopCapNotificationForCoin;->_coinIncraseRatePerMinute:I

    const/16 p1, 0x64

    .line 7
    iput p1, p0, Lcom/popcap/util/PopCapNotificationForCoin;->_coinMax:I

    const/16 p1, 0x20

    .line 12
    iput p1, p0, Lcom/popcap/util/PopCapNotificationForCoin;->type:I

    .line 13
    invoke-virtual {p0}, Lcom/popcap/util/PopCapNotificationForCoin;->resetInterval()V

    return-void
.end method

.method public static updateNotification(Lcom/popcap/util/PopCapNotificationAbstract;Lcom/popcap/util/PopCapNotificationAbstract;)V
    .locals 2

    .line 41
    iget v0, p0, Lcom/popcap/util/PopCapNotificationAbstract;->type:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/popcap/util/PopCapNotificationAbstract;->type:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p0, p1}, Lcom/popcap/util/PopCapNotificationAbstract;->updateNotification(Lcom/popcap/util/PopCapNotificationAbstract;Lcom/popcap/util/PopCapNotificationAbstract;)V

    .line 44
    check-cast p0, Lcom/popcap/util/PopCapNotificationForCoin;

    .line 45
    check-cast p1, Lcom/popcap/util/PopCapNotificationForCoin;

    .line 46
    iget v0, p0, Lcom/popcap/util/PopCapNotificationForCoin;->_coinRemains:I

    if-lez v0, :cond_1

    iget p1, p1, Lcom/popcap/util/PopCapNotificationForCoin;->_coinRemains:I

    iput p1, p0, Lcom/popcap/util/PopCapNotificationForCoin;->_coinRemains:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public resetCoinRemains(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/popcap/util/PopCapNotificationForCoin;->_coinRemains:I

    .line 18
    invoke-virtual {p0}, Lcom/popcap/util/PopCapNotificationForCoin;->resetInterval()V

    return-void
.end method

.method public resetCoinSettings(II)V
    .locals 1

    .line 22
    iget v0, p0, Lcom/popcap/util/PopCapNotificationForCoin;->_coinIncraseRatePerMinute:I

    if-gez v0, :cond_0

    .line 23
    iput p2, p0, Lcom/popcap/util/PopCapNotificationForCoin;->_coinIncraseRatePerMinute:I

    .line 24
    :cond_0
    iget p2, p0, Lcom/popcap/util/PopCapNotificationForCoin;->_coinMax:I

    if-gez p2, :cond_1

    .line 25
    iput p1, p0, Lcom/popcap/util/PopCapNotificationForCoin;->_coinMax:I

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/popcap/util/PopCapNotificationForCoin;->resetInterval()V

    return-void
.end method

.method public resetInterval()V
    .locals 4

    .line 35
    iget v0, p0, Lcom/popcap/util/PopCapNotificationForCoin;->_coinMax:I

    iget v1, p0, Lcom/popcap/util/PopCapNotificationForCoin;->_coinRemains:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/popcap/util/PopCapNotificationForCoin;->_coinIncraseRatePerMinute:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/popcap/util/PopCapNotificationForCoin;->interval:J

    return-void
.end method

.method public statusToHtml()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public updateNextSendTime()V
    .locals 1

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/popcap/util/PopCapNotificationForCoin;->_coinRemains:I

    return-void
.end method
