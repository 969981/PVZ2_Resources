.class public Lcom/bytedance/ttgame/tob/common/host/framework/SingleLiveEvent$1;
.super Ljava/lang/Object;
.source "SingleLiveEvent.java"

# interfaces
.implements Lgbsdk/android/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/SingleLiveEvent;->observe(Lgbsdk/android/arch/lifecycle/LifecycleOwner;Lgbsdk/android/arch/lifecycle/Observer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgbsdk/android/arch/lifecycle/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic this$0:Lcom/bytedance/ttgame/tob/common/host/framework/SingleLiveEvent;

.field final synthetic val$observer:Lgbsdk/android/arch/lifecycle/Observer;


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/SingleLiveEvent;Lgbsdk/android/arch/lifecycle/Observer;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/SingleLiveEvent$1;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/SingleLiveEvent;

    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/SingleLiveEvent$1;->val$observer:Lgbsdk/android/arch/lifecycle/Observer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/SingleLiveEvent$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "b030d994b7b163b94f9565523c75a86b"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/SingleLiveEvent$1;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/SingleLiveEvent;

    iget-object v1, v1, Lcom/bytedance/ttgame/tob/common/host/framework/SingleLiveEvent;->mPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/SingleLiveEvent$1;->val$observer:Lgbsdk/android/arch/lifecycle/Observer;

    invoke-interface {v0, p1}, Lgbsdk/android/arch/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
