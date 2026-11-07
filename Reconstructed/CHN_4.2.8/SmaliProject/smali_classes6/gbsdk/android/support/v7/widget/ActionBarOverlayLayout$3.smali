.class public Lgbsdk/android/support/v7/widget/ActionBarOverlayLayout$3;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v7/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v7/widget/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v7/widget/ActionBarOverlayLayout;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lgbsdk/android/support/v7/widget/ActionBarOverlayLayout$3;->this$0:Lgbsdk/android/support/v7/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 122
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ActionBarOverlayLayout$3;->this$0:Lgbsdk/android/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 123
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ActionBarOverlayLayout$3;->this$0:Lgbsdk/android/support/v7/widget/ActionBarOverlayLayout;

    iget-object v1, v0, Lgbsdk/android/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Lgbsdk/android/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1}, Lgbsdk/android/support/v7/widget/ActionBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lgbsdk/android/support/v7/widget/ActionBarOverlayLayout$3;->this$0:Lgbsdk/android/support/v7/widget/ActionBarOverlayLayout;

    iget-object v2, v2, Lgbsdk/android/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Lgbsdk/android/support/v7/widget/ActionBarContainer;

    .line 124
    invoke-virtual {v2}, Lgbsdk/android/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lgbsdk/android/support/v7/widget/ActionBarOverlayLayout$3;->this$0:Lgbsdk/android/support/v7/widget/ActionBarOverlayLayout;

    iget-object v2, v2, Lgbsdk/android/support/v7/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 125
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, v0, Lgbsdk/android/support/v7/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    return-void
.end method
