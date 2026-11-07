.class public Lcom/popcap/events/SkuListEventFactory;
.super Lcom/popcap/events/EventFactory;
.source "SkuListEventFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/popcap/events/EventFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public CreteEvent()Lcom/popcap/events/IEventTick;
    .locals 2

    .line 11
    new-instance v0, Lcom/popcap/events/SkuListMgr;

    invoke-direct {v0}, Lcom/popcap/events/SkuListMgr;-><init>()V

    .line 12
    const-string v1, "lstSkuTime"

    invoke-static {v1}, Lcom/popcap/util/NtfUtil;->GetLocalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/popcap/events/SkuListMgr;->SetLastGetSkuListTime(Ljava/lang/String;)V

    .line 13
    const-string v1, "skus"

    invoke-static {v1}, Lcom/popcap/util/NtfUtil;->GetLocalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/popcap/events/SkuListMgr;->FillSkuList(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/popcap/events/SkuListMgr;->SetSkuDisTime()V

    return-object v0
.end method
