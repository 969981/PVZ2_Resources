.class Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager$2;
.super Lcom/nirvana/tools/logger/executor/AbstractSafeRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager;->uploadMonitorByPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager;


# direct methods
.method constructor <init>(Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager$2;->this$0:Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager;

    invoke-direct {p0}, Lcom/nirvana/tools/logger/executor/AbstractSafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager$2;->this$0:Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager;

    invoke-virtual {v1}, Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager;->isAllowUploading()Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-long v1, v0

    iget-object v3, p0, Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager$2;->this$0:Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager;

    iget-wide v3, v3, Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager;->maxUploadRetry:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    iget-object v1, p0, Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager$2;->this$0:Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager;

    invoke-static {v1}, Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager;->access$000(Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager;)Lcom/nirvana/tools/logger/cache/ACMMonitorCacheManager;

    move-result-object v1

    iget-object v2, p0, Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager$2;->this$0:Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager;

    iget v2, v2, Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager;->maxUploadSize:I

    invoke-virtual {v1, v2}, Lcom/nirvana/tools/logger/cache/ACMMonitorCacheManager;->getNormalMonitorRecords(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager$2;->this$0:Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager;

    invoke-virtual {v2, v1}, Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager;->doUploadRecords(Ljava/util/List;)Z
    :try_end_0
    .catch Lcom/nirvana/tools/logger/cache/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nirvana/tools/logger/cache/db/DbException;->printStackTrace()V

    :cond_0
    return-void
.end method
