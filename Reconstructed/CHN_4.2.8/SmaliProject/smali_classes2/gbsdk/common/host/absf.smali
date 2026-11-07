.class public final Lgbsdk/common/host/absf;
.super Ljava/lang/Object;
.source "CallBack.kt"

# interfaces
.implements Lcom/bytedance/ttgame/library/luffy/core/RemoteConfigListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/bytedance/ttgame/library/luffy/core/CallBack;",
        "Lcom/bytedance/ttgame/library/luffy/core/RemoteConfigListener;",
        "listener",
        "callbackOnMain",
        "",
        "(Lcom/bytedance/ttgame/library/luffy/core/RemoteConfigListener;Z)V",
        "onUpdate",
        "",
        "luffy_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final Ba:Lcom/bytedance/ttgame/library/luffy/core/RemoteConfigListener;

.field private final Bb:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/ttgame/library/luffy/core/RemoteConfigListener;Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/common/host/absf;->Ba:Lcom/bytedance/ttgame/library/luffy/core/RemoteConfigListener;

    iput-boolean p2, p0, Lgbsdk/common/host/absf;->Bb:Z

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/absf;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "0767538cf4c4f3cead0b780209d1ad18"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 19
    :cond_0
    iget-boolean v0, p0, Lgbsdk/common/host/absf;->Bb:Z

    if-eqz v0, :cond_1

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lgbsdk/common/host/absf$ab;

    invoke-direct {v1, p0}, Lgbsdk/common/host/absf$ab;-><init>(Lgbsdk/common/host/absf;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lgbsdk/common/host/absf;->Ba:Lcom/bytedance/ttgame/library/luffy/core/RemoteConfigListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/bytedance/ttgame/library/luffy/core/RemoteConfigListener;->onUpdate()V

    :cond_2
    :goto_0
    return-void
.end method
