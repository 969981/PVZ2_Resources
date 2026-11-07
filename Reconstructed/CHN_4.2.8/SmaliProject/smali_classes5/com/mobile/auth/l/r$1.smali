.class Lcom/mobile/auth/l/r$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/l/r;->a(Lcom/mobile/auth/l/r$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/l/r$a;

.field final synthetic b:Lcom/mobile/auth/l/r;


# direct methods
.method constructor <init>(Lcom/mobile/auth/l/r;Lcom/mobile/auth/l/r$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/l/r$1;->b:Lcom/mobile/auth/l/r;

    iput-object p2, p0, Lcom/mobile/auth/l/r$1;->a:Lcom/mobile/auth/l/r$a;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mobile/auth/l/r$1;->b:Lcom/mobile/auth/l/r;

    invoke-static {v1}, Lcom/mobile/auth/l/r;->a(Lcom/mobile/auth/l/r;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/l/r$1;->b:Lcom/mobile/auth/l/r;

    invoke-static {v1, p1}, Lcom/mobile/auth/l/r;->a(Lcom/mobile/auth/l/r;Landroid/net/Network;)Landroid/net/Network;

    iget-object v1, p0, Lcom/mobile/auth/l/r$1;->a:Lcom/mobile/auth/l/r$a;

    invoke-interface {v1, p1}, Lcom/mobile/auth/l/r$a;->a(Landroid/net/Network;)V

    iget-object p1, p0, Lcom/mobile/auth/l/r$1;->b:Lcom/mobile/auth/l/r;

    invoke-static {p1, v2}, Lcom/mobile/auth/l/r;->a(Lcom/mobile/auth/l/r;Z)Z

    goto :goto_0

    :cond_0
    const-string p1, "WifiNetworkUtils"

    const-string v1, "\u5207\u6362\u5931\u8d25\uff0c\u672a\u5f00\u542f\u6570\u636e\u7f51\u7edc"

    invoke-static {p1, v1}, Lcom/mobile/auth/l/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/l/r$1;->b:Lcom/mobile/auth/l/r;

    invoke-static {p1, v0}, Lcom/mobile/auth/l/r;->a(Lcom/mobile/auth/l/r;Landroid/net/Network;)Landroid/net/Network;

    iget-object p1, p0, Lcom/mobile/auth/l/r$1;->a:Lcom/mobile/auth/l/r$a;

    invoke-interface {p1, v0}, Lcom/mobile/auth/l/r$a;->a(Landroid/net/Network;)V

    iget-object p1, p0, Lcom/mobile/auth/l/r$1;->b:Lcom/mobile/auth/l/r;

    invoke-static {p1}, Lcom/mobile/auth/l/r;->a(Lcom/mobile/auth/l/r;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object v1, p0, Lcom/mobile/auth/l/r$1;->b:Lcom/mobile/auth/l/r;

    invoke-static {v1}, Lcom/mobile/auth/l/r;->b(Lcom/mobile/auth/l/r;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lcom/mobile/auth/l/r$1;->b:Lcom/mobile/auth/l/r;

    invoke-static {p1, v0}, Lcom/mobile/auth/l/r;->a(Lcom/mobile/auth/l/r;Landroid/net/Network;)Landroid/net/Network;

    iget-object p1, p0, Lcom/mobile/auth/l/r$1;->a:Lcom/mobile/auth/l/r$a;

    invoke-interface {p1, v0}, Lcom/mobile/auth/l/r$a;->a(Landroid/net/Network;)V

    :goto_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    iget-object p1, p0, Lcom/mobile/auth/l/r$1;->b:Lcom/mobile/auth/l/r;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mobile/auth/l/r;->a(Lcom/mobile/auth/l/r;Z)Z

    return-void
.end method
