.class public Lcom/alipay/sdk/m/q/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "TaskHelper"

.field public static final b:I = 0x4

.field public static volatile c:Lcom/alipay/sdk/m/q/a; = null

.field public static d:I = 0x20

.field public static e:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/alipay/sdk/m/q/a;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    .line 1
    sget-object v0, Lcom/alipay/sdk/m/q/a;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/alipay/sdk/m/q/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/alipay/sdk/m/q/a;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x4

    sget v4, Lcom/alipay/sdk/m/q/a;->d:I

    const-wide/16 v5, 0x2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v9, Lcom/alipay/sdk/m/q/a$a;

    invoke-direct {v9}, Lcom/alipay/sdk/m/q/a$a;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/alipay/sdk/m/q/a;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    .line 16
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 18
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 20
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/sdk/m/q/a;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 21
    invoke-static {}, Lcom/alipay/sdk/m/q/a;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b()Lcom/alipay/sdk/m/q/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/alipay/sdk/m/q/a;->c:Lcom/alipay/sdk/m/q/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/alipay/sdk/m/q/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/alipay/sdk/m/q/a;->c:Lcom/alipay/sdk/m/q/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/alipay/sdk/m/q/a;

    invoke-direct {v1}, Lcom/alipay/sdk/m/q/a;-><init>()V

    sput-object v1, Lcom/alipay/sdk/m/q/a;->c:Lcom/alipay/sdk/m/q/a;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/sdk/m/q/a;->c:Lcom/alipay/sdk/m/q/a;

    return-object v0
.end method
