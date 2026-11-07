.class public final Lgbsdk/common/host/abuc$ab;
.super Ljava/lang/Object;
.source "LuffyDelegateImpl.kt"

# interfaces
.implements Lcom/bytedance/ttgame/library/luffy/core/RemoteConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abuc;->addRemoteUpdateListener(Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyUpdateListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/bytedance/ttgame/tob/common/host/delegate/impl/luffy/LuffyDelegateImpl$addRemoteUpdateListener$1",
        "Lcom/bytedance/ttgame/library/luffy/core/RemoteConfigListener;",
        "onUpdate",
        "",
        "ch_delegate_impl_osdk_tobRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic Ek:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyUpdateListener;


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/common/host/abuc$ab;->Ek:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyUpdateListener;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abuc$ab;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "de637429fe6d876374aeaa8532f1d467"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abuc$ab;->Ek:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyUpdateListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyUpdateListener;->onUpdate()V

    :cond_1
    return-void
.end method
