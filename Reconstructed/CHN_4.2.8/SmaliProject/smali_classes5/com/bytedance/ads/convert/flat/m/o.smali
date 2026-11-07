.class public final Lcom/bytedance/ads/convert/flat/m/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ads/convert/flat/m/o$b;,
        Lcom/bytedance/ads/convert/flat/m/o$a;
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

.field public final c:Lcom/bytedance/ads/convert/flat/m/o$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/ads/convert/flat/m/o$b<",
            "TSERVICE;TRESU",
            "LT;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/ads/convert/flat/m/o$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Lcom/bytedance/ads/convert/flat/m/o$b<",
            "TSERVICE;TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ads/convert/flat/m/o;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/ads/convert/flat/m/o;->b:Landroid/content/Intent;

    iput-object p3, p0, Lcom/bytedance/ads/convert/flat/m/o;->c:Lcom/bytedance/ads/convert/flat/m/o$b;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/bytedance/ads/convert/flat/m/o;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRESU",
            "LT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/bytedance/ads/convert/flat/m/o$a;

    iget-object v2, p0, Lcom/bytedance/ads/convert/flat/m/o;->a:Ljava/util/concurrent/CountDownLatch;

    iget-object v3, p0, Lcom/bytedance/ads/convert/flat/m/o;->c:Lcom/bytedance/ads/convert/flat/m/o$b;

    invoke-direct {v1, p0, v2, v3}, Lcom/bytedance/ads/convert/flat/m/o$a;-><init>(Lcom/bytedance/ads/convert/flat/m/o;Ljava/util/concurrent/CountDownLatch;Lcom/bytedance/ads/convert/flat/m/o$b;)V

    iget-object v2, p0, Lcom/bytedance/ads/convert/flat/m/o;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/ads/convert/flat/m/o;->b:Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/ads/convert/flat/m/o;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/bytedance/ads/convert/flat/m/o;->c:Lcom/bytedance/ads/convert/flat/m/o$b;

    iget-object v3, v1, Lcom/bytedance/ads/convert/flat/m/o$a;->c:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/bytedance/ads/convert/flat/m/o$b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v1}, Lcom/bytedance/ads/convert/flat/m/o;->a(Lcom/bytedance/ads/convert/flat/m/o$a;)V

    return-object v0

    :catchall_0
    move-exception v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/bytedance/ads/convert/flat/m/o;->a(Lcom/bytedance/ads/convert/flat/m/o$a;)V

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {p0, v1}, Lcom/bytedance/ads/convert/flat/m/o;->a(Lcom/bytedance/ads/convert/flat/m/o$a;)V

    :goto_1
    return-object v0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/bytedance/ads/convert/flat/m/o;->a(Lcom/bytedance/ads/convert/flat/m/o$a;)V

    throw v0
.end method

.method public final a(Lcom/bytedance/ads/convert/flat/m/o$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ads/convert/flat/m/o<",
            "TSERVICE;TRESU",
            "LT;",
            ">.a;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/m/o;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method
