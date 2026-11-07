.class public final Lgbsdk/android/support/v4/app/FragmentTransition$3;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/android/support/v4/app/FragmentTransition;->configureSharedElementsReordered(Lgbsdk/android/support/v4/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Lgbsdk/android/support/v4/util/ArrayMap;Lgbsdk/android/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$epicenter:Landroid/graphics/Rect;

.field final synthetic val$epicenterView:Landroid/view/View;

.field final synthetic val$impl:Lgbsdk/android/support/v4/app/FragmentTransitionImpl;

.field final synthetic val$inFragment:Lgbsdk/android/support/v4/app/Fragment;

.field final synthetic val$inIsPop:Z

.field final synthetic val$inSharedElements:Lgbsdk/android/support/v4/util/ArrayMap;

.field final synthetic val$outFragment:Lgbsdk/android/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v4/app/Fragment;Lgbsdk/android/support/v4/app/Fragment;ZLgbsdk/android/support/v4/util/ArrayMap;Landroid/view/View;Lgbsdk/android/support/v4/app/FragmentTransitionImpl;Landroid/graphics/Rect;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lgbsdk/android/support/v4/app/FragmentTransition$3;->val$inFragment:Lgbsdk/android/support/v4/app/Fragment;

    iput-object p2, p0, Lgbsdk/android/support/v4/app/FragmentTransition$3;->val$outFragment:Lgbsdk/android/support/v4/app/Fragment;

    iput-boolean p3, p0, Lgbsdk/android/support/v4/app/FragmentTransition$3;->val$inIsPop:Z

    iput-object p4, p0, Lgbsdk/android/support/v4/app/FragmentTransition$3;->val$inSharedElements:Lgbsdk/android/support/v4/util/ArrayMap;

    iput-object p5, p0, Lgbsdk/android/support/v4/app/FragmentTransition$3;->val$epicenterView:Landroid/view/View;

    iput-object p6, p0, Lgbsdk/android/support/v4/app/FragmentTransition$3;->val$impl:Lgbsdk/android/support/v4/app/FragmentTransitionImpl;

    iput-object p7, p0, Lgbsdk/android/support/v4/app/FragmentTransition$3;->val$epicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 625
    iget-object v0, p0, Lgbsdk/android/support/v4/app/FragmentTransition$3;->val$inFragment:Lgbsdk/android/support/v4/app/Fragment;

    iget-object v1, p0, Lgbsdk/android/support/v4/app/FragmentTransition$3;->val$outFragment:Lgbsdk/android/support/v4/app/Fragment;

    iget-boolean v2, p0, Lgbsdk/android/support/v4/app/FragmentTransition$3;->val$inIsPop:Z

    iget-object v3, p0, Lgbsdk/android/support/v4/app/FragmentTransition$3;->val$inSharedElements:Lgbsdk/android/support/v4/util/ArrayMap;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lgbsdk/android/support/v4/app/FragmentTransition;->callSharedElementStartEnd(Lgbsdk/android/support/v4/app/Fragment;Lgbsdk/android/support/v4/app/Fragment;ZLgbsdk/android/support/v4/util/ArrayMap;Z)V

    .line 627
    iget-object v0, p0, Lgbsdk/android/support/v4/app/FragmentTransition$3;->val$epicenterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 628
    iget-object v1, p0, Lgbsdk/android/support/v4/app/FragmentTransition$3;->val$impl:Lgbsdk/android/support/v4/app/FragmentTransitionImpl;

    iget-object v2, p0, Lgbsdk/android/support/v4/app/FragmentTransition$3;->val$epicenter:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lgbsdk/android/support/v4/app/FragmentTransitionImpl;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
