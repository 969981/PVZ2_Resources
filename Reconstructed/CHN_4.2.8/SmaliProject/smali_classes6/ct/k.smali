.class final Lct/k;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lct/j;


# direct methods
.method constructor <init>(Lct/j;)V
    .locals 0

    iput-object p1, p0, Lct/k;->a:Lct/j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lct/ax;->b()V

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lct/k;->a:Lct/j;

    invoke-static {p1, v0}, Lct/j;->a(Lct/j;I)I

    invoke-static {}, Lct/ax;->b()V

    invoke-static {p2}, Lct/aw;->a(Z)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lct/aw;->b()V

    const/4 p2, 0x1

    invoke-static {p2}, Lct/aw;->a(Z)V

    invoke-static {}, Lct/aw;->f()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, p0, Lct/k;->a:Lct/j;

    invoke-static {p2}, Lct/j;->a(Lct/j;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    iget-object v0, p0, Lct/k;->a:Lct/j;

    invoke-static {v0}, Lct/j;->b(Lct/j;)I

    move-result v0

    if-eq p2, v0, :cond_1

    invoke-static {}, Lct/ax;->b()V

    iget-object p2, p0, Lct/k;->a:Lct/j;

    invoke-virtual {p2}, Lct/j;->b()V

    iget-object p2, p0, Lct/k;->a:Lct/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lct/j;->a(Lct/j;J)J

    :cond_1
    iget-object p2, p0, Lct/k;->a:Lct/j;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    invoke-static {p2, p1}, Lct/j;->a(Lct/j;I)I

    return-void

    :cond_2
    iget-object p1, p0, Lct/k;->a:Lct/j;

    invoke-static {p1, v0}, Lct/j;->a(Lct/j;I)I

    invoke-static {}, Lct/ax;->b()V

    invoke-static {p2}, Lct/aw;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
