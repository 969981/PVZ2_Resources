.class public Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;
.super Lgbsdk/android/arch/lifecycle/LiveData;
.source "TTLiveDataCallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter;->adapt(Lcom/bytedance/retrofit2/Call;)Lgbsdk/android/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgbsdk/android/arch/lifecycle/LiveData<",
        "Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field started:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter;

.field final synthetic val$call:Lcom/bytedance/retrofit2/Call;


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter;Lcom/bytedance/retrofit2/Call;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter;

    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;->val$call:Lcom/bytedance/retrofit2/Call;

    invoke-direct {p0}, Lgbsdk/android/arch/lifecycle/LiveData;-><init>()V

    .line 31
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "9ff476d9c32c0c92f14f2cce762a8426"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "d014427deb179246b87b895973ecede0"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onActive()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "989198897cff046b98310ab07ea76c68"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-super {p0}, Lgbsdk/android/arch/lifecycle/LiveData;->onActive()V

    .line 36
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;->val$call:Lcom/bytedance/retrofit2/Call;

    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1$1;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;)V

    invoke-interface {v0, v1}, Lcom/bytedance/retrofit2/Call;->enqueue(Lcom/bytedance/retrofit2/Callback;)V

    :cond_1
    return-void
.end method
