.class public Lcom/popcap/events/WeekNtfEventFactory;
.super Lcom/popcap/events/EventFactory;
.source "WeekNtfEventFactory.java"


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
    new-instance v0, Lcom/popcap/notifications/WeekNtfMgr;

    invoke-direct {v0}, Lcom/popcap/notifications/WeekNtfMgr;-><init>()V

    .line 13
    const-string v1, "maxWkIndex"

    invoke-static {v1}, Lcom/popcap/util/NtfUtil;->GetLocalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/popcap/notifications/WeekNtfMgr;->SetMaxWkIndex(Ljava/lang/String;)V

    .line 14
    const-string v1, "wkDate"

    invoke-static {v1}, Lcom/popcap/util/NtfUtil;->GetLocalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/popcap/notifications/WeekNtfMgr;->SetWeekDate(Ljava/lang/String;)V

    return-object v0
.end method
