.class public final Lgbsdk/android/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v4/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FragmentLifecycleCallbacksHolder"
.end annotation


# instance fields
.field final mCallback:Lgbsdk/android/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

.field final mRecursive:Z


# direct methods
.method constructor <init>(Lgbsdk/android/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .locals 0

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    iput-object p1, p0, Lgbsdk/android/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Lgbsdk/android/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    .line 678
    iput-boolean p2, p0, Lgbsdk/android/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    return-void
.end method
