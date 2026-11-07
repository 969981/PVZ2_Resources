.class public Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;
.super Ljava/lang/Object;
.source "NetworkBoundResource.java"

# interfaces
.implements Lgbsdk/android/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->fetchFromNetwork(Lgbsdk/android/arch/lifecycle/LiveData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgbsdk/android/arch/lifecycle/Observer<",
        "Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse<",
        "TRequestType;>;>;"
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;

.field final synthetic val$apiResponse:Lgbsdk/android/arch/lifecycle/LiveData;

.field final synthetic val$dbSource:Lgbsdk/android/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;Lgbsdk/android/arch/lifecycle/LiveData;Lgbsdk/android/arch/lifecycle/LiveData;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;

    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;->val$apiResponse:Lgbsdk/android/arch/lifecycle/LiveData;

    iput-object p3, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;->val$dbSource:Lgbsdk/android/arch/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse<",
            "TRequestType;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "957af6cd2f67dc631d319abb22b78026"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;

    iget-object v0, v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;->val$apiResponse:Lgbsdk/android/arch/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;->removeSource(Lgbsdk/android/arch/lifecycle/LiveData;)V

    .line 78
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;

    iget-object v0, v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;->val$dbSource:Lgbsdk/android/arch/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;->removeSource(Lgbsdk/android/arch/lifecycle/LiveData;)V

    .line 80
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;

    iget-object v0, v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->appExecutors:Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->diskIO()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->onFetchFailed()V

    .line 103
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;

    iget-object v0, v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;->val$dbSource:Lgbsdk/android/arch/lifecycle/LiveData;

    new-instance v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$2;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$2;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;)V

    invoke-virtual {v0, v1, v2}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;->addSource(Lgbsdk/android/arch/lifecycle/LiveData;Lgbsdk/android/arch/lifecycle/Observer;)V

    :goto_0
    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "3d11dab2dacd18bed20bd6d53386ac2b"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 74
    :cond_0
    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;->onChanged(Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;)V

    return-void
.end method
