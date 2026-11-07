.class public abstract Lgbsdk/android/support/v4/app/FragmentManager;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/android/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;,
        Lgbsdk/android/support/v4/app/FragmentManager$OnBackStackChangedListener;,
        Lgbsdk/android/support/v4/app/FragmentManager$BackStackEntry;
    }
.end annotation


# static fields
.field public static final POP_BACK_STACK_INCLUSIVE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableDebugLogging(Z)V
    .locals 0

    .line 446
    sput-boolean p0, Lgbsdk/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    return-void
.end method


# virtual methods
.method public abstract addOnBackStackChangedListener(Lgbsdk/android/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
.end method

.method public abstract beginTransaction()Lgbsdk/android/support/v4/app/FragmentTransaction;
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract executePendingTransactions()Z
.end method

.method public abstract findFragmentById(I)Lgbsdk/android/support/v4/app/Fragment;
.end method

.method public abstract findFragmentByTag(Ljava/lang/String;)Lgbsdk/android/support/v4/app/Fragment;
.end method

.method public abstract getBackStackEntryAt(I)Lgbsdk/android/support/v4/app/FragmentManager$BackStackEntry;
.end method

.method public abstract getBackStackEntryCount()I
.end method

.method public abstract getFragment(Landroid/os/Bundle;Ljava/lang/String;)Lgbsdk/android/support/v4/app/Fragment;
.end method

.method public abstract getFragments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgbsdk/android/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryNavigationFragment()Lgbsdk/android/support/v4/app/Fragment;
.end method

.method public abstract isDestroyed()Z
.end method

.method public abstract isStateSaved()Z
.end method

.method public openTransaction()Lgbsdk/android/support/v4/app/FragmentTransaction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    invoke-virtual {p0}, Lgbsdk/android/support/v4/app/FragmentManager;->beginTransaction()Lgbsdk/android/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public abstract popBackStack()V
.end method

.method public abstract popBackStack(II)V
.end method

.method public abstract popBackStack(Ljava/lang/String;I)V
.end method

.method public abstract popBackStackImmediate()Z
.end method

.method public abstract popBackStackImmediate(II)Z
.end method

.method public abstract popBackStackImmediate(Ljava/lang/String;I)Z
.end method

.method public abstract putFragment(Landroid/os/Bundle;Ljava/lang/String;Lgbsdk/android/support/v4/app/Fragment;)V
.end method

.method public abstract registerFragmentLifecycleCallbacks(Lgbsdk/android/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
.end method

.method public abstract removeOnBackStackChangedListener(Lgbsdk/android/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
.end method

.method public abstract saveFragmentInstanceState(Lgbsdk/android/support/v4/app/Fragment;)Lgbsdk/android/support/v4/app/Fragment$SavedState;
.end method

.method public abstract unregisterFragmentLifecycleCallbacks(Lgbsdk/android/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;)V
.end method
