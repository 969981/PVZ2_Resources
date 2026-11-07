.class public Lcom/popcap/events/RewardEvent/SendUserRewardEventsFactory;
.super Lcom/popcap/events/EventFactory;
.source "SendUserRewardEventsFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/popcap/events/EventFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public CreteEvent()Lcom/popcap/events/IEventTick;
    .locals 2

    .line 12
    new-instance v0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;

    invoke-direct {v0}, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;-><init>()V

    .line 13
    const-string v1, "rwdData"

    invoke-static {v1}, Lcom/popcap/util/NtfUtil;->GetLocalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->FillTimeStrageData(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->InitWithDisTime()V

    .line 15
    invoke-virtual {v0}, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->FillLocaDateSkuRewardLastSendTime()V

    return-object v0
.end method
