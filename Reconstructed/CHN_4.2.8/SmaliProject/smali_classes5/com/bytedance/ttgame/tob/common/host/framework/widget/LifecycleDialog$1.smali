.class public Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog$1;
.super Ljava/lang/Object;
.source "LifecycleDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->getExitAnimation()Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic this$0:Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog$1;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "7ac5955ba7f0fd1716aa13ea5b7a79ff"

    invoke-static {v0, p0, p1, v1, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog$1;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->getContentViewForAnimation()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog$1;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->getContentViewForAnimation()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog$1$1;

    invoke-direct {v0, p0}, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog$1$1;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
