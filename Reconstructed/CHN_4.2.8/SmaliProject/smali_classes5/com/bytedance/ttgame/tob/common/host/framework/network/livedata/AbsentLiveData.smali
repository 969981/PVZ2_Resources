.class public Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/AbsentLiveData;
.super Lgbsdk/android/arch/lifecycle/LiveData;
.source "AbsentLiveData.java"


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lgbsdk/android/arch/lifecycle/LiveData;-><init>()V

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/AbsentLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static create()Lgbsdk/android/arch/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lgbsdk/android/arch/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/AbsentLiveData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "8469ac74b6867728730d80e050f19479"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lgbsdk/android/arch/lifecycle/LiveData;

    return-object v0

    .line 17
    :cond_0
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/AbsentLiveData;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/AbsentLiveData;-><init>()V

    return-object v0
.end method
