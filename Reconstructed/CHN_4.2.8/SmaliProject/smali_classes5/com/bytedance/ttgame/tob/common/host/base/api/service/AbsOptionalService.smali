.class public abstract Lcom/bytedance/ttgame/tob/common/host/base/api/service/AbsOptionalService;
.super Lcom/bytedance/ttgame/tob/common/host/base/api/service/AbsLifecycleService;
.source "AbsOptionalService.kt"

# interfaces
.implements Lcom/bytedance/ttgame/tob/common/host/base/api/service/IOptionalService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/base/api/service/AbsOptionalService;",
        "Lcom/bytedance/ttgame/tob/common/host/base/api/service/AbsLifecycleService;",
        "Lcom/bytedance/ttgame/tob/common/host/base/api/service/IOptionalService;",
        "()V",
        "onPrepare",
        "",
        "context",
        "Landroid/content/Context;",
        "ch_base_api_tobRelease"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/api/service/AbsLifecycleService;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepare(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/api/service/AbsOptionalService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "5be137612f876b751e8a719abedb4e47"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
