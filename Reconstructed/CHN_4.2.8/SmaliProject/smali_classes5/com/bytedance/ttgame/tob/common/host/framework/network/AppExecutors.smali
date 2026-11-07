.class public Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;
.super Ljava/lang/Object;
.source "AppExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors$MainThreadExecutor;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private final diskIO:Ljava/util/concurrent/Executor;

.field private final mainThread:Ljava/util/concurrent/Executor;

.field private final networkIO:Ljava/util/concurrent/Executor;

.field private final pluginLoader:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 20
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;

    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x3

    .line 22
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 23
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors$MainThreadExecutor;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors$MainThreadExecutor;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors$1;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->diskIO:Ljava/util/concurrent/Executor;

    .line 33
    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->networkIO:Ljava/util/concurrent/Executor;

    .line 34
    iput-object p3, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->pluginLoader:Ljava/util/concurrent/ExecutorService;

    .line 35
    iput-object p4, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->mainThread:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static getInstance()Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;
    .locals 1

    .line 39
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;

    return-object v0
.end method


# virtual methods
.method public diskIO()Ljava/util/concurrent/Executor;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->diskIO:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public mainThread()Ljava/util/concurrent/Executor;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->mainThread:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public networkIO()Ljava/util/concurrent/Executor;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->networkIO:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public pluginLoader()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->pluginLoader:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
