.class public Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$4;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;->postDispatchSwipe(Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;

.field final synthetic val$anim:Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
    .locals 0

    .line 700
    iput-object p1, p0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$4;->this$0:Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;

    iput-object p2, p0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$4;->val$anim:Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    iput p3, p0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$4;->val$swipeDir:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 703
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$4;->this$0:Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Lgbsdk/android/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$4;->this$0:Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Lgbsdk/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$4;->val$anim:Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-boolean v0, v0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$4;->val$anim:Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-object v0, v0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;

    .line 705
    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 706
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$4;->this$0:Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Lgbsdk/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/RecyclerView;->getItemAnimator()Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 710
    invoke-virtual {v0, v1}, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator;->isRunning(Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$4;->this$0:Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;

    .line 711
    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;->hasRunningRecoverAnim()Z

    move-result v0

    if-nez v0, :cond_1

    .line 712
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$4;->this$0:Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;->mCallback:Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$4;->val$anim:Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-object v1, v1, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;

    iget v2, p0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$4;->val$swipeDir:I

    invoke-virtual {v0, v1, v2}, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$Callback;->onSwiped(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 714
    :cond_1
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$4;->this$0:Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Lgbsdk/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lgbsdk/android/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method
