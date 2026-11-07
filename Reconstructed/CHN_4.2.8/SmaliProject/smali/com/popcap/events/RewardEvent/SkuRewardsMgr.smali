.class public Lcom/popcap/events/RewardEvent/SkuRewardsMgr;
.super Ljava/lang/Object;
.source "SkuRewardsMgr.java"


# static fields
.field public static sSkuRwMgr:Lcom/popcap/events/RewardEvent/SkuRewardsMgr;


# instance fields
.field private mSkuRewards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/popcap/events/RewardEvent/SkuReward;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->mSkuRewards:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->mSkuRewards:Ljava/util/ArrayList;

    return-void
.end method

.method public static Instance()Lcom/popcap/events/RewardEvent/SkuRewardsMgr;
    .locals 1

    .line 19
    sget-object v0, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->sSkuRwMgr:Lcom/popcap/events/RewardEvent/SkuRewardsMgr;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;

    invoke-direct {v0}, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;-><init>()V

    sput-object v0, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->sSkuRwMgr:Lcom/popcap/events/RewardEvent/SkuRewardsMgr;

    .line 23
    :cond_0
    sget-object v0, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->sSkuRwMgr:Lcom/popcap/events/RewardEvent/SkuRewardsMgr;

    return-object v0
.end method


# virtual methods
.method public AddSkuReward(Lorg/json/JSONArray;)V
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->mSkuRewards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 33
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 37
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 38
    const-string v2, "s"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 39
    invoke-virtual {p0, v2}, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->GetSkuReward(I)Lcom/popcap/events/RewardEvent/SkuReward;

    move-result-object v3

    if-nez v3, :cond_1

    .line 42
    new-instance v3, Lcom/popcap/events/RewardEvent/SkuReward;

    invoke-direct {v3, v2}, Lcom/popcap/events/RewardEvent/SkuReward;-><init>(I)V

    .line 43
    iget-object v2, p0, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->mSkuRewards:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_1
    invoke-virtual {v3, v1}, Lcom/popcap/events/RewardEvent/SkuReward;->AddReward(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 48
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public GetSkuReward(I)Lcom/popcap/events/RewardEvent/SkuReward;
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->mSkuRewards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/popcap/events/RewardEvent/SkuReward;

    .line 83
    invoke-virtual {v1}, Lcom/popcap/events/RewardEvent/SkuReward;->GetSkuId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1
.end method

.method public GetSkuRewardList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/popcap/events/RewardEvent/SkuReward;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->mSkuRewards:Ljava/util/ArrayList;

    return-object v0
.end method

.method public GetTargetRewards()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/popcap/events/RewardEvent/Reward;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-static {}, Lcom/popcap/util/PCPLocalGameMgr;->Instance()Lcom/popcap/util/PCPLocalGameMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/popcap/util/PCPLocalGameMgr;->GetSkuIdList()Ljava/util/ArrayList;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 59
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->GetSkuReward(I)Lcom/popcap/events/RewardEvent/SkuReward;

    move-result-object v3

    .line 60
    invoke-static {}, Lcom/popcap/util/UserOpt;->Instance()Lcom/popcap/util/UserOpt;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/popcap/util/UserOpt;->GetSkuOptDis(I)J

    move-result-wide v4

    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {v3, v4, v5}, Lcom/popcap/events/RewardEvent/SkuReward;->GetTargetReward(J)Lcom/popcap/events/RewardEvent/Reward;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public SortTimeStrate()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->mSkuRewards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/popcap/events/RewardEvent/SkuReward;

    .line 76
    invoke-virtual {v1}, Lcom/popcap/events/RewardEvent/SkuReward;->SortTimeStrage()V

    goto :goto_0
.end method
