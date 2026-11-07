.class public Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionFragment$1;
.super Ljava/lang/Object;
.source "PermissionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic this$0:Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionFragment;

.field final synthetic val$permissions:Ljava/util/List;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionFragment;Ljava/util/List;I)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionFragment$1;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionFragment;

    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionFragment$1;->val$permissions:Ljava/util/List;

    iput p3, p0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionFragment$1;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionFragment$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "9bcb136471e87d9f74cc8315d4584565"

    invoke-static {v0, p0, p1, v1, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionFragment$1;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionFragment;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionFragment;->getActivity()Lgbsdk/android/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionFragment$1;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionFragment;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionFragment;->getActivity()Lgbsdk/android/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionFragment$1;->val$permissions:Ljava/util/List;

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionFragment$1;->val$requestCode:I

    invoke-virtual {p1, v0, v1}, Lgbsdk/android/support/v4/app/FragmentActivity;->requestPermissions([Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
