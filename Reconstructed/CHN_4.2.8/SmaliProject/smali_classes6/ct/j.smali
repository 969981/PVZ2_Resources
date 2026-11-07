.class final Lct/j;
.super Ljava/lang/Object;


# static fields
.field private static c:Lct/j;


# instance fields
.field private a:J

.field private b:I

.field private d:Lct/n;

.field private e:Landroid/content/BroadcastReceiver;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lct/j;->a:J

    const/4 v0, -0x1

    iput v0, p0, Lct/j;->b:I

    new-instance v0, Lct/k;

    invoke-direct {v0, p0}, Lct/k;-><init>(Lct/j;)V

    iput-object v0, p0, Lct/j;->e:Landroid/content/BroadcastReceiver;

    new-instance v0, Lct/m;

    invoke-direct {v0, p0}, Lct/m;-><init>(Lct/j;)V

    iput-object v0, p0, Lct/j;->f:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lct/j;I)I
    .locals 0

    iput p1, p0, Lct/j;->b:I

    return p1
.end method

.method static synthetic a(Lct/j;)J
    .locals 2

    iget-wide v0, p0, Lct/j;->a:J

    return-wide v0
.end method

.method static synthetic a(Lct/j;J)J
    .locals 0

    iput-wide p1, p0, Lct/j;->a:J

    return-wide p1
.end method

.method public static declared-synchronized a()Lct/j;
    .locals 2

    const-class v0, Lct/j;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lct/j;->c:Lct/j;

    if-nez v1, :cond_0

    new-instance v1, Lct/j;

    invoke-direct {v1}, Lct/j;-><init>()V

    sput-object v1, Lct/j;->c:Lct/j;

    :cond_0
    sget-object v1, Lct/j;->c:Lct/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic b(Lct/j;)I
    .locals 0

    iget p0, p0, Lct/j;->b:I

    return p0
.end method


# virtual methods
.method public final a(Lct/n;)V
    .locals 8

    iput-object p1, p0, Lct/j;->d:Lct/n;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lct/o;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lct/j;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lct/ax;->c()V

    invoke-static {}, Lct/ax;->c()V

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "action.scheduler.access.trigger.timer"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lct/o;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lct/j;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lct/o;->a()Landroid/content/Context;

    move-result-object p1

    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/app/AlarmManager;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    add-long v3, v2, v4

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lct/o;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const/4 v2, 0x3

    const-wide/32 v5, 0x1b7740

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    invoke-static {}, Lct/ax;->b()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lct/j;->d:Lct/n;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lct/n;->b()V

    return-void

    :cond_0
    invoke-static {}, Lct/ax;->d()V

    return-void
.end method
