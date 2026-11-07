.class public Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OverflowPopup;
.super Lgbsdk/android/support/v7/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OverflowPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lgbsdk/android/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Lgbsdk/android/support/v7/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 8

    .line 729
    iput-object p1, p0, Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OverflowPopup;->this$0:Lgbsdk/android/support/v7/widget/ActionMenuPresenter;

    const-string v0, "actionOverflowMenuStyle"

    const-string v1, "attr"

    .line 730
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v2 .. v7}, Lgbsdk/android/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lgbsdk/android/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    const p2, 0x800005

    .line 731
    invoke-virtual {p0, p2}, Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OverflowPopup;->setGravity(I)V

    .line 732
    iget-object p1, p1, Lgbsdk/android/support/v7/widget/ActionMenuPresenter;->mPopupPresenterCallback:Lgbsdk/android/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, p1}, Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OverflowPopup;->setPresenterCallback(Lgbsdk/android/support/v7/view/menu/MenuPresenter$Callback;)V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 737
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OverflowPopup;->this$0:Lgbsdk/android/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Lgbsdk/android/support/v7/widget/ActionMenuPresenter;->access$000(Lgbsdk/android/support/v7/widget/ActionMenuPresenter;)Lgbsdk/android/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OverflowPopup;->this$0:Lgbsdk/android/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Lgbsdk/android/support/v7/widget/ActionMenuPresenter;->access$100(Lgbsdk/android/support/v7/widget/ActionMenuPresenter;)Lgbsdk/android/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/android/support/v7/view/menu/MenuBuilder;->close()V

    .line 740
    :cond_0
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OverflowPopup;->this$0:Lgbsdk/android/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Lgbsdk/android/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    .line 742
    invoke-super {p0}, Lgbsdk/android/support/v7/view/menu/MenuPopupHelper;->onDismiss()V

    return-void
.end method
