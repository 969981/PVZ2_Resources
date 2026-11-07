.class public abstract Lgbsdk/android/support/v4/app/FragmentTransaction;
.super Ljava/lang/Object;
.source "FragmentTransaction.java"


# static fields
.field public static final TRANSIT_ENTER_MASK:I = 0x1000

.field public static final TRANSIT_EXIT_MASK:I = 0x2000

.field public static final TRANSIT_FRAGMENT_CLOSE:I = 0x2002

.field public static final TRANSIT_FRAGMENT_FADE:I = 0x1003

.field public static final TRANSIT_FRAGMENT_OPEN:I = 0x1001

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_UNSET:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(ILgbsdk/android/support/v4/app/Fragment;)Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method

.method public abstract add(ILgbsdk/android/support/v4/app/Fragment;Ljava/lang/String;)Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method

.method public abstract add(Lgbsdk/android/support/v4/app/Fragment;Ljava/lang/String;)Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method

.method public abstract addSharedElement(Landroid/view/View;Ljava/lang/String;)Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method

.method public abstract addToBackStack(Ljava/lang/String;)Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method

.method public abstract attach(Lgbsdk/android/support/v4/app/Fragment;)Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method

.method public abstract commit()I
.end method

.method public abstract commitAllowingStateLoss()I
.end method

.method public abstract commitNow()V
.end method

.method public abstract commitNowAllowingStateLoss()V
.end method

.method public abstract detach(Lgbsdk/android/support/v4/app/Fragment;)Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method

.method public abstract disallowAddToBackStack()Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method

.method public abstract hide(Lgbsdk/android/support/v4/app/Fragment;)Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method

.method public abstract isAddToBackStackAllowed()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract remove(Lgbsdk/android/support/v4/app/Fragment;)Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method

.method public abstract replace(ILgbsdk/android/support/v4/app/Fragment;)Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method

.method public abstract replace(ILgbsdk/android/support/v4/app/Fragment;Ljava/lang/String;)Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method

.method public abstract runOnCommit(Ljava/lang/Runnable;)Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method

.method public abstract setAllowOptimization(Z)Lgbsdk/android/support/v4/app/FragmentTransaction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setBreadCrumbShortTitle(I)Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method

.method public abstract setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method

.method public abstract setBreadCrumbTitle(I)Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method

.method public abstract setBreadCrumbTitle(Ljava/lang/CharSequence;)Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method

.method public abstract setCustomAnimations(II)Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method

.method public abstract setCustomAnimations(IIII)Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method

.method public abstract setPrimaryNavigationFragment(Lgbsdk/android/support/v4/app/Fragment;)Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method

.method public abstract setReorderingAllowed(Z)Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method

.method public abstract setTransition(I)Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method

.method public abstract setTransitionStyle(I)Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method

.method public abstract show(Lgbsdk/android/support/v4/app/Fragment;)Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method
