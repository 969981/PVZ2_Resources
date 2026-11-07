.class public Lcom/bytedance/ads/convert/flat/c/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ads/convert/flat/c/c$b;
    }
.end annotation


# static fields
.field public static volatile a:Lcom/bytedance/ads/convert/flat/c/c;


# instance fields
.field public b:Landroid/net/ConnectivityManager;

.field public c:Landroid/net/Network;

.field public d:Landroid/net/ConnectivityManager$NetworkCallback;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/bytedance/ads/convert/flat/c/c;->b:Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/ads/convert/flat/c/c;
    .locals 2

    sget-object v0, Lcom/bytedance/ads/convert/flat/c/c;->a:Lcom/bytedance/ads/convert/flat/c/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/ads/convert/flat/c/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/ads/convert/flat/c/c;->a:Lcom/bytedance/ads/convert/flat/c/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/ads/convert/flat/c/c;

    invoke-direct {v1, p0}, Lcom/bytedance/ads/convert/flat/c/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/ads/convert/flat/c/c;->a:Lcom/bytedance/ads/convert/flat/c/c;

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
    sget-object p0, Lcom/bytedance/ads/convert/flat/c/c;->a:Lcom/bytedance/ads/convert/flat/c/c;

    return-object p0
.end method

.method public static a(Landroid/net/ConnectivityManager;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "getMobileDataEnabled"

    :try_start_1
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static synthetic a(Lcom/bytedance/ads/convert/flat/c/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/ads/convert/flat/c/c;->e:Z

    return p1
.end method


# virtual methods
.method public a(Lcom/bytedance/ads/convert/flat/c/c$b;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/c/c;->b:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lcom/bytedance/ads/convert/flat/c/c;->c:Landroid/net/Network;

    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lcom/bytedance/ads/convert/flat/c/c;->e:Z

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/c/c;->c:Landroid/net/Network;

    check-cast p1, Lcom/bytedance/ads/convert/flat/a/g$a;

    invoke-virtual {p1, v0}, Lcom/bytedance/ads/convert/flat/a/g$a;->a(Landroid/net/Network;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/c/c;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/bytedance/ads/convert/flat/c/c;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object v1, p0, Lcom/bytedance/ads/convert/flat/c/c;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_2
    :goto_0
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

    new-instance v2, Lcom/bytedance/ads/convert/flat/c/c$a;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/ads/convert/flat/c/c$a;-><init>(Lcom/bytedance/ads/convert/flat/c/c;Lcom/bytedance/ads/convert/flat/c/c$b;)V

    iput-object v2, p0, Lcom/bytedance/ads/convert/flat/c/c;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    :try_start_1
    iget-object v3, p0, Lcom/bytedance/ads/convert/flat/c/c;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v0, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    :goto_1
    check-cast p1, Lcom/bytedance/ads/convert/flat/a/g$a;

    invoke-virtual {p1, v1}, Lcom/bytedance/ads/convert/flat/a/g$a;->a(Landroid/net/Network;)V

    :cond_3
    :goto_2
    return-void
.end method
