.class public Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1$1;
.super Ljava/lang/Object;
.source "NetworkBoundResource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic this$2:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1;


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1$1;->this$2:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "2121a279ed1b7c9a5b762c1559fa83dc"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1$1;->this$2:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1;

    iget-object v0, v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1;->this$1:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;

    iget-object v0, v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;

    iget-object v0, v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1$1;->this$2:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1;

    iget-object v1, v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1;->this$1:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;

    iget-object v1, v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;

    invoke-virtual {v1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->loadFromDb()Lgbsdk/android/arch/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1$1$1;

    invoke-direct {v2, p0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1$1$1;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1$1;)V

    invoke-virtual {v0, v1, v2}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;->addSource(Lgbsdk/android/arch/lifecycle/LiveData;Lgbsdk/android/arch/lifecycle/Observer;)V

    return-void
.end method
