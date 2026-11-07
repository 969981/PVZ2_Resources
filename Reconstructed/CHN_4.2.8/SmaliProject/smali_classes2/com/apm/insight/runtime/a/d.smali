.class public Lcom/apm/insight/runtime/a/d;
.super Ljava/lang/Object;


# instance fields
.field private volatile a:I

.field private volatile b:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/apm/insight/runtime/a/d;->b:J

    return-void
.end method

.method private a(J)I
    .locals 5

    sget-object v0, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    const-string v2, "batterymanager"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    iput-wide p1, p0, Lcom/apm/insight/runtime/a/d;->b:J

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p1

    return p1

    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apm/insight/runtime/v;->a()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput-wide p1, p0, Lcom/apm/insight/runtime/a/d;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float p1, v2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    int-to-float p2, v0

    div-float/2addr p1, p2

    float-to-int p1, p1

    return p1

    :catchall_0
    :cond_2
    return v1
.end method


# virtual methods
.method public a()I
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/apm/insight/runtime/a/d;->b:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    iget v0, p0, Lcom/apm/insight/runtime/a/d;->a:I

    return v0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/apm/insight/runtime/a/d;->a(J)I

    move-result v0

    iput v0, p0, Lcom/apm/insight/runtime/a/d;->a:I

    iget v0, p0, Lcom/apm/insight/runtime/a/d;->a:I

    return v0
.end method
