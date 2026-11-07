.class public Lcom/mobile/auth/z/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobile/auth/z/q$a;
    }
.end annotation


# static fields
.field private static f:Lcom/mobile/auth/z/q;


# instance fields
.field private a:Landroid/net/Network;

.field private b:Landroid/net/ConnectivityManager$NetworkCallback;

.field private c:Landroid/net/ConnectivityManager;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mobile/auth/z/q$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Timer;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobile/auth/z/q;->a:Landroid/net/Network;

    iput-object v0, p0, Lcom/mobile/auth/z/q;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v0, p0, Lcom/mobile/auth/z/q;->c:Landroid/net/ConnectivityManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mobile/auth/z/q;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/mobile/auth/z/q;->e:Ljava/util/Timer;

    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/z/q;)Landroid/net/Network;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/z/q;->a:Landroid/net/Network;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/mobile/auth/z/q;Landroid/net/Network;)Landroid/net/Network;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/z/q;->a:Landroid/net/Network;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()Lcom/mobile/auth/z/q;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/mobile/auth/z/q;->f:Lcom/mobile/auth/z/q;

    if-nez v0, :cond_1

    const-class v0, Lcom/mobile/auth/z/q;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/mobile/auth/z/q;->f:Lcom/mobile/auth/z/q;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mobile/auth/z/q;

    invoke-direct {v1}, Lcom/mobile/auth/z/q;-><init>()V

    sput-object v1, Lcom/mobile/auth/z/q;->f:Lcom/mobile/auth/z/q;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/mobile/auth/z/q;->f:Lcom/mobile/auth/z/q;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private declared-synchronized a(Lcom/mobile/auth/z/q$a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/z/q;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-static {}, Lcom/mobile/auth/z/t;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_2
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/mobile/auth/z/q;ZLandroid/net/Network;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/mobile/auth/z/q;->a(ZLandroid/net/Network;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private declared-synchronized a(ZLandroid/net/Network;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/z/q;->e:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/z/q;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobile/auth/z/q;->e:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/z/q;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobile/auth/z/q$a;

    invoke-interface {v1, p1, p2}, Lcom/mobile/auth/z/q$a;->a(ZLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/mobile/auth/z/q;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    invoke-static {}, Lcom/mobile/auth/z/t;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lcom/mobile/auth/z/q;)Landroid/net/ConnectivityManager;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/z/q;->c:Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Lcom/mobile/auth/z/q$a;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/z/q;->a:Landroid/net/Network;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/mobile/auth/z/q;->a:Landroid/net/Network;

    invoke-interface {p2, p1, v0}, Lcom/mobile/auth/z/q$a;->a(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/mobile/auth/z/q;->a(Lcom/mobile/auth/z/q$a;)V

    iget-object p2, p0, Lcom/mobile/auth/z/q;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/mobile/auth/z/q;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 p2, 0x0

    :try_start_2
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/mobile/auth/z/q;->c:Landroid/net/ConnectivityManager;

    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    new-instance v0, Lcom/mobile/auth/z/q$1;

    invoke-direct {v0, p0}, Lcom/mobile/auth/z/q$1;-><init>(Lcom/mobile/auth/z/q;)V

    iput-object v0, p0, Lcom/mobile/auth/z/q;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-static {}, Lcom/mobile/auth/z/u;->g()I

    move-result v0

    const/16 v1, 0xbb8

    if-lt v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x7d0

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/mobile/auth/z/q;->c:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/mobile/auth/z/q;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p1, v2, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mobile/auth/z/q;->e:Ljava/util/Timer;

    new-instance v2, Lcom/mobile/auth/z/q$2;

    invoke-direct {v2, p0}, Lcom/mobile/auth/z/q$2;-><init>(Lcom/mobile/auth/z/q;)V

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iget-object v0, p0, Lcom/mobile/auth/z/q;->c:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/mobile/auth/z/q;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    :try_start_4
    invoke-static {}, Lcom/mobile/auth/z/t;->b()V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/mobile/auth/z/q;->a(ZLandroid/net/Network;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_5
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/z/q;->e:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/z/q;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/mobile/auth/z/q;->e:Ljava/util/Timer;

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/z/q;->c:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/z/q;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/z/q;->c:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/mobile/auth/z/q;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_1
    iput-object v1, p0, Lcom/mobile/auth/z/q;->c:Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/mobile/auth/z/q;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v1, p0, Lcom/mobile/auth/z/q;->a:Landroid/net/Network;

    iget-object v0, p0, Lcom/mobile/auth/z/q;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-static {}, Lcom/mobile/auth/z/t;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
