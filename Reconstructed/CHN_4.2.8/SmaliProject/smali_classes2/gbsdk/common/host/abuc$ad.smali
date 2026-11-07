.class public final Lgbsdk/common/host/abuc$ad;
.super Ljava/lang/Object;
.source "LuffyDelegateImpl.kt"

# interfaces
.implements Lcom/bytedance/ttgame/library/luffy/adapter/IRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abuc;->updateLuffy(Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/bytedance/ttgame/tob/common/host/delegate/impl/luffy/LuffyDelegateImpl$updateLuffy$1",
        "Lcom/bytedance/ttgame/library/luffy/adapter/IRequest;",
        "request",
        "Lcom/bytedance/ttgame/library/luffy/adapter/RequestData;",
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
.field final synthetic Em:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyRequest;


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyRequest;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/common/host/abuc$ad;->Em:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyRequest;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request()Lcom/bytedance/ttgame/library/luffy/adapter/RequestData;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abuc$ad;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "4d5dd5efe51e591628006d8c107c0d83"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/library/luffy/adapter/RequestData;

    return-object v0

    .line 41
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abuc$ad;->Em:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyRequest;

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyRequest;->request()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyResponse;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/bytedance/ttgame/library/luffy/adapter/RequestData;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyResponse;->getSuccess()Z

    move-result v2

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyResponse;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyResponse;->getConfigs()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/bytedance/ttgame/library/luffy/adapter/RequestData;-><init>(ZLjava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method
