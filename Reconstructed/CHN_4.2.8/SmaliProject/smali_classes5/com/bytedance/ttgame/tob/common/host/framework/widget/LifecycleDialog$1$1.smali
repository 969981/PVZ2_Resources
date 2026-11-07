.class public Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog$1$1;
.super Ljava/lang/Object;
.source "LifecycleDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic this$1:Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog$1;


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog$1;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog$1$1;->this$1:Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog$1$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "4005e6f75e8e2460a060d073271328f7"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog$1$1;->this$1:Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog$1;

    iget-object v0, v0, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog$1;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->access$001(Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;)V

    return-void
.end method
