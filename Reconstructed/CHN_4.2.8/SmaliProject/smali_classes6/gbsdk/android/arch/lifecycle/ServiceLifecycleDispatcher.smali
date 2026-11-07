.class public Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;
.super Ljava/lang/Object;
.source "ServiceLifecycleDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLastDispatchRunnable:Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

.field private final mRegistry:Lgbsdk/android/arch/lifecycle/LifecycleRegistry;


# direct methods
.method public constructor <init>(Lgbsdk/android/arch/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lgbsdk/android/arch/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p1}, Lgbsdk/android/arch/lifecycle/LifecycleRegistry;-><init>(Lgbsdk/android/arch/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;->mRegistry:Lgbsdk/android/arch/lifecycle/LifecycleRegistry;

    .line 39
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private postDispatchRunnable(Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;->mLastDispatchRunnable:Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->run()V

    .line 46
    :cond_0
    new-instance v0, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    iget-object v1, p0, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;->mRegistry:Lgbsdk/android/arch/lifecycle/LifecycleRegistry;

    invoke-direct {v0, v1, p1}, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;-><init>(Lgbsdk/android/arch/lifecycle/LifecycleRegistry;Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)V

    iput-object v0, p0, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;->mLastDispatchRunnable:Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    .line 47
    iget-object p1, p0, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getLifecycle()Lgbsdk/android/arch/lifecycle/Lifecycle;
    .locals 1

    .line 87
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;->mRegistry:Lgbsdk/android/arch/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method public onServicePreSuperOnBind()V
    .locals 1

    .line 62
    sget-object v0, Lgbsdk/android/arch/lifecycle/Lifecycle$Event;->ON_START:Lgbsdk/android/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onServicePreSuperOnCreate()V
    .locals 1

    .line 54
    sget-object v0, Lgbsdk/android/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Lgbsdk/android/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onServicePreSuperOnDestroy()V
    .locals 1

    .line 79
    sget-object v0, Lgbsdk/android/arch/lifecycle/Lifecycle$Event;->ON_STOP:Lgbsdk/android/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)V

    .line 80
    sget-object v0, Lgbsdk/android/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Lgbsdk/android/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onServicePreSuperOnStart()V
    .locals 1

    .line 71
    sget-object v0, Lgbsdk/android/arch/lifecycle/Lifecycle$Event;->ON_START:Lgbsdk/android/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method
