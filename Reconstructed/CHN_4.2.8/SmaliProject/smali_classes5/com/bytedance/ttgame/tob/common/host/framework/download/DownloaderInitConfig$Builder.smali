.class public final Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;
.super Ljava/lang/Object;
.source "DownloaderInitConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u0014\u0010\u000e\u001a\u00020\u00002\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0010J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001aR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;",
        "",
        "context",
        "Landroid/content/Context;",
        "url",
        "",
        "savePath",
        "fileName",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "initConfig",
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;",
        "build",
        "withBackUrl",
        "backUrl",
        "withBackUrls",
        "backUrls",
        "",
        "withDownloaderInterceptor",
        "downloaderInterceptor",
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInterceptor;",
        "withDownloaderListener",
        "downloaderListener",
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;",
        "withDownloaderListenerMainThread",
        "withRetryCount",
        "retryCount",
        "",
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
.field private final initConfig:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "savePath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;->initConfig:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;

    .line 49
    iput-object p1, v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->context:Landroid/content/Context;

    .line 50
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;->initConfig:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;

    iput-object p2, v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->url:Ljava/lang/String;

    .line 51
    iget-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;->initConfig:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;

    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;

    invoke-virtual {v0, p1, p3}, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;->adaptSavePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->savePath:Ljava/lang/String;

    .line 52
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;->initConfig:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;

    iput-object p4, p1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->fileName:Ljava/lang/String;

    .line 53
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;->initConfig:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;

    sget-object p2, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;

    invoke-virtual {p2, p4}, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;->adaptTempFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->tempFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;->initConfig:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;

    return-object v0
.end method

.method public final withBackUrl(Ljava/lang/String;)Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "abe5c41851d0034931cda15cba165653"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;

    return-object p1

    :cond_0
    const-string v0, "backUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    move-object v0, p0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;->initConfig:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;

    iget-object v1, v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->backUrls:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final withBackUrls(Ljava/util/List;)Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "d1b0d32fe9512b76b5d0908a48f445b5"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;

    return-object p1

    :cond_0
    const-string v0, "backUrls"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    move-object v0, p0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;->initConfig:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;

    iget-object v1, v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->backUrls:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final withDownloaderInterceptor(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInterceptor;)Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "3dcfd5dd3365ff1cce837cdfeb9579d6"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;

    return-object p1

    :cond_0
    const-string v0, "downloaderInterceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    move-object v0, p0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;->initConfig:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;

    iput-object p1, v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->downloaderInterceptor:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInterceptor;

    return-object v0
.end method

.method public final withDownloaderListener(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;)Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "8a72974ecbf74e9f2e6ef83735f325c8"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;

    return-object p1

    :cond_0
    const-string v0, "downloaderListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    move-object v0, p0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;

    .line 60
    iget-object v2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;->initConfig:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;

    iput-object p1, v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->downloaderListener:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;

    .line 61
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;->initConfig:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;

    iput-boolean v1, p1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->callbackInMainThread:Z

    return-object v0
.end method

.method public final withDownloaderListenerMainThread(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;)Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "42fc2152e9abd153e5743121d66479d6"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;

    return-object p1

    :cond_0
    const-string v1, "downloaderListener"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    move-object v1, p0

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;

    .line 65
    iget-object v2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;->initConfig:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;

    iput-object p1, v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->downloaderListener:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;

    .line 66
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;->initConfig:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;

    iput-boolean v0, p1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->callbackInMainThread:Z

    return-object v1
.end method

.method public final withRetryCount(I)Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "5a28750546ae7ce8f8ce6078a1077879"

    invoke-static {v1, p0, v2, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;

    return-object p1

    .line 56
    :cond_0
    move-object v1, p0

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;

    iget-object v2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;->initConfig:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;

    add-int/2addr p1, v0

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    iput p1, v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->retryCount:I

    return-object v1
.end method
