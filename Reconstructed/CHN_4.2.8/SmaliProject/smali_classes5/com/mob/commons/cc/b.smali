.class public Lcom/mob/commons/cc/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mob/commons/cc/h;

.field private static b:Lcom/mob/commons/cc/g;

.field private static c:Lcom/mob/commons/cc/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lcom/mob/commons/cc/h;

    invoke-direct {v0}, Lcom/mob/commons/cc/h;-><init>()V

    sput-object v0, Lcom/mob/commons/cc/b;->a:Lcom/mob/commons/cc/h;

    .line 17
    :try_start_0
    new-instance v0, Lcom/mob/commons/cc/g;

    new-instance v1, Lcom/mob/commons/cc/b$1;

    invoke-direct {v1}, Lcom/mob/commons/cc/b$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/mob/commons/cc/g;-><init>(Lcom/mob/commons/cc/g$a;)V

    sput-object v0, Lcom/mob/commons/cc/b;->b:Lcom/mob/commons/cc/g;

    .line 28
    new-instance v0, Lcom/mob/commons/cc/g;

    new-instance v1, Lcom/mob/commons/cc/b$2;

    invoke-direct {v1}, Lcom/mob/commons/cc/b$2;-><init>()V

    invoke-direct {v0, v1}, Lcom/mob/commons/cc/g;-><init>(Lcom/mob/commons/cc/g$a;)V

    sput-object v0, Lcom/mob/commons/cc/b;->c:Lcom/mob/commons/cc/g;

    .line 34
    sget-object v0, Lcom/mob/commons/cc/b;->b:Lcom/mob/commons/cc/g;

    const-string v1, "tt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/cc/g;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a()I
    .locals 1

    .line 39
    invoke-static {}, Lcom/mob/commons/cc/o;->a()I

    move-result v0

    return v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lcom/mob/commons/cc/b;

    monitor-enter v0

    const/4 v1, 0x1

    .line 43
    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/mob/commons/cc/o;->a([Ljava/lang/String;)Lcom/mob/commons/cc/o$b;

    move-result-object p1

    invoke-static {p1, p0, p2}, Lcom/mob/commons/cc/b;->a(Lcom/mob/commons/cc/o$b;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;[BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lcom/mob/commons/cc/b;

    monitor-enter v0

    .line 47
    :try_start_0
    filled-new-array {p1}, [[B

    move-result-object p1

    invoke-static {p1}, Lcom/mob/commons/cc/o;->a([[B)Lcom/mob/commons/cc/o$b;

    move-result-object p1

    invoke-static {p1, p0, p2}, Lcom/mob/commons/cc/b;->a(Lcom/mob/commons/cc/o$b;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Lcom/mob/commons/cc/o$b;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    const-string v0, "OperationSet"

    const-class v1, Lcom/mob/commons/cc/f;

    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/cc/o$b;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/o$c;

    move-result-object p0

    const-string v0, "MobBroadcastReceiver"

    const-class v1, Lcom/mob/commons/cc/a;

    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/cc/o$c;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/o$c;

    move-result-object p0

    const-string v0, "MobContentResolver"

    const-class v1, Lcom/mob/commons/cc/d;

    .line 53
    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/cc/o$c;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/o$c;

    move-result-object p0

    const-string v0, "MobServiceConnection"

    const-class v1, Lcom/mob/commons/cc/e;

    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/cc/o$c;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/o$c;

    move-result-object p0

    const-string v0, "MobContentObserver"

    const-class v1, Lcom/mob/commons/cc/c;

    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/cc/o$c;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/o$c;

    move-result-object p0

    const-string v0, "SBHandler"

    const-class v1, Lcom/mob/commons/cc/g;

    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/cc/o$c;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mob/commons/cc/o$c;

    move-result-object p0

    const-string v0, "ss_suls"

    sget-object v1, Lcom/mob/commons/cc/b;->a:Lcom/mob/commons/cc/h;

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/cc/o$c;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mob/commons/cc/o$c;

    move-result-object p0

    const-string v0, "ss_contextParam"

    .line 58
    invoke-virtual {p0, v0, p1}, Lcom/mob/commons/cc/o$c;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mob/commons/cc/o$c;

    move-result-object p0

    const-string p1, "ss_startParams"

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/mob/commons/cc/o$c;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mob/commons/cc/o$c;

    move-result-object p0

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "ss_startTime"

    invoke-virtual {p0, p2, p1}, Lcom/mob/commons/cc/o$c;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mob/commons/cc/o$c;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Lcom/mob/commons/cc/o$c;->a()V

    return-void
.end method

.method static synthetic b()Lcom/mob/commons/cc/g;
    .locals 1

    .line 9
    sget-object v0, Lcom/mob/commons/cc/b;->c:Lcom/mob/commons/cc/g;

    return-object v0
.end method
