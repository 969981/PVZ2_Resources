.class public Lgbsdk/android/support/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;
.super Lgbsdk/android/support/v4/view/AccessibilityDelegateCompat;
.source "RecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v7/widget/RecyclerViewAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemDelegate"
.end annotation


# instance fields
.field final mRecyclerViewDelegate:Lgbsdk/android/support/v7/widget/RecyclerViewAccessibilityDelegate;


# direct methods
.method public constructor <init>(Lgbsdk/android/support/v7/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lgbsdk/android/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    .line 106
    iput-object p1, p0, Lgbsdk/android/support/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Lgbsdk/android/support/v7/widget/RecyclerViewAccessibilityDelegate;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgbsdk/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 111
    invoke-super {p0, p1, p2}, Lgbsdk/android/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgbsdk/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 112
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Lgbsdk/android/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgbsdk/android/support/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Lgbsdk/android/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lgbsdk/android/support/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lgbsdk/android/support/v7/widget/RecyclerView;

    .line 113
    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/RecyclerView;->getLayoutManager()Lgbsdk/android/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Lgbsdk/android/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lgbsdk/android/support/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lgbsdk/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/RecyclerView;->getLayoutManager()Lgbsdk/android/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 115
    invoke-virtual {v0, p1, p2}, Lgbsdk/android/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Lgbsdk/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 121
    invoke-super {p0, p1, p2, p3}, Lgbsdk/android/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 124
    :cond_0
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Lgbsdk/android/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lgbsdk/android/support/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Lgbsdk/android/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lgbsdk/android/support/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lgbsdk/android/support/v7/widget/RecyclerView;

    .line 125
    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/RecyclerView;->getLayoutManager()Lgbsdk/android/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Lgbsdk/android/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lgbsdk/android/support/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lgbsdk/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/RecyclerView;->getLayoutManager()Lgbsdk/android/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p1, p2, p3}, Lgbsdk/android/support/v7/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
