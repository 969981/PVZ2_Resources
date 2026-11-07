.class public Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;
.super Ljava/lang/Object;
.source "AndroidViewContainerManager.java"


# static fields
.field private static sMgr:Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;


# instance fields
.field private container:Lcom/popcap/pvz2cthddev/AndroidViewContainer;

.field public mNativeDriverPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sput-object p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->sMgr:Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;

    .line 45
    iput-wide p1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->mNativeDriverPtr:J

    return-void
.end method

.method static synthetic access$000(Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;)Lcom/popcap/pvz2cthddev/AndroidViewContainer;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->container:Lcom/popcap/pvz2cthddev/AndroidViewContainer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;Lcom/popcap/pvz2cthddev/AndroidViewContainer;)Lcom/popcap/pvz2cthddev/AndroidViewContainer;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->container:Lcom/popcap/pvz2cthddev/AndroidViewContainer;

    return-object p1
.end method

.method public static instance()Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;
    .locals 1

    .line 50
    sget-object v0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->sMgr:Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;

    return-object v0
.end method


# virtual methods
.method public AddViewContainer(Ljava/lang/String;)V
    .locals 2

    .line 119
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    new-instance v1, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager$1;

    invoke-direct {v1, p0, p1}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager$1;-><init>(Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public CallSettlement(Ljava/lang/String;III)V
    .locals 0

    .line 181
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->Native_CallSettlement(Ljava/lang/String;III)V

    return-void
.end method

.method public CloseWebView()V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->RemoveViewContainer()V

    return-void
.end method

.method public DoLottery(Ljava/lang/String;)V
    .locals 0

    .line 186
    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->Native_CallLottery(Ljava/lang/String;)V

    return-void
.end method

.method public DoOpenAd()V
    .locals 0

    .line 206
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->RemoveViewContainer()V

    .line 207
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->Native_CallOpenAd()V

    return-void
.end method

.method public DoScoreStoreBuy(Ljava/lang/String;I)V
    .locals 0

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->Native_CallScoreStoreBuy(Ljava/lang/String;I)V

    return-void
.end method

.method public DoScoreStoreInfo(Ljava/lang/String;)V
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->Native_CallScoreStoreInfo(Ljava/lang/String;)V

    return-void
.end method

.method public HandleBackPressed()Z
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->IsViewContainerExist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->RemoveViewContainer()V

    const/4 v0, 0x1

    return v0
.end method

.method public Initialize()V
    .locals 0

    return-void
.end method

.method public IsViewContainerExist()Z
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->container:Lcom/popcap/pvz2cthddev/AndroidViewContainer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public native Native_CallAddPlayTimes(Ljava/lang/String;II)V
.end method

.method public native Native_CallCloseWebView()V
.end method

.method public native Native_CallConsumeCash(Ljava/lang/String;II)V
.end method

.method public native Native_CallLottery(Ljava/lang/String;)V
.end method

.method public native Native_CallOpenAd()V
.end method

.method public native Native_CallScoreStoreBuy(Ljava/lang/String;I)V
.end method

.method public native Native_CallScoreStoreInfo(Ljava/lang/String;)V
.end method

.method public native Native_CallSettlement(Ljava/lang/String;III)V
.end method

.method public PassCallAddPlayTimes(Ljava/lang/String;I)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->container:Lcom/popcap/pvz2cthddev/AndroidViewContainer;

    invoke-virtual {v0, p1, p2}, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->PassCallAddPlayTimes(Ljava/lang/String;I)V

    return-void
.end method

.method public PassCallConsumeCash(Ljava/lang/String;I)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->container:Lcom/popcap/pvz2cthddev/AndroidViewContainer;

    invoke-virtual {v0, p1, p2}, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->PassCallConsumeCash(Ljava/lang/String;I)V

    return-void
.end method

.method public PassCallLottery(Ljava/lang/String;III)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->container:Lcom/popcap/pvz2cthddev/AndroidViewContainer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->PassCallLottery(Ljava/lang/String;III)V

    return-void
.end method

.method public PassCallScoreStoreBuy(Ljava/lang/String;I)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->container:Lcom/popcap/pvz2cthddev/AndroidViewContainer;

    invoke-virtual {v0, p1, p2}, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->PassCallScoreStoreBuy(Ljava/lang/String;I)V

    return-void
.end method

.method public PassCallScoreStoreInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->container:Lcom/popcap/pvz2cthddev/AndroidViewContainer;

    invoke-virtual {v0, p1, p2}, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->PassCallScoreStoreInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public PassCallSettlement(Ljava/lang/String;I)V
    .locals 2

    .line 86
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "CallSettlement"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->container:Lcom/popcap/pvz2cthddev/AndroidViewContainer;

    invoke-virtual {v0, p1, p2}, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->PassCallSettlement(Ljava/lang/String;I)V

    return-void
.end method

.method public RemoveViewContainer()V
    .locals 2

    .line 143
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 145
    const-string v0, "AndroidViewContainerMgr"

    const-string v1, "RemoveViewContainer: SexyAppFrameworkActivity.instance() is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 149
    :cond_0
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    new-instance v1, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager$2;

    invoke-direct {v1, p0}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager$2;-><init>(Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;)V

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ShowWebView(Ljava/lang/String;)V
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Java ShowWebView: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidViewContainerMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    const-string p1, "ShowWebView: SexyAppFrameworkActivity.instance() is null!"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 65
    :cond_0
    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->AddViewContainer(Ljava/lang/String;)V

    return-void
.end method

.method public addPlayTimes(Ljava/lang/String;II)V
    .locals 0

    .line 212
    invoke-virtual {p0, p1, p2, p3}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->Native_CallAddPlayTimes(Ljava/lang/String;II)V

    return-void
.end method

.method public consumeCash(Ljava/lang/String;II)V
    .locals 0

    .line 201
    invoke-virtual {p0, p1, p2, p3}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->Native_CallConsumeCash(Ljava/lang/String;II)V

    return-void
.end method
