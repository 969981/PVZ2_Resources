.class Lcom/alipay/apmobilesecuritysdk/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/alipay/apmobilesecuritysdk/f/b;


# direct methods
.method public constructor <init>(Lcom/alipay/apmobilesecuritysdk/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/f/c;->a:Lcom/alipay/apmobilesecuritysdk/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/f/c;->a:Lcom/alipay/apmobilesecuritysdk/f/b;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/f/b;->a(Lcom/alipay/apmobilesecuritysdk/f/b;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/f/c;->a:Lcom/alipay/apmobilesecuritysdk/f/b;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/f/b;->a(Lcom/alipay/apmobilesecuritysdk/f/b;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/f/c;->a:Lcom/alipay/apmobilesecuritysdk/f/b;

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/f/b;->a(Lcom/alipay/apmobilesecuritysdk/f/b;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/f/c;->a:Lcom/alipay/apmobilesecuritysdk/f/b;

    invoke-static {v2, v0}, Lcom/alipay/apmobilesecuritysdk/f/b;->a(Lcom/alipay/apmobilesecuritysdk/f/b;Ljava/lang/Thread;)Ljava/lang/Thread;

    throw v1

    :catch_0
    :cond_1
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/f/c;->a:Lcom/alipay/apmobilesecuritysdk/f/b;

    invoke-static {v1, v0}, Lcom/alipay/apmobilesecuritysdk/f/b;->a(Lcom/alipay/apmobilesecuritysdk/f/b;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void
.end method
