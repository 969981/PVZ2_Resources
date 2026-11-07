.class public Lgbsdk/android/arch/lifecycle/LifecycleRegistry$ObserverWithState;
.super Ljava/lang/Object;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/arch/lifecycle/LifecycleRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObserverWithState"
.end annotation


# instance fields
.field mLifecycleObserver:Lgbsdk/android/arch/lifecycle/GenericLifecycleObserver;

.field mState:Lgbsdk/android/arch/lifecycle/Lifecycle$State;


# direct methods
.method constructor <init>(Lgbsdk/android/arch/lifecycle/LifecycleObserver;Lgbsdk/android/arch/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    invoke-static {p1}, Lgbsdk/android/arch/lifecycle/Lifecycling;->getCallback(Ljava/lang/Object;)Lgbsdk/android/arch/lifecycle/GenericLifecycleObserver;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/android/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mLifecycleObserver:Lgbsdk/android/arch/lifecycle/GenericLifecycleObserver;

    .line 348
    iput-object p2, p0, Lgbsdk/android/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lgbsdk/android/arch/lifecycle/Lifecycle$State;

    return-void
.end method


# virtual methods
.method dispatchEvent(Lgbsdk/android/arch/lifecycle/LifecycleOwner;Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)V
    .locals 2

    .line 352
    invoke-static {p2}, Lgbsdk/android/arch/lifecycle/LifecycleRegistry;->getStateAfter(Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)Lgbsdk/android/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lgbsdk/android/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lgbsdk/android/arch/lifecycle/Lifecycle$State;

    invoke-static {v1, v0}, Lgbsdk/android/arch/lifecycle/LifecycleRegistry;->min(Lgbsdk/android/arch/lifecycle/Lifecycle$State;Lgbsdk/android/arch/lifecycle/Lifecycle$State;)Lgbsdk/android/arch/lifecycle/Lifecycle$State;

    move-result-object v1

    iput-object v1, p0, Lgbsdk/android/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lgbsdk/android/arch/lifecycle/Lifecycle$State;

    .line 354
    iget-object v1, p0, Lgbsdk/android/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mLifecycleObserver:Lgbsdk/android/arch/lifecycle/GenericLifecycleObserver;

    invoke-interface {v1, p1, p2}, Lgbsdk/android/arch/lifecycle/GenericLifecycleObserver;->onStateChanged(Lgbsdk/android/arch/lifecycle/LifecycleOwner;Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)V

    .line 355
    iput-object v0, p0, Lgbsdk/android/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lgbsdk/android/arch/lifecycle/Lifecycle$State;

    return-void
.end method
