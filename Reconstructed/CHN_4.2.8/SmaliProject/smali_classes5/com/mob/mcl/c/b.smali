.class public Lcom/mob/mcl/c/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/mob/mcl/c/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile e:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/mob/mcl/c/b;->c:I

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/mob/mcl/c/b;->e:Z

    .line 45
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mcl/c/b;->b:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/mob/mcl/c/b;->c()V

    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mcl/c/b;->d:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static a()Lcom/mob/mcl/c/b;
    .locals 2

    .line 34
    sget-object v0, Lcom/mob/mcl/c/b;->a:Lcom/mob/mcl/c/b;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lcom/mob/mcl/c/b;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/mob/mcl/c/b;->a:Lcom/mob/mcl/c/b;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/mob/mcl/c/b;

    invoke-direct {v1}, Lcom/mob/mcl/c/b;-><init>()V

    sput-object v1, Lcom/mob/mcl/c/b;->a:Lcom/mob/mcl/c/b;

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 41
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/mcl/c/b;->a:Lcom/mob/mcl/c/b;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    .line 89
    iget v0, p0, Lcom/mob/mcl/c/b;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 91
    iput p1, p0, Lcom/mob/mcl/c/b;->c:I

    return-void

    .line 94
    :cond_0
    iput p1, p0, Lcom/mob/mcl/c/b;->c:I

    if-eqz p1, :cond_2

    .line 96
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/mcl/c/h;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 99
    :cond_1
    new-instance p1, Lcom/mob/mcl/c/b$2;

    invoke-direct {p1, p0}, Lcom/mob/mcl/c/b$2;-><init>(Lcom/mob/mcl/c/b;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2, p1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessageDelayed(IJLandroid/os/Handler$Callback;)Z

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/mob/mcl/c/b;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/mob/mcl/c/b;->e()V

    return-void
.end method

.method static synthetic a(Lcom/mob/mcl/c/b;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/mob/mcl/c/b;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/mob/mcl/c/b;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/mob/mcl/c/b;->e:Z

    return p1
.end method

.method private c()V
    .locals 6

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/mob/mcl/c/b;->b:Landroid/content/Context;

    const-string v1, "registerReceiver"

    .line 54
    invoke-direct {p0}, Lcom/mob/mcl/c/b;->d()Landroid/content/BroadcastReceiver;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/content/IntentFilter;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 53
    invoke-static {v0, v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 57
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private d()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 121
    new-instance v0, Lcom/mob/mcl/c/b$3;

    invoke-direct {v0, p0}, Lcom/mob/mcl/c/b$3;-><init>(Lcom/mob/mcl/c/b;)V

    return-object v0
.end method

.method private e()V
    .locals 1

    .line 150
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->f()V

    .line 153
    :cond_0
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->g()Z

    return-void
.end method


# virtual methods
.method public b()V
    .locals 9

    .line 63
    iget-boolean v0, p0, Lcom/mob/mcl/c/b;->e:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "HB already started"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    return-void

    .line 68
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mob/mcl/c/b;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/mob/mcl/c/b$1;

    invoke-direct {v3, p0}, Lcom/mob/mcl/c/b$1;-><init>(Lcom/mob/mcl/c/b;)V

    .line 82
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    iget v0, v0, Lcom/mob/mcl/c/h;->e:I

    int-to-long v6, v0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x0

    .line 68
    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 84
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    const-string v2, "HB timer error"

    invoke-virtual {v1, v2, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
