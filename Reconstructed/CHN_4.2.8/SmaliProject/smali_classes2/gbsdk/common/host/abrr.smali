.class public Lgbsdk/common/host/abrr;
.super Ljava/lang/Object;
.source "PatchThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abrr$ab;
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field private static volatile zO:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dG()Ljava/util/concurrent/ExecutorService;
    .locals 13

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abrr;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "62416fb9b113677e038b55936b8db824"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v1, v4, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0

    .line 16
    :cond_0
    sget-object v0, Lgbsdk/common/host/abrr;->zO:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    .line 17
    const-class v0, Lgbsdk/common/host/abrr;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abrr;->zO:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1

    .line 19
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    add-int/lit8 v7, v1, 0x1

    .line 21
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v8, 0xf

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v12, Lgbsdk/common/host/abrr$ab;

    const-string v2, "PatchThreadPool"

    invoke-direct {v12, v2}, Lgbsdk/common/host/abrr$ab;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    move v6, v7

    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    const-string v3, "PatchThreadPool"

    const-string v4, "allowCoreThreadTimeOut failed "

    .line 27
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    :goto_0
    sput-object v1, Lgbsdk/common/host/abrr;->zO:Ljava/util/concurrent/ExecutorService;

    .line 32
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 34
    :cond_2
    :goto_1
    sget-object v0, Lgbsdk/common/host/abrr;->zO:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
