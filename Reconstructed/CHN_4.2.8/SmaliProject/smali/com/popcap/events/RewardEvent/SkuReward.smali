.class public Lcom/popcap/events/RewardEvent/SkuReward;
.super Ljava/lang/Object;
.source "SkuReward.java"


# instance fields
.field private mLastOptTime:Ljava/util/Date;

.field private mRewardStrage:Lcom/popcap/events/RewardEvent/RewardTimeStrage;

.field private mSkuId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/popcap/events/RewardEvent/SkuReward;->mLastOptTime:Ljava/util/Date;

    .line 49
    iput-object v0, p0, Lcom/popcap/events/RewardEvent/SkuReward;->mRewardStrage:Lcom/popcap/events/RewardEvent/RewardTimeStrage;

    .line 14
    iput p1, p0, Lcom/popcap/events/RewardEvent/SkuReward;->mSkuId:I

    .line 15
    new-instance p1, Lcom/popcap/events/RewardEvent/RewardTimeStrage;

    invoke-direct {p1}, Lcom/popcap/events/RewardEvent/RewardTimeStrage;-><init>()V

    iput-object p1, p0, Lcom/popcap/events/RewardEvent/SkuReward;->mRewardStrage:Lcom/popcap/events/RewardEvent/RewardTimeStrage;

    return-void
.end method


# virtual methods
.method public AddReward(Lorg/json/JSONObject;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/popcap/events/RewardEvent/SkuReward;->mRewardStrage:Lcom/popcap/events/RewardEvent/RewardTimeStrage;

    invoke-virtual {v0, p1}, Lcom/popcap/events/RewardEvent/RewardTimeStrage;->AddRewardJsonObj(Lorg/json/JSONObject;)V

    return-void
.end method

.method public GetRewards()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/popcap/events/RewardEvent/Reward;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/popcap/events/RewardEvent/SkuReward;->mRewardStrage:Lcom/popcap/events/RewardEvent/RewardTimeStrage;

    invoke-virtual {v0}, Lcom/popcap/events/RewardEvent/RewardTimeStrage;->GetRewardList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public GetSkuId()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/popcap/events/RewardEvent/SkuReward;->mSkuId:I

    return v0
.end method

.method public GetTargetReward(J)Lcom/popcap/events/RewardEvent/Reward;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/popcap/events/RewardEvent/SkuReward;->mRewardStrage:Lcom/popcap/events/RewardEvent/RewardTimeStrage;

    invoke-virtual {v0, p1, p2}, Lcom/popcap/events/RewardEvent/RewardTimeStrage;->GetReadyReward(J)Lcom/popcap/events/RewardEvent/Reward;

    move-result-object p1

    return-object p1
.end method

.method public SortTimeStrage()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/popcap/events/RewardEvent/SkuReward;->mRewardStrage:Lcom/popcap/events/RewardEvent/RewardTimeStrage;

    invoke-virtual {v0}, Lcom/popcap/events/RewardEvent/RewardTimeStrage;->SortRewarDistime()V

    return-void
.end method

.method public getLastOptTime()Ljava/util/Date;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/popcap/events/RewardEvent/SkuReward;->mLastOptTime:Ljava/util/Date;

    return-object v0
.end method

.method public setLastOptTime(Ljava/util/Date;)V
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "----- setLastOptTime +"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/popcap/util/NtfUtil;->SaveLogServer(Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/popcap/events/RewardEvent/SkuReward;->mLastOptTime:Ljava/util/Date;

    return-void
.end method
