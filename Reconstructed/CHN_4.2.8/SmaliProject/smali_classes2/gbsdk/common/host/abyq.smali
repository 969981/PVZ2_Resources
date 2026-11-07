.class public final Lgbsdk/common/host/abyq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/volcengine/zeus/download/IDownloader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final downloader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/volcengine/zeus/download/IZeusDownloadListener;Lcom/volcengine/zeus/download/IZeusDownloadInterceptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/volcengine/zeus/download/IZeusDownloadListener;",
            "Lcom/volcengine/zeus/download/IZeusDownloadInterceptor;",
            ")V"
        }
    .end annotation

    .line 21
    new-instance v0, Lgbsdk/common/host/abyq$1;

    invoke-direct {v0, p0, p9}, Lgbsdk/common/host/abyq$1;-><init>(Lgbsdk/common/host/abyq;Lcom/volcengine/zeus/download/IZeusDownloadListener;)V

    .line 44
    new-instance p9, Lgbsdk/common/host/abyq$2;

    invoke-direct {p9, p0, p10}, Lgbsdk/common/host/abyq$2;-><init>(Lgbsdk/common/host/abyq;Lcom/volcengine/zeus/download/IZeusDownloadInterceptor;)V

    .line 52
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->with(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object p1

    .line 53
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->url(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object p1

    .line 54
    invoke-virtual {p1, p3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->name(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object p1

    .line 55
    invoke-virtual {p1, p4}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->onlyWifi(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object p1

    .line 56
    invoke-virtual {p1, p5}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->savePath(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object p1

    .line 57
    invoke-virtual {p1, p6}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->retryCount(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object p1

    .line 58
    invoke-virtual {p1, p7}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->mimeType(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object p1

    .line 59
    invoke-virtual {p1, p8}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->backUpUrls(Ljava/util/List;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object p1

    .line 60
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->subThreadListener(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object p1

    .line 61
    invoke-virtual {p1, p9}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->interceptor(Lcom/ss/android/socialbase/downloader/depend/IDownloadInterceptor;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->download()I

    return-void
.end method
