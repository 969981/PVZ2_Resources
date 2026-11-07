.class public final Lgbsdk/common/host/abyq$1;
.super Lcom/ss/android/socialbase/downloader/depend/AbsDownloadListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abyq;->downloader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/volcengine/zeus/download/IZeusDownloadListener;Lcom/volcengine/zeus/download/IZeusDownloadInterceptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aLx:Lcom/volcengine/zeus/download/IZeusDownloadListener;

.field final synthetic aLy:Lgbsdk/common/host/abyq;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abyq;Lcom/volcengine/zeus/download/IZeusDownloadListener;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lgbsdk/common/host/abyq$1;->aLy:Lgbsdk/common/host/abyq;

    iput-object p2, p0, Lgbsdk/common/host/abyq$1;->aLx:Lcom/volcengine/zeus/download/IZeusDownloadListener;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/AbsDownloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 0

    .line 24
    iget-object p1, p0, Lgbsdk/common/host/abyq$1;->aLx:Lcom/volcengine/zeus/download/IZeusDownloadListener;

    invoke-interface {p1}, Lcom/volcengine/zeus/download/IZeusDownloadListener;->onStart()V

    return-void
.end method

.method public final a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .locals 2

    .line 39
    iget-object p1, p0, Lgbsdk/common/host/abyq$1;->aLx:Lcom/volcengine/zeus/download/IZeusDownloadListener;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/volcengine/zeus/download/IZeusDownloadListener;->onFailed(Ljava/lang/Throwable;ILjava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 5

    .line 29
    iget-object v0, p0, Lgbsdk/common/host/abyq$1;->aLx:Lcom/volcengine/zeus/download/IZeusDownloadListener;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/volcengine/zeus/download/IZeusDownloadListener;->onProgress(JJ)V

    return-void
.end method

.method public final c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 5

    .line 34
    iget-object v0, p0, Lgbsdk/common/host/abyq$1;->aLx:Lcom/volcengine/zeus/download/IZeusDownloadListener;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDownloadTime()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/volcengine/zeus/download/IZeusDownloadListener;->onSuccess(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
