.class public Lgbsdk/common/host/ablq;
.super Ljava/lang/Object;
.source "Ipv6ConnectionManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static qv:Ljava/lang/String;

.field public static qw:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const-class v0, Lgbsdk/common/host/ablq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/ablq;->TAG:Ljava/lang/String;

    const-string v0, "2001:4860:4860::8888"

    .line 15
    sput-object v0, Lgbsdk/common/host/ablq;->qv:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lgbsdk/common/host/ablq;->qw:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cn()V
    .locals 2

    .line 20
    sget-object v0, Lgbsdk/common/host/ablq;->TAG:Ljava/lang/String;

    const-string v1, "detectIpv6Reachable"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lgbsdk/common/host/ablq;->qw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lgbsdk/common/host/ablq;->co()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private static co()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 28
    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    :try_start_1
    new-instance v1, Ljava/net/InetSocketAddress;

    sget-object v3, Lgbsdk/common/host/ablq;->qv:Ljava/lang/String;

    const/16 v4, 0x35

    invoke-direct {v1, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 30
    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V

    .line 32
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 33
    instance-of v3, v1, Ljava/net/Inet6Address;

    if-eqz v3, :cond_1

    .line 34
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 38
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string v4, "2001:0000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_2
    throw v0

    :catch_1
    nop

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_3
    :goto_3
    return v0
.end method
