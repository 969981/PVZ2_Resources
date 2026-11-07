.class public Lgbsdk/android/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
.super Lgbsdk/android/support/v7/widget/ForwardingListener;
.source "ActionMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v7/view/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionMenuItemForwardingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v7/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Lgbsdk/android/support/v7/view/menu/ActionMenuItemView;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lgbsdk/android/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lgbsdk/android/support/v7/view/menu/ActionMenuItemView;

    .line 300
    invoke-direct {p0, p1}, Lgbsdk/android/support/v7/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lgbsdk/android/support/v7/view/menu/ShowableListMenu;
    .locals 1

    .line 305
    iget-object v0, p0, Lgbsdk/android/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lgbsdk/android/support/v7/view/menu/ActionMenuItemView;

    iget-object v0, v0, Lgbsdk/android/support/v7/view/menu/ActionMenuItemView;->mPopupCallback:Lgbsdk/android/support/v7/view/menu/ActionMenuItemView$PopupCallback;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lgbsdk/android/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lgbsdk/android/support/v7/view/menu/ActionMenuItemView;

    iget-object v0, v0, Lgbsdk/android/support/v7/view/menu/ActionMenuItemView;->mPopupCallback:Lgbsdk/android/support/v7/view/menu/ActionMenuItemView$PopupCallback;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/view/menu/ActionMenuItemView$PopupCallback;->getPopup()Lgbsdk/android/support/v7/view/menu/ShowableListMenu;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 3

    .line 314
    iget-object v0, p0, Lgbsdk/android/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lgbsdk/android/support/v7/view/menu/ActionMenuItemView;

    iget-object v0, v0, Lgbsdk/android/support/v7/view/menu/ActionMenuItemView;->mItemInvoker:Lgbsdk/android/support/v7/view/menu/MenuBuilder$ItemInvoker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbsdk/android/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lgbsdk/android/support/v7/view/menu/ActionMenuItemView;

    iget-object v0, v0, Lgbsdk/android/support/v7/view/menu/ActionMenuItemView;->mItemInvoker:Lgbsdk/android/support/v7/view/menu/MenuBuilder$ItemInvoker;

    iget-object v2, p0, Lgbsdk/android/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lgbsdk/android/support/v7/view/menu/ActionMenuItemView;

    iget-object v2, v2, Lgbsdk/android/support/v7/view/menu/ActionMenuItemView;->mItemData:Lgbsdk/android/support/v7/view/menu/MenuItemImpl;

    invoke-interface {v0, v2}, Lgbsdk/android/support/v7/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lgbsdk/android/support/v7/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lgbsdk/android/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->getPopup()Lgbsdk/android/support/v7/view/menu/ShowableListMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v0}, Lgbsdk/android/support/v7/view/menu/ShowableListMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
