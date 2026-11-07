.class public final Lgbsdk/common/host/absw$ae;
.super Ljava/lang/Object;
.source "ZeusManager.kt"

# interfaces
.implements Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/absw;->a(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/volcengine/zeus/download/IZeusDownloadListener;Lcom/volcengine/zeus/download/IZeusDownloadInterceptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/bytedance/ttgame/tob/common/host/main/plugin/ZeusManager$initGlobalParamToZeus$2$1$innerDownloadListener$1",
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;",
        "onFail",
        "",
        "info",
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;",
        "exception",
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;",
        "onProgress",
        "onStart",
        "onSuccess",
        "ch_main_tobRelease"
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
.field final synthetic aEM:Lcom/volcengine/zeus/download/IZeusDownloadListener;


# direct methods
.method constructor <init>(Lcom/volcengine/zeus/download/IZeusDownloadListener;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/common/host/absw$ae;->aEM:Lcom/volcengine/zeus/download/IZeusDownloadListener;

    .line 951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    sget-object v2, Lgbsdk/common/host/absw$ae;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "be67569cd61940318584e1333dd634c9"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "exception"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 965
    iget-object p1, p0, Lgbsdk/common/host/absw$ae;->aEM:Lcom/volcengine/zeus/download/IZeusDownloadListener;

    if-eqz p1, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p2}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;->getCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;->getExceptionMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lcom/volcengine/zeus/download/IZeusDownloadListener;->onFailed(Ljava/lang/Throwable;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onProgress(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/absw$ae;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "cf2ea18e818b931e1ff0b9faeb481999"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lgbsdk/common/host/absw$ae;->aEM:Lcom/volcengine/zeus/download/IZeusDownloadListener;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->getCurBytes()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->getTotalBytes()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/volcengine/zeus/download/IZeusDownloadListener;->onProgress(JJ)V

    :cond_1
    return-void
.end method

.method public onStart(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/absw$ae;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "56d7a91b6ceef2cdb9028ba976e86e59"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 953
    iget-object p1, p0, Lgbsdk/common/host/absw$ae;->aEM:Lcom/volcengine/zeus/download/IZeusDownloadListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/volcengine/zeus/download/IZeusDownloadListener;->onStart()V

    :cond_1
    return-void
.end method

.method public onSuccess(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/absw$ae;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "300dc512f2e09a70e295340f1135d74c"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 961
    iget-object v0, p0, Lgbsdk/common/host/absw$ae;->aEM:Lcom/volcengine/zeus/download/IZeusDownloadListener;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->getDownloadTime()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/volcengine/zeus/download/IZeusDownloadListener;->onSuccess(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    return-void
.end method
