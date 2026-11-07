.class public Lgbsdk/android/support/v7/widget/RecyclerView$4;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lgbsdk/android/support/v7/widget/ViewInfoStore$ProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lgbsdk/android/support/v7/widget/RecyclerView$4;->this$0:Lgbsdk/android/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processAppeared(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1

    .line 617
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/RecyclerView$4;->this$0:Lgbsdk/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lgbsdk/android/support/v7/widget/RecyclerView;->animateAppearance(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method public processDisappeared(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1

    .line 611
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/RecyclerView$4;->this$0:Lgbsdk/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lgbsdk/android/support/v7/widget/RecyclerView;->mRecycler:Lgbsdk/android/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lgbsdk/android/support/v7/widget/RecyclerView$Recycler;->unscrapView(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 612
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/RecyclerView$4;->this$0:Lgbsdk/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lgbsdk/android/support/v7/widget/RecyclerView;->animateDisappearance(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method public processPersistent(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 623
    invoke-virtual {p1, v0}, Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 624
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/RecyclerView$4;->this$0:Lgbsdk/android/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Lgbsdk/android/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/RecyclerView$4;->this$0:Lgbsdk/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lgbsdk/android/support/v7/widget/RecyclerView;->mItemAnimator:Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p1, p2, p3}, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator;->animateChange(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 630
    iget-object p1, p0, Lgbsdk/android/support/v7/widget/RecyclerView$4;->this$0:Lgbsdk/android/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Lgbsdk/android/support/v7/widget/RecyclerView;->postAnimationRunner()V

    goto :goto_0

    .line 632
    :cond_0
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/RecyclerView$4;->this$0:Lgbsdk/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lgbsdk/android/support/v7/widget/RecyclerView;->mItemAnimator:Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator;->animatePersistence(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 633
    iget-object p1, p0, Lgbsdk/android/support/v7/widget/RecyclerView$4;->this$0:Lgbsdk/android/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Lgbsdk/android/support/v7/widget/RecyclerView;->postAnimationRunner()V

    :cond_1
    :goto_0
    return-void
.end method

.method public unused(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 638
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/RecyclerView$4;->this$0:Lgbsdk/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lgbsdk/android/support/v7/widget/RecyclerView;->mLayout:Lgbsdk/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object p1, p1, Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lgbsdk/android/support/v7/widget/RecyclerView$4;->this$0:Lgbsdk/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lgbsdk/android/support/v7/widget/RecyclerView;->mRecycler:Lgbsdk/android/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, v1}, Lgbsdk/android/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Lgbsdk/android/support/v7/widget/RecyclerView$Recycler;)V

    return-void
.end method
