.class public Lcom/mobile/auth/gatewayauth/detectnet/e;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/mobile/auth/gatewayauth/detectnet/e;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/detectnet/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x3

    iput v0, p0, Lcom/mobile/auth/gatewayauth/detectnet/e;->e:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e;->f:I

    const-string v1, "eco.taobao.com"

    iput-object v1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e;->h:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v8, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/detectnet/e;->d:Ljava/util/concurrent/ConcurrentHashMap;

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://dypnsapi-dualstack.aliyuncs.com/?"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/detectnet/e;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/detectnet/e;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/mobile/auth/gatewayauth/detectnet/e;->b(Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private a(Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;
    .locals 2

    :try_start_0
    const-string v0, "pingNet\uff1a ping\u68c0\u6d4btop\u9ed8\u8ba4"

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/detectnet/e;->h:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/mobile/auth/gatewayauth/detectnet/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/detectnet/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/detectnet/c;->a()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setTopConnected(Z)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/detectnet/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/detectnet/c;->b()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setTopWholeMS(J)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setTopWholeMS(J)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object p2

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p2

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public static a()Lcom/mobile/auth/gatewayauth/detectnet/e;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/mobile/auth/gatewayauth/detectnet/e;->a:Lcom/mobile/auth/gatewayauth/detectnet/e;

    if-nez v0, :cond_1

    const-class v0, Lcom/mobile/auth/gatewayauth/detectnet/e;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/mobile/auth/gatewayauth/detectnet/e;->a:Lcom/mobile/auth/gatewayauth/detectnet/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mobile/auth/gatewayauth/detectnet/e;

    invoke-direct {v1}, Lcom/mobile/auth/gatewayauth/detectnet/e;-><init>()V

    sput-object v1, Lcom/mobile/auth/gatewayauth/detectnet/e;->a:Lcom/mobile/auth/gatewayauth/detectnet/e;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/mobile/auth/gatewayauth/detectnet/e;->a:Lcom/mobile/auth/gatewayauth/detectnet/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object v1

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/detectnet/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/detectnet/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/a;)V
    .locals 6

    :try_start_0
    const-string v0, "pingNet\uff1a\u68c0\u6d4b \u9ed8\u8ba4\u7f51\u7edc\u548c\u8702\u7a9d\u7f51\u7edc"

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/j;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    invoke-direct {v0}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;-><init>()V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setRequestIds(Ljava/util/Set;)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    move-result-object v1

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/detectnet/e;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setSessionIds(Ljava/util/Collection;)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    invoke-direct {p0, p2, v0}, Lcom/mobile/auth/gatewayauth/detectnet/e;->a(Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    new-instance v1, Lcom/mobile/auth/c/j;

    invoke-direct {v1}, Lcom/mobile/auth/c/j;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    new-instance v2, Lcom/mobile/auth/gatewayauth/detectnet/e$2;

    invoke-direct {v2, p0, p2, v0, p3}, Lcom/mobile/auth/gatewayauth/detectnet/e$2;-><init>(Lcom/mobile/auth/gatewayauth/detectnet/e;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;Lcom/mobile/auth/gatewayauth/detectnet/a;)V

    invoke-virtual {v1, p1, v2}, Lcom/mobile/auth/c/j;->a(Landroid/content/Context;Lcom/mobile/auth/c/j$a;)V

    goto :goto_3

    :cond_0
    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/detectnet/e;->h:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/mobile/auth/c/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pingNet\uff1a\u7cfb\u7edf5.0\u4ee5\u4e0b\u5207\u6362\u8702\u7a9d\u7f51\u7edc\u662f\u5426\u6210\u529f\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mobile/auth/gatewayauth/utils/j;->a(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    invoke-direct {p0, p2, v0}, Lcom/mobile/auth/gatewayauth/detectnet/e;->b(Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    invoke-direct {p0, p2, v0}, Lcom/mobile/auth/gatewayauth/detectnet/e;->c(Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setTopCellularConnected(Z)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setTopCellularWholeMS(J)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    :goto_0
    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/detectnet/e;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v5}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setCuCellularConnected(Z)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    move-result-object p1

    :goto_1
    invoke-virtual {p1, v3, v4}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setCuCellularWholeMS(J)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/detectnet/e;->g:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/mobile/auth/c/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p2, v0}, Lcom/mobile/auth/gatewayauth/detectnet/e;->c(Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v5}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setCuCellularConnected(Z)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    move-result-object p1

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p3, :cond_4

    invoke-interface {p3, v0}, Lcom/mobile/auth/gatewayauth/detectnet/a;->a(Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/detectnet/e;Landroid/content/Context;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/a;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mobile/auth/gatewayauth/detectnet/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/mobile/auth/gatewayauth/detectnet/e;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/mobile/auth/gatewayauth/detectnet/e;->c(Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private b(Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;
    .locals 2

    :try_start_0
    const-string v0, "pingNet\uff1a ping\u68c0\u6d4btop\u8702\u7a9d"

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/detectnet/e;->h:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/mobile/auth/gatewayauth/detectnet/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/detectnet/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/detectnet/c;->a()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setTopCellularConnected(Z)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/detectnet/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/detectnet/c;->b()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setTopCellularWholeMS(J)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setTopCellularWholeMS(J)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object p2

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p2

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object p2
.end method

.method static synthetic b(Lcom/mobile/auth/gatewayauth/detectnet/e;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/detectnet/e;->d:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic c(Lcom/mobile/auth/gatewayauth/detectnet/e;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/mobile/auth/gatewayauth/detectnet/e;->a(Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private c(Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;
    .locals 3

    :try_start_0
    const-string v0, "pingNet\uff1a ping\u68c0\u6d4b\u8702\u7a9d"

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/detectnet/e;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/detectnet/e;->g:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/mobile/auth/gatewayauth/detectnet/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/detectnet/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/detectnet/c;->a()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setCuCellularConnected(Z)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/detectnet/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/detectnet/c;->b()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setCuCellularWholeMS(J)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v1, v2}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setCuCellularWholeMS(J)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setCuCellularConnected(Z)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setCuCellularWholeMS(J)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object p2

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p2

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object p2
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/detectnet/c;
    .locals 5

    const-string v0, "pingNet\uff1a"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ping start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/j;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/mobile/auth/gatewayauth/detectnet/c;

    invoke-direct {v1}, Lcom/mobile/auth/gatewayauth/detectnet/c;-><init>()V

    const/4 v2, 0x0

    :cond_0
    iget v3, p0, Lcom/mobile/auth/gatewayauth/detectnet/e;->f:I

    if-ge v2, v3, :cond_1

    iget v1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e;->e:I

    invoke-static {p2, v1}, Lcom/mobile/auth/gatewayauth/detectnet/d;->a(Ljava/lang/String;I)Lcom/mobile/auth/gatewayauth/detectnet/c;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pingNet\uff1a\u7b2c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u6b21 result\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/detectnet/c;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mobile/auth/gatewayauth/utils/j;->a(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/detectnet/c;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ping stop"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mobile/auth/gatewayauth/utils/j;->a(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u603b\u5171 ping\u4e86:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u6b21"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p2

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/detectnet/e;
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/a;)V
    .locals 8

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pingNet\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " startDetect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/detectnet/e;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/mobile/auth/gatewayauth/detectnet/e$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/mobile/auth/gatewayauth/detectnet/e$1;-><init>(Lcom/mobile/auth/gatewayauth/detectnet/e;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/mobile/auth/gatewayauth/detectnet/a;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
