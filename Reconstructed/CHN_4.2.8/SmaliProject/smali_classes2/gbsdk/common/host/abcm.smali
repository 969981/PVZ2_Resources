.class public final Lgbsdk/common/host/abcm;
.super Ljava/lang/Object;
.source "ServiceBlockBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abcm$ac;,
        Lgbsdk/common/host/abcm$ab;
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


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final cA:Lgbsdk/common/host/abcm$ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/common/host/abcm$ac<",
            "TSERVICE;TRESU",
            "LT;",
            ">;"
        }
    .end annotation
.end field

.field public final cB:Landroid/content/Context;

.field public final cy:Ljava/util/concurrent/CountDownLatch;

.field public final cz:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lgbsdk/common/host/abcm$ac;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Lgbsdk/common/host/abcm$ac<",
            "TSERVICE;TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lgbsdk/common/host/abcm;->cB:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lgbsdk/common/host/abcm;->cz:Landroid/content/Intent;

    .line 4
    iput-object p3, p0, Lgbsdk/common/host/abcm;->cA:Lgbsdk/common/host/abcm$ac;

    .line 5
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lgbsdk/common/host/abcm;->cy:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public L()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRESU",
            "LT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abcm;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "05f82a8000e6e6135ab6273727fdb97f"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Object;

    return-object v0

    .line 1
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return-object v2

    .line 9
    :cond_1
    :try_start_0
    new-instance v0, Lgbsdk/common/host/abcm$ab;

    iget-object v1, p0, Lgbsdk/common/host/abcm;->cy:Ljava/util/concurrent/CountDownLatch;

    iget-object v3, p0, Lgbsdk/common/host/abcm;->cA:Lgbsdk/common/host/abcm$ac;

    invoke-direct {v0, p0, v1, v3}, Lgbsdk/common/host/abcm$ab;-><init>(Lgbsdk/common/host/abcm;Ljava/util/concurrent/CountDownLatch;Lgbsdk/common/host/abcm$ac;)V

    .line 10
    iget-object v1, p0, Lgbsdk/common/host/abcm;->cB:Landroid/content/Context;

    iget-object v3, p0, Lgbsdk/common/host/abcm;->cz:Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 11
    iget-object v1, p0, Lgbsdk/common/host/abcm;->cy:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    iget-object v1, p0, Lgbsdk/common/host/abcm;->cA:Lgbsdk/common/host/abcm$ac;

    iget-object v3, v0, Lgbsdk/common/host/abcm$ab;->cD:Ljava/lang/Object;

    invoke-interface {v1, v3}, Lgbsdk/common/host/abcm$ac;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-virtual {p0, v0}, Lgbsdk/common/host/abcm;->a(Lgbsdk/common/host/abcm$ab;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 18
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 20
    invoke-virtual {p0, v0}, Lgbsdk/common/host/abcm;->a(Lgbsdk/common/host/abcm$ab;)V

    return-object v2

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v0}, Lgbsdk/common/host/abcm;->a(Lgbsdk/common/host/abcm$ab;)V

    throw v1
.end method

.method public final a(Lgbsdk/common/host/abcm$ab;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/common/host/abcm<",
            "TSERVICE;TRESU",
            "LT;",
            ">.ab;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abcm;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "befb42d0575e8398fd21ddccd096d462"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 21
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abcm;->cB:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
