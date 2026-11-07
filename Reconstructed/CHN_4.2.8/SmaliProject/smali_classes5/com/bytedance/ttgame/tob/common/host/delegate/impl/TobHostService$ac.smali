.class public final Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ac;
.super Lkotlin/jvm/internal/Lambda;
.source "TobHostService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final DU:Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ac;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ac;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ac;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ac;->DU:Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ac;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final ew()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ac;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "435eefb9eb87bfe2ab97b83db93d0cc8"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    return-object v0

    .line 35
    :cond_0
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->isDouyinChannel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    new-instance v0, Lgbsdk/common/host/abrm;

    invoke-direct {v0}, Lgbsdk/common/host/abrm;-><init>()V

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Lgbsdk/common/host/abrp;

    invoke-direct {v0}, Lgbsdk/common/host/abrp;-><init>()V

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    :goto_0
    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ac;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "435eefb9eb87bfe2ab97b83db93d0cc8"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Object;

    return-object v0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ac;->ew()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    return-object v0
.end method
