.class Lcom/alipay/android/phone/mrpc/core/m;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/alipay/android/phone/mrpc/core/v;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/alipay/android/phone/mrpc/core/q;

.field public final synthetic b:Lcom/alipay/android/phone/mrpc/core/l;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/l;Ljava/util/concurrent/Callable;Lcom/alipay/android/phone/mrpc/core/q;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/m;->b:Lcom/alipay/android/phone/mrpc/core/l;

    iput-object p3, p0, Lcom/alipay/android/phone/mrpc/core/m;->a:Lcom/alipay/android/phone/mrpc/core/q;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 5

    const-string v0, ""

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/m;->a:Lcom/alipay/android/phone/mrpc/core/q;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/q;->e()Lcom/alipay/android/phone/mrpc/core/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/u;->f()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->done()V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/phone/mrpc/core/v;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/u;->h()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_6

    invoke-interface {v2, v1, v3}, Lcom/alipay/android/phone/mrpc/core/ae;->a(Lcom/alipay/android/phone/mrpc/core/u;Lcom/alipay/android/phone/mrpc/core/v;)V

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/u;->g()V

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    :cond_4
    invoke-interface {v2, v1}, Lcom/alipay/android/phone/mrpc/core/ae;->a(Lcom/alipay/android/phone/mrpc/core/u;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing http request"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_0
    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/u;->g()V

    invoke-interface {v2, v1}, Lcom/alipay/android/phone/mrpc/core/ae;->a(Lcom/alipay/android/phone/mrpc/core/u;)V

    goto :goto_2

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Lcom/alipay/android/phone/mrpc/core/HttpException;

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mrpc/core/HttpException;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/HttpException;->getCode()I

    move-result v3

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/HttpException;->getMsg()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v2, v1, v3, v0}, Lcom/alipay/android/phone/mrpc/core/ae;->a(Lcom/alipay/android/phone/mrpc/core/u;ILjava/lang/String;)V

    return-void

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    goto :goto_1

    :catch_2
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x7

    invoke-interface {v2, v1, v3, v0}, Lcom/alipay/android/phone/mrpc/core/ae;->a(Lcom/alipay/android/phone/mrpc/core/u;ILjava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method
