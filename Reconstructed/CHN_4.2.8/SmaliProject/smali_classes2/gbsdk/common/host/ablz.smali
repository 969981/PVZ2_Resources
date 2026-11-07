.class public Lgbsdk/common/host/ablz;
.super Ljava/lang/Object;
.source "HttpDns.java"

# interfaces
.implements Lcom/bytedance/common/utility/collection/WeakHandler$IHandler;


# static fields
.field private static final CORE_POOL_SIZE:I = 0x6

.field public static TAG:Ljava/lang/String; = null

.field private static final pA:I = 0x2

.field private static final pB:I = 0x3

.field private static final pC:I = 0x4

.field private static final pD:I = 0x5

.field private static final pE:I = 0x6

.field private static final pF:I = 0x7

.field private static final pG:Ljava/lang/String; = "dns_timeout_job_key"

.field private static final pH:Ljava/lang/String; = "httpdns_timeout_job_key"

.field private static final pI:Ljava/lang/String; = "callback_dnsresult_job_key"

.field public static final pJ:Ljava/lang/String; = "callback_dnsresult_key"

.field public static final pK:Ljava/lang/String; = "dispatchersdk_httpdns_hardcodeips"

.field public static final pL:Ljava/lang/String; = "httpdns_hardcodeips"

.field private static pM:Ljava/util/concurrent/ExecutorService; = null

.field private static volatile pN:Lgbsdk/common/host/ablz; = null

.field private static pQ:Ljava/lang/String; = null

.field private static final pz:I = 0x1

.field private static qf:Landroid/os/HandlerThread;

.field private static qg:Lcom/bytedance/common/utility/collection/WeakHandler;


# instance fields
.field private mMainThreadHandler:Landroid/os/Handler;

.field private pO:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public pP:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile pR:Ljava/lang/String;

.field public pS:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pT:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private pU:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pV:Ljava/util/concurrent/atomic/AtomicInteger;

.field public pW:Ljava/util/concurrent/atomic/AtomicInteger;

.field public pX:Ljava/util/concurrent/atomic/AtomicInteger;

.field private pY:Ljava/util/concurrent/atomic/AtomicInteger;

.field private pZ:Ljava/util/concurrent/atomic/AtomicInteger;

.field private qa:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final qb:Lgbsdk/common/host/ablw;

.field private final qc:Lgbsdk/common/host/abii;

.field public volatile qd:Lgbsdk/common/host/abls;

.field private qe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lgbsdk/common/host/ablz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const/4 v0, 0x6

    .line 62
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/ablz;->pM:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lgbsdk/common/host/ablz;->pO:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lgbsdk/common/host/ablz;->pP:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/ablz;->pS:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/ablz;->pT:Ljava/util/concurrent/ConcurrentMap;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/ablz;->pU:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x1e

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lgbsdk/common/host/ablz;->pV:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x7d0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lgbsdk/common/host/ablz;->pW:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x3c

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lgbsdk/common/host/ablz;->pX:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lgbsdk/common/host/ablz;->pY:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lgbsdk/common/host/ablz;->pZ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lgbsdk/common/host/ablz;->qa:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    new-instance v0, Lgbsdk/common/host/abii;

    invoke-direct {v0}, Lgbsdk/common/host/abii;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/ablz;->qc:Lgbsdk/common/host/abii;

    .line 86
    iput-boolean v1, p0, Lgbsdk/common/host/ablz;->qe:Z

    .line 92
    new-instance v0, Lgbsdk/common/host/ablz$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgbsdk/common/host/ablz$1;-><init>(Lgbsdk/common/host/ablz;Landroid/os/Looper;)V

    iput-object v0, p0, Lgbsdk/common/host/ablz;->mMainThreadHandler:Landroid/os/Handler;

    .line 130
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v1, "HttpDns constructor"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TTOK-HTTPDNS"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/ablz;->qf:Landroid/os/HandlerThread;

    .line 132
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 133
    new-instance v0, Lcom/bytedance/common/utility/collection/WeakHandler;

    sget-object v1, Lgbsdk/common/host/ablz;->qf:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/common/utility/collection/WeakHandler;-><init>(Landroid/os/Looper;Lcom/bytedance/common/utility/collection/WeakHandler$IHandler;)V

    sput-object v0, Lgbsdk/common/host/ablz;->qg:Lcom/bytedance/common/utility/collection/WeakHandler;

    const-string v0, "4.1.79.36-gsdk"

    .line 134
    sput-object v0, Lgbsdk/common/host/ablz;->pQ:Ljava/lang/String;

    .line 135
    new-instance v0, Lgbsdk/common/host/ablw;

    sget-object v1, Lgbsdk/common/host/ablz;->qg:Lcom/bytedance/common/utility/collection/WeakHandler;

    invoke-direct {v0, v1}, Lgbsdk/common/host/ablw;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    return-void
.end method

.method private a(Ljava/util/concurrent/Future;Ljava/lang/String;Z)Lgbsdk/common/host/abiz;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lgbsdk/common/host/abiz;"
        }
    .end annotation

    .line 623
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v1, "getDnsResultInHttpDnsPreferTime"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 627
    :try_start_0
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v0, "httpdns future is null"

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-direct {p0, p2, p3}, Lgbsdk/common/host/ablz;->d(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object p1

    return-object p1

    .line 630
    :cond_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 631
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v0, "httpdns future is done"

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-direct {p0, p2, v1}, Lgbsdk/common/host/ablz;->e(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object p1

    if-nez p1, :cond_2

    .line 634
    invoke-direct {p0, p2, p3}, Lgbsdk/common/host/ablz;->d(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object p1

    goto :goto_0

    .line 637
    :cond_1
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object v0

    iget-object v0, v0, Lgbsdk/common/host/ablz;->pW:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v3, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 638
    invoke-direct {p0, p2, v1}, Lgbsdk/common/host/ablz;->e(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object p1

    if-nez p1, :cond_2

    .line 640
    invoke-direct {p0, p2, p3}, Lgbsdk/common/host/ablz;->d(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 650
    :catch_0
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v0, "httpdns timeout in httpdns prefer time, look up localdns"

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-direct {p0, p2, p3}, Lgbsdk/common/host/ablz;->d(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object p1

    goto :goto_0

    .line 647
    :catch_1
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v0, "httpdns ExecutionException, look up localdns"

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-direct {p0, p2, p3}, Lgbsdk/common/host/ablz;->d(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object p1

    goto :goto_0

    .line 644
    :catch_2
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v0, "httpdns InterruptedException, look up localdns"

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-direct {p0, p2, p3}, Lgbsdk/common/host/ablz;->d(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 536
    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablw;->af(Ljava/lang/String;)Lgbsdk/common/host/abix;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 538
    iget-wide v1, v0, Lgbsdk/common/host/abix;->oK:J

    iget-wide v3, v0, Lgbsdk/common/host/abix;->oJ:J

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lgbsdk/common/host/ablz;->pW:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v5, v0

    add-long/2addr v3, v5

    cmp-long v0, v1, v3

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 540
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 541
    iget-object p2, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {p2, p1}, Lgbsdk/common/host/ablw;->ak(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 542
    invoke-direct {p0, p1}, Lgbsdk/common/host/ablz;->ay(Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 546
    :cond_1
    iget-object p2, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {p2, p1}, Lgbsdk/common/host/ablw;->ag(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 547
    sget-object p2, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "httpdns is resolving for host "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object p2, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {p2, p1}, Lgbsdk/common/host/ablw;->ai(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_1

    .line 550
    :cond_2
    monitor-enter p0

    .line 551
    :try_start_0
    iget-object p2, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {p2, p1}, Lgbsdk/common/host/ablw;->ag(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 552
    iget-object p2, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {p2, p1}, Lgbsdk/common/host/ablw;->ai(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_0

    .line 554
    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 555
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    sget-object p1, Lgbsdk/common/host/abix$ab;->oQ:Lgbsdk/common/host/abix$ab;

    invoke-virtual {p0, p2, p1, p3}, Lgbsdk/common/host/ablz;->a(Ljava/util/List;Lgbsdk/common/host/abix$ab;Z)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 559
    :goto_0
    monitor-exit p0

    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lgbsdk/common/host/ablx;Lgbsdk/common/host/abiz;)V
    .locals 3

    .line 893
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doDnsResultCallback for host "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lgbsdk/common/host/ablx;->oG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 895
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 896
    iput v1, v0, Landroid/os/Message;->what:I

    .line 897
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "callback_dnsresult_job_key"

    .line 898
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "callback_dnsresult_key"

    .line 899
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 900
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 901
    iget-object p1, p0, Lgbsdk/common/host/ablz;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private at(Ljava/lang/String;)Lgbsdk/common/host/abiz;
    .locals 5

    .line 239
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v1, "try to look up hardcode ips"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lgbsdk/common/host/ablz;->pT:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 241
    new-instance v0, Lgbsdk/common/host/abiz;

    invoke-direct {v0}, Lgbsdk/common/host/abiz;-><init>()V

    .line 242
    iget-object v1, p0, Lgbsdk/common/host/ablz;->pT:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 243
    invoke-static {v1}, Lgbsdk/common/host/ablr;->aE(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, v0, Lgbsdk/common/host/abiz;->oZ:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :cond_0
    invoke-static {v1}, Lgbsdk/common/host/ablr;->aF(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    iget-object v2, v0, Lgbsdk/common/host/abiz;->oY:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    :cond_1
    sget-object v2, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find a invalid hardcode ip: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_2
    sget-object p1, Lgbsdk/common/host/abiz$ab;->ph:Lgbsdk/common/host/abiz$ab;

    iput-object p1, v0, Lgbsdk/common/host/abiz;->pa:Lgbsdk/common/host/abiz$ab;

    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private av(Ljava/lang/String;)Z
    .locals 2

    .line 380
    iget-boolean v0, p0, Lgbsdk/common/host/ablz;->qe:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 381
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v0, "you have not set httpdns depend"

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 384
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/ablz;->pO:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 385
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v0, "httpdns was unabled by tnc"

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 388
    :cond_1
    invoke-static {p1}, Lgbsdk/common/host/ablp;->aB(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 389
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v0, "illegal host"

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 392
    :cond_2
    invoke-static {p1}, Lgbsdk/common/host/ablr;->aF(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lgbsdk/common/host/ablr;->aE(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1

    .line 393
    :cond_4
    :goto_0
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v0, "host is ipaddress"

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private declared-synchronized ay(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 605
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablw;->ak(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localdns is resolving for host : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablw;->al(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 609
    :cond_0
    :try_start_1
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submit localdns resolve host : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 612
    :try_start_2
    sget-object v1, Lgbsdk/common/host/ablz;->pM:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lgbsdk/common/host/ablu;

    iget-object v3, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    sget-object v4, Lgbsdk/common/host/ablz;->qg:Lcom/bytedance/common/utility/collection/WeakHandler;

    invoke-direct {v2, p1, v3, v4}, Lgbsdk/common/host/ablu;-><init>(Ljava/lang/String;Lgbsdk/common/host/ablw;Lcom/bytedance/common/utility/collection/WeakHandler;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 614
    iget-object v1, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v1, p1, v0}, Lgbsdk/common/host/ablw;->b(Ljava/lang/String;Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 616
    :try_start_3
    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 618
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return-object v0

    .line 262
    :cond_0
    iget-object p2, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {p2, p1}, Lgbsdk/common/host/ablw;->ag(Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 263
    iget-object p2, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {p2, p1}, Lgbsdk/common/host/ablw;->ai(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p2

    goto :goto_0

    .line 265
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 266
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v2, Lgbsdk/common/host/abix$ab;->oQ:Lgbsdk/common/host/abix$ab;

    invoke-virtual {p0, p2, v2, v1}, Lgbsdk/common/host/ablz;->a(Ljava/util/List;Lgbsdk/common/host/abix$ab;Z)Ljava/util/concurrent/Future;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_2

    return-object v0

    .line 274
    :cond_2
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 275
    invoke-direct {p0, p1, v1}, Lgbsdk/common/host/ablz;->e(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object v0

    goto :goto_1

    .line 278
    :cond_3
    :try_start_0
    iget-object v2, p0, Lgbsdk/common/host/ablz;->pZ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 279
    invoke-direct {p0, p1, v1}, Lgbsdk/common/host/ablz;->e(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-object v0
.end method

.method public static cj()Lgbsdk/common/host/ablz;
    .locals 2

    .line 119
    sget-object v0, Lgbsdk/common/host/ablz;->pN:Lgbsdk/common/host/ablz;

    if-nez v0, :cond_1

    .line 120
    const-class v0, Lgbsdk/common/host/ablz;

    monitor-enter v0

    .line 121
    :try_start_0
    sget-object v1, Lgbsdk/common/host/ablz;->pN:Lgbsdk/common/host/ablz;

    if-nez v1, :cond_0

    .line 122
    new-instance v1, Lgbsdk/common/host/ablz;

    invoke-direct {v1}, Lgbsdk/common/host/ablz;-><init>()V

    sput-object v1, Lgbsdk/common/host/ablz;->pN:Lgbsdk/common/host/ablz;

    .line 124
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 126
    :cond_1
    :goto_0
    sget-object v0, Lgbsdk/common/host/ablz;->pN:Lgbsdk/common/host/ablz;

    return-object v0
.end method

.method private d(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;
    .locals 3

    .line 657
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lookup localdns cache for host "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    new-instance v0, Lgbsdk/common/host/abiz;

    invoke-direct {v0}, Lgbsdk/common/host/abiz;-><init>()V

    .line 659
    iget-object v1, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v1, p1}, Lgbsdk/common/host/ablw;->af(Ljava/lang/String;)Lgbsdk/common/host/abix;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 663
    :cond_0
    iget-object v1, p1, Lgbsdk/common/host/abix;->oH:Ljava/util/List;

    iput-object v1, v0, Lgbsdk/common/host/abiz;->oY:Ljava/util/List;

    .line 664
    iget-object p1, p1, Lgbsdk/common/host/abix;->oI:Ljava/util/List;

    iput-object p1, v0, Lgbsdk/common/host/abiz;->oZ:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 666
    sget-object p1, Lgbsdk/common/host/abiz$ab;->pf:Lgbsdk/common/host/abiz$ab;

    iput-object p1, v0, Lgbsdk/common/host/abiz;->pa:Lgbsdk/common/host/abiz$ab;

    goto :goto_0

    .line 668
    :cond_1
    sget-object p1, Lgbsdk/common/host/abiz$ab;->pg:Lgbsdk/common/host/abiz$ab;

    iput-object p1, v0, Lgbsdk/common/host/abiz;->pa:Lgbsdk/common/host/abiz$ab;

    :goto_0
    return-object v0
.end method

.method private e(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;
    .locals 6

    .line 674
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "look up httpdns cache for host "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablw;->ad(Ljava/lang/String;)Lgbsdk/common/host/abix;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 680
    :cond_0
    new-instance v1, Lgbsdk/common/host/abiz;

    invoke-direct {v1}, Lgbsdk/common/host/abiz;-><init>()V

    .line 681
    iget-object v2, p1, Lgbsdk/common/host/abix;->oH:Ljava/util/List;

    iput-object v2, v1, Lgbsdk/common/host/abiz;->oY:Ljava/util/List;

    .line 682
    iget-object v2, p1, Lgbsdk/common/host/abix;->oI:Ljava/util/List;

    iput-object v2, v1, Lgbsdk/common/host/abiz;->oZ:Ljava/util/List;

    const-wide/16 v2, 0x3e8

    if-eqz p2, :cond_2

    .line 684
    iget-wide v4, p1, Lgbsdk/common/host/abix;->oJ:J

    mul-long v4, v4, v2

    iget-wide p1, p1, Lgbsdk/common/host/abix;->oK:J

    add-long/2addr v4, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    cmp-long v2, v4, p1

    if-lez v2, :cond_1

    .line 685
    sget-object p1, Lgbsdk/common/host/abiz$ab;->pe:Lgbsdk/common/host/abiz$ab;

    iput-object p1, v1, Lgbsdk/common/host/abiz;->pa:Lgbsdk/common/host/abiz$ab;

    return-object v1

    :cond_1
    return-object v0

    .line 691
    :cond_2
    iget-wide v4, p1, Lgbsdk/common/host/abix;->oJ:J

    mul-long v4, v4, v2

    iget-wide p1, p1, Lgbsdk/common/host/abix;->oK:J

    add-long/2addr v4, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    cmp-long v0, v4, p1

    if-lez v0, :cond_3

    .line 692
    sget-object p1, Lgbsdk/common/host/abiz$ab;->pc:Lgbsdk/common/host/abiz$ab;

    iput-object p1, v1, Lgbsdk/common/host/abiz;->pa:Lgbsdk/common/host/abiz$ab;

    goto :goto_0

    .line 694
    :cond_3
    sget-object p1, Lgbsdk/common/host/abiz$ab;->pd:Lgbsdk/common/host/abiz$ab;

    iput-object p1, v1, Lgbsdk/common/host/abiz;->pa:Lgbsdk/common/host/abiz$ab;

    :goto_0
    return-object v1
.end method

.method private f(Lgbsdk/common/host/ablx;)V
    .locals 5

    .line 879
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 880
    iget-object v1, p1, Lgbsdk/common/host/ablx;->oG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    sget-object v1, Lgbsdk/common/host/abix$ab;->oQ:Lgbsdk/common/host/abix$ab;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lgbsdk/common/host/ablz;->a(Ljava/util/List;Lgbsdk/common/host/abix$ab;Z)Ljava/util/concurrent/Future;

    .line 883
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    .line 884
    iput v1, v0, Landroid/os/Message;->what:I

    .line 885
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 886
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "dns_timeout_job_key"

    .line 887
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 888
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 889
    sget-object p1, Lgbsdk/common/host/ablz;->qg:Lcom/bytedance/common/utility/collection/WeakHandler;

    iget-object v1, p0, Lgbsdk/common/host/ablz;->pZ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/common/utility/collection/WeakHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lgbsdk/common/host/ablt;)Lgbsdk/common/host/abiz;
    .locals 6

    .line 330
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpDns::getHttpDnsResultForHostAsync for host "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-direct {p0, p1}, Lgbsdk/common/host/ablz;->av(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 335
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/ablz;->pP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 336
    invoke-direct {p0, p1, v2}, Lgbsdk/common/host/ablz;->e(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 338
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string p2, "returned httpdns cache, wouldn\'t callback"

    invoke-static {p1, p2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 342
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 344
    invoke-direct {p0, p1, v0, v2}, Lgbsdk/common/host/ablz;->a(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/concurrent/Future;

    .line 346
    new-instance v3, Lgbsdk/common/host/ablx;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v3, p1, p2, v0}, Lgbsdk/common/host/ablx;-><init>(Ljava/lang/String;Lgbsdk/common/host/ablt;Z)V

    .line 347
    iget-object p2, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {p2, p1, v3}, Lgbsdk/common/host/ablw;->a(Ljava/lang/String;Lgbsdk/common/host/ablx;)V

    .line 349
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x2

    .line 350
    iput p2, p1, Landroid/os/Message;->what:I

    .line 351
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 352
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "httpdns_timeout_job_key"

    .line 353
    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 354
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 355
    sget-object p2, Lgbsdk/common/host/ablz;->qg:Lcom/bytedance/common/utility/collection/WeakHandler;

    iget-object v0, p0, Lgbsdk/common/host/ablz;->pW:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p2, p1, v2, v3}, Lcom/bytedance/common/utility/collection/WeakHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 357
    :cond_2
    invoke-direct {p0, p1, v2}, Lgbsdk/common/host/ablz;->d(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    .line 361
    :cond_3
    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablw;->ak(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 362
    invoke-direct {p0, p1}, Lgbsdk/common/host/ablz;->ay(Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 365
    :cond_4
    new-instance v0, Lgbsdk/common/host/ablx;

    const/4 v2, 0x1

    invoke-direct {v0, p1, p2, v2}, Lgbsdk/common/host/ablx;-><init>(Ljava/lang/String;Lgbsdk/common/host/ablt;Z)V

    .line 366
    iget-object p2, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {p2, p1, v0}, Lgbsdk/common/host/ablw;->b(Ljava/lang/String;Lgbsdk/common/host/ablx;)V

    .line 368
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x3

    .line 369
    iput p2, p1, Landroid/os/Message;->what:I

    .line 370
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 371
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v2, "dns_timeout_job_key"

    .line 372
    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 373
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 374
    sget-object p2, Lgbsdk/common/host/ablz;->qg:Lcom/bytedance/common/utility/collection/WeakHandler;

    iget-object v0, p0, Lgbsdk/common/host/ablz;->qa:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {p2, p1, v2, v3}, Lcom/bytedance/common/utility/collection/WeakHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-object v1
.end method

.method declared-synchronized a(Ljava/util/List;Lgbsdk/common/host/abix$ab;Z)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lgbsdk/common/host/abix$ab;",
            "Z)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 567
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 573
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 574
    iget-object v2, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lgbsdk/common/host/ablw;->ag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p3, :cond_1

    .line 575
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_1

    .line 576
    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lgbsdk/common/host/ablw;->ai(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 577
    sget-object v2, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync block request for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is resolving"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 583
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_4

    .line 584
    monitor-exit p0

    return-object v0

    .line 587
    :cond_4
    :try_start_1
    sget-object p3, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submit httpdns resolve for host : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    :try_start_2
    sget-object p3, Lgbsdk/common/host/ablz;->pM:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lgbsdk/common/host/ably;

    invoke-static {p1}, Lgbsdk/common/host/ablp;->j(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lgbsdk/common/host/ablz;->pQ:Ljava/lang/String;

    iget-object v4, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    sget-object v6, Lgbsdk/common/host/ablz;->qg:Lcom/bytedance/common/utility/collection/WeakHandler;

    move-object v1, v7

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lgbsdk/common/host/ably;-><init>(Ljava/lang/String;Ljava/lang/String;Lgbsdk/common/host/ablw;Lgbsdk/common/host/abix$ab;Lcom/bytedance/common/utility/collection/WeakHandler;)V

    invoke-interface {p3, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 591
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 592
    iget-object v1, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v1, p3, v0}, Lgbsdk/common/host/ablw;->a(Ljava/lang/String;Ljava/util/concurrent/Future;)V

    .line 593
    iget-object v1, p0, Lgbsdk/common/host/ablz;->pP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 594
    iget-object v1, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v1, p3}, Lgbsdk/common/host/ablw;->ar(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 598
    :try_start_3
    invoke-virtual {p2}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    .line 599
    sget-object p2, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "submit httpdns resolve for host : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was rejected"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 601
    :cond_6
    monitor-exit p0

    return-object v0

    .line 568
    :cond_7
    :goto_2
    :try_start_4
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string p2, "httpdns resolve hostlist is null."

    invoke-static {p1, p2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 569
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Lgbsdk/common/host/abix$ab;)V
    .locals 4

    monitor-enter p0

    .line 400
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/ablz;->pU:Ljava/util/concurrent/ConcurrentSkipListSet;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgbsdk/common/host/ablz;->pU:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgbsdk/common/host/ablz;->pU:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 403
    :cond_0
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v1, "do httpdns preload"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lgbsdk/common/host/ablz;->pU:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 405
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 406
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 407
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 408
    iget-object v3, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v3, v2}, Lgbsdk/common/host/ablw;->ag(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 411
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 414
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    .line 415
    monitor-exit p0

    return-void

    .line 417
    :cond_3
    :try_start_1
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "httpdns batch preload for : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 418
    invoke-virtual {p0, v1, p1, v0}, Lgbsdk/common/host/ablz;->a(Ljava/util/List;Lgbsdk/common/host/abix$ab;Z)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    monitor-exit p0

    return-void

    .line 401
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lgbsdk/common/host/abls;)V
    .locals 2

    .line 139
    iget-boolean v0, p0, Lgbsdk/common/host/ablz;->qe:Z

    if-eqz v0, :cond_0

    .line 140
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v0, "you have set httpdns depend before."

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 143
    invoke-interface {p1}, Lgbsdk/common/host/abls;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 144
    invoke-interface {p1}, Lgbsdk/common/host/abls;->bX()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lgbsdk/common/host/abls;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 148
    iput-object p1, p0, Lgbsdk/common/host/ablz;->qd:Lgbsdk/common/host/abls;

    .line 149
    iget-object v0, p0, Lgbsdk/common/host/ablz;->pR:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-interface {p1}, Lgbsdk/common/host/abls;->bX()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/common/host/ablz;->pR:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lgbsdk/common/host/ablz;->qe:Z

    .line 153
    invoke-virtual {p0}, Lgbsdk/common/host/ablz;->cl()V

    .line 154
    iget-object v1, p0, Lgbsdk/common/host/ablz;->qc:Lgbsdk/common/host/abii;

    invoke-interface {p1}, Lgbsdk/common/host/abls;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1, p1}, Lgbsdk/common/host/abii;->E(Landroid/content/Context;)V

    .line 156
    iget-object p1, p0, Lgbsdk/common/host/ablz;->pU:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    move-result p1

    if-ge p1, v0, :cond_3

    .line 157
    iget-object p1, p0, Lgbsdk/common/host/ablz;->qd:Lgbsdk/common/host/abls;

    invoke-interface {p1}, Lgbsdk/common/host/abls;->bW()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lgbsdk/common/host/ablz;->qd:Lgbsdk/common/host/abls;

    invoke-interface {p1}, Lgbsdk/common/host/abls;->bW()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lgbsdk/common/host/ablz;->qd:Lgbsdk/common/host/abls;

    .line 158
    invoke-interface {p1}, Lgbsdk/common/host/abls;->bW()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    const/16 v0, 0xa

    if-gt p1, v0, :cond_2

    .line 159
    iget-object p1, p0, Lgbsdk/common/host/ablz;->pU:Ljava/util/concurrent/ConcurrentSkipListSet;

    iget-object v0, p0, Lgbsdk/common/host/ablz;->qd:Lgbsdk/common/host/abls;

    invoke-interface {v0}, Lgbsdk/common/host/abls;->bW()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->addAll(Ljava/util/Collection;)Z

    .line 160
    sget-object p1, Lgbsdk/common/host/abix$ab;->oV:Lgbsdk/common/host/abix$ab;

    invoke-virtual {p0, p1}, Lgbsdk/common/host/ablz;->a(Lgbsdk/common/host/abix$ab;)V

    goto :goto_0

    .line 162
    :cond_2
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v0, "httpdns preload domains\'s number must less than 10, httpdns preload is skipped."

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_3
    sget-object p1, Lgbsdk/common/host/abix$ab;->oV:Lgbsdk/common/host/abix$ab;

    invoke-virtual {p0, p1}, Lgbsdk/common/host/ablz;->a(Lgbsdk/common/host/abix$ab;)V

    .line 168
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x5

    .line 169
    iput v0, p1, Landroid/os/Message;->what:I

    .line 170
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 171
    sget-object v0, Lgbsdk/common/host/ablz;->qg:Lcom/bytedance/common/utility/collection/WeakHandler;

    invoke-virtual {v0, p1}, Lcom/bytedance/common/utility/collection/WeakHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 145
    iput-object p1, p0, Lgbsdk/common/host/ablz;->qd:Lgbsdk/common/host/abls;

    .line 146
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "you must set correct httpdns depend"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method ac(Ljava/lang/String;)V
    .locals 1

    .line 430
    invoke-static {p1}, Lgbsdk/common/host/ablp;->aB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablw;->ag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablw;->ac(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method aq(Ljava/lang/String;)V
    .locals 1

    .line 436
    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablw;->aq(Ljava/lang/String;)V

    return-void
.end method

.method public as(Ljava/lang/String;)Lgbsdk/common/host/abiz;
    .locals 7

    .line 175
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHttpDnsResultForHostSyncBlock for host : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0, p1}, Lgbsdk/common/host/ablz;->av(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 181
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/ablz;->pR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 184
    iget-object v1, p0, Lgbsdk/common/host/ablz;->pP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 185
    invoke-direct {p0, p1, v3}, Lgbsdk/common/host/ablz;->e(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 190
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 192
    invoke-direct {p0, p1, v0, v2}, Lgbsdk/common/host/ablz;->a(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 193
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v1, p1, v0}, Lgbsdk/common/host/ablz;->a(Ljava/util/concurrent/Future;Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object v0

    goto :goto_1

    .line 195
    :cond_2
    invoke-direct {p0, p1, v3}, Lgbsdk/common/host/ablz;->d(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    .line 201
    :cond_3
    iget-object v1, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v1, p1}, Lgbsdk/common/host/ablw;->ak(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 202
    iget-object v1, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v1, p1}, Lgbsdk/common/host/ablw;->al(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v1

    goto :goto_0

    .line 204
    :cond_4
    invoke-direct {p0, p1}, Lgbsdk/common/host/ablz;->ay(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_6

    .line 208
    invoke-direct {p0, p1, v0}, Lgbsdk/common/host/ablz;->c(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object v0

    if-nez v0, :cond_5

    .line 210
    invoke-direct {p0, p1}, Lgbsdk/common/host/ablz;->at(Ljava/lang/String;)Lgbsdk/common/host/abiz;

    move-result-object v0

    :cond_5
    return-object v0

    .line 215
    :cond_6
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 216
    invoke-direct {p0, p1, v2}, Lgbsdk/common/host/ablz;->d(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object v1

    if-nez v1, :cond_7

    .line 218
    invoke-direct {p0, p1, v0}, Lgbsdk/common/host/ablz;->c(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object v0

    goto :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_1

    .line 222
    :cond_8
    :try_start_0
    iget-object v3, p0, Lgbsdk/common/host/ablz;->qa:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 223
    invoke-direct {p0, p1, v2}, Lgbsdk/common/host/ablz;->d(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object v1

    if-nez v1, :cond_7

    .line 225
    invoke-direct {p0, p1, v0}, Lgbsdk/common/host/ablz;->c(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 228
    :catch_0
    invoke-direct {p0, p1, v0}, Lgbsdk/common/host/ablz;->c(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_9

    .line 233
    invoke-direct {p0, p1}, Lgbsdk/common/host/ablz;->at(Ljava/lang/String;)Lgbsdk/common/host/abiz;

    move-result-object v0

    :cond_9
    return-object v0
.end method

.method public au(Ljava/lang/String;)Lgbsdk/common/host/abiz;
    .locals 3

    .line 292
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHttpDnsResultForHostSyncNonBlock for host : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-direct {p0, p1}, Lgbsdk/common/host/ablz;->av(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 297
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/ablz;->pP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 298
    invoke-direct {p0, p1, v1}, Lgbsdk/common/host/ablz;->e(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 303
    :cond_1
    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablw;->ag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 304
    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablw;->ag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v2, Lgbsdk/common/host/abix$ab;->oQ:Lgbsdk/common/host/abix$ab;

    invoke-virtual {p0, v0, v2, v1}, Lgbsdk/common/host/ablz;->a(Ljava/util/List;Lgbsdk/common/host/abix$ab;Z)Ljava/util/concurrent/Future;

    .line 310
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 312
    :cond_3
    :goto_0
    invoke-direct {p0, p1, v1}, Lgbsdk/common/host/ablz;->d(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object p1

    return-object p1

    .line 314
    :cond_4
    invoke-direct {p0, p1, v1}, Lgbsdk/common/host/ablz;->d(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v0

    .line 318
    :cond_5
    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablw;->ak(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 319
    monitor-enter p0

    .line 320
    :try_start_1
    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablw;->ak(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 321
    invoke-direct {p0, p1}, Lgbsdk/common/host/ablz;->ay(Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 323
    :cond_6
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 325
    :cond_7
    :goto_1
    invoke-direct {p0, p1, v1}, Lgbsdk/common/host/ablz;->e(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object p1

    return-object p1
.end method

.method aw(Ljava/lang/String;)V
    .locals 2

    .line 422
    invoke-static {p1}, Lgbsdk/common/host/ablp;->aB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablw;->ag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgbsdk/common/host/ablz;->pP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    sget-object p1, Lgbsdk/common/host/abix$ab;->oU:Lgbsdk/common/host/abix$ab;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lgbsdk/common/host/ablz;->a(Ljava/util/List;Lgbsdk/common/host/abix$ab;Z)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method ax(Ljava/lang/String;)V
    .locals 2

    .line 445
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v1, "removeLocalDnsStaleCache"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-static {p1}, Lgbsdk/common/host/ablp;->aB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablw;->ae(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ck()V
    .locals 2

    .line 957
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 958
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x6

    .line 959
    iput v1, v0, Landroid/os/Message;->what:I

    .line 960
    sget-object v1, Lgbsdk/common/host/ablz;->qg:Lcom/bytedance/common/utility/collection/WeakHandler;

    invoke-virtual {v1, v0}, Lcom/bytedance/common/utility/collection/WeakHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method cl()V
    .locals 2

    .line 965
    :try_start_0
    sget-object v0, Lgbsdk/common/host/ablz;->pM:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lgbsdk/common/host/ablv;

    invoke-direct {v1}, Lgbsdk/common/host/ablv;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 967
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method cm()Landroid/os/HandlerThread;
    .locals 1

    .line 972
    sget-object v0, Lgbsdk/common/host/ablz;->qf:Landroid/os/HandlerThread;

    return-object v0
.end method

.method e(Lorg/json/JSONArray;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 929
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 930
    iget-object v0, p0, Lgbsdk/common/host/ablz;->pS:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 931
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 932
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 933
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 934
    iget-object v3, p0, Lgbsdk/common/host/ablz;->pS:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 937
    :cond_1
    iget-object v1, p0, Lgbsdk/common/host/ablz;->qd:Lgbsdk/common/host/abls;

    .line 938
    invoke-interface {v1}, Lgbsdk/common/host/abls;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dispatchersdk_httpdns_hardcodeips"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 939
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 940
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "httpdns_hardcodeips"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 941
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 9

    .line 702
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "httpdns handler handle msg in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1a

    .line 703
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lgbsdk/common/host/ablz;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lgbsdk/common/host/ably;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lgbsdk/common/host/ablu;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lgbsdk/common/host/abix;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lgbsdk/common/host/ablw;

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 709
    :cond_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lgbsdk/common/host/ablz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "MSG_HTTPDNS_PREFER_TIMEOUT job is null"

    if-eqz v0, :cond_2

    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 710
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v2, "MSG_HTTPDNS_PREFER_TIMEOUT"

    invoke-static {v0, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "httpdns_timeout_job_key"

    .line 712
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lgbsdk/common/host/ablx;

    if-nez p1, :cond_1

    .line 714
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 717
    :cond_1
    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablw;->b(Lgbsdk/common/host/ablx;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 718
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "httpdns request not return in httpdns prefer time for host : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lgbsdk/common/host/ablx;->oG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget-object v0, p1, Lgbsdk/common/host/ablx;->oG:Ljava/lang/String;

    iget-boolean v1, p1, Lgbsdk/common/host/ablx;->pk:Z

    invoke-direct {p0, v0, v1}, Lgbsdk/common/host/ablz;->d(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object v0

    .line 720
    invoke-direct {p0, p1, v0}, Lgbsdk/common/host/ablz;->a(Lgbsdk/common/host/ablx;Lgbsdk/common/host/abiz;)V

    .line 721
    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablw;->c(Lgbsdk/common/host/ablx;)V

    goto/16 :goto_6

    .line 723
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lgbsdk/common/host/ably;

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_7

    .line 724
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v1, "MSG_HTTPDNS_COMPLETED"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "httpdns_completed_hosts"

    .line 726
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_3

    .line 728
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v0, "MSG_HTTPDNS_COMPLETED hostlist is null"

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 731
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 732
    iget-object v2, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v2, v1}, Lgbsdk/common/host/ablw;->an(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    .line 735
    :cond_5
    sget-object v2, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "httpdns returned in httpdns prefer time for host : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-object v2, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v2, v1}, Lgbsdk/common/host/ablw;->am(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgbsdk/common/host/ablx;

    .line 737
    invoke-direct {p0, v1, v3}, Lgbsdk/common/host/ablz;->e(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object v5

    .line 738
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object v6

    iget-object v6, v6, Lgbsdk/common/host/ablz;->pP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v5, :cond_6

    .line 739
    iget-boolean v5, v4, Lgbsdk/common/host/ablx;->pk:Z

    invoke-direct {p0, v1, v5}, Lgbsdk/common/host/ablz;->d(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object v5

    .line 741
    :cond_6
    sget-object v6, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "httpdns request is returned in prefer time for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-direct {p0, v4, v5}, Lgbsdk/common/host/ablz;->a(Lgbsdk/common/host/ablx;Lgbsdk/common/host/abiz;)V

    .line 743
    iget-object v5, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v5, v4}, Lgbsdk/common/host/ablw;->c(Lgbsdk/common/host/ablx;)V

    goto :goto_1

    .line 746
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lgbsdk/common/host/ablu;

    const/4 v4, 0x0

    if-eqz v0, :cond_b

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_b

    .line 748
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v1, "MSG_LOCALDNS_COMPLETED"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "localdns_completed_host"

    .line 750
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    .line 752
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v0, "MSG_HTTPDNS_COMPLETED host is null"

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 756
    :cond_8
    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablw;->ap(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 757
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localdns returned in localdns timeout for host : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablw;->ao(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/ablx;

    .line 759
    invoke-direct {p0, p1, v3}, Lgbsdk/common/host/ablz;->d(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object v2

    if-nez v2, :cond_a

    .line 761
    invoke-direct {p0, p1, v4}, Lgbsdk/common/host/ablz;->e(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object v2

    if-nez v2, :cond_9

    .line 763
    invoke-direct {p0, v1}, Lgbsdk/common/host/ablz;->f(Lgbsdk/common/host/ablx;)V

    .line 764
    iget-object v2, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    iget-object v5, v1, Lgbsdk/common/host/ablx;->oG:Ljava/lang/String;

    invoke-virtual {v2, v5, v1}, Lgbsdk/common/host/ablw;->a(Ljava/lang/String;Lgbsdk/common/host/ablx;)V

    goto :goto_3

    .line 766
    :cond_9
    invoke-direct {p0, v1, v2}, Lgbsdk/common/host/ablz;->a(Lgbsdk/common/host/ablx;Lgbsdk/common/host/abiz;)V

    goto :goto_3

    .line 769
    :cond_a
    sget-object v5, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "localdns request is returned in timeout for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    invoke-direct {p0, v1, v2}, Lgbsdk/common/host/ablz;->a(Lgbsdk/common/host/ablx;Lgbsdk/common/host/abiz;)V

    .line 772
    :goto_3
    iget-object v2, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v2, v1}, Lgbsdk/common/host/ablw;->e(Lgbsdk/common/host/ablx;)V

    goto :goto_2

    .line 775
    :cond_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lgbsdk/common/host/ablz;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "dns_timeout_job_key"

    if-eqz v0, :cond_f

    :try_start_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_f

    .line 776
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v2, "MSG_LOCALDNS_REQUEST_TIMEOUT"

    invoke-static {v0, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 778
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lgbsdk/common/host/ablx;

    if-nez p1, :cond_c

    .line 780
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 783
    :cond_c
    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablw;->d(Lgbsdk/common/host/ablx;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 784
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local request not return in localdns timeout for host : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lgbsdk/common/host/ablx;->oG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iget-object v0, p1, Lgbsdk/common/host/ablx;->oG:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lgbsdk/common/host/ablz;->e(Ljava/lang/String;Z)Lgbsdk/common/host/abiz;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 787
    invoke-direct {p0, p1, v0}, Lgbsdk/common/host/ablz;->a(Lgbsdk/common/host/ablx;Lgbsdk/common/host/abiz;)V

    goto :goto_4

    .line 789
    :cond_d
    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    iget-object v1, p1, Lgbsdk/common/host/ablx;->oG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgbsdk/common/host/ablw;->ag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 790
    invoke-direct {p0, p1}, Lgbsdk/common/host/ablz;->f(Lgbsdk/common/host/ablx;)V

    .line 792
    :cond_e
    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    iget-object v1, p1, Lgbsdk/common/host/ablx;->oG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lgbsdk/common/host/ablw;->a(Ljava/lang/String;Lgbsdk/common/host/ablx;)V

    .line 794
    :goto_4
    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablw;->e(Lgbsdk/common/host/ablx;)V

    goto/16 :goto_6

    .line 796
    :cond_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lgbsdk/common/host/ablz;

    if-eqz v0, :cond_11

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_11

    .line 797
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v2, "MSG_HTTPDNS_REQUEST_TIMEOUT"

    invoke-static {v0, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 799
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lgbsdk/common/host/ablx;

    if-nez p1, :cond_10

    .line 801
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 804
    :cond_10
    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablw;->b(Lgbsdk/common/host/ablx;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    .line 805
    invoke-direct {p0, p1, v0}, Lgbsdk/common/host/ablz;->a(Lgbsdk/common/host/ablx;Lgbsdk/common/host/abiz;)V

    .line 806
    iget-object v0, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ablw;->c(Lgbsdk/common/host/ablx;)V

    goto/16 :goto_6

    .line 808
    :cond_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lgbsdk/common/host/ablz;

    if-eqz v0, :cond_14

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    .line 809
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v0, "MSG_LOAD_LOCAL_HARDCODEIPS"

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iget-object p1, p0, Lgbsdk/common/host/ablz;->qd:Lgbsdk/common/host/abls;

    invoke-interface {p1}, Lgbsdk/common/host/abls;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "dispatchersdk_httpdns_hardcodeips"

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "httpdns_hardcodeips"

    const-string v1, ""

    .line 812
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 813
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 814
    iget-object v0, p0, Lgbsdk/common/host/ablz;->pS:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 816
    :try_start_3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 817
    :goto_5
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v4, p1, :cond_1a

    .line 818
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p1

    .line 819
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 820
    iget-object v1, p0, Lgbsdk/common/host/ablz;->pS:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 825
    :catch_0
    :try_start_4
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v0, "local httpdns hardcode ips not exists, use default"

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 828
    :cond_13
    iget-object p1, p0, Lgbsdk/common/host/ablz;->qd:Lgbsdk/common/host/abls;

    invoke-interface {p1}, Lgbsdk/common/host/abls;->bY()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lgbsdk/common/host/ablz;->pS:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    move-result p1

    if-nez p1, :cond_1a

    .line 829
    iget-object p1, p0, Lgbsdk/common/host/ablz;->pS:Ljava/util/concurrent/ConcurrentSkipListSet;

    iget-object v0, p0, Lgbsdk/common/host/ablz;->qd:Lgbsdk/common/host/abls;

    invoke-interface {v0}, Lgbsdk/common/host/abls;->bY()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6

    .line 832
    :cond_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lgbsdk/common/host/ablz;

    if-eqz v0, :cond_15

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_15

    .line 833
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v0, "network changed"

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object p1, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object v0

    iget-object v0, v0, Lgbsdk/common/host/ablz;->qd:Lgbsdk/common/host/abls;

    invoke-interface {v0}, Lgbsdk/common/host/abls;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgbsdk/common/host/ablw;->L(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 835
    :cond_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lgbsdk/common/host/ablz;

    if-eqz v0, :cond_16

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_16

    .line 836
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v0, "activity resume, detect ipv6 reachable"

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-virtual {p0}, Lgbsdk/common/host/ablz;->cl()V

    goto/16 :goto_6

    .line 838
    :cond_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lgbsdk/common/host/abix;

    if-eqz v0, :cond_18

    .line 839
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dnsrecord_host"

    .line 840
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 841
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 842
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v0, "DnsRecord refresh host is null"

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 845
    :cond_17
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_6

    .line 859
    :pswitch_0
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove httpdns cache for host : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object p1

    invoke-virtual {p1, v0}, Lgbsdk/common/host/ablz;->ac(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 855
    :pswitch_1
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add host : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to stale cache host list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object p1

    invoke-virtual {p1, v0}, Lgbsdk/common/host/ablz;->aq(Ljava/lang/String;)V

    goto :goto_6

    .line 851
    :pswitch_2
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove localdns cache for host : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object p1

    invoke-virtual {p1, v0}, Lgbsdk/common/host/ablz;->ax(Ljava/lang/String;)V

    goto :goto_6

    .line 847
    :pswitch_3
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh httpdns cache for host : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object p1

    invoke-virtual {p1, v0}, Lgbsdk/common/host/ablz;->aw(Ljava/lang/String;)V

    goto :goto_6

    .line 865
    :cond_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lgbsdk/common/host/ablw;

    if-eqz v0, :cond_19

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_19

    .line 866
    sget-object p1, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v0, "reset httpdns domain failed count"

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object p1, p0, Lgbsdk/common/host/ablz;->qb:Lgbsdk/common/host/ablw;

    invoke-virtual {p1}, Lgbsdk/common/host/ablw;->ci()V

    goto :goto_6

    .line 869
    :cond_19
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTPDNS-CollectResult handler thread receive a unknown message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p1

    .line 873
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1a
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method i(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 440
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "batchRefreshHttpDnsStaleCache for host "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    sget-object v0, Lgbsdk/common/host/abix$ab;->oW:Lgbsdk/common/host/abix$ab;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lgbsdk/common/host/ablz;->a(Ljava/util/List;Lgbsdk/common/host/abix$ab;Z)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 950
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 951
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x7

    .line 952
    iput v1, v0, Landroid/os/Message;->what:I

    .line 953
    sget-object v1, Lgbsdk/common/host/ablz;->qg:Lcom/bytedance/common/utility/collection/WeakHandler;

    invoke-virtual {v1, v0}, Lcom/bytedance/common/utility/collection/WeakHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public s(Lorg/json/JSONObject;)V
    .locals 7

    .line 452
    sget-object v0, Lgbsdk/common/host/ablz;->TAG:Ljava/lang/String;

    const-string v1, "onServerConfigChanged"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "ttnet_http_dns_enabled"

    const/4 v1, -0x1

    .line 457
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v0, :cond_2

    .line 459
    iget-object v4, p0, Lgbsdk/common/host/ablz;->pO:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    const-string v0, "ttnet_tt_http_dns_domain"

    .line 462
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 464
    iput-object v0, p0, Lgbsdk/common/host/ablz;->pR:Ljava/lang/String;

    :cond_3
    const-string v0, "ttnet_tt_http_dns_preload_batch_host"

    .line 467
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 469
    iget-object v4, p0, Lgbsdk/common/host/ablz;->pU:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentSkipListSet;->clear()V

    const/4 v4, 0x0

    .line 470
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 471
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 472
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 473
    iget-object v6, p0, Lgbsdk/common/host/ablz;->pU:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    const-string v0, "localdns_cache_ttl"

    .line 478
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_6

    .line 480
    iget-object v4, p0, Lgbsdk/common/host/ablz;->pV:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_6
    const-string v0, "httpdns_prefer_time_ms"

    .line 483
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_7

    .line 485
    iget-object v4, p0, Lgbsdk/common/host/ablz;->pW:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_7
    const-string v0, "httpdns_stale_cache_interval"

    .line 488
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_8

    .line 490
    iget-object v4, p0, Lgbsdk/common/host/ablz;->pX:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_8
    const-string v0, "enable_compare_localdns_httpdns"

    .line 493
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_9

    .line 495
    iget-object v4, p0, Lgbsdk/common/host/ablz;->pY:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_9
    const-string v0, "ttnet_http_dns_prefer"

    .line 498
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_b

    .line 500
    iget-object v4, p0, Lgbsdk/common/host/ablz;->pP:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v0, v3, :cond_a

    const/4 v2, 0x1

    :cond_a
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_b
    const-string v0, "ttnet_http_dns_timeout"

    .line 503
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_c

    .line 505
    iget-object v2, p0, Lgbsdk/common/host/ablz;->pZ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_c
    const-string v0, "ttnet_local_dns_time_out"

    .line 508
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_d

    .line 510
    iget-object v1, p0, Lgbsdk/common/host/ablz;->qa:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_d
    const-string v0, "ttnet_http_dns_addr"

    .line 513
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 515
    iget-object v0, p0, Lgbsdk/common/host/ablz;->pT:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 516
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 517
    :cond_e
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 518
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 519
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 520
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, ","

    .line 521
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 522
    iget-object v3, p0, Lgbsdk/common/host/ablz;->pR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 523
    iget-object v1, p0, Lgbsdk/common/host/ablz;->pS:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->clear()V

    .line 524
    iget-object v1, p0, Lgbsdk/common/host/ablz;->pS:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 526
    :cond_f
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 527
    iget-object v2, p0, Lgbsdk/common/host/ablz;->pT:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_10
    return-void
.end method
