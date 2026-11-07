.class public Lcom/popcap/events/RewardEvent/Reward;
.super Ljava/lang/Object;
.source "Reward.java"


# instance fields
.field private Content:Ljava/lang/String;

.field private Tile:Ljava/lang/String;

.field private Url:Ljava/lang/String;

.field private disTime:J

.field private id:I

.field private lstSendDate:Ljava/util/Date;

.field private nSend:I

.field private skuId:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/popcap/events/RewardEvent/Reward;->disTime:J

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/popcap/events/RewardEvent/Reward;->Tile:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/popcap/events/RewardEvent/Reward;->Content:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/popcap/events/RewardEvent/Reward;->Url:Ljava/lang/String;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/popcap/events/RewardEvent/Reward;->skuId:I

    .line 13
    iput v0, p0, Lcom/popcap/events/RewardEvent/Reward;->id:I

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/popcap/events/RewardEvent/Reward;->lstSendDate:Ljava/util/Date;

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/popcap/events/RewardEvent/Reward;->nSend:I

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/popcap/events/RewardEvent/Reward;->Content:Ljava/lang/String;

    return-object v0
.end method

.method public getDisTime()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/popcap/events/RewardEvent/Reward;->disTime:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/popcap/events/RewardEvent/Reward;->id:I

    return v0
.end method

.method public getLstSendDate()Ljava/util/Date;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/popcap/events/RewardEvent/Reward;->lstSendDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSkuId()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/popcap/events/RewardEvent/Reward;->skuId:I

    return v0
.end method

.method public getTile()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/popcap/events/RewardEvent/Reward;->Tile:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/popcap/events/RewardEvent/Reward;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/popcap/events/RewardEvent/Reward;->Url:Ljava/lang/String;

    return-object v0
.end method

.method public getnSend()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/popcap/events/RewardEvent/Reward;->nSend:I

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/popcap/events/RewardEvent/Reward;->Content:Ljava/lang/String;

    return-void
.end method

.method public setDisTime(J)V
    .locals 0

    .line 71
    iput-wide p1, p0, Lcom/popcap/events/RewardEvent/Reward;->disTime:J

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/popcap/events/RewardEvent/Reward;->id:I

    return-void
.end method

.method public setLstSendDate(Ljava/util/Date;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/popcap/events/RewardEvent/Reward;->lstSendDate:Ljava/util/Date;

    return-void
.end method

.method public setSkuId(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/popcap/events/RewardEvent/Reward;->skuId:I

    return-void
.end method

.method public setTile(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/popcap/events/RewardEvent/Reward;->Tile:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/popcap/events/RewardEvent/Reward;->type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/popcap/events/RewardEvent/Reward;->Url:Ljava/lang/String;

    return-void
.end method

.method public setnSend(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/popcap/events/RewardEvent/Reward;->nSend:I

    return-void
.end method
