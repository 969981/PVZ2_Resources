.class public Lgbsdk/android/arch/lifecycle/LifecycleDispatcher$DispatcherActivityCallback;
.super Lgbsdk/android/arch/lifecycle/EmptyActivityLifecycleCallbacks;
.source "LifecycleDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/arch/lifecycle/LifecycleDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DispatcherActivityCallback"
.end annotation


# instance fields
.field private final mFragmentCallback:Lgbsdk/android/arch/lifecycle/LifecycleDispatcher$FragmentCallback;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lgbsdk/android/arch/lifecycle/EmptyActivityLifecycleCallbacks;-><init>()V

    .line 68
    new-instance v0, Lgbsdk/android/arch/lifecycle/LifecycleDispatcher$FragmentCallback;

    invoke-direct {v0}, Lgbsdk/android/arch/lifecycle/LifecycleDispatcher$FragmentCallback;-><init>()V

    iput-object v0, p0, Lgbsdk/android/arch/lifecycle/LifecycleDispatcher$DispatcherActivityCallback;->mFragmentCallback:Lgbsdk/android/arch/lifecycle/LifecycleDispatcher$FragmentCallback;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 73
    instance-of p2, p1, Lgbsdk/android/support/v4/app/FragmentActivity;

    if-eqz p2, :cond_0

    .line 74
    move-object p2, p1

    check-cast p2, Lgbsdk/android/support/v4/app/FragmentActivity;

    invoke-virtual {p2}, Lgbsdk/android/support/v4/app/FragmentActivity;->getSupportFragmentManager()Lgbsdk/android/support/v4/app/FragmentManager;

    move-result-object p2

    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/LifecycleDispatcher$DispatcherActivityCallback;->mFragmentCallback:Lgbsdk/android/arch/lifecycle/LifecycleDispatcher$FragmentCallback;

    const/4 v1, 0x1

    .line 75
    invoke-virtual {p2, v0, v1}, Lgbsdk/android/support/v4/app/FragmentManager;->registerFragmentLifecycleCallbacks(Lgbsdk/android/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    .line 77
    :cond_0
    invoke-static {p1}, Lgbsdk/android/arch/lifecycle/ReportFragment;->injectIfNeededIn(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 89
    instance-of p2, p1, Lgbsdk/android/support/v4/app/FragmentActivity;

    if-eqz p2, :cond_0

    .line 90
    check-cast p1, Lgbsdk/android/support/v4/app/FragmentActivity;

    sget-object p2, Lgbsdk/android/arch/lifecycle/Lifecycle$State;->CREATED:Lgbsdk/android/arch/lifecycle/Lifecycle$State;

    invoke-static {p1, p2}, Lgbsdk/android/arch/lifecycle/LifecycleDispatcher;->markState(Lgbsdk/android/support/v4/app/FragmentActivity;Lgbsdk/android/arch/lifecycle/Lifecycle$State;)V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 82
    instance-of v0, p1, Lgbsdk/android/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 83
    check-cast p1, Lgbsdk/android/support/v4/app/FragmentActivity;

    sget-object v0, Lgbsdk/android/arch/lifecycle/Lifecycle$State;->CREATED:Lgbsdk/android/arch/lifecycle/Lifecycle$State;

    invoke-static {p1, v0}, Lgbsdk/android/arch/lifecycle/LifecycleDispatcher;->markState(Lgbsdk/android/support/v4/app/FragmentActivity;Lgbsdk/android/arch/lifecycle/Lifecycle$State;)V

    :cond_0
    return-void
.end method
