.class public final Lgbsdk/common/host/absb$ac$1;
.super Ljava/lang/Object;
.source "InternalMainImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/absb$ac;->run()V
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
.field final synthetic Bn:Lgbsdk/common/host/absb$ac;


# direct methods
.method constructor <init>(Lgbsdk/common/host/absb$ac;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/common/host/absb$ac$1;->Bn:Lgbsdk/common/host/absb$ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/absb$ac$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "f829b0b7817ace399c6b3ba29196cc39"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 65
    :try_start_0
    iget-object v3, p0, Lgbsdk/common/host/absb$ac$1;->Bn:Lgbsdk/common/host/absb$ac;

    iget-object v3, v3, Lgbsdk/common/host/absb$ac;->Bm:Lgbsdk/common/host/absb;

    iget-object v3, v3, Lgbsdk/common/host/absb;->Bg:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v3, Ljava/util/Map;

    .line 223
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgbsdk/common/host/absf;

    invoke-virtual {v5}, Lgbsdk/common/host/absf;->onUpdate()V

    .line 67
    iget-object v5, p0, Lgbsdk/common/host/absb$ac$1;->Bn:Lgbsdk/common/host/absb$ac;

    iget-object v5, v5, Lgbsdk/common/host/absb$ac;->Bm:Lgbsdk/common/host/absb;

    iget-object v5, v5, Lgbsdk/common/host/absb;->Bg:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v5, Lgbsdk/common/host/abqx;->Br:Lgbsdk/common/host/abqx;

    new-array v6, v2, [Ljava/lang/String;

    iget-object v7, p0, Lgbsdk/common/host/absb$ac$1;->Bn:Lgbsdk/common/host/absb$ac;

    iget-object v7, v7, Lgbsdk/common/host/absb$ac;->Bm:Lgbsdk/common/host/absb;

    iget-object v7, v7, Lgbsdk/common/host/absb;->TAG:Ljava/lang/String;

    aput-object v7, v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call back for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " after requested"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-virtual {v5, v6}, Lgbsdk/common/host/abqx;->i([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 71
    sget-object v4, Lgbsdk/common/host/abqx;->Br:Lgbsdk/common/host/abqx;

    new-array v2, v2, [Ljava/lang/String;

    iget-object v5, p0, Lgbsdk/common/host/absb$ac$1;->Bn:Lgbsdk/common/host/absb$ac;

    iget-object v5, v5, Lgbsdk/common/host/absb$ac;->Bm:Lgbsdk/common/host/absb;

    iget-object v5, v5, Lgbsdk/common/host/absb;->TAG:Ljava/lang/String;

    aput-object v5, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call back left listener failed, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-virtual {v4, v2}, Lgbsdk/common/host/abqx;->g([Ljava/lang/String;)V

    :cond_1
    return-void
.end method
