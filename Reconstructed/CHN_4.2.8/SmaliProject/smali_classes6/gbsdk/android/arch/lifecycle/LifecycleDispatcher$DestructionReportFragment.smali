.class public Lgbsdk/android/arch/lifecycle/LifecycleDispatcher$DestructionReportFragment;
.super Lgbsdk/android/support/v4/app/Fragment;
.source "LifecycleDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/arch/lifecycle/LifecycleDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DestructionReportFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Lgbsdk/android/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected dispatch(Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 116
    invoke-virtual {p0}, Lgbsdk/android/arch/lifecycle/LifecycleDispatcher$DestructionReportFragment;->getParentFragment()Lgbsdk/android/support/v4/app/Fragment;

    move-result-object v0

    invoke-static {v0, p1}, Lgbsdk/android/arch/lifecycle/LifecycleDispatcher;->dispatchIfLifecycleOwner(Lgbsdk/android/support/v4/app/Fragment;Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 111
    invoke-super {p0}, Lgbsdk/android/support/v4/app/Fragment;->onDestroy()V

    .line 112
    sget-object v0, Lgbsdk/android/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Lgbsdk/android/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Lgbsdk/android/arch/lifecycle/LifecycleDispatcher$DestructionReportFragment;->dispatch(Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 99
    invoke-super {p0}, Lgbsdk/android/support/v4/app/Fragment;->onPause()V

    .line 100
    sget-object v0, Lgbsdk/android/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Lgbsdk/android/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Lgbsdk/android/arch/lifecycle/LifecycleDispatcher$DestructionReportFragment;->dispatch(Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 105
    invoke-super {p0}, Lgbsdk/android/support/v4/app/Fragment;->onStop()V

    .line 106
    sget-object v0, Lgbsdk/android/arch/lifecycle/Lifecycle$Event;->ON_STOP:Lgbsdk/android/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Lgbsdk/android/arch/lifecycle/LifecycleDispatcher$DestructionReportFragment;->dispatch(Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method
