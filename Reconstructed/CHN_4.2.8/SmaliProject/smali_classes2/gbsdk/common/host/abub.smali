.class public final Lgbsdk/common/host/abub;
.super Ljava/lang/Object;
.source "SettingsRequest.kt"

# interfaces
.implements Lcom/bytedance/ttgame/library/luffy/adapter/IRequest;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0001R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/delegate/impl/luffy/SettingsRequest;",
        "Lcom/bytedance/ttgame/library/luffy/adapter/IRequest;",
        "()V",
        "request",
        "Lcom/bytedance/ttgame/library/luffy/adapter/RequestData;",
        "setRequest",
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
.field public En:Lcom/bytedance/ttgame/library/luffy/adapter/IRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request()Lcom/bytedance/ttgame/library/luffy/adapter/RequestData;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abub;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "594ab0939b490cb2d95699d96b215fa1"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/library/luffy/adapter/RequestData;

    return-object v0

    .line 21
    :cond_0
    iget-object v1, p0, Lgbsdk/common/host/abub;->En:Lcom/bytedance/ttgame/library/luffy/adapter/IRequest;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/bytedance/ttgame/library/luffy/adapter/IRequest;->request()Lcom/bytedance/ttgame/library/luffy/adapter/RequestData;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, Lcom/bytedance/ttgame/library/luffy/adapter/RequestData;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v1, v0, v3, v2}, Lcom/bytedance/ttgame/library/luffy/adapter/RequestData;-><init>(ZLjava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-object v1
.end method
