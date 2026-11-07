.class public Lcom/popcap/util/PopCapNotificationManager;
.super Ljava/lang/Object;
.source "PopCapNotificationManager.java"


# static fields
.field private static _thisInstance:Lcom/popcap/util/PopCapNotificationManager; = null

.field private static bejeweledblitzIconId:I = 0x0

.field private static packName:Ljava/lang/String; = ""

.field private static pvz2IconId:I


# instance fields
.field private isInitialized:Z

.field private notifictionThread:Lcom/popcap/util/PopCapNotificationThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/popcap/util/PopCapDaemonService;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/popcap/util/PopCapNotificationManager;->notifictionThread:Lcom/popcap/util/PopCapNotificationThread;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/popcap/util/PopCapNotificationManager;->isInitialized:Z

    .line 24
    invoke-static {p1}, Lcom/popcap/util/PopCapNotificationThread;->Instance(Lcom/popcap/util/PopCapDaemonService;)Lcom/popcap/util/PopCapNotificationThread;

    move-result-object p1

    iput-object p1, p0, Lcom/popcap/util/PopCapNotificationManager;->notifictionThread:Lcom/popcap/util/PopCapNotificationThread;

    .line 25
    invoke-direct {p0}, Lcom/popcap/util/PopCapNotificationManager;->initNotificationList()V

    return-void
.end method

.method public static GetPackageIcon(Ljava/lang/String;)I
    .locals 2

    .line 161
    const-string v0, "pvz2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GET pakckgetName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " icon id = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Lcom/popcap/util/PopCapNotificationManager;->pvz2IconId:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DEBUG===="

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {}, Lcom/popcap/util/PopCapNotificationManager;->getPvz2IconId()I

    move-result p0

    return p0

    .line 167
    :cond_0
    invoke-static {}, Lcom/popcap/util/PopCapNotificationManager;->getBejeweledblitzIconId()I

    move-result p0

    return p0
.end method

.method public static getBejeweledblitzIconId()I
    .locals 1

    .line 150
    sget v0, Lcom/popcap/util/PopCapNotificationManager;->bejeweledblitzIconId:I

    return v0
.end method

.method public static getInstance(Lcom/popcap/util/PopCapDaemonService;)Lcom/popcap/util/PopCapNotificationManager;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 69
    :cond_0
    sget-object v1, Lcom/popcap/util/PopCapNotificationManager;->_thisInstance:Lcom/popcap/util/PopCapNotificationManager;

    if-nez v1, :cond_1

    .line 71
    new-instance v1, Lcom/popcap/util/PopCapNotificationManager;

    invoke-direct {v1, p0}, Lcom/popcap/util/PopCapNotificationManager;-><init>(Lcom/popcap/util/PopCapDaemonService;)V

    sput-object v1, Lcom/popcap/util/PopCapNotificationManager;->_thisInstance:Lcom/popcap/util/PopCapNotificationManager;

    goto :goto_0

    .line 76
    :cond_1
    const-string p0, "666666666666666  "

    const-string v1, "  have the instance not new "

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    sget-object p0, Lcom/popcap/util/PopCapNotificationManager;->_thisInstance:Lcom/popcap/util/PopCapNotificationManager;

    iget-boolean p0, p0, Lcom/popcap/util/PopCapNotificationManager;->isInitialized:Z

    if-nez p0, :cond_2

    .line 79
    sput-object v0, Lcom/popcap/util/PopCapNotificationManager;->_thisInstance:Lcom/popcap/util/PopCapNotificationManager;

    .line 81
    :cond_2
    sget-object p0, Lcom/popcap/util/PopCapNotificationManager;->_thisInstance:Lcom/popcap/util/PopCapNotificationManager;

    return-object p0
.end method

.method public static getPvz2IconId()I
    .locals 1

    .line 139
    sget v0, Lcom/popcap/util/PopCapNotificationManager;->pvz2IconId:I

    return v0
.end method

.method public static getStarAppPackName()Ljava/lang/String;
    .locals 1

    .line 131
    sget-object v0, Lcom/popcap/util/PopCapNotificationManager;->packName:Ljava/lang/String;

    return-object v0
.end method

.method private initNotificationList()V
    .locals 2

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/popcap/util/PopCapNotificationManager;->isInitialized:Z

    .line 99
    new-instance v0, Lcom/popcap/events/SkuListEventFactory;

    invoke-direct {v0}, Lcom/popcap/events/SkuListEventFactory;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/popcap/util/PopCapNotificationManager;->notifictionThread:Lcom/popcap/util/PopCapNotificationThread;

    invoke-virtual {v0}, Lcom/popcap/events/EventFactory;->CreteEvent()Lcom/popcap/events/IEventTick;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/popcap/util/PopCapNotificationThread;->RegistEvent(Lcom/popcap/events/IEventTick;)V

    .line 103
    new-instance v0, Lcom/popcap/events/WeekNtfEventFactory;

    invoke-direct {v0}, Lcom/popcap/events/WeekNtfEventFactory;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/popcap/util/PopCapNotificationManager;->notifictionThread:Lcom/popcap/util/PopCapNotificationThread;

    invoke-virtual {v0}, Lcom/popcap/events/EventFactory;->CreteEvent()Lcom/popcap/events/IEventTick;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/popcap/util/PopCapNotificationThread;->RegistEvent(Lcom/popcap/events/IEventTick;)V

    .line 107
    new-instance v0, Lcom/popcap/events/GlobalNtfEventFactory;

    invoke-direct {v0}, Lcom/popcap/events/GlobalNtfEventFactory;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/popcap/util/PopCapNotificationManager;->notifictionThread:Lcom/popcap/util/PopCapNotificationThread;

    invoke-virtual {v0}, Lcom/popcap/events/EventFactory;->CreteEvent()Lcom/popcap/events/IEventTick;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/popcap/util/PopCapNotificationThread;->RegistEvent(Lcom/popcap/events/IEventTick;)V

    .line 111
    new-instance v0, Lcom/popcap/events/RewardEvent/SendUserRewardEventsFactory;

    invoke-direct {v0}, Lcom/popcap/events/RewardEvent/SendUserRewardEventsFactory;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/popcap/util/PopCapNotificationManager;->notifictionThread:Lcom/popcap/util/PopCapNotificationThread;

    invoke-virtual {v0}, Lcom/popcap/events/EventFactory;->CreteEvent()Lcom/popcap/events/IEventTick;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/popcap/util/PopCapNotificationThread;->RegistEvent(Lcom/popcap/events/IEventTick;)V

    return-void
.end method

.method public static setBejeweledblitzIconId(I)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 156
    :cond_0
    sput p0, Lcom/popcap/util/PopCapNotificationManager;->bejeweledblitzIconId:I

    return-void
.end method

.method public static setPvz2IconId(I)V
    .locals 1

    .line 143
    sget v0, Lcom/popcap/util/PopCapNotificationManager;->pvz2IconId:I

    if-eqz v0, :cond_0

    return-void

    .line 145
    :cond_0
    sput p0, Lcom/popcap/util/PopCapNotificationManager;->pvz2IconId:I

    return-void
.end method

.method public static setStartAppPackName(Ljava/lang/String;)V
    .locals 0

    .line 135
    sput-object p0, Lcom/popcap/util/PopCapNotificationManager;->packName:Ljava/lang/String;

    return-void
.end method

.method private startNotficationThread()V
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/popcap/util/PopCapNotificationManager;->isInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/popcap/util/PopCapNotificationManager;->notifictionThread:Lcom/popcap/util/PopCapNotificationThread;

    if-nez v0, :cond_1

    return-void

    .line 48
    :cond_1
    invoke-virtual {v0}, Lcom/popcap/util/PopCapNotificationThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/popcap/util/PopCapNotificationManager;->notifictionThread:Lcom/popcap/util/PopCapNotificationThread;

    invoke-virtual {v0}, Lcom/popcap/util/PopCapNotificationThread;->start()V

    :cond_2
    return-void
.end method


# virtual methods
.method public OnUserStartGameEvent(Ljava/lang/String;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/popcap/util/PopCapNotificationManager;->notifictionThread:Lcom/popcap/util/PopCapNotificationThread;

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-virtual {v0, p1}, Lcom/popcap/util/PopCapNotificationThread;->onUserStartGameEvent(Ljava/lang/String;)V

    return-void
.end method

.method public SetDebugVersionConfig()V
    .locals 1

    .line 54
    const-string v0, "http://testpnserver.popcap.com.cn/index.php?"

    invoke-static {v0}, Lcom/popcap/network/PCPNetWork;->SetURl(Ljava/lang/String;)V

    return-void
.end method

.method public SetReleaseVersionConfig()V
    .locals 1

    .line 58
    const-string v0, "http://pnserver.intelligent.popcap.com.cn/index.php?"

    invoke-static {v0}, Lcom/popcap/network/PCPNetWork;->SetURl(Ljava/lang/String;)V

    return-void
.end method

.method public StartPopcapService()V
    .locals 1

    .line 85
    sget-object v0, Lcom/popcap/util/PopCapNotificationManager;->_thisInstance:Lcom/popcap/util/PopCapNotificationManager;

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-direct {v0}, Lcom/popcap/util/PopCapNotificationManager;->startNotficationThread()V

    return-void
.end method

.method public UpdateSkedualTime(Ljava/lang/String;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/popcap/util/PopCapNotificationManager;->notifictionThread:Lcom/popcap/util/PopCapNotificationThread;

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-virtual {v0, p1}, Lcom/popcap/util/PopCapNotificationThread;->UpdateSkedualTime(Ljava/lang/String;)V

    return-void
.end method

.method public stopNotifications()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/popcap/util/PopCapNotificationManager;->notifictionThread:Lcom/popcap/util/PopCapNotificationThread;

    invoke-virtual {v0}, Lcom/popcap/util/PopCapNotificationThread;->stopThread()V

    const/4 v0, 0x0

    .line 122
    sput-object v0, Lcom/popcap/util/PopCapNotificationManager;->_thisInstance:Lcom/popcap/util/PopCapNotificationManager;

    return-void
.end method
