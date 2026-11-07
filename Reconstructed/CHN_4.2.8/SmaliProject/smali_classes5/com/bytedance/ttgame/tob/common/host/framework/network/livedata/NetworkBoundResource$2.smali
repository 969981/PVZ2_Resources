.class public Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$2;
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
        "TResultType;>;"
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$2;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;

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

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "64b9df4dd7528b0cfaa30988787925bb"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$2;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;

    invoke-static {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->loading(Ljava/lang/Object;)Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->setValue(Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;)V

    return-void
.end method
