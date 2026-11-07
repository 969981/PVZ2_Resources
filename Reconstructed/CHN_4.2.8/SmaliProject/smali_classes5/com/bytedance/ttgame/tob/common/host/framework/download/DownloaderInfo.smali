.class public final Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;
.super Ljava/lang/Object;
.source "DownloaderInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u0013\u001a\u00020\u0000J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015J\u0010\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0006\u0010\u001a\u001a\u00020\u0015J\u0006\u0010\u001b\u001a\u00020\nJ\u0006\u0010\u001c\u001a\u00020\nJ\u0006\u0010\u001d\u001a\u00020\u0003J\u0006\u0010\u001e\u001a\u00020\u0003J\u0006\u0010\u001f\u001a\u00020\nJ\u0008\u0010 \u001a\u00020\u0003H\u0016J\u000e\u0010!\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\u001e\u0010\"\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nR\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u000e\u0010\u0011\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\r\u00a8\u0006#"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;",
        "",
        "id",
        "",
        "url",
        "savePath",
        "fileName",
        "tempFileName",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "curBytes",
        "",
        "downloadTime",
        "getFileName",
        "()Ljava/lang/String;",
        "getId",
        "getSavePath",
        "getTempFileName",
        "totalBytes",
        "getUrl",
        "copyToAnother",
        "deleteAll",
        "",
        "deleteCompletedFile",
        "deleteFile",
        "file",
        "Ljava/io/File;",
        "deleteTempFile",
        "getCurBytes",
        "getDownloadTime",
        "getFullFileName",
        "getFullTempFileName",
        "getTotalBytes",
        "toString",
        "withDownloadTime",
        "withProcessInfo",
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
.field private curBytes:J

.field private downloadTime:J

.field private final fileName:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final savePath:Ljava/lang/String;

.field private final tempFileName:Ljava/lang/String;

.field private totalBytes:J

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "savePath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tempFileName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->id:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->url:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->savePath:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->fileName:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->tempFileName:Ljava/lang/String;

    return-void
.end method

.method private final deleteFile(Ljava/io/File;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "9b5f9be1176538a8051d69129faba2a2"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 50
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 54
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 50
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public final copyToAnother()Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;
    .locals 8

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "2e98aae311c099cc4f3ca55eef8788a9"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;

    return-object v0

    .line 34
    :cond_0
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;

    iget-object v2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->savePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->fileName:Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->tempFileName:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->curBytes:J

    iget-wide v4, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->totalBytes:J

    iget-wide v6, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->downloadTime:J

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->withProcessInfo(JJJ)Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;

    move-result-object v0

    return-object v0
.end method

.method public final deleteAll()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "25b5295f74e4dab7c0d2419ee3e531fe"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->deleteCompletedFile()V

    .line 46
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->deleteTempFile()V

    return-void
.end method

.method public final deleteCompletedFile()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "cd78c18bb71c8dd6f5706c8b82305e6a"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->getFullFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->deleteFile(Ljava/io/File;)V

    return-void
.end method

.method public final deleteTempFile()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "2e079527207f070c4c98f684ee21b427"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->getFullTempFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->deleteFile(Ljava/io/File;)V

    return-void
.end method

.method public final getCurBytes()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->curBytes:J

    return-wide v0
.end method

.method public final getDownloadTime()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->downloadTime:J

    return-wide v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getFullFileName()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "357c1a4d57648de882c6c24d605eefcd"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFullTempFileName()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "6569b094002245947bad6093b1aa6c99"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->tempFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getSavePath()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->savePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getTempFileName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->tempFileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalBytes()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->totalBytes:J

    return-wide v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "d400785d936bafe030f0892861247bc7"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloaderInfo(id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->url:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', savePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->savePath:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->fileName:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', tempFileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->tempFileName:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', curBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-wide v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->curBytes:J

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-wide v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->totalBytes:J

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downloadTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-wide v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->downloadTime:J

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final withDownloadTime(J)Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;
    .locals 1

    .line 19
    move-object v0, p0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;

    iput-wide p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->downloadTime:J

    return-object v0
.end method

.method public final withProcessInfo(JJJ)Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;
    .locals 0

    .line 22
    iput-wide p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->curBytes:J

    .line 23
    iput-wide p3, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->totalBytes:J

    .line 24
    iput-wide p5, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->downloadTime:J

    return-object p0
.end method
