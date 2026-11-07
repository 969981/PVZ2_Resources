.class public Lcom/mobile/auth/l/r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobile/auth/l/r$a;
    }
.end annotation


# static fields
.field private static a:Lcom/mobile/auth/l/r;


# instance fields
.field private b:Landroid/net/ConnectivityManager;

.field private c:Landroid/net/Network;

.field private d:Landroid/net/ConnectivityManager$NetworkCallback;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/mobile/auth/l/r;->b:Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/l/r;)Landroid/net/ConnectivityManager;
    .locals 0

    iget-object p0, p0, Lcom/mobile/auth/l/r;->b:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic a(Lcom/mobile/auth/l/r;Landroid/net/Network;)Landroid/net/Network;
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/l/r;->c:Landroid/net/Network;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/mobile/auth/l/r;
    .locals 2

    sget-object v0, Lcom/mobile/auth/l/r;->a:Lcom/mobile/auth/l/r;

    if-nez v0, :cond_1

    const-class v0, Lcom/mobile/auth/l/r;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mobile/auth/l/r;->a:Lcom/mobile/auth/l/r;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mobile/auth/l/r;

    invoke-direct {v1, p0}, Lcom/mobile/auth/l/r;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mobile/auth/l/r;->a:Lcom/mobile/auth/l/r;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/mobile/auth/l/r;->a:Lcom/mobile/auth/l/r;

    return-object p0
.end method

.method static synthetic a(Lcom/mobile/auth/l/r;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mobile/auth/l/r;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/mobile/auth/l/r;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 0

    iget-object p0, p0, Lcom/mobile/auth/l/r;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/mobile/auth/l/r$a;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/l/r;->b:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "WifiNetworkUtils"

    const-string v2, "mConnectivityManager \u4e3a\u7a7a"

    invoke-static {v0, v2}, Lcom/mobile/auth/l/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/mobile/auth/l/r$a;->a(Landroid/net/Network;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mobile/auth/l/r;->c:Landroid/net/Network;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mobile/auth/l/r;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/l/r;->b:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/mobile/auth/l/r;->c:Landroid/net/Network;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HttpUtils"

    const-string v1, "reuse network: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mobile/auth/l/r;->c:Landroid/net/Network;

    invoke-interface {p1, v0}, Lcom/mobile/auth/l/r$a;->a(Landroid/net/Network;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/mobile/auth/l/r;->d:Landroid/net/ConnectivityManager$NetworkCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    :try_start_3
    iget-object v0, p0, Lcom/mobile/auth/l/r;->b:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/mobile/auth/l/r;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-object v1, p0, Lcom/mobile/auth/l/r;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    :goto_0
    const-string v0, "HttpUtils"

    const-string v2, "clear: "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    new-instance v2, Lcom/mobile/auth/l/r$1;

    invoke-direct {v2, p0, p1}, Lcom/mobile/auth/l/r$1;-><init>(Lcom/mobile/auth/l/r;Lcom/mobile/auth/l/r$a;)V

    iput-object v2, p0, Lcom/mobile/auth/l/r;->d:Landroid/net/ConnectivityManager$NetworkCallback;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v3, p0, Lcom/mobile/auth/l/r;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v0, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-interface {p1, v1}, Lcom/mobile/auth/l/r$a;->a(Landroid/net/Network;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/l/r;->c:Landroid/net/Network;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/mobile/auth/l/r;->b:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/mobile/auth/l/r;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/mobile/auth/l/r;->b:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/mobile/auth/l/r;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobile/auth/l/r;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v0, p0, Lcom/mobile/auth/l/r;->c:Landroid/net/Network;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
