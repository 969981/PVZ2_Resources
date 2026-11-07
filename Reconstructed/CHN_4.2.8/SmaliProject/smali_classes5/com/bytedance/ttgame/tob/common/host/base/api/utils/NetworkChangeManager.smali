.class public Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;
.super Ljava/lang/Object;
.source "NetworkChangeManager.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field private static volatile sInstance:Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;


# instance fields
.field private intent:Landroid/content/Intent;

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver$INetworkAvailable;",
            ">;"
        }
    .end annotation
.end field

.field private networkChangeReceiver:Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->list:Ljava/util/List;

    .line 32
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver;

    invoke-direct {v0, p0}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver;-><init>(Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;)V

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->networkChangeReceiver:Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver;

    return-void
.end method

.method public static getInstance()Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "0715bd001358f5d7e53eafbfd115a9a8"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v1, v4, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;

    return-object v0

    .line 20
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->sInstance:Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;

    if-nez v0, :cond_2

    .line 21
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->sInstance:Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;

    if-nez v1, :cond_1

    .line 23
    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;

    invoke-direct {v1}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;-><init>()V

    sput-object v1, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->sInstance:Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;

    .line 25
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 28
    :cond_2
    :goto_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->sInstance:Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;

    return-object v0
.end method


# virtual methods
.method public onNetworkChanged(Z)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "de84f5293c41dfd2eef34b44ee095a06"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver$INetworkAvailable;

    .line 59
    invoke-interface {v1, p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver$INetworkAvailable;->isAvailable(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized register(Landroid/content/Context;Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver$INetworkAvailable;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "13d48201d0bd8da592a1f1d362e18d37"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 36
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_1
    iget-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->intent:Landroid/content/Intent;

    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    .line 41
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 42
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->networkChangeReceiver:Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->intent:Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unRegisterNetworkChangeReceiver(Landroid/content/Context;Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver$INetworkAvailable;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "6d2b3c49e77c4c66ba27b93344de59de"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 48
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 51
    :cond_1
    iget-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->list:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->intent:Landroid/content/Intent;

    if-eqz p2, :cond_2

    .line 52
    iget-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->networkChangeReceiver:Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->intent:Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
