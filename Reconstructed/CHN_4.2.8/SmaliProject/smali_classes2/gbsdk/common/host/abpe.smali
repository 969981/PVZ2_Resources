.class public Lgbsdk/common/host/abpe;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "PlatformScheduleExecutor.java"


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abpe;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "778a9334daf2dd239cf7240d09cc5a71"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 30
    :cond_0
    sget-boolean v0, Lgbsdk/common/host/abrx;->zG:Z

    if-eqz v0, :cond_1

    .line 31
    new-instance v0, Lgbsdk/common/host/abpj;

    invoke-direct {v0, p1, p0}, Lgbsdk/common/host/abpj;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-super {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 33
    :cond_1
    invoke-super {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
