.class final Lct/cb;
.super Landroid/content/BroadcastReceiver;
.source "TL"


# instance fields
.field private volatile a:Z

.field private final b:Lct/be;

.field private final c:Landroid/net/wifi/WifiManager;

.field private d:J

.field private e:J

.field private f:I

.field private g:Z

.field private final h:Landroid/os/Handler;

.field private final i:Lct/bo;

.field private final j:Lct/bo;

.field private final k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lct/be;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 72
    iput-object p1, p0, Lct/cb;->b:Lct/be;

    .line 73
    invoke-virtual {p1}, Lct/be;->b()Landroid/net/wifi/WifiManager;

    move-result-object p1

    iput-object p1, p0, Lct/cb;->c:Landroid/net/wifi/WifiManager;

    .line 75
    new-instance p1, Lct/bo;

    invoke-direct {p1}, Lct/bo;-><init>()V

    iput-object p1, p0, Lct/cb;->i:Lct/bo;

    .line 76
    new-instance p1, Lct/bo;

    invoke-direct {p1}, Lct/bo;-><init>()V

    iput-object p1, p0, Lct/cb;->j:Lct/bo;

    .line 78
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lct/cb;->h:Landroid/os/Handler;

    .line 79
    new-instance p1, Lct/cb$1;

    invoke-direct {p1, p0}, Lct/cb$1;-><init>(Lct/cb;)V

    iput-object p1, p0, Lct/cb;->k:Ljava/lang/Runnable;

    return-void
.end method

.method private a(J)V
    .locals 2

    .line 235
    iget-object v0, p0, Lct/cb;->h:Landroid/os/Handler;

    .line 236
    iget-object v1, p0, Lct/cb;->k:Ljava/lang/Runnable;

    .line 238
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lct/cb;J)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lct/cb;->a(J)V

    return-void
.end method

.method static synthetic a(Lct/cb;)Z
    .locals 0

    .line 23
    invoke-direct {p0}, Lct/cb;->c()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lct/cb;)Lct/be;
    .locals 0

    .line 23
    iget-object p0, p0, Lct/cb;->b:Lct/be;

    return-object p0
.end method

.method private c()Z
    .locals 3

    .line 247
    iget-object v0, p0, Lct/cb;->b:Lct/be;

    invoke-static {v0}, Lct/b$a;->b(Lct/be;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 250
    :cond_0
    iget-object v0, p0, Lct/cb;->c:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lct/b$a;->a(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lct/cb;->e:J

    :cond_1
    return v0
.end method

.method private d()V
    .locals 5

    .line 267
    iget-object v0, p0, Lct/cb;->i:Lct/bo;

    iget-object v1, p0, Lct/cb;->j:Lct/bo;

    invoke-virtual {v0, v1}, Lct/bo;->a(Lct/bo;)Lct/bo;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lct/bo;->a()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lct/ch;

    iget-wide v2, p0, Lct/cb;->d:J

    iget-object v4, p0, Lct/cb;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    invoke-direct {v1, v0, v2, v3}, Lct/ch;-><init>(Ljava/util/List;J)V

    iget-object v0, p0, Lct/cb;->b:Lct/be;

    invoke-virtual {v0, v1}, Lct/be;->c(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 118
    iget-boolean v0, p0, Lct/cb;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lct/cb;->a:Z

    .line 123
    iget-object v1, p0, Lct/cb;->h:Landroid/os/Handler;

    iget-object v2, p0, Lct/cb;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 126
    :try_start_0
    iget-object v1, p0, Lct/cb;->b:Lct/be;

    iget-object v1, v1, Lct/be;->a:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :catch_0
    iget-object v1, p0, Lct/cb;->i:Lct/bo;

    invoke-virtual {v1}, Lct/bo;->b()V

    .line 132
    iget-object v1, p0, Lct/cb;->j:Lct/bo;

    invoke-virtual {v1}, Lct/bo;->b()V

    .line 134
    iput v0, p0, Lct/cb;->f:I

    const-wide/16 v0, 0x0

    .line 135
    iput-wide v0, p0, Lct/cb;->e:J

    .line 136
    iput-wide v0, p0, Lct/cb;->d:J

    return-void
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 3

    .line 103
    iget-boolean v0, p0, Lct/cb;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lct/cb;->a:Z

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lct/cb;->g:Z

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lct/cb;->b:Lct/be;

    iget-object v1, v1, Lct/be;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-wide/16 v0, 0x0

    .line 112
    invoke-direct {p0, v0, v1}, Lct/cb;->a(J)V

    return-void
.end method

.method public final b()I
    .locals 1

    .line 154
    invoke-direct {p0}, Lct/cb;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 165
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lct/cb;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    const-wide/16 v3, 0x0

    invoke-direct {p0, v3, v4}, Lct/cb;->a(J)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lct/cb;->i:Lct/bo;

    invoke-virtual {v0}, Lct/bo;->b()V

    iget-object v0, p0, Lct/cb;->j:Lct/bo;

    invoke-virtual {v0}, Lct/bo;->b()V

    iget-object v0, p0, Lct/cb;->b:Lct/be;

    sget-object v3, Lct/ch;->a:Lct/ch;

    invoke-virtual {v0, v3}, Lct/be;->c(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/16 v4, 0x32c7

    iput v4, v3, Landroid/os/Message;->what:I

    const/16 v4, 0x2ee1

    iput v4, v3, Landroid/os/Message;->arg1:I

    iput v0, v3, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lct/cb;->b:Lct/be;

    invoke-virtual {v0, v3}, Lct/be;->c(Ljava/lang/Object;)V

    .line 169
    :cond_3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 171
    :cond_4
    iget-object p1, p0, Lct/cb;->c:Landroid/net/wifi/WifiManager;

    invoke-static {p1}, Lct/b$a;->b(Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object p1

    .line 172
    invoke-static {p1}, Lct/cc;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lct/cb;->d:J

    .line 183
    iget p2, p0, Lct/cb;->f:I

    if-nez p2, :cond_9

    .line 185
    iget-object p2, p0, Lct/cb;->j:Lct/bo;

    invoke-virtual {p2}, Lct/bo;->b()V

    .line 186
    iget-object p2, p0, Lct/cb;->i:Lct/bo;

    invoke-virtual {p2}, Lct/bo;->b()V

    .line 188
    iget-object p2, p0, Lct/cb;->i:Lct/bo;

    .line 190
    invoke-virtual {p2}, Lct/bo;->b()V

    .line 191
    iget-wide v3, p0, Lct/cb;->e:J

    invoke-virtual {p2, v3, v4}, Lct/bo;->a(J)V

    .line 192
    iget-wide v3, p0, Lct/cb;->d:J

    invoke-virtual {p2, v3, v4}, Lct/bo;->b(J)V

    .line 193
    invoke-virtual {p2, p1}, Lct/bo;->a(Ljava/util/List;)V

    .line 195
    iget-boolean p1, p0, Lct/cb;->g:Z

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Lct/bo;->c()I

    move-result p1

    const/4 p2, 0x7

    if-ge p1, p2, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_6

    invoke-direct {p0}, Lct/cb;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    if-eqz v1, :cond_8

    .line 197
    iput v2, p0, Lct/cb;->f:I

    goto :goto_3

    .line 199
    :cond_8
    invoke-direct {p0}, Lct/cb;->d()V

    goto :goto_3

    .line 202
    :cond_9
    iput v1, p0, Lct/cb;->f:I

    .line 203
    iget-object p2, p0, Lct/cb;->j:Lct/bo;

    .line 205
    invoke-virtual {p2}, Lct/bo;->b()V

    .line 206
    iget-wide v0, p0, Lct/cb;->e:J

    invoke-virtual {p2, v0, v1}, Lct/bo;->a(J)V

    .line 207
    iget-wide v0, p0, Lct/cb;->d:J

    invoke-virtual {p2, v0, v1}, Lct/bo;->b(J)V

    .line 208
    invoke-virtual {p2, p1}, Lct/bo;->a(Ljava/util/List;)V

    .line 210
    invoke-direct {p0}, Lct/cb;->d()V

    .line 212
    :goto_3
    iput-boolean v2, p0, Lct/cb;->g:Z

    .line 213
    iget-object p1, p0, Lct/cb;->b:Lct/be;

    invoke-virtual {p1}, Lct/be;->h()Lct/bf;

    move-result-object p1

    iget-wide p1, p1, Lct/bf;->k:J

    invoke-direct {p0, p1, p2}, Lct/cb;->a(J)V

    :cond_a
    return-void
.end method
