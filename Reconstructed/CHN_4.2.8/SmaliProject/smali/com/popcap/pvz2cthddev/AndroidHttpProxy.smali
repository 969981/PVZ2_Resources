.class public Lcom/popcap/pvz2cthddev/AndroidHttpProxy;
.super Ljava/lang/Object;
.source "AndroidHttpProxy.java"


# instance fields
.field private final NET_NOT_REACHABLE:I

.field private final NET_REACHABILITY_UNKNOWN:I

.field private final NET_REACHABLE_ETHERNET:I

.field private final NET_REACHABLE_WIFI:I

.field private final NET_REACHABLE_WWAN:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidHttpProxy;->NET_NOT_REACHABLE:I

    const/4 v0, 0x1

    .line 57
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidHttpProxy;->NET_REACHABLE_WWAN:I

    const/4 v0, 0x2

    .line 58
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidHttpProxy;->NET_REACHABLE_WIFI:I

    const/4 v0, 0x3

    .line 59
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidHttpProxy;->NET_REACHABILITY_UNKNOWN:I

    const/4 v0, 0x4

    .line 60
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidHttpProxy;->NET_REACHABLE_ETHERNET:I

    .line 14
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidHttpProxy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 15
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidHttpProxy;->LogNetworkInfo()V

    return-void
.end method


# virtual methods
.method public GetNetworkStatus()I
    .locals 8

    const/4 v0, 0x1

    .line 65
    invoke-static {v0}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    const/4 v2, 0x0

    .line 66
    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v3

    const/4 v4, 0x6

    .line 67
    invoke-static {v4}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v5

    const/16 v6, 0x9

    .line 68
    invoke-static {v6}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v7

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-nez v5, :cond_0

    if-nez v7, :cond_0

    return v2

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidHttpProxy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 79
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 81
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_1

    return v0

    .line 84
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v4, :cond_2

    return v0

    .line 87
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v0, :cond_3

    const/4 v0, 0x2

    return v0

    .line 90
    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v6, :cond_4

    const/4 v0, 0x4

    return v0

    :cond_4
    const/4 v0, 0x3

    return v0

    :cond_5
    return v2
.end method

.method LogNetworkInfo()V
    .locals 5

    const/4 v0, 0x1

    .line 30
    invoke-static {v0}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    .line 31
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidHttpProxy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getNetworkPreference()I

    .line 32
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidHttpProxy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    .line 33
    invoke-static {v0}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    const/4 v0, 0x0

    .line 34
    invoke-static {v0}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    .line 37
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidHttpProxy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidHttpProxy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 47
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 49
    const-string v4, "network"

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Shutdown()V
    .locals 0

    return-void
.end method

.method public Startup()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
