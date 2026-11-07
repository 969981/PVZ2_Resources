.class public Lgbsdk/android/arch/lifecycle/LifecycleDispatcher$FragmentCallback;
.super Lgbsdk/android/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
.source "LifecycleDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/arch/lifecycle/LifecycleDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Lgbsdk/android/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentCreated(Lgbsdk/android/support/v4/app/FragmentManager;Lgbsdk/android/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 0

    .line 160
    sget-object p1, Lgbsdk/android/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Lgbsdk/android/arch/lifecycle/Lifecycle$Event;

    invoke-static {p2, p1}, Lgbsdk/android/arch/lifecycle/LifecycleDispatcher;->dispatchIfLifecycleOwner(Lgbsdk/android/support/v4/app/Fragment;Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)V

    .line 162
    instance-of p1, p2, Lgbsdk/android/arch/lifecycle/LifecycleRegistryOwner;

    if-nez p1, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-virtual {p2}, Lgbsdk/android/support/v4/app/Fragment;->getChildFragmentManager()Lgbsdk/android/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p3, "gbsdk.android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p1, p3}, Lgbsdk/android/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Lgbsdk/android/support/v4/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_1

    .line 167
    invoke-virtual {p2}, Lgbsdk/android/support/v4/app/Fragment;->getChildFragmentManager()Lgbsdk/android/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Lgbsdk/android/support/v4/app/FragmentManager;->beginTransaction()Lgbsdk/android/support/v4/app/FragmentTransaction;

    move-result-object p1

    new-instance p2, Lgbsdk/android/arch/lifecycle/LifecycleDispatcher$DestructionReportFragment;

    invoke-direct {p2}, Lgbsdk/android/arch/lifecycle/LifecycleDispatcher$DestructionReportFragment;-><init>()V

    invoke-virtual {p1, p2, p3}, Lgbsdk/android/support/v4/app/FragmentTransaction;->add(Lgbsdk/android/support/v4/app/Fragment;Ljava/lang/String;)Lgbsdk/android/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 168
    invoke-virtual {p1}, Lgbsdk/android/support/v4/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method public onFragmentResumed(Lgbsdk/android/support/v4/app/FragmentManager;Lgbsdk/android/support/v4/app/Fragment;)V
    .locals 0

    .line 179
    sget-object p1, Lgbsdk/android/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Lgbsdk/android/arch/lifecycle/Lifecycle$Event;

    invoke-static {p2, p1}, Lgbsdk/android/arch/lifecycle/LifecycleDispatcher;->dispatchIfLifecycleOwner(Lgbsdk/android/support/v4/app/Fragment;Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onFragmentStarted(Lgbsdk/android/support/v4/app/FragmentManager;Lgbsdk/android/support/v4/app/Fragment;)V
    .locals 0

    .line 174
    sget-object p1, Lgbsdk/android/arch/lifecycle/Lifecycle$Event;->ON_START:Lgbsdk/android/arch/lifecycle/Lifecycle$Event;

    invoke-static {p2, p1}, Lgbsdk/android/arch/lifecycle/LifecycleDispatcher;->dispatchIfLifecycleOwner(Lgbsdk/android/support/v4/app/Fragment;Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method
