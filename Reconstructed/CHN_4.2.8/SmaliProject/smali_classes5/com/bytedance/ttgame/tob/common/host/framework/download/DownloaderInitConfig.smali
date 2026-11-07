.class public final Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;
.super Ljava/lang/Object;
.source "DownloaderInitConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\r\u0018\u00002\u00020\u0001:\u0001!B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0015J\u0006\u0010\u0016\u001a\u00020\u0007J\u0006\u0010\u0017\u001a\u00020\tJ\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000bJ\u0008\u0010\u0019\u001a\u0004\u0018\u00010\rJ\u0006\u0010\u001a\u001a\u00020\u0005J\u0006\u0010\u001b\u001a\u00020\u0010J\u0006\u0010\u001c\u001a\u00020\u0005J\u0006\u0010\u001d\u001a\u00020\u0005J\u0006\u0010\u001e\u001a\u00020\u0005J\u0008\u0010\u001f\u001a\u00020\u0005H\u0016J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\rR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;",
        "",
        "()V",
        "backUrls",
        "",
        "",
        "callbackInMainThread",
        "",
        "context",
        "Landroid/content/Context;",
        "downloaderInterceptor",
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInterceptor;",
        "downloaderListener",
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;",
        "fileName",
        "retryCount",
        "",
        "savePath",
        "tempFileName",
        "url",
        "getBackUrls",
        "",
        "getCallbackInMainThread",
        "getContext",
        "getDownloaderInterceptor",
        "getDownloaderListener",
        "getFileName",
        "getRetryCount",
        "getSavePath",
        "getTempFileName",
        "getUrl",
        "toString",
        "updateDownloaderListener",
        "Builder",
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
.field public backUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public callbackInMainThread:Z

.field public context:Landroid/content/Context;

.field public downloaderInterceptor:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInterceptor;

.field public downloaderListener:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;

.field public fileName:Ljava/lang/String;

.field public retryCount:I

.field public savePath:Ljava/lang/String;

.field public tempFileName:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->url:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->savePath:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->fileName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->tempFileName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->retryCount:I

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->backUrls:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBackUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->backUrls:Ljava/util/List;

    return-object v0
.end method

.method public final getCallbackInMainThread()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->callbackInMainThread:Z

    return v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "461dc81b631b505b51fdb1d0a773b77c"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "context"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public final getDownloaderInterceptor()Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInterceptor;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->downloaderInterceptor:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInterceptor;

    return-object v0
.end method

.method public final getDownloaderListener()Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->downloaderListener:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;

    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getRetryCount()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->retryCount:I

    return v0
.end method

.method public final getSavePath()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->savePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getTempFileName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->tempFileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->url:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "b80d9588bf449b5b2ce203deb6c27b87"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloaderInitConfig(context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->context:Landroid/content/Context;

    if-nez v1, :cond_1

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->url:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', savePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->savePath:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->fileName:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', tempFileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->tempFileName:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', retryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->retryCount:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->backUrls:Ljava/util/List;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", downloaderListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->downloaderListener:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callbackInMainThread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-boolean v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->callbackInMainThread:Z

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", downloaderInterceptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->downloaderInterceptor:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInterceptor;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateDownloaderListener(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;)Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "ed47c5821dfc51f1c378b9c19859d1bb"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;

    return-object p1

    :cond_0
    const-string v0, "downloaderListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    move-object v0, p0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->downloaderListener:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;

    return-object v0
.end method
