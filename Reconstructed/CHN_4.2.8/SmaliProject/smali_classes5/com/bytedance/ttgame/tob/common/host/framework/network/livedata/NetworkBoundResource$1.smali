.class public Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$1;
.super Ljava/lang/Object;
.source "NetworkBoundResource.java"

# interfaces
.implements Lgbsdk/android/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgbsdk/android/arch/lifecycle/Observer<",
        "TResultType;>;"
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;

.field final synthetic val$dbSource:Lgbsdk/android/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;Lgbsdk/android/arch/lifecycle/LiveData;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$1;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;

    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$1;->val$dbSource:Lgbsdk/android/arch/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "b93f5121ea84730ad4de73f4a3211cf9"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$1;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;

    iget-object v0, v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$1;->val$dbSource:Lgbsdk/android/arch/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;->removeSource(Lgbsdk/android/arch/lifecycle/LiveData;)V

    .line 44
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$1;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->shouldFetch(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 45
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$1;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;

    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$1;->val$dbSource:Lgbsdk/android/arch/lifecycle/LiveData;

    invoke-virtual {p1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->fetchFromNetwork(Lgbsdk/android/arch/lifecycle/LiveData;)V

    goto :goto_0

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$1;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;

    iget-object p1, p1, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$1;->val$dbSource:Lgbsdk/android/arch/lifecycle/LiveData;

    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$1$1;

    invoke-direct {v1, p0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$1$1;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$1;)V

    invoke-virtual {p1, v0, v1}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;->addSource(Lgbsdk/android/arch/lifecycle/LiveData;Lgbsdk/android/arch/lifecycle/Observer;)V

    :goto_0
    return-void
.end method
