.class public final Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderExecutors;
.super Ljava/lang/Object;
.source "DownloaderExecutors.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderExecutors;",
        "",
        "()V",
        "downloadIO",
        "Ljava/util/concurrent/ExecutorService;",
        "getDownloadIO",
        "()Ljava/util/concurrent/ExecutorService;",
        "listenerThread",
        "getListenerThread",
        "mainThread",
        "Ljava/util/concurrent/Executor;",
        "getMainThread",
        "()Ljava/util/concurrent/Executor;",
        "ch_framework_tobRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderExecutors;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field private static final downloadIO:Ljava/util/concurrent/ExecutorService;

.field private static final listenerThread:Ljava/util/concurrent/ExecutorService;

.field private static final mainThread:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderExecutors;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderExecutors;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderExecutors;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderExecutors;

    const/4 v0, 0x3

    .line 10
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newFixedThreadPool(3)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderExecutors;->downloadIO:Ljava/util/concurrent/ExecutorService;

    .line 11
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadExecutor()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderExecutors;->listenerThread:Ljava/util/concurrent/ExecutorService;

    .line 12
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderExecutors$mainThread$1;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderExecutors$mainThread$1;-><init>()V

    check-cast v0, Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderExecutors;->mainThread:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDownloadIO()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 10
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderExecutors;->downloadIO:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public final getListenerThread()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 11
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderExecutors;->listenerThread:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public final getMainThread()Ljava/util/concurrent/Executor;
    .locals 1

    .line 12
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderExecutors;->mainThread:Ljava/util/concurrent/Executor;

    return-object v0
.end method
