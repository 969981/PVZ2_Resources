.class public Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private mPopup:Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OverflowPopup;

.field final synthetic this$0:Lgbsdk/android/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lgbsdk/android/support/v7/widget/ActionMenuPresenter;Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OverflowPopup;)V
    .locals 0

    .line 796
    iput-object p1, p0, Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lgbsdk/android/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 797
    iput-object p2, p0, Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 802
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lgbsdk/android/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Lgbsdk/android/support/v7/widget/ActionMenuPresenter;->access$300(Lgbsdk/android/support/v7/widget/ActionMenuPresenter;)Lgbsdk/android/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lgbsdk/android/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Lgbsdk/android/support/v7/widget/ActionMenuPresenter;->access$400(Lgbsdk/android/support/v7/widget/ActionMenuPresenter;)Lgbsdk/android/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/android/support/v7/view/menu/MenuBuilder;->changeMenuMode()V

    .line 805
    :cond_0
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lgbsdk/android/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Lgbsdk/android/support/v7/widget/ActionMenuPresenter;->access$500(Lgbsdk/android/support/v7/widget/ActionMenuPresenter;)Lgbsdk/android/support/v7/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 806
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OverflowPopup;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 807
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lgbsdk/android/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    iput-object v1, v0, Lgbsdk/android/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    .line 809
    :cond_1
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lgbsdk/android/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Lgbsdk/android/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Lgbsdk/android/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    return-void
.end method
