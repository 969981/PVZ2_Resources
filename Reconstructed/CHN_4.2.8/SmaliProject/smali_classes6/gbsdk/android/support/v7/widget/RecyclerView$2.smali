.class public Lgbsdk/android/support/v7/widget/RecyclerView$2;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 585
    iput-object p1, p0, Lgbsdk/android/support/v7/widget/RecyclerView$2;->this$0:Lgbsdk/android/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 588
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/RecyclerView$2;->this$0:Lgbsdk/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lgbsdk/android/support/v7/widget/RecyclerView;->mItemAnimator:Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/RecyclerView$2;->this$0:Lgbsdk/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lgbsdk/android/support/v7/widget/RecyclerView;->mItemAnimator:Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator;->runPendingAnimations()V

    .line 591
    :cond_0
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/RecyclerView$2;->this$0:Lgbsdk/android/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lgbsdk/android/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    return-void
.end method
