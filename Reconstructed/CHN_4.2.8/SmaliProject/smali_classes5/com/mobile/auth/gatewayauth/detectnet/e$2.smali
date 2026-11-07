.class Lcom/mobile/auth/gatewayauth/detectnet/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mobile/auth/c/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/detectnet/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

.field final synthetic c:Lcom/mobile/auth/gatewayauth/detectnet/a;

.field final synthetic d:Lcom/mobile/auth/gatewayauth/detectnet/e;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/detectnet/e;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;Lcom/mobile/auth/gatewayauth/detectnet/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$2;->d:Lcom/mobile/auth/gatewayauth/detectnet/e;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$2;->b:Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    iput-object p4, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$2;->c:Lcom/mobile/auth/gatewayauth/detectnet/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    :try_start_0
    const-string v0, "pingNet\uff1a\u5207\u6362\u8702\u7a9d\u7f51\u7edc\u8d85\u65f6\uff01"

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$2;->b:Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setTopCellularConnected(Z)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setTopCellularWholeMS(J)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setCuCellularConnected(Z)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setCuCellularWholeMS(J)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$2;->d:Lcom/mobile/auth/gatewayauth/detectnet/e;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/detectnet/e;->a(Lcom/mobile/auth/gatewayauth/detectnet/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$2;->c:Lcom/mobile/auth/gatewayauth/detectnet/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$2;->c:Lcom/mobile/auth/gatewayauth/detectnet/a;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$2;->b:Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    invoke-interface {v0, v1}, Lcom/mobile/auth/gatewayauth/detectnet/a;->a(Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;)V
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

    :cond_0
    :goto_0
    return-void
.end method

.method public a(ILjava/lang/String;J)V
    .locals 0

    :try_start_0
    const-string p1, "pingNet\uff1a\u5207\u6362\u8702\u7a9d\u7f51\u7edc\u5931\u8d25\uff01"

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/j;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$2;->b:Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setTopCellularConnected(Z)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    move-result-object p1

    const-wide/16 p3, 0x0

    invoke-virtual {p1, p3, p4}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setTopCellularWholeMS(J)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setCuCellularConnected(Z)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setCuCellularWholeMS(J)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$2;->d:Lcom/mobile/auth/gatewayauth/detectnet/e;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/detectnet/e;->a(Lcom/mobile/auth/gatewayauth/detectnet/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$2;->c:Lcom/mobile/auth/gatewayauth/detectnet/a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$2;->c:Lcom/mobile/auth/gatewayauth/detectnet/a;

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$2;->b:Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    invoke-interface {p1, p2}, Lcom/mobile/auth/gatewayauth/detectnet/a;->a(Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Landroid/net/Network;J)V
    .locals 0

    :try_start_0
    const-string p1, "pingNet\uff1a\u5207\u6362\u8702\u7a9d\u7f51\u7edc\u6210\u529f\uff01"

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/j;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$2;->d:Lcom/mobile/auth/gatewayauth/detectnet/e;

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$2;->a:Ljava/lang/String;

    iget-object p3, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$2;->b:Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    invoke-static {p1, p2, p3}, Lcom/mobile/auth/gatewayauth/detectnet/e;->a(Lcom/mobile/auth/gatewayauth/detectnet/e;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$2;->d:Lcom/mobile/auth/gatewayauth/detectnet/e;

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$2;->a:Ljava/lang/String;

    iget-object p3, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$2;->b:Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    invoke-static {p1, p2, p3}, Lcom/mobile/auth/gatewayauth/detectnet/e;->b(Lcom/mobile/auth/gatewayauth/detectnet/e;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$2;->d:Lcom/mobile/auth/gatewayauth/detectnet/e;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/detectnet/e;->a(Lcom/mobile/auth/gatewayauth/detectnet/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$2;->c:Lcom/mobile/auth/gatewayauth/detectnet/a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$2;->c:Lcom/mobile/auth/gatewayauth/detectnet/a;

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$2;->b:Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    invoke-interface {p1, p2}, Lcom/mobile/auth/gatewayauth/detectnet/a;->a(Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
