.class public abstract Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource;
.super Ljava/lang/Object;
.source "NetworkOnlyBoundResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
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
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource;->result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    const/4 v1, 0x0

    .line 27
    invoke-static {v1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->loading(Ljava/lang/Object;)Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 28
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource;->fetchFromNetwork()V

    return-void
.end method

.method private fetchFromNetwork()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "4451c2904c62beb1ab5a21d90067e010"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource;->createCall()Lgbsdk/android/arch/lifecycle/LiveData;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource;->result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    new-instance v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource$1;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource$1;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource;Lgbsdk/android/arch/lifecycle/LiveData;)V

    invoke-virtual {v1, v0, v2}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;->addSource(Lgbsdk/android/arch/lifecycle/LiveData;Lgbsdk/android/arch/lifecycle/Observer;)V

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

    .line 59
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource;->result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    return-object v0
.end method

.method protected abstract createCall()Lgbsdk/android/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgbsdk/android/arch/lifecycle/LiveData<",
            "Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse<",
            "TResultType;>;>;"
        }
    .end annotation
.end method

.method protected onFetchFailed()V
    .locals 0

    return-void
.end method

.method public processResponse(Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse<",
            "TResultType;>;)TResultType;"
        }
    .end annotation

    .line 64
    iget-object p1, p1, Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;->body:Ljava/lang/Object;

    return-object p1
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

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "a562f7888b08ebd6dc9d5bd987fddaed"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource;->result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    invoke-virtual {v0}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource;->result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    invoke-virtual {v0, p1}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
