.class public Lgbsdk/android/arch/lifecycle/LiveData$LifecycleBoundObserver;
.super Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;
.source "LiveData.java"

# interfaces
.implements Lgbsdk/android/arch/lifecycle/GenericLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgbsdk/android/arch/lifecycle/LiveData<",
        "TT;>.ObserverWrapper;",
        "Lgbsdk/android/arch/lifecycle/GenericLifecycleObserver;"
    }
.end annotation


# instance fields
.field final mOwner:Lgbsdk/android/arch/lifecycle/LifecycleOwner;

.field final synthetic this$0:Lgbsdk/android/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Lgbsdk/android/arch/lifecycle/LiveData;Lgbsdk/android/arch/lifecycle/LifecycleOwner;Lgbsdk/android/arch/lifecycle/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/android/arch/lifecycle/LifecycleOwner;",
            "Lgbsdk/android/arch/lifecycle/Observer<",
            "TT;>;)V"
        }
    .end annotation

    .line 352
    iput-object p1, p0, Lgbsdk/android/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Lgbsdk/android/arch/lifecycle/LiveData;

    .line 353
    invoke-direct {p0, p1, p3}, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;-><init>(Lgbsdk/android/arch/lifecycle/LiveData;Lgbsdk/android/arch/lifecycle/Observer;)V

    .line 354
    iput-object p2, p0, Lgbsdk/android/arch/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Lgbsdk/android/arch/lifecycle/LifecycleOwner;

    return-void
.end method


# virtual methods
.method detachObserver()V
    .locals 1

    .line 378
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Lgbsdk/android/arch/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Lgbsdk/android/arch/lifecycle/LifecycleOwner;->getLifecycle()Lgbsdk/android/arch/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgbsdk/android/arch/lifecycle/Lifecycle;->removeObserver(Lgbsdk/android/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method isAttachedTo(Lgbsdk/android/arch/lifecycle/LifecycleOwner;)Z
    .locals 1

    .line 373
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Lgbsdk/android/arch/lifecycle/LifecycleOwner;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStateChanged(Lgbsdk/android/arch/lifecycle/LifecycleOwner;Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 364
    iget-object p1, p0, Lgbsdk/android/arch/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Lgbsdk/android/arch/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Lgbsdk/android/arch/lifecycle/LifecycleOwner;->getLifecycle()Lgbsdk/android/arch/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1}, Lgbsdk/android/arch/lifecycle/Lifecycle;->getCurrentState()Lgbsdk/android/arch/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object p2, Lgbsdk/android/arch/lifecycle/Lifecycle$State;->DESTROYED:Lgbsdk/android/arch/lifecycle/Lifecycle$State;

    if-ne p1, p2, :cond_0

    .line 365
    iget-object p1, p0, Lgbsdk/android/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Lgbsdk/android/arch/lifecycle/LiveData;

    iget-object p2, p0, Lgbsdk/android/arch/lifecycle/LiveData$LifecycleBoundObserver;->mObserver:Lgbsdk/android/arch/lifecycle/Observer;

    invoke-virtual {p1, p2}, Lgbsdk/android/arch/lifecycle/LiveData;->removeObserver(Lgbsdk/android/arch/lifecycle/Observer;)V

    return-void

    .line 368
    :cond_0
    invoke-virtual {p0}, Lgbsdk/android/arch/lifecycle/LiveData$LifecycleBoundObserver;->shouldBeActive()Z

    move-result p1

    invoke-virtual {p0, p1}, Lgbsdk/android/arch/lifecycle/LiveData$LifecycleBoundObserver;->activeStateChanged(Z)V

    return-void
.end method

.method shouldBeActive()Z
    .locals 2

    .line 359
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Lgbsdk/android/arch/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Lgbsdk/android/arch/lifecycle/LifecycleOwner;->getLifecycle()Lgbsdk/android/arch/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/android/arch/lifecycle/Lifecycle;->getCurrentState()Lgbsdk/android/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Lgbsdk/android/arch/lifecycle/Lifecycle$State;->STARTED:Lgbsdk/android/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Lgbsdk/android/arch/lifecycle/Lifecycle$State;->isAtLeast(Lgbsdk/android/arch/lifecycle/Lifecycle$State;)Z

    move-result v0

    return v0
.end method
