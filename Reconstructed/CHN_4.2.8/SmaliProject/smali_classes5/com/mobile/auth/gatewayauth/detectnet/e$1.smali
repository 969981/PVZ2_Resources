.class Lcom/mobile/auth/gatewayauth/detectnet/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/detectnet/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/mobile/auth/gatewayauth/detectnet/a;

.field final synthetic e:Lcom/mobile/auth/gatewayauth/detectnet/e;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/detectnet/e;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/mobile/auth/gatewayauth/detectnet/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->e:Lcom/mobile/auth/gatewayauth/detectnet/e;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->d:Lcom/mobile/auth/gatewayauth/detectnet/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->e:Lcom/mobile/auth/gatewayauth/detectnet/e;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/detectnet/e;->a(Lcom/mobile/auth/gatewayauth/detectnet/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->e:Lcom/mobile/auth/gatewayauth/detectnet/e;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/detectnet/e;->b(Lcom/mobile/auth/gatewayauth/detectnet/e;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->e:Lcom/mobile/auth/gatewayauth/detectnet/e;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/detectnet/e;->b(Lcom/mobile/auth/gatewayauth/detectnet/e;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/d;->g(Landroid/content/Context;)Z

    move-result v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_0

    const-string v0, "pingNet\uff1a\u7eaf\u8702\u7a9d\u7f51\u7edc\u8fde\u63a5"

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/j;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    invoke-direct {v0}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;-><init>()V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->e:Lcom/mobile/auth/gatewayauth/detectnet/e;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/detectnet/e;->b(Lcom/mobile/auth/gatewayauth/detectnet/e;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setRequestIds(Ljava/util/Set;)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    move-result-object v1

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->e:Lcom/mobile/auth/gatewayauth/detectnet/e;

    invoke-static {v5}, Lcom/mobile/auth/gatewayauth/detectnet/e;->b(Lcom/mobile/auth/gatewayauth/detectnet/e;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setSessionIds(Ljava/util/Collection;)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->e:Lcom/mobile/auth/gatewayauth/detectnet/e;

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->a:Ljava/lang/String;

    invoke-static {v1, v5, v0}, Lcom/mobile/auth/gatewayauth/detectnet/e;->a(Lcom/mobile/auth/gatewayauth/detectnet/e;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->e:Lcom/mobile/auth/gatewayauth/detectnet/e;

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->a:Ljava/lang/String;

    invoke-static {v1, v5, v0}, Lcom/mobile/auth/gatewayauth/detectnet/e;->b(Lcom/mobile/auth/gatewayauth/detectnet/e;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setTopConnected(Z)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setTopWholeMS(J)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->e:Lcom/mobile/auth/gatewayauth/detectnet/e;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/detectnet/e;->a(Lcom/mobile/auth/gatewayauth/detectnet/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->d:Lcom/mobile/auth/gatewayauth/detectnet/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->d:Lcom/mobile/auth/gatewayauth/detectnet/a;

    :goto_0
    invoke-interface {v1, v0}, Lcom/mobile/auth/gatewayauth/detectnet/a;->a(Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/d;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "pingNet\uff1awifi+\u8702\u7a9d\u7f51\u7edc"

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->e:Lcom/mobile/auth/gatewayauth/detectnet/e;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->d:Lcom/mobile/auth/gatewayauth/detectnet/a;

    invoke-static {v0, v1, v2, v3}, Lcom/mobile/auth/gatewayauth/detectnet/e;->a(Lcom/mobile/auth/gatewayauth/detectnet/e;Landroid/content/Context;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/a;)V

    goto/16 :goto_1

    :cond_1
    const-string v0, "pingNet\uff1a\u7eafwifi"

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/j;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    invoke-direct {v0}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;-><init>()V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->e:Lcom/mobile/auth/gatewayauth/detectnet/e;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/detectnet/e;->b(Lcom/mobile/auth/gatewayauth/detectnet/e;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setRequestIds(Ljava/util/Set;)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    move-result-object v1

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->e:Lcom/mobile/auth/gatewayauth/detectnet/e;

    invoke-static {v5}, Lcom/mobile/auth/gatewayauth/detectnet/e;->b(Lcom/mobile/auth/gatewayauth/detectnet/e;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setSessionIds(Ljava/util/Collection;)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->e:Lcom/mobile/auth/gatewayauth/detectnet/e;

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->a:Ljava/lang/String;

    invoke-static {v1, v5, v0}, Lcom/mobile/auth/gatewayauth/detectnet/e;->c(Lcom/mobile/auth/gatewayauth/detectnet/e;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    invoke-virtual {v0, v2}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setTopCellularConnected(Z)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setTopCellularWholeMS(J)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setCuCellularConnected(Z)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;->setCuCellularWholeMS(J)Lcom/mobile/auth/gatewayauth/detectnet/DetectResult;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->e:Lcom/mobile/auth/gatewayauth/detectnet/e;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/detectnet/e;->a(Lcom/mobile/auth/gatewayauth/detectnet/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->d:Lcom/mobile/auth/gatewayauth/detectnet/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->d:Lcom/mobile/auth/gatewayauth/detectnet/a;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pingNet\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u5df2\u7ecf\u6709\u68c0\u6d4b\u5728\u5b9e\u65bd\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->e:Lcom/mobile/auth/gatewayauth/detectnet/e;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/detectnet/e;->b(Lcom/mobile/auth/gatewayauth/detectnet/e;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->e:Lcom/mobile/auth/gatewayauth/detectnet/e;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/detectnet/e;->b(Lcom/mobile/auth/gatewayauth/detectnet/e;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/detectnet/e$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method
