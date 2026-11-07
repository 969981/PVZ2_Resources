.class public final Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader;
.super Ljava/lang/Object;
.source "SimpleDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0012B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader;",
        "",
        "()V",
        "TAG",
        "",
        "downloadTaskMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;",
        "cancelDownload",
        "",
        "downloadId",
        "getCallbackExecutor",
        "Ljava/util/concurrent/Executor;",
        "mainThread",
        "",
        "startDownload",
        "initConfig",
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;",
        "ProxyDownloaderListener",
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
.field public static final INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader;

.field private static final TAG:Ljava/lang/String; = "SimpleDownloader"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field public static final downloadTaskMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader;

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader;->downloadTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getCallbackExecutor(Z)Ljava/util/concurrent/Executor;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "4a8957ffb20d72f28c4738d462f45251"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/Executor;

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 47
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderExecutors;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderExecutors;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderExecutors;->getMainThread()Ljava/util/concurrent/Executor;

    move-result-object p1

    goto :goto_0

    .line 49
    :cond_1
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderExecutors;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderExecutors;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderExecutors;->getListenerThread()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final cancelDownload(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "91421ccaf0b8180f6c2440e11737fcd2"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "downloadId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel download, downloadId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleDownloader"

    invoke-static {v1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader;->downloadTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->cancelDownload()V

    :cond_1
    return-void
.end method

.method public final declared-synchronized startDownload(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;)Ljava/lang/String;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "7e3bc19467f5123ccb16d55c6ad55acd"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    const-string v0, "initConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SimpleDownloader"

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start download, config = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;->genDownloaderId(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;)Ljava/lang/String;

    move-result-object v0

    .line 25
    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader;->downloadTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 26
    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;

    .line 28
    new-instance v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;

    .line 29
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->getDownloaderListener()Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;

    move-result-object v3

    .line 30
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->getCallbackInMainThread()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader;->getCallbackExecutor(Z)Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 28
    invoke-direct {v2, v3, v4}, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;Ljava/util/concurrent/Executor;)V

    check-cast v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;

    .line 27
    invoke-virtual {p1, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->updateDownloaderListener(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;)Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;

    move-result-object p1

    .line 26
    invoke-direct {v1, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;)V

    .line 34
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader;->downloadTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {v1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->startDownload()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
