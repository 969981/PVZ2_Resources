.class public Lcom/popcap/events/RewardEvent/RewardTimeStrage;
.super Ljava/lang/Object;
.source "RewardTimeStrage.java"


# instance fields
.field private m_Rewardlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/popcap/events/RewardEvent/Reward;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/popcap/events/RewardEvent/RewardTimeStrage;->m_Rewardlist:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/popcap/events/RewardEvent/RewardTimeStrage;->m_Rewardlist:Ljava/util/ArrayList;

    return-void
.end method

.method private ParseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    .line 41
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 42
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 43
    invoke-virtual {p1, v1, v2}, Ljava/util/Date;->setTime(J)V

    return-object p1

    .line 46
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 47
    const-string v3, "yyyy-MM-dd HH:mm:ss"

    .line 46
    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 49
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 53
    invoke-virtual {p1, v1, v2}, Ljava/util/Date;->setTime(J)V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public AddRewardJsonObj(Lorg/json/JSONObject;)V
    .locals 5

    .line 59
    new-instance v0, Lcom/popcap/events/RewardEvent/Reward;

    invoke-direct {v0}, Lcom/popcap/events/RewardEvent/Reward;-><init>()V

    .line 63
    :try_start_0
    const-string v1, "t"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/popcap/events/RewardEvent/Reward;->setType(I)V

    .line 65
    const-string v1, "u"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/popcap/events/RewardEvent/Reward;->setUrl(Ljava/lang/String;)V

    .line 67
    const-string v1, "i"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/popcap/events/RewardEvent/Reward;->setTile(Ljava/lang/String;)V

    .line 70
    const-string v1, "c"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/popcap/events/RewardEvent/Reward;->setContent(Ljava/lang/String;)V

    .line 71
    const-string v1, "r"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    mul-long/2addr v1, v3

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/popcap/events/RewardEvent/Reward;->setDisTime(J)V

    .line 74
    const-string v1, "s"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/popcap/events/RewardEvent/Reward;->setSkuId(I)V

    .line 76
    const-string v1, "p"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 77
    invoke-virtual {v0, p1}, Lcom/popcap/events/RewardEvent/Reward;->setId(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 84
    :goto_0
    iget-object p1, p0, Lcom/popcap/events/RewardEvent/RewardTimeStrage;->m_Rewardlist:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public GetReadyReward(J)Lcom/popcap/events/RewardEvent/Reward;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 99
    :goto_0
    iget-object v2, p0, Lcom/popcap/events/RewardEvent/RewardTimeStrage;->m_Rewardlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/popcap/events/RewardEvent/RewardTimeStrage;->m_Rewardlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/popcap/events/RewardEvent/Reward;

    invoke-virtual {v0}, Lcom/popcap/events/RewardEvent/Reward;->getDisTime()J

    move-result-wide v2

    cmp-long p1, p1, v2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/popcap/events/RewardEvent/RewardTimeStrage;->m_Rewardlist:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/popcap/events/RewardEvent/Reward;

    return-object p1

    .line 101
    :cond_1
    iget-object v2, p0, Lcom/popcap/events/RewardEvent/RewardTimeStrage;->m_Rewardlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/popcap/events/RewardEvent/Reward;

    invoke-virtual {v2}, Lcom/popcap/events/RewardEvent/Reward;->getDisTime()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/popcap/events/RewardEvent/RewardTimeStrage;->m_Rewardlist:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/popcap/events/RewardEvent/Reward;

    invoke-virtual {v2}, Lcom/popcap/events/RewardEvent/Reward;->getDisTime()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    .line 102
    iget-object p1, p0, Lcom/popcap/events/RewardEvent/RewardTimeStrage;->m_Rewardlist:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/popcap/events/RewardEvent/Reward;

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public GetRewardList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/popcap/events/RewardEvent/Reward;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/popcap/events/RewardEvent/RewardTimeStrage;->m_Rewardlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public LoadData(Lorg/json/JSONArray;)V
    .locals 5

    const/4 v0, 0x0

    .line 22
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 25
    new-instance v2, Lcom/popcap/events/RewardEvent/Reward;

    invoke-direct {v2}, Lcom/popcap/events/RewardEvent/Reward;-><init>()V

    .line 26
    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/popcap/events/RewardEvent/Reward;->setContent(Ljava/lang/String;)V

    .line 27
    const-string v3, "dis"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/popcap/events/RewardEvent/Reward;->setDisTime(J)V

    .line 28
    iget-object v1, p0, Lcom/popcap/events/RewardEvent/RewardTimeStrage;->m_Rewardlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 34
    :goto_1
    iget-object p1, p0, Lcom/popcap/events/RewardEvent/RewardTimeStrage;->m_Rewardlist:Ljava/util/ArrayList;

    new-instance v0, Lcom/popcap/events/RewardEvent/RewardDisCompard;

    invoke-direct {v0}, Lcom/popcap/events/RewardEvent/RewardDisCompard;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public SortRewarDistime()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/popcap/events/RewardEvent/RewardTimeStrage;->m_Rewardlist:Ljava/util/ArrayList;

    new-instance v1, Lcom/popcap/events/RewardEvent/RewardDisCompard;

    invoke-direct {v1}, Lcom/popcap/events/RewardEvent/RewardDisCompard;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
