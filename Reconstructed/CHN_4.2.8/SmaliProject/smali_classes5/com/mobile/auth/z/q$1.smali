.class final Lcom/mobile/auth/z/q$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/z/q;->a(Landroid/content/Context;Lcom/mobile/auth/z/q$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/z/q;


# direct methods
.method constructor <init>(Lcom/mobile/auth/z/q;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/z/q$1;->a:Lcom/mobile/auth/z/q;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    const-string v0, "Network onAvailable"

    invoke-static {v0}, Lcom/mobile/auth/z/t;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/z/q$1;->a:Lcom/mobile/auth/z/q;

    invoke-static {v0, p1}, Lcom/mobile/auth/z/q;->a(Lcom/mobile/auth/z/q;Landroid/net/Network;)Landroid/net/Network;

    iget-object v0, p0, Lcom/mobile/auth/z/q$1;->a:Lcom/mobile/auth/z/q;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/mobile/auth/z/q;->a(Lcom/mobile/auth/z/q;ZLandroid/net/Network;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/mobile/auth/z/q$1;->a:Lcom/mobile/auth/z/q;

    invoke-static {p1}, Lcom/mobile/auth/z/q;->b(Lcom/mobile/auth/z/q;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object v0, p0, Lcom/mobile/auth/z/q$1;->a:Lcom/mobile/auth/z/q;

    invoke-static {v0}, Lcom/mobile/auth/z/q;->a(Lcom/mobile/auth/z/q;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/mobile/auth/z/u;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    return-void

    :catch_0
    :try_start_2
    invoke-static {}, Lcom/mobile/auth/z/t;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    const-string p1, "Network onLost"

    invoke-static {p1}, Lcom/mobile/auth/z/t;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/z/q$1;->a:Lcom/mobile/auth/z/q;

    invoke-virtual {p1}, Lcom/mobile/auth/z/q;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final onUnavailable()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    const-string v0, "Network onUnavailable"

    invoke-static {v0}, Lcom/mobile/auth/z/t;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/z/q$1;->a:Lcom/mobile/auth/z/q;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mobile/auth/z/q;->a(Lcom/mobile/auth/z/q;ZLandroid/net/Network;)V

    iget-object v0, p0, Lcom/mobile/auth/z/q$1;->a:Lcom/mobile/auth/z/q;

    invoke-virtual {v0}, Lcom/mobile/auth/z/q;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
