.class public final Lgbsdk/common/host/absb$ac;
.super Ljava/lang/Object;
.source "InternalMainImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/absb;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic Bm:Lgbsdk/common/host/absb;


# direct methods
.method constructor <init>(Lgbsdk/common/host/absb;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/common/host/absb$ac;->Bm:Lgbsdk/common/host/absb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/absb$ac;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "04b91f7e545ea35a3ae3daf6084dee60"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 47
    iget-object v3, p0, Lgbsdk/common/host/absb$ac;->Bm:Lgbsdk/common/host/absb;

    iget-object v3, v3, Lgbsdk/common/host/absb;->Bj:Lgbsdk/common/host/absj;

    iget-object v3, v3, Lgbsdk/common/host/absj;->AY:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 48
    iget-object v4, p0, Lgbsdk/common/host/absb$ac;->Bm:Lgbsdk/common/host/absb;

    iget-object v4, v4, Lgbsdk/common/host/absb;->Bh:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 49
    iget-object v4, p0, Lgbsdk/common/host/absb$ac;->Bm:Lgbsdk/common/host/absb;

    iget-object v4, v4, Lgbsdk/common/host/absb;->Bi:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 50
    check-cast v3, Ljava/lang/Iterable;

    .line 223
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/ttgame/library/luffy/adapter/IRequest;

    .line 51
    invoke-interface {v4}, Lcom/bytedance/ttgame/library/luffy/adapter/IRequest;->request()Lcom/bytedance/ttgame/library/luffy/adapter/RequestData;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 54
    iget-object v5, p0, Lgbsdk/common/host/absb$ac;->Bm:Lgbsdk/common/host/absb;

    iget-object v5, v5, Lgbsdk/common/host/absb;->Bi:Ljava/util/ArrayList;

    iget-object v6, p0, Lgbsdk/common/host/absb$ac;->Bm:Lgbsdk/common/host/absb;

    invoke-virtual {v6, v4}, Lgbsdk/common/host/absb;->a(Lcom/bytedance/ttgame/library/luffy/adapter/RequestData;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 55
    iget-object v4, p0, Lgbsdk/common/host/absb$ac;->Bm:Lgbsdk/common/host/absb;

    iget-object v4, v4, Lgbsdk/common/host/absb;->Bh:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    if-nez v4, :cond_1

    .line 56
    iget-object v4, p0, Lgbsdk/common/host/absb$ac;->Bm:Lgbsdk/common/host/absb;

    invoke-virtual {v4}, Lgbsdk/common/host/absb;->dN()V

    goto :goto_0

    .line 62
    :cond_2
    sget-object v3, Lgbsdk/common/host/absb;->Bl:Lgbsdk/common/host/absb$ab;

    invoke-virtual {v3}, Lgbsdk/common/host/absb$ab;->dO()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 63
    iget-object v3, p0, Lgbsdk/common/host/absb$ac;->Bm:Lgbsdk/common/host/absb;

    iget-object v3, v3, Lgbsdk/common/host/absb;->executor:Ljava/util/concurrent/Executor;

    new-instance v5, Lgbsdk/common/host/absb$ac$1;

    invoke-direct {v5, p0}, Lgbsdk/common/host/absb$ac$1;-><init>(Lgbsdk/common/host/absb$ac;)V

    check-cast v5, Ljava/lang/Runnable;

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 75
    sget-object v3, Lgbsdk/common/host/abqx;->Br:Lgbsdk/common/host/abqx;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p0, Lgbsdk/common/host/absb$ac;->Bm:Lgbsdk/common/host/absb;

    iget-object v6, v6, Lgbsdk/common/host/absb;->TAG:Ljava/lang/String;

    aput-object v6, v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update configs cost "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-virtual {v3, v5}, Lgbsdk/common/host/abqx;->f([Ljava/lang/String;)V

    return-void
.end method
