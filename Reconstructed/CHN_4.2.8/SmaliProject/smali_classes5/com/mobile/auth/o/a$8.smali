.class Lcom/mobile/auth/o/a$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/o/a;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/mobile/auth/o/a;


# direct methods
.method constructor <init>(Lcom/mobile/auth/o/a;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/o/a$8;->c:Lcom/mobile/auth/o/a;

    iput-object p2, p0, Lcom/mobile/auth/o/a$8;->a:Ljava/lang/String;

    iput p3, p0, Lcom/mobile/auth/o/a$8;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/o/a$8;->c:Lcom/mobile/auth/o/a;

    invoke-static {v0}, Lcom/mobile/auth/o/a;->c(Lcom/mobile/auth/o/a;)Lcom/mobile/auth/gatewayauth/PnsLoggerHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/o/a$8;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mobile/auth/gatewayauth/PnsLoggerHandler;->monitor(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/o/a$8;->c:Lcom/mobile/auth/o/a;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "CacheMonitor:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mobile/auth/o/a$8;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\n Urgency "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/mobile/auth/o/a$8;->b:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->b([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/o/a$8;->c:Lcom/mobile/auth/o/a;

    invoke-static {v0}, Lcom/mobile/auth/o/a;->d(Lcom/mobile/auth/o/a;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mobile/auth/o/a$8;->c:Lcom/mobile/auth/o/a;

    invoke-static {v0}, Lcom/mobile/auth/o/a;->b(Lcom/mobile/auth/o/a;)Lcom/nirvana/tools/logger/ACMMonitor;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobile/auth/o/a$8;->c:Lcom/mobile/auth/o/a;

    invoke-static {v0}, Lcom/mobile/auth/o/a;->e(Lcom/mobile/auth/o/a;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/o/a$8;->c:Lcom/mobile/auth/o/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/mobile/auth/o/a;->a(Lcom/mobile/auth/o/a;Ljava/util/List;)Ljava/util/List;

    :cond_1
    new-instance v0, Lcom/nirvana/tools/logger/model/ACMMonitorRecord;

    iget v1, p0, Lcom/mobile/auth/o/a$8;->b:I

    invoke-direct {v0, v1}, Lcom/nirvana/tools/logger/model/ACMMonitorRecord;-><init>(I)V

    iget-object v1, p0, Lcom/mobile/auth/o/a$8;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/logger/model/ACMMonitorRecord;->setContent(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobile/auth/o/a$8;->c:Lcom/mobile/auth/o/a;

    invoke-static {v1}, Lcom/mobile/auth/o/a;->e(Lcom/mobile/auth/o/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mobile/auth/o/a$8;->c:Lcom/mobile/auth/o/a;

    invoke-static {v0}, Lcom/mobile/auth/o/a;->e(Lcom/mobile/auth/o/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/mobile/auth/o/a$8;->c:Lcom/mobile/auth/o/a;

    invoke-static {v0}, Lcom/mobile/auth/o/a;->b(Lcom/mobile/auth/o/a;)Lcom/nirvana/tools/logger/ACMMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/o/a$8;->c:Lcom/mobile/auth/o/a;

    invoke-static {v1}, Lcom/mobile/auth/o/a;->e(Lcom/mobile/auth/o/a;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/logger/ACMMonitor;->monitorRecords(Ljava/util/List;)V

    iget-object v0, p0, Lcom/mobile/auth/o/a$8;->c:Lcom/mobile/auth/o/a;

    invoke-static {v0}, Lcom/mobile/auth/o/a;->e(Lcom/mobile/auth/o/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "CacheMonitor"

    const-string v1, "cache and clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
