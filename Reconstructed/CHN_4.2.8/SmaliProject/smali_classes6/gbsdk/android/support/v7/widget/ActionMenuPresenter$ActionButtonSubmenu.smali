.class public Lgbsdk/android/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
.super Lgbsdk/android/support/v7/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lgbsdk/android/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Lgbsdk/android/support/v7/view/menu/SubMenuBuilder;Landroid/view/View;)V
    .locals 8

    .line 747
    iput-object p1, p0, Lgbsdk/android/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lgbsdk/android/support/v7/widget/ActionMenuPresenter;

    const-string v0, "actionOverflowMenuStyle"

    const-string v1, "attr"

    .line 748
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v2 .. v7}, Lgbsdk/android/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lgbsdk/android/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 750
    invoke-virtual {p3}, Lgbsdk/android/support/v7/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object p2

    check-cast p2, Lgbsdk/android/support/v7/view/menu/MenuItemImpl;

    .line 751
    invoke-virtual {p2}, Lgbsdk/android/support/v7/view/menu/MenuItemImpl;->isActionButton()Z

    move-result p2

    if-nez p2, :cond_1

    .line 753
    iget-object p2, p1, Lgbsdk/android/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez p2, :cond_0

    invoke-static {p1}, Lgbsdk/android/support/v7/widget/ActionMenuPresenter;->access$200(Lgbsdk/android/support/v7/widget/ActionMenuPresenter;)Lgbsdk/android/support/v7/view/menu/MenuView;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lgbsdk/android/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    :goto_0
    invoke-virtual {p0, p2}, Lgbsdk/android/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 756
    :cond_1
    iget-object p1, p1, Lgbsdk/android/support/v7/widget/ActionMenuPresenter;->mPopupPresenterCallback:Lgbsdk/android/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, p1}, Lgbsdk/android/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->setPresenterCallback(Lgbsdk/android/support/v7/view/menu/MenuPresenter$Callback;)V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 761
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lgbsdk/android/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Lgbsdk/android/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Lgbsdk/android/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 762
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lgbsdk/android/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Lgbsdk/android/support/v7/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 764
    invoke-super {p0}, Lgbsdk/android/support/v7/view/menu/MenuPopupHelper;->onDismiss()V

    return-void
.end method
