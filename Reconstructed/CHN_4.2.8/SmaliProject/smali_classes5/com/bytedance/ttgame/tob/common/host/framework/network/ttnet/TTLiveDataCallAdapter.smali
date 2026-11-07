.class public Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter;
.super Ljava/lang/Object;
.source "TTLiveDataCallAdapter.java"

# interfaces
.implements Lcom/bytedance/retrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/retrofit2/CallAdapter<",
        "Lgbsdk/android/arch/lifecycle/LiveData<",
        "Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse<",
        "*>;>;>;"
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private final responseType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter;->responseType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public adapt(Lcom/bytedance/retrofit2/Call;)Lgbsdk/android/arch/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/retrofit2/Call<",
            "TR;>;)",
            "Lgbsdk/android/arch/lifecycle/LiveData<",
            "Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "14693860224c0ddf9b31132a5a119737"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lgbsdk/android/arch/lifecycle/LiveData;

    return-object p1

    .line 30
    :cond_0
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter;Lcom/bytedance/retrofit2/Call;)V

    return-object v0
.end method

.method public synthetic adapt(Lcom/bytedance/retrofit2/Call;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "14693860224c0ddf9b31132a5a119737"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Object;

    return-object p1

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter;->adapt(Lcom/bytedance/retrofit2/Call;)Lgbsdk/android/arch/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter;->responseType:Ljava/lang/reflect/Type;

    return-object v0
.end method
