.class public Lgbsdk/common/host/abpj;
.super Ljava/lang/Object;
.source "DelegateRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private yn:Ljava/util/concurrent/ThreadPoolExecutor;

.field private yo:Ljava/lang/Runnable;

.field private yp:J


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lgbsdk/common/host/abpj;->yo:Ljava/lang/Runnable;

    .line 17
    iput-object p2, p0, Lgbsdk/common/host/abpj;->yn:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lgbsdk/common/host/abpj;->yp:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abpj;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "6bbd2be89e2d550ad988fcd15fb5b886"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 24
    iget-wide v2, p0, Lgbsdk/common/host/abpj;->yp:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 26
    iget-object v4, p0, Lgbsdk/common/host/abpj;->yo:Ljava/lang/Runnable;

    iget-object v5, p0, Lgbsdk/common/host/abpj;->yn:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v2, v3, v4, v5}, Lgbsdk/common/host/abrx;->a(JLjava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 28
    :cond_1
    iget-object v2, p0, Lgbsdk/common/host/abpj;->yn:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lgbsdk/common/host/abpj;->yo:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Lgbsdk/common/host/abrx;->a(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    .line 29
    iget-object v2, p0, Lgbsdk/common/host/abpj;->yo:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 30
    iget-object v2, p0, Lgbsdk/common/host/abpj;->yn:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lgbsdk/common/host/abpj;->yo:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Lgbsdk/common/host/abrx;->b(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x1388

    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    .line 33
    iget-object v0, p0, Lgbsdk/common/host/abpj;->yo:Ljava/lang/Runnable;

    iget-object v1, p0, Lgbsdk/common/host/abpj;->yn:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v2, v3, v0, v1}, Lgbsdk/common/host/abrx;->b(JLjava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    :cond_2
    return-void
.end method
