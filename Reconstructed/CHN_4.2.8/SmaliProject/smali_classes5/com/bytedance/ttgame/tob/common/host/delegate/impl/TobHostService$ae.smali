.class public final Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ae;
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
        "Lgbsdk/common/host/abuc;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/impl/luffy/LuffyDelegateImpl;",
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
.field public static final DW:Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ae;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ae;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ae;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ae;->DW:Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ae;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final ey()Lgbsdk/common/host/abuc;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ae;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "d66b22cb371307578c90bfc0ed7c740a"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lgbsdk/common/host/abuc;

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lgbsdk/common/host/abuc;

    sget-object v1, Lcom/bytedance/ttgame/library/luffy/Luffy;->Companion:Lcom/bytedance/ttgame/library/luffy/Luffy$Companion;

    invoke-virtual {v1}, Lcom/bytedance/ttgame/library/luffy/Luffy$Companion;->getInstance()Lcom/bytedance/ttgame/library/luffy/Luffy;

    move-result-object v1

    invoke-direct {v0, v1}, Lgbsdk/common/host/abuc;-><init>(Lcom/bytedance/ttgame/library/luffy/Luffy;)V

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ae;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "d66b22cb371307578c90bfc0ed7c740a"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Object;

    return-object v0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ae;->ey()Lgbsdk/common/host/abuc;

    move-result-object v0

    return-object v0
.end method
