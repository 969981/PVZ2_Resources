.class public Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;
.super Ljava/lang/Object;
.source "ServiceLifecycleDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DispatchRunnable"
.end annotation


# instance fields
.field final mEvent:Lgbsdk/android/arch/lifecycle/Lifecycle$Event;

.field private final mRegistry:Lgbsdk/android/arch/lifecycle/LifecycleRegistry;

.field private mWasExecuted:Z


# direct methods
.method constructor <init>(Lgbsdk/android/arch/lifecycle/LifecycleRegistry;Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mWasExecuted:Z

    .line 96
    iput-object p1, p0, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mRegistry:Lgbsdk/android/arch/lifecycle/LifecycleRegistry;

    .line 97
    iput-object p2, p0, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mEvent:Lgbsdk/android/arch/lifecycle/Lifecycle$Event;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 102
    iget-boolean v0, p0, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mWasExecuted:Z

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mRegistry:Lgbsdk/android/arch/lifecycle/LifecycleRegistry;

    iget-object v1, p0, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mEvent:Lgbsdk/android/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lgbsdk/android/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lgbsdk/android/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mWasExecuted:Z

    :cond_0
    return-void
.end method
