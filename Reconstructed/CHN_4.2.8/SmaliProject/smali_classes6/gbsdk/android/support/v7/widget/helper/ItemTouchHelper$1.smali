.class public Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$1;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$1;->this$0:Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 260
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$1;->this$0:Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;->mSelected:Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$1;->this$0:Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;->scrollIfNecessary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$1;->this$0:Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;->mSelected:Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$1;->this$0:Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, v0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;->mSelected:Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;->moveIfNecessary(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$1;->this$0:Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Lgbsdk/android/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$1;->this$0:Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lgbsdk/android/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 265
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper$1;->this$0:Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lgbsdk/android/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Lgbsdk/android/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Lgbsdk/android/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
