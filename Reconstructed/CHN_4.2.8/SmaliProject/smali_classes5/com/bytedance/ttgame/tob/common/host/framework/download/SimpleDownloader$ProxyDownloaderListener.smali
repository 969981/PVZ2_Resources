.class public final Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;
.super Ljava/lang/Object;
.source "SimpleDownloader.kt"

# interfaces
.implements Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProxyDownloaderListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;",
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;",
        "originListener",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;Ljava/util/concurrent/Executor;)V",
        "onFail",
        "",
        "info",
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;",
        "exception",
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;",
        "onProgress",
        "onStart",
        "onSuccess",
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
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final originListener:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;


# direct methods
.method public constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;->originListener:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;

    .line 55
    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic lambda$10Rg0Df56KlL5WCpT_nwIT3_YuI(Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;->onProgress$lambda-1(Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V

    return-void
.end method

.method public static synthetic lambda$GsEbO-rAhCIIO3V5Wf3zaBb7La4(Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;->onStart$lambda-0(Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V

    return-void
.end method

.method public static synthetic lambda$nwTHYjm4Etd6l7RFizRct8d9sbU(Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;->onSuccess$lambda-2(Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V

    return-void
.end method

.method public static synthetic lambda$uvEkv4i4mGYk3hvtal9eOb82CSk(Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;->onFail$lambda-3(Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;)V

    return-void
.end method

.method private static final onFail$lambda-3(Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "afa33363da4dd27a9d862044fe4ae8c8"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callbackInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$exception"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object p0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;->originListener:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;->onFail(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;)V

    :cond_1
    return-void
.end method

.method private static final onProgress$lambda-1(Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "b4f765afd0a30edddcc153b2a93ed0c2"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callbackInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object p0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;->originListener:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;->onProgress(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V

    :cond_1
    return-void
.end method

.method private static final onStart$lambda-0(Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "806385b9dd8a66c5257b279de497bcbd"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callbackInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;->originListener:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;->onStart(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V

    :cond_1
    return-void
.end method

.method private static final onSuccess$lambda-2(Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "b968a55f735c136cc63f0d93518f4242"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callbackInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object p0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;->originListener:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;->onSuccess(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onFail(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "747897a24f2dd9278817dbc3c6d076a6"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader;->downloadTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;

    invoke-virtual {v1, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;->genDownloaderId(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->copyToAnother()Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;

    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/-$$Lambda$SimpleDownloader$ProxyDownloaderListener$uvEkv4i4mGYk3hvtal9eOb82CSk;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/download/-$$Lambda$SimpleDownloader$ProxyDownloaderListener$uvEkv4i4mGYk3hvtal9eOb82CSk;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgress(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "37bf33b45ec0b0d06cb093f0d66b4947"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->copyToAnother()Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/-$$Lambda$SimpleDownloader$ProxyDownloaderListener$10Rg0Df56KlL5WCpT_nwIT3_YuI;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/-$$Lambda$SimpleDownloader$ProxyDownloaderListener$10Rg0Df56KlL5WCpT_nwIT3_YuI;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStart(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "500938b26819082310158005741788db"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->copyToAnother()Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/-$$Lambda$SimpleDownloader$ProxyDownloaderListener$GsEbO-rAhCIIO3V5Wf3zaBb7La4;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/-$$Lambda$SimpleDownloader$ProxyDownloaderListener$GsEbO-rAhCIIO3V5Wf3zaBb7La4;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "af8d4f47fce7608cb611cad4e03090d6"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader;->downloadTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;

    invoke-virtual {v1, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;->genDownloaderId(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->copyToAnother()Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/-$$Lambda$SimpleDownloader$ProxyDownloaderListener$nwTHYjm4Etd6l7RFizRct8d9sbU;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/-$$Lambda$SimpleDownloader$ProxyDownloaderListener$nwTHYjm4Etd6l7RFizRct8d9sbU;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
