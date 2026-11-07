.class public Lgbsdk/android/arch/lifecycle/LifecycleDispatcher;
.super Ljava/lang/Object;
.source "LifecycleDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/android/arch/lifecycle/LifecycleDispatcher$FragmentCallback;,
        Lgbsdk/android/arch/lifecycle/LifecycleDispatcher$DestructionReportFragment;,
        Lgbsdk/android/arch/lifecycle/LifecycleDispatcher$DispatcherActivityCallback;
    }
.end annotation


# static fields
.field private static final REPORT_FRAGMENT_TAG:Ljava/lang/String; = "gbsdk.android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag"

.field private static sInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lgbsdk/android/arch/lifecycle/LifecycleDispatcher;->sInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatchIfLifecycleOwner(Lgbsdk/android/support/v4/app/Fragment;Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 149
    instance-of v0, p0, Lgbsdk/android/arch/lifecycle/LifecycleRegistryOwner;

    if-eqz v0, :cond_0

    .line 150
    check-cast p0, Lgbsdk/android/arch/lifecycle/LifecycleRegistryOwner;

    invoke-interface {p0}, Lgbsdk/android/arch/lifecycle/LifecycleRegistryOwner;->getLifecycle()Lgbsdk/android/arch/lifecycle/LifecycleRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lgbsdk/android/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)V

    :cond_0
    return-void
.end method

.method static init(Landroid/content/Context;)V
    .locals 2

    .line 55
    sget-object v0, Lgbsdk/android/arch/lifecycle/LifecycleDispatcher;->sInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    new-instance v0, Lgbsdk/android/arch/lifecycle/LifecycleDispatcher$DispatcherActivityCallback;

    invoke-direct {v0}, Lgbsdk/android/arch/lifecycle/LifecycleDispatcher$DispatcherActivityCallback;-><init>()V

    .line 59
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static markState(Lgbsdk/android/support/v4/app/FragmentActivity;Lgbsdk/android/arch/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 144
    invoke-static {p0, p1}, Lgbsdk/android/arch/lifecycle/LifecycleDispatcher;->markStateIn(Ljava/lang/Object;Lgbsdk/android/arch/lifecycle/Lifecycle$State;)V

    .line 145
    invoke-virtual {p0}, Lgbsdk/android/support/v4/app/FragmentActivity;->getSupportFragmentManager()Lgbsdk/android/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-static {p0, p1}, Lgbsdk/android/arch/lifecycle/LifecycleDispatcher;->markState(Lgbsdk/android/support/v4/app/FragmentManager;Lgbsdk/android/arch/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method private static markState(Lgbsdk/android/support/v4/app/FragmentManager;Lgbsdk/android/arch/lifecycle/Lifecycle$State;)V
    .locals 2

    .line 121
    invoke-virtual {p0}, Lgbsdk/android/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/android/support/v4/app/Fragment;

    if-nez v0, :cond_2

    goto :goto_0

    .line 129
    :cond_2
    invoke-static {v0, p1}, Lgbsdk/android/arch/lifecycle/LifecycleDispatcher;->markStateIn(Ljava/lang/Object;Lgbsdk/android/arch/lifecycle/Lifecycle$State;)V

    .line 130
    invoke-virtual {v0}, Lgbsdk/android/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {v0}, Lgbsdk/android/support/v4/app/Fragment;->getChildFragmentManager()Lgbsdk/android/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lgbsdk/android/arch/lifecycle/LifecycleDispatcher;->markState(Lgbsdk/android/support/v4/app/FragmentManager;Lgbsdk/android/arch/lifecycle/Lifecycle$State;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static markStateIn(Ljava/lang/Object;Lgbsdk/android/arch/lifecycle/Lifecycle$State;)V
    .locals 1

    .line 137
    instance-of v0, p0, Lgbsdk/android/arch/lifecycle/LifecycleRegistryOwner;

    if-eqz v0, :cond_0

    .line 138
    check-cast p0, Lgbsdk/android/arch/lifecycle/LifecycleRegistryOwner;

    invoke-interface {p0}, Lgbsdk/android/arch/lifecycle/LifecycleRegistryOwner;->getLifecycle()Lgbsdk/android/arch/lifecycle/LifecycleRegistry;

    move-result-object p0

    .line 139
    invoke-virtual {p0, p1}, Lgbsdk/android/arch/lifecycle/LifecycleRegistry;->markState(Lgbsdk/android/arch/lifecycle/Lifecycle$State;)V

    :cond_0
    return-void
.end method
