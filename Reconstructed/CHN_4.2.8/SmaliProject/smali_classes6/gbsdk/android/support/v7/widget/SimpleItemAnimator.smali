.class public abstract Lgbsdk/android/support/v7/widget/SimpleItemAnimator;
.super Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator;
.source "SimpleItemAnimator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimpleItemAnimator"


# instance fields
.field mSupportsChangeAnimations:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lgbsdk/android/support/v7/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return-void
.end method


# virtual methods
.method public abstract animateAdd(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)Z
.end method

.method public animateAppearance(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 8

    if-eqz p2, :cond_1

    .line 114
    iget v0, p2, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v1, p3, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v1, p3, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v0, v1, :cond_1

    .line 120
    :cond_0
    iget v4, p2, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v5, p2, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v6, p3, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v7, p3, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lgbsdk/android/support/v7/widget/SimpleItemAnimator;->animateMove(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    return p1

    .line 126
    :cond_1
    invoke-virtual {p0, p1}, Lgbsdk/android/support/v7/widget/SimpleItemAnimator;->animateAdd(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public abstract animateChange(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public animateChange(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 7

    .line 151
    iget v3, p3, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 152
    iget v4, p3, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 154
    invoke-virtual {p2}, Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget p4, p3, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 156
    iget p3, p3, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v6, p3

    move v5, p4

    goto :goto_0

    .line 158
    :cond_0
    iget p3, p4, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 159
    iget p4, p4, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v5, p3

    move v6, p4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 161
    invoke-virtual/range {v0 .. v6}, Lgbsdk/android/support/v7/widget/SimpleItemAnimator;->animateChange(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    return p1
.end method

.method public animateDisappearance(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 6

    .line 90
    iget v2, p2, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 91
    iget v3, p2, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 92
    iget-object p2, p1, Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez p3, :cond_0

    .line 93
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p3, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    :goto_0
    move v4, v0

    if-nez p3, :cond_1

    .line 94
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    goto :goto_1

    :cond_1
    iget p3, p3, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    :goto_1
    move v5, p3

    .line 95
    invoke-virtual {p1}, Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result p3

    if-nez p3, :cond_3

    if-ne v2, v4, :cond_2

    if-eq v3, v5, :cond_3

    .line 97
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v4

    .line 98
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    .line 96
    invoke-virtual {p2, v4, v5, p3, v0}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p1

    .line 102
    invoke-virtual/range {v0 .. v5}, Lgbsdk/android/support/v7/widget/SimpleItemAnimator;->animateMove(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    return p1

    .line 107
    :cond_3
    invoke-virtual {p0, p1}, Lgbsdk/android/support/v7/widget/SimpleItemAnimator;->animateRemove(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public abstract animateMove(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public animatePersistence(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 6

    .line 133
    iget v0, p2, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v1, p3, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v0, v1, :cond_1

    iget v0, p2, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v1, p3, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0, p1}, Lgbsdk/android/support/v7/widget/SimpleItemAnimator;->dispatchMoveFinished(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    return p1

    .line 138
    :cond_1
    :goto_0
    iget v2, p2, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v3, p2, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v4, p3, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v5, p3, Lgbsdk/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lgbsdk/android/support/v7/widget/SimpleItemAnimator;->animateMove(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    return p1
.end method

.method public abstract animateRemove(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)Z
.end method

.method public canReuseUpdatedViewHolder(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lgbsdk/android/support/v7/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final dispatchAddFinished(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lgbsdk/android/support/v7/widget/SimpleItemAnimator;->onAddFinished(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 302
    invoke-virtual {p0, p1}, Lgbsdk/android/support/v7/widget/SimpleItemAnimator;->dispatchAnimationFinished(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchAddStarting(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 344
    invoke-virtual {p0, p1}, Lgbsdk/android/support/v7/widget/SimpleItemAnimator;->onAddStarting(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchChangeFinished(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    .line 316
    invoke-virtual {p0, p1, p2}, Lgbsdk/android/support/v7/widget/SimpleItemAnimator;->onChangeFinished(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 317
    invoke-virtual {p0, p1}, Lgbsdk/android/support/v7/widget/SimpleItemAnimator;->dispatchAnimationFinished(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchChangeStarting(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    .line 357
    invoke-virtual {p0, p1, p2}, Lgbsdk/android/support/v7/widget/SimpleItemAnimator;->onChangeStarting(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method

.method public final dispatchMoveFinished(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 291
    invoke-virtual {p0, p1}, Lgbsdk/android/support/v7/widget/SimpleItemAnimator;->onMoveFinished(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 292
    invoke-virtual {p0, p1}, Lgbsdk/android/support/v7/widget/SimpleItemAnimator;->dispatchAnimationFinished(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchMoveStarting(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 335
    invoke-virtual {p0, p1}, Lgbsdk/android/support/v7/widget/SimpleItemAnimator;->onMoveStarting(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchRemoveFinished(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 276
    invoke-virtual {p0, p1}, Lgbsdk/android/support/v7/widget/SimpleItemAnimator;->onRemoveFinished(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 277
    invoke-virtual {p0, p1}, Lgbsdk/android/support/v7/widget/SimpleItemAnimator;->dispatchAnimationFinished(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchRemoveStarting(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 326
    invoke-virtual {p0, p1}, Lgbsdk/android/support/v7/widget/SimpleItemAnimator;->onRemoveStarting(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public getSupportsChangeAnimations()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lgbsdk/android/support/v7/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return v0
.end method

.method public onAddFinished(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onAddStarting(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onChangeFinished(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    return-void
.end method

.method public onChangeStarting(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    return-void
.end method

.method public onMoveFinished(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onMoveStarting(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onRemoveFinished(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onRemoveStarting(Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public setSupportsChangeAnimations(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lgbsdk/android/support/v7/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return-void
.end method
