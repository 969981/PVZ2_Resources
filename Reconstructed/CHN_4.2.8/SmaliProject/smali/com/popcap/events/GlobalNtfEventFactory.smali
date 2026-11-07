.class public Lcom/popcap/events/GlobalNtfEventFactory;
.super Lcom/popcap/events/EventFactory;
.source "GlobalNtfEventFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/popcap/events/EventFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public CreteEvent()Lcom/popcap/events/IEventTick;
    .locals 2

    .line 13
    new-instance v0, Lcom/popcap/notifications/GLobaleNtfMgr;

    invoke-direct {v0}, Lcom/popcap/notifications/GLobaleNtfMgr;-><init>()V

    .line 14
    const-string v1, "maxNtfIndex"

    invoke-static {v1}, Lcom/popcap/util/NtfUtil;->GetLocalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/popcap/notifications/GLobaleNtfMgr;->SetMaxNotIndex(Ljava/lang/String;)V

    .line 15
    const-string v1, "lstNtfcTime"

    invoke-static {v1}, Lcom/popcap/util/NtfUtil;->GetLocalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/popcap/notifications/GLobaleNtfMgr;->SetLastGetNtfcTime(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Lcom/popcap/notifications/GLobaleNtfMgr;->SetSkedulDisTime()V

    return-object v0
.end method
