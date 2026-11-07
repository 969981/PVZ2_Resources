.class public Lgbsdk/android/arch/lifecycle/LifecycleService;
.super Landroid/app/Service;
.source "LifecycleService.java"

# interfaces
.implements Lgbsdk/android/arch/lifecycle/LifecycleOwner;


# instance fields
.field private final mDispatcher:Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    new-instance v0, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;

    invoke-direct {v0, p0}, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;-><init>(Lgbsdk/android/arch/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lgbsdk/android/arch/lifecycle/LifecycleService;->mDispatcher:Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;

    return-void
.end method


# virtual methods
.method public getLifecycle()Lgbsdk/android/arch/lifecycle/Lifecycle;
    .locals 1

    .line 74
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/LifecycleService;->mDispatcher:Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;->getLifecycle()Lgbsdk/android/arch/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 43
    iget-object p1, p0, Lgbsdk/android/arch/lifecycle/LifecycleService;->mDispatcher:Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {p1}, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnBind()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 35
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/LifecycleService;->mDispatcher:Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnCreate()V

    .line 36
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 68
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/LifecycleService;->mDispatcher:Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnDestroy()V

    .line 69
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/LifecycleService;->mDispatcher:Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnStart()V

    .line 52
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 62
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
