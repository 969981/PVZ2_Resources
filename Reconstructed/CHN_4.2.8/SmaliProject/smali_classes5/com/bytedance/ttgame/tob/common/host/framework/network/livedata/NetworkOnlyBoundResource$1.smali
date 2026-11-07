.class public Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource$1;
.super Ljava/lang/Object;
.source "NetworkOnlyBoundResource.java"

# interfaces
.implements Lgbsdk/android/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource;->fetchFromNetwork()V
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
        "TResultType;>;>;"
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource;

.field final synthetic val$apiResponse:Lgbsdk/android/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource;Lgbsdk/android/arch/lifecycle/LiveData;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource$1;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource;

    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource$1;->val$apiResponse:Lgbsdk/android/arch/lifecycle/LiveData;

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
            "TResultType;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "52ad7d1c7cb9db72d2dd41895a428a81"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource$1;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource;

    iget-object v0, v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource;->result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource$1;->val$apiResponse:Lgbsdk/android/arch/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;->removeSource(Lgbsdk/android/arch/lifecycle/LiveData;)V

    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource$1;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource;

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource;->processResponse(Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->success(Ljava/lang/Object;)Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource;->setValue(Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;)V

    goto :goto_1

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource$1;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource;->onFetchFailed()V

    .line 49
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource$1;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;->errorMessage:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->error(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource;->setValue(Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;)V

    :goto_1
    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c2ad66be22c4d827d99dc9741372e462"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkOnlyBoundResource$1;->onChanged(Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;)V

    return-void
.end method
