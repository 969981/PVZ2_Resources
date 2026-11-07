.class public final Lgbsdk/optional/applog/abfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/optional/applog/abfo$ac;,
        Lgbsdk/optional/applog/abfo$ab;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SERVICE:",
        "Ljava/lang/Object;",
        "RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/CountDownLatch;

.field public final b:Landroid/content/Intent;

.field public final c:Lgbsdk/optional/applog/abfo$ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/optional/applog/abfo$ac<",
            "TSERVICE;TRESU",
            "LT;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lgbsdk/optional/applog/abfo$ac;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Lgbsdk/optional/applog/abfo$ac<",
            "TSERVICE;TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/optional/applog/abfo;->d:Landroid/content/Context;

    iput-object p2, p0, Lgbsdk/optional/applog/abfo;->b:Landroid/content/Intent;

    iput-object p3, p0, Lgbsdk/optional/applog/abfo;->c:Lgbsdk/optional/applog/abfo$ac;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lgbsdk/optional/applog/abfo;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRESU",
            "LT;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Oaid#can\'t run in ui thread"

    invoke-interface {v0, v3, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :cond_0
    :try_start_0
    new-instance v0, Lgbsdk/optional/applog/abfo$ab;

    iget-object v1, p0, Lgbsdk/optional/applog/abfo;->a:Ljava/util/concurrent/CountDownLatch;

    iget-object v5, p0, Lgbsdk/optional/applog/abfo;->c:Lgbsdk/optional/applog/abfo$ac;

    invoke-direct {v0, p0, v1, v5}, Lgbsdk/optional/applog/abfo$ab;-><init>(Lgbsdk/optional/applog/abfo;Ljava/util/concurrent/CountDownLatch;Lgbsdk/optional/applog/abfo$ac;)V

    iget-object v1, p0, Lgbsdk/optional/applog/abfo;->d:Landroid/content/Context;

    iget-object v5, p0, Lgbsdk/optional/applog/abfo;->b:Landroid/content/Intent;

    invoke-virtual {v1, v5, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v1, p0, Lgbsdk/optional/applog/abfo;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lgbsdk/optional/applog/abfo;->c:Lgbsdk/optional/applog/abfo$ac;

    iget-object v5, v0, Lgbsdk/optional/applog/abfo$ab;->c:Ljava/lang/Object;

    invoke-interface {v1, v5}, Lgbsdk/optional/applog/abfo$ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v0}, Lgbsdk/optional/applog/abfo;->a(Lgbsdk/optional/applog/abfo$ab;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v0, v4

    :goto_0
    :try_start_2
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v6, "Oaid#blockFetchResult failed"

    :try_start_3
    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v5, v3, v6, v1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {p0, v0}, Lgbsdk/optional/applog/abfo;->a(Lgbsdk/optional/applog/abfo$ab;)V

    return-object v4

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v0}, Lgbsdk/optional/applog/abfo;->a(Lgbsdk/optional/applog/abfo$ab;)V

    throw v1
.end method

.method public final a(Lgbsdk/optional/applog/abfo$ab;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/optional/applog/abfo<",
            "TSERVICE;TRESU",
            "LT;",
            ">.ab;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lgbsdk/optional/applog/abfo;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    const-string v3, "Oaid#Release connection failed"

    invoke-interface {v0, v2, v3, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
