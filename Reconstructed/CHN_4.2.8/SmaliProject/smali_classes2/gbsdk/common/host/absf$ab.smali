.class public final Lgbsdk/common/host/absf$ab;
.super Ljava/lang/Object;
.source "CallBack.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/absf;->onUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic Bc:Lgbsdk/common/host/absf;


# direct methods
.method constructor <init>(Lgbsdk/common/host/absf;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/common/host/absf$ab;->Bc:Lgbsdk/common/host/absf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/absf$ab;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "58a1815f1b3378a625c3446154709c5c"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/absf$ab;->Bc:Lgbsdk/common/host/absf;

    iget-object v0, v0, Lgbsdk/common/host/absf;->Ba:Lcom/bytedance/ttgame/library/luffy/core/RemoteConfigListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/ttgame/library/luffy/core/RemoteConfigListener;->onUpdate()V

    :cond_1
    return-void
.end method
