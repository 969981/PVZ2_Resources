.class public Lgbsdk/optional/applog/abfw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/optional/applog/abfw$ac;
    }
.end annotation


# static fields
.field public static a:Ljava/util/concurrent/ExecutorService;

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lgbsdk/optional/applog/abfw$ac;

.field public static final h:Ljava/util/concurrent/RejectedExecutionHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lgbsdk/optional/applog/abfw;->b:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lgbsdk/optional/applog/abfw;->c:I

    sub-int/2addr v0, v1

    const/4 v2, 0x6

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lgbsdk/optional/applog/abfw;->d:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    sput v0, Lgbsdk/optional/applog/abfw;->e:I

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lgbsdk/optional/applog/abfw;->f:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lgbsdk/optional/applog/abfw$ac;

    const-string v2, "TTDefaultExecutors"

    invoke-direct {v0, v2}, Lgbsdk/optional/applog/abfw$ac;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgbsdk/optional/applog/abfw;->g:Lgbsdk/optional/applog/abfw$ac;

    new-instance v0, Lgbsdk/optional/applog/abfw$ab;

    invoke-direct {v0}, Lgbsdk/optional/applog/abfw$ab;-><init>()V

    sput-object v0, Lgbsdk/optional/applog/abfw;->h:Ljava/util/concurrent/RejectedExecutionHandler;

    new-instance v0, Lgbsdk/optional/applog/abel;

    sget v3, Lgbsdk/optional/applog/abfw;->d:I

    sget v4, Lgbsdk/optional/applog/abfw;->e:I

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lgbsdk/optional/applog/abfw;->f:Ljava/util/concurrent/BlockingQueue;

    sget-object v9, Lgbsdk/optional/applog/abfw;->g:Lgbsdk/optional/applog/abfw$ac;

    sget-object v10, Lgbsdk/optional/applog/abfw;->h:Ljava/util/concurrent/RejectedExecutionHandler;

    const-wide/16 v5, 0x1e

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lgbsdk/optional/applog/abel;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lgbsdk/optional/applog/abfw;->a:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Lgbsdk/optional/applog/abel;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method
