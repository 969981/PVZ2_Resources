.class public final Lgbsdk/common/host/abyq$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/IDownloadInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abyq;->downloader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/volcengine/zeus/download/IZeusDownloadListener;Lcom/volcengine/zeus/download/IZeusDownloadInterceptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aLy:Lgbsdk/common/host/abyq;

.field final synthetic aLz:Lcom/volcengine/zeus/download/IZeusDownloadInterceptor;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abyq;Lcom/volcengine/zeus/download/IZeusDownloadInterceptor;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lgbsdk/common/host/abyq$2;->aLy:Lgbsdk/common/host/abyq;

    iput-object p2, p0, Lgbsdk/common/host/abyq$2;->aLz:Lcom/volcengine/zeus/download/IZeusDownloadInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hH()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lgbsdk/common/host/abyq$2;->aLz:Lcom/volcengine/zeus/download/IZeusDownloadInterceptor;

    invoke-interface {v0}, Lcom/volcengine/zeus/download/IZeusDownloadInterceptor;->intercept()Z

    move-result v0

    return v0
.end method
