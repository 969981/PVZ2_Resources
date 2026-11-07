.class public final Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ac;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseChannel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->prepare(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic EK:Landroid/content/Context;

.field final synthetic ET:Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;

.field final synthetic EU:J


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;Landroid/content/Context;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ac;->ET:Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;

    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ac;->EK:Landroid/content/Context;

    iput-wide p3, p0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ac;->EU:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final eW()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ac;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "a6c105c6ab9c3bc707a5a4177e7de2de"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "BaseChannel"

    const-string v1, "[osdk_init]onZeusPrepareSuccess"

    .line 55
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lgbsdk/common/host/abui;->aAj:Lgbsdk/common/host/abui;

    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ac$1;

    iget-object v2, p0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ac;->ET:Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;

    iget-object v3, p0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ac;->EK:Landroid/content/Context;

    iget-wide v4, p0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ac;->EU:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ac$1;-><init>(Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;Landroid/content/Context;J)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abui;->d(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ac;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "a6c105c6ab9c3bc707a5a4177e7de2de"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Object;

    return-object v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ac;->eW()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
