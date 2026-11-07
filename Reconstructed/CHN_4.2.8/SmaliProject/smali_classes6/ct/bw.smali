.class public final Lct/bw;
.super Landroid/content/BroadcastReceiver;
.source "TL"


# instance fields
.field private final a:Lct/be;

.field private b:Z


# direct methods
.method public constructor <init>(Lct/be;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    iput-object p1, p0, Lct/bw;->a:Lct/be;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 28
    iget-boolean v0, p0, Lct/bw;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lct/bw;->b:Z

    .line 33
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lct/bw;->a:Lct/be;

    iget-object v1, v1, Lct/be;->a:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 37
    iget-boolean v0, p0, Lct/bw;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lct/bw;->b:Z

    .line 43
    :try_start_0
    iget-object v0, p0, Lct/bw;->a:Lct/be;

    iget-object v0, v0, Lct/be;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "noConnectivity"

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 66
    iget-object p1, p0, Lct/bw;->a:Lct/be;

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lct/be;->c(Ljava/lang/Object;)V

    return-void

    .line 68
    :cond_1
    invoke-static {p1}, Lct/b$a;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 70
    iget-object p1, p0, Lct/bw;->a:Lct/be;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lct/be;->c(Ljava/lang/Object;)V

    return-void

    .line 72
    :cond_2
    iget-object p1, p0, Lct/bw;->a:Lct/be;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lct/be;->c(Ljava/lang/Object;)V

    return-void
.end method
