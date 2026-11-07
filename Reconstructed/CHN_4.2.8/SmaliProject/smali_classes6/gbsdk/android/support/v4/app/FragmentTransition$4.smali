.class public final Lgbsdk/android/support/v4/app/FragmentTransition$4;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/android/support/v4/app/FragmentTransition;->configureSharedElementsOrdered(Lgbsdk/android/support/v4/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Lgbsdk/android/support/v4/util/ArrayMap;Lgbsdk/android/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$finalSharedElementTransition:Ljava/lang/Object;

.field final synthetic val$fragments:Lgbsdk/android/support/v4/app/FragmentTransition$FragmentContainerTransition;

.field final synthetic val$impl:Lgbsdk/android/support/v4/app/FragmentTransitionImpl;

.field final synthetic val$inEpicenter:Landroid/graphics/Rect;

.field final synthetic val$inFragment:Lgbsdk/android/support/v4/app/Fragment;

.field final synthetic val$inIsPop:Z

.field final synthetic val$nameOverrides:Lgbsdk/android/support/v4/util/ArrayMap;

.field final synthetic val$nonExistentView:Landroid/view/View;

.field final synthetic val$outFragment:Lgbsdk/android/support/v4/app/Fragment;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;

.field final synthetic val$sharedElementsOut:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v4/app/FragmentTransitionImpl;Lgbsdk/android/support/v4/util/ArrayMap;Ljava/lang/Object;Lgbsdk/android/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Lgbsdk/android/support/v4/app/Fragment;Lgbsdk/android/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .line 734
    iput-object p1, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$impl:Lgbsdk/android/support/v4/app/FragmentTransitionImpl;

    iput-object p2, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$nameOverrides:Lgbsdk/android/support/v4/util/ArrayMap;

    iput-object p3, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    iput-object p4, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$fragments:Lgbsdk/android/support/v4/app/FragmentTransition$FragmentContainerTransition;

    iput-object p5, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p6, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    iput-object p7, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$inFragment:Lgbsdk/android/support/v4/app/Fragment;

    iput-object p8, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$outFragment:Lgbsdk/android/support/v4/app/Fragment;

    iput-boolean p9, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$inIsPop:Z

    iput-object p10, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$sharedElementsOut:Ljava/util/ArrayList;

    iput-object p11, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    iput-object p12, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$inEpicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 737
    iget-object v0, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$impl:Lgbsdk/android/support/v4/app/FragmentTransitionImpl;

    iget-object v1, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$nameOverrides:Lgbsdk/android/support/v4/util/ArrayMap;

    iget-object v2, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    iget-object v3, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$fragments:Lgbsdk/android/support/v4/app/FragmentTransition$FragmentContainerTransition;

    invoke-static {v0, v1, v2, v3}, Lgbsdk/android/support/v4/app/FragmentTransition;->captureInSharedElements(Lgbsdk/android/support/v4/app/FragmentTransitionImpl;Lgbsdk/android/support/v4/util/ArrayMap;Ljava/lang/Object;Lgbsdk/android/support/v4/app/FragmentTransition$FragmentContainerTransition;)Lgbsdk/android/support/v4/util/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v1, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lgbsdk/android/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 742
    iget-object v1, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    iget-object v2, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    :cond_0
    iget-object v1, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$inFragment:Lgbsdk/android/support/v4/app/Fragment;

    iget-object v2, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$outFragment:Lgbsdk/android/support/v4/app/Fragment;

    iget-boolean v3, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$inIsPop:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lgbsdk/android/support/v4/app/FragmentTransition;->callSharedElementStartEnd(Lgbsdk/android/support/v4/app/Fragment;Lgbsdk/android/support/v4/app/Fragment;ZLgbsdk/android/support/v4/util/ArrayMap;Z)V

    .line 747
    iget-object v1, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 748
    iget-object v2, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$impl:Lgbsdk/android/support/v4/app/FragmentTransitionImpl;

    iget-object v3, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$sharedElementsOut:Ljava/util/ArrayList;

    iget-object v4, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3, v4}, Lgbsdk/android/support/v4/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 752
    iget-object v1, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$fragments:Lgbsdk/android/support/v4/app/FragmentTransition$FragmentContainerTransition;

    iget-object v2, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    iget-boolean v3, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$inIsPop:Z

    invoke-static {v0, v1, v2, v3}, Lgbsdk/android/support/v4/app/FragmentTransition;->getInEpicenterView(Lgbsdk/android/support/v4/util/ArrayMap;Lgbsdk/android/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 755
    iget-object v1, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$impl:Lgbsdk/android/support/v4/app/FragmentTransitionImpl;

    iget-object v2, p0, Lgbsdk/android/support/v4/app/FragmentTransition$4;->val$inEpicenter:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lgbsdk/android/support/v4/app/FragmentTransitionImpl;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
