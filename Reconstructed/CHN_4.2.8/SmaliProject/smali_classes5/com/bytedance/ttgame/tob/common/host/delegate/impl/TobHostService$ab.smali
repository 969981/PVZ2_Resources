.class public final Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ab;
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
        "Lgbsdk/common/host/abrc;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/impl/alog/ALoggerDelegateImpl;",
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
.field public static final DT:Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ab;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ab;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ab;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ab;->DT:Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ab;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final ev()Lgbsdk/common/host/abrc;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ab;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "e2f6a178fb49acd05ebf7201fd74bb9d"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lgbsdk/common/host/abrc;

    return-object v0

    .line 33
    :cond_0
    new-instance v0, Lgbsdk/common/host/abrc;

    invoke-direct {v0}, Lgbsdk/common/host/abrc;-><init>()V

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ab;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "e2f6a178fb49acd05ebf7201fd74bb9d"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Object;

    return-object v0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ab;->ev()Lgbsdk/common/host/abrc;

    move-result-object v0

    return-object v0
.end method
