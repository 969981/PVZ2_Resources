.class Lcom/popcap/events/RewardEvent/RewardDisCompard;
.super Ljava/lang/Object;
.source "RewardTimeStrage.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 121
    check-cast p1, Lcom/popcap/events/RewardEvent/Reward;

    .line 122
    check-cast p2, Lcom/popcap/events/RewardEvent/Reward;

    .line 123
    invoke-virtual {p1}, Lcom/popcap/events/RewardEvent/Reward;->getDisTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/popcap/events/RewardEvent/Reward;->getDisTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    return v1

    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/popcap/events/RewardEvent/Reward;->getDisTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/popcap/events/RewardEvent/Reward;->getDisTime()J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-nez p2, :cond_1

    .line 127
    invoke-virtual {p1}, Lcom/popcap/events/RewardEvent/Reward;->getDisTime()J

    move-result-wide v2

    const-wide/32 v4, 0x2bf20

    add-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/popcap/events/RewardEvent/Reward;->setDisTime(J)V

    return v1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
