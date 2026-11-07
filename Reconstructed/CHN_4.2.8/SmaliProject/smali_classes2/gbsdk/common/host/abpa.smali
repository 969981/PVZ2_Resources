.class public Lgbsdk/common/host/abpa;
.super Ljava/lang/Object;
.source "PlatformThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abpa$ab;,
        Lgbsdk/common/host/abpa$ac;
    }
.end annotation


# static fields
.field private static final CPU_COUNT:I

.field private static final TAG:Ljava/lang/String; = "PlatformExecutor"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect; = null

.field private static final yJ:Ljava/lang/String; = "platform-io"

.field private static final yK:Ljava/lang/String; = "platform-default"

.field private static final yL:Ljava/lang/String; = "platform-background"

.field private static final yM:Ljava/lang/String; = "platform-schedule"

.field private static final yN:Ljava/lang/String; = "platform-single"

.field private static final yO:Ljava/lang/String; = "platform-fixed"

.field private static final yP:I

.field public static final yQ:Ljava/util/concurrent/RejectedExecutionHandler;

.field private static yR:Lgbsdk/common/host/abry;

.field public static yS:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static yT:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static yU:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static yV:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public static yW:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static yX:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static yY:Lgbsdk/common/host/abpa$ac;

.field public static yZ:Lgbsdk/common/host/abry;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 32
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lgbsdk/common/host/abpa;->yP:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 33
    :goto_0
    sput v0, Lgbsdk/common/host/abpa;->CPU_COUNT:I

    .line 34
    new-instance v0, Lgbsdk/common/host/abpa$1;

    invoke-direct {v0}, Lgbsdk/common/host/abpa$1;-><init>()V

    sput-object v0, Lgbsdk/common/host/abpa;->yQ:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 44
    new-instance v0, Lgbsdk/common/host/abpa$2;

    invoke-direct {v0}, Lgbsdk/common/host/abpa$2;-><init>()V

    sput-object v0, Lgbsdk/common/host/abpa;->yR:Lgbsdk/common/host/abry;

    .line 53
    new-instance v0, Lgbsdk/common/host/abpc;

    const/4 v3, 0x0

    const/16 v4, 0x80

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v9, Lgbsdk/common/host/abpg;

    sget-object v2, Lgbsdk/common/host/abpa;->yR:Lgbsdk/common/host/abry;

    const-string v11, "platform-io"

    invoke-direct {v9, v11, v2}, Lgbsdk/common/host/abpg;-><init>(Ljava/lang/String;Lgbsdk/common/host/abry;)V

    sget-object v10, Lgbsdk/common/host/abpa;->yQ:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lgbsdk/common/host/abpc;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lgbsdk/common/host/abpa;->yS:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 63
    new-instance v0, Lgbsdk/common/host/abpc;

    sget v2, Lgbsdk/common/host/abpa;->CPU_COUNT:I

    const/4 v3, 0x4

    .line 64
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    sget v2, Lgbsdk/common/host/abpa;->CPU_COUNT:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v14, v2, 0x1

    const-wide/16 v15, 0x1e

    sget-object v17, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v4, Lgbsdk/common/host/abpg;

    sget-object v5, Lgbsdk/common/host/abpa;->yR:Lgbsdk/common/host/abry;

    const-string v6, "platform-default"

    invoke-direct {v4, v6, v5}, Lgbsdk/common/host/abpg;-><init>(Ljava/lang/String;Lgbsdk/common/host/abry;)V

    sget-object v20, Lgbsdk/common/host/abpa;->yQ:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v12, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    invoke-direct/range {v12 .. v20}, Lgbsdk/common/host/abpc;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lgbsdk/common/host/abpa;->yT:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 73
    new-instance v0, Lgbsdk/common/host/abpc;

    const/16 v22, 0x0

    const/16 v23, 0x3

    const-wide/16 v24, 0xf

    sget-object v26, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v3, Lgbsdk/common/host/abpn;

    sget-object v4, Lgbsdk/common/host/abpa;->yR:Lgbsdk/common/host/abry;

    const-string v5, "platform-background"

    invoke-direct {v3, v5, v4}, Lgbsdk/common/host/abpn;-><init>(Ljava/lang/String;Lgbsdk/common/host/abry;)V

    sget-object v29, Lgbsdk/common/host/abpa;->yQ:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object/from16 v21, v0

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    invoke-direct/range {v21 .. v29}, Lgbsdk/common/host/abpc;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lgbsdk/common/host/abpa;->yU:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 83
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lgbsdk/common/host/abpg;

    sget-object v3, Lgbsdk/common/host/abpa;->yR:Lgbsdk/common/host/abry;

    const-string v4, "platform-schedule"

    invoke-direct {v2, v4, v3}, Lgbsdk/common/host/abpg;-><init>(Ljava/lang/String;Lgbsdk/common/host/abry;)V

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lgbsdk/common/host/abpa;->yV:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 87
    new-instance v0, Lgbsdk/common/host/abpc;

    const/4 v13, 0x1

    const/4 v14, 0x1

    sget-object v17, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v18, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v18 .. v18}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v2, Lgbsdk/common/host/abpg;

    sget-object v3, Lgbsdk/common/host/abpa;->yR:Lgbsdk/common/host/abry;

    const-string v7, "platform-single"

    invoke-direct {v2, v7, v3}, Lgbsdk/common/host/abpg;-><init>(Ljava/lang/String;Lgbsdk/common/host/abry;)V

    move-object v12, v0

    move-object/from16 v19, v2

    invoke-direct/range {v12 .. v19}, Lgbsdk/common/host/abpc;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lgbsdk/common/host/abpa;->yW:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 95
    new-instance v0, Lgbsdk/common/host/abpc;

    sget v21, Lgbsdk/common/host/abpa;->CPU_COUNT:I

    const-wide/16 v22, 0x1e

    sget-object v24, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v25, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v25 .. v25}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v2, Lgbsdk/common/host/abpg;

    sget-object v3, Lgbsdk/common/host/abpa;->yR:Lgbsdk/common/host/abry;

    const-string v8, "platform-fixed"

    invoke-direct {v2, v8, v3}, Lgbsdk/common/host/abpg;-><init>(Ljava/lang/String;Lgbsdk/common/host/abry;)V

    move-object/from16 v19, v0

    move/from16 v20, v21

    move-object/from16 v26, v2

    invoke-direct/range {v19 .. v26}, Lgbsdk/common/host/abpc;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lgbsdk/common/host/abpa;->yX:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 121
    sget-object v0, Lgbsdk/common/host/abpa;->yT:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 122
    sget-object v0, Lgbsdk/common/host/abpa;->yU:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 124
    :try_start_0
    sget-object v0, Lgbsdk/common/host/abpa;->yV:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    :goto_1
    sget-object v0, Lgbsdk/common/host/abpa;->yW:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 129
    sget-object v0, Lgbsdk/common/host/abpa;->yX:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 130
    sget-object v0, Lgbsdk/common/host/abpa;->yS:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lgbsdk/common/host/abrz;->zg:Lgbsdk/common/host/abrz;

    invoke-static {v0, v11, v1}, Lgbsdk/common/host/abrx;->a(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/String;Lgbsdk/common/host/abrz;)V

    .line 131
    sget-object v0, Lgbsdk/common/host/abpa;->yT:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lgbsdk/common/host/abrz;->zh:Lgbsdk/common/host/abrz;

    invoke-static {v0, v6, v1}, Lgbsdk/common/host/abrx;->a(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/String;Lgbsdk/common/host/abrz;)V

    .line 132
    sget-object v0, Lgbsdk/common/host/abpa;->yU:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lgbsdk/common/host/abrz;->zi:Lgbsdk/common/host/abrz;

    invoke-static {v0, v5, v1}, Lgbsdk/common/host/abrx;->a(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/String;Lgbsdk/common/host/abrz;)V

    .line 133
    sget-object v0, Lgbsdk/common/host/abpa;->yV:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Lgbsdk/common/host/abrz;->zk:Lgbsdk/common/host/abrz;

    invoke-static {v0, v4, v1}, Lgbsdk/common/host/abrx;->a(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/String;Lgbsdk/common/host/abrz;)V

    .line 134
    sget-object v0, Lgbsdk/common/host/abpa;->yW:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lgbsdk/common/host/abrz;->zl:Lgbsdk/common/host/abrz;

    invoke-static {v0, v7, v1}, Lgbsdk/common/host/abrx;->a(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/String;Lgbsdk/common/host/abrz;)V

    .line 135
    sget-object v0, Lgbsdk/common/host/abpa;->yX:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lgbsdk/common/host/abrz;->zj:Lgbsdk/common/host/abrz;

    invoke-static {v0, v8, v1}, Lgbsdk/common/host/abrx;->a(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/String;Lgbsdk/common/host/abrz;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lgbsdk/common/host/abpa$ab;)Ljava/util/concurrent/ExecutorService;
    .locals 13

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/abpa;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "cf3c0e30c89c4b33ee87ba178509b969"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    return-object p0

    .line 199
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abpa$ab;->ze:Lgbsdk/common/host/abrz;

    sget-object v1, Lgbsdk/common/host/abrz;->zg:Lgbsdk/common/host/abrz;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lgbsdk/common/host/abpa$ab;->ze:Lgbsdk/common/host/abrz;

    sget-object v1, Lgbsdk/common/host/abrz;->zh:Lgbsdk/common/host/abrz;

    if-eq v0, v1, :cond_3

    .line 203
    iget-object v0, p0, Lgbsdk/common/host/abpa$ab;->ze:Lgbsdk/common/host/abrz;

    sget-object v1, Lgbsdk/common/host/abrz;->zl:Lgbsdk/common/host/abrz;

    if-ne v0, v1, :cond_1

    .line 204
    new-instance v0, Lgbsdk/common/host/abpc;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 208
    iget-object v8, p0, Lgbsdk/common/host/abpa$ab;->za:Ljava/util/concurrent/BlockingQueue;

    .line 209
    iget-object v9, p0, Lgbsdk/common/host/abpa$ab;->zd:Ljava/util/concurrent/ThreadFactory;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lgbsdk/common/host/abpc;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lgbsdk/common/host/abpa$ab;->ze:Lgbsdk/common/host/abrz;

    sget-object v1, Lgbsdk/common/host/abrz;->zk:Lgbsdk/common/host/abrz;

    if-ne v0, v1, :cond_2

    .line 211
    new-instance v0, Lgbsdk/common/host/abpe;

    iget v1, p0, Lgbsdk/common/host/abpa$ab;->threadCount:I

    .line 212
    iget-object v2, p0, Lgbsdk/common/host/abpa$ab;->zd:Ljava/util/concurrent/ThreadFactory;

    .line 213
    iget-object v3, p0, Lgbsdk/common/host/abpa$ab;->zb:Ljava/util/concurrent/RejectedExecutionHandler;

    invoke-direct {v0, v1, v2, v3}, Lgbsdk/common/host/abpe;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    goto :goto_0

    .line 215
    :cond_2
    new-instance v0, Lgbsdk/common/host/abpc;

    iget v5, p0, Lgbsdk/common/host/abpa$ab;->threadCount:I

    .line 216
    iget v6, p0, Lgbsdk/common/host/abpa$ab;->threadCount:I

    .line 217
    iget-wide v7, p0, Lgbsdk/common/host/abpa$ab;->zc:J

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 219
    iget-object v10, p0, Lgbsdk/common/host/abpa$ab;->za:Ljava/util/concurrent/BlockingQueue;

    .line 220
    iget-object v11, p0, Lgbsdk/common/host/abpa$ab;->zd:Ljava/util/concurrent/ThreadFactory;

    .line 221
    iget-object v12, p0, Lgbsdk/common/host/abpa$ab;->zb:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lgbsdk/common/host/abpc;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 223
    :goto_0
    iget-object v1, p0, Lgbsdk/common/host/abpa$ab;->name:Ljava/lang/String;

    iget-object p0, p0, Lgbsdk/common/host/abpa$ab;->ze:Lgbsdk/common/host/abrz;

    invoke-static {v0, v1, p0}, Lgbsdk/common/host/abrx;->a(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/String;Lgbsdk/common/host/abrz;)V

    return-object v0

    .line 200
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not allow create pool type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lgbsdk/common/host/abpa$ab;->ze:Lgbsdk/common/host/abrz;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
