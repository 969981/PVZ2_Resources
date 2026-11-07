.class public abstract Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;
.super Ljava/lang/Object;
.source "NetworkBoundResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        "RequestType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final appExecutors:Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;

.field public final result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/android/arch/lifecycle/MediatorLiveData<",
            "Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource<",
            "TResultType;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    .line 38
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->appExecutors:Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;

    .line 39
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->loadFromDb()Lgbsdk/android/arch/lifecycle/LiveData;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$1;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;Lgbsdk/android/arch/lifecycle/LiveData;)V

    invoke-virtual {v0, p1, v1}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;->addSource(Lgbsdk/android/arch/lifecycle/LiveData;Lgbsdk/android/arch/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public asLiveData()Lgbsdk/android/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgbsdk/android/arch/lifecycle/LiveData<",
            "Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource<",
            "TResultType;>;>;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    return-object v0
.end method

.method protected abstract createCall()Lgbsdk/android/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgbsdk/android/arch/lifecycle/LiveData<",
            "Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse<",
            "TRequestType;>;>;"
        }
    .end annotation
.end method

.method public fetchFromNetwork(Lgbsdk/android/arch/lifecycle/LiveData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/android/arch/lifecycle/LiveData<",
            "TResultType;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "f1f3e9b9832b0411d3c8e53e8f501d24"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->createCall()Lgbsdk/android/arch/lifecycle/LiveData;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    new-instance v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$2;

    invoke-direct {v2, p0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$2;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;)V

    invoke-virtual {v1, p1, v2}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;->addSource(Lgbsdk/android/arch/lifecycle/LiveData;Lgbsdk/android/arch/lifecycle/Observer;)V

    .line 74
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    new-instance v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;Lgbsdk/android/arch/lifecycle/LiveData;Lgbsdk/android/arch/lifecycle/LiveData;)V

    invoke-virtual {v1, v0, v2}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;->addSource(Lgbsdk/android/arch/lifecycle/LiveData;Lgbsdk/android/arch/lifecycle/Observer;)V

    return-void
.end method

.method protected abstract loadFromDb()Lgbsdk/android/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgbsdk/android/arch/lifecycle/LiveData<",
            "TResultType;>;"
        }
    .end annotation
.end method

.method protected onFetchFailed()V
    .locals 0

    return-void
.end method

.method protected processResponse(Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse<",
            "TRequestType;>;)TRequestType;"
        }
    .end annotation

    .line 123
    iget-object p1, p1, Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;->body:Ljava/lang/Object;

    return-object p1
.end method

.method protected abstract saveCallResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestType;)V"
        }
    .end annotation
.end method

.method public setValue(Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource<",
            "TResultType;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "db891022698120678ddbb4430082070f"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    invoke-virtual {v0}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    invoke-virtual {v0, p1}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected abstract shouldFetch(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)Z"
        }
    .end annotation
.end method
