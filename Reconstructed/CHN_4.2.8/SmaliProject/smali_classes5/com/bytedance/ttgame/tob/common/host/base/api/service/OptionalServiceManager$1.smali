.class public Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$1;
.super Ljava/lang/Object;
.source "OptionalServiceManager.java"

# interfaces
.implements Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager;->getService(Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceTarget;Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceCallback<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic val$runnable:Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceRunnable;


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceRunnable;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$1;->val$runnable:Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "84d7063319b91ea7ef4f0ae26a2e45fa"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$1;->val$runnable:Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceRunnable;

    invoke-interface {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceRunnable;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "6a45c29be97c82e0952e3f44ca9c0ac9"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 40
    :cond_0
    check-cast p1, Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    invoke-virtual {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$1;->onSuccess(Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;)V

    return-void
.end method
