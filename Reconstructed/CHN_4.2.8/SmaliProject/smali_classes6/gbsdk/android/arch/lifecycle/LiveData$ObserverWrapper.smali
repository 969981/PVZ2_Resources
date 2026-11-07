.class public abstract Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ObserverWrapper"
.end annotation


# instance fields
.field mActive:Z

.field mLastVersion:I

.field final mObserver:Lgbsdk/android/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/android/arch/lifecycle/Observer<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lgbsdk/android/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Lgbsdk/android/arch/lifecycle/LiveData;Lgbsdk/android/arch/lifecycle/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/android/arch/lifecycle/Observer<",
            "TT;>;)V"
        }
    .end annotation

    .line 387
    iput-object p1, p0, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->this$0:Lgbsdk/android/arch/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 385
    iput p1, p0, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    .line 388
    iput-object p2, p0, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->mObserver:Lgbsdk/android/arch/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method activeStateChanged(Z)V
    .locals 4

    .line 401
    iget-boolean v0, p0, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 406
    :cond_0
    iput-boolean p1, p0, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    .line 407
    iget-object p1, p0, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->this$0:Lgbsdk/android/arch/lifecycle/LiveData;

    iget p1, p1, Lgbsdk/android/arch/lifecycle/LiveData;->mActiveCount:I

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 408
    :goto_0
    iget-object v1, p0, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->this$0:Lgbsdk/android/arch/lifecycle/LiveData;

    iget v2, v1, Lgbsdk/android/arch/lifecycle/LiveData;->mActiveCount:I

    iget-boolean v3, p0, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    add-int/2addr v2, v0

    iput v2, v1, Lgbsdk/android/arch/lifecycle/LiveData;->mActiveCount:I

    if-eqz p1, :cond_3

    .line 409
    iget-boolean p1, p0, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz p1, :cond_3

    .line 410
    iget-object p1, p0, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->this$0:Lgbsdk/android/arch/lifecycle/LiveData;

    invoke-virtual {p1}, Lgbsdk/android/arch/lifecycle/LiveData;->onActive()V

    .line 412
    :cond_3
    iget-object p1, p0, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->this$0:Lgbsdk/android/arch/lifecycle/LiveData;

    iget p1, p1, Lgbsdk/android/arch/lifecycle/LiveData;->mActiveCount:I

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-nez p1, :cond_4

    .line 413
    iget-object p1, p0, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->this$0:Lgbsdk/android/arch/lifecycle/LiveData;

    invoke-virtual {p1}, Lgbsdk/android/arch/lifecycle/LiveData;->onInactive()V

    .line 415
    :cond_4
    iget-boolean p1, p0, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz p1, :cond_5

    .line 416
    iget-object p1, p0, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->this$0:Lgbsdk/android/arch/lifecycle/LiveData;

    invoke-virtual {p1, p0}, Lgbsdk/android/arch/lifecycle/LiveData;->dispatchingValue(Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;)V

    :cond_5
    return-void
.end method

.method detachObserver()V
    .locals 0

    return-void
.end method

.method isAttachedTo(Lgbsdk/android/arch/lifecycle/LifecycleOwner;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method abstract shouldBeActive()Z
.end method
