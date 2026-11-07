.class public abstract Lgbsdk/android/arch/lifecycle/LiveData;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/android/arch/lifecycle/LiveData$AlwaysActiveObserver;,
        Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;,
        Lgbsdk/android/arch/lifecycle/LiveData$LifecycleBoundObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final NOT_SET:Ljava/lang/Object;

.field static final START_VERSION:I = -0x1


# instance fields
.field public mActiveCount:I

.field private volatile mData:Ljava/lang/Object;

.field public final mDataLock:Ljava/lang/Object;

.field private mDispatchInvalidated:Z

.field private mDispatchingValue:Z

.field private mObservers:Lgbsdk/android/arch/core/internal/SafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/android/arch/core/internal/SafeIterableMap<",
            "Lgbsdk/android/arch/lifecycle/Observer<",
            "TT;>;",
            "Lgbsdk/android/arch/lifecycle/LiveData<",
            "TT;>.ObserverWrapper;>;"
        }
    .end annotation
.end field

.field public volatile mPendingData:Ljava/lang/Object;

.field private final mPostValueRunnable:Ljava/lang/Runnable;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lgbsdk/android/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Lgbsdk/android/arch/core/internal/SafeIterableMap;

    invoke-direct {v0}, Lgbsdk/android/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v0, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mObservers:Lgbsdk/android/arch/core/internal/SafeIterableMap;

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mActiveCount:I

    .line 69
    sget-object v0, Lgbsdk/android/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v0, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 72
    sget-object v0, Lgbsdk/android/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v0, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mVersion:I

    .line 78
    new-instance v0, Lgbsdk/android/arch/lifecycle/LiveData$1;

    invoke-direct {v0, p0}, Lgbsdk/android/arch/lifecycle/LiveData$1;-><init>(Lgbsdk/android/arch/lifecycle/LiveData;)V

    iput-object v0, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static assertMainThread(Ljava/lang/String;)V
    .locals 3

    .line 434
    invoke-static {}, Lgbsdk/android/arch/core/executor/ArchTaskExecutor;->getInstance()Lgbsdk/android/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/android/arch/core/executor/ArchTaskExecutor;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 435
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " on a background"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " thread"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private considerNotify(Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/android/arch/lifecycle/LiveData<",
            "TT;>.ObserverWrapper;)V"
        }
    .end annotation

    .line 92
    iget-boolean v0, p1, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-virtual {p1}, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->shouldBeActive()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p1, v0}, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    return-void

    .line 104
    :cond_1
    iget v0, p1, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    iget v1, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mVersion:I

    if-lt v0, v1, :cond_2

    return-void

    .line 107
    :cond_2
    iput v1, p1, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    .line 109
    iget-object p1, p1, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->mObserver:Lgbsdk/android/arch/lifecycle/Observer;

    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mData:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lgbsdk/android/arch/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dispatchingValue(Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/android/arch/lifecycle/LiveData<",
            "TT;>.ObserverWrapper;)V"
        }
    .end annotation

    .line 113
    iget-boolean v0, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mDispatchingValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 114
    iput-boolean v1, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mDispatchInvalidated:Z

    return-void

    .line 117
    :cond_0
    iput-boolean v1, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mDispatchingValue:Z

    :cond_1
    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-eqz p1, :cond_2

    .line 121
    invoke-direct {p0, p1}, Lgbsdk/android/arch/lifecycle/LiveData;->considerNotify(Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 124
    :cond_2
    iget-object v1, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mObservers:Lgbsdk/android/arch/core/internal/SafeIterableMap;

    .line 125
    invoke-virtual {v1}, Lgbsdk/android/arch/core/internal/SafeIterableMap;->iteratorWithAdditions()Lgbsdk/android/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;

    invoke-direct {p0, v2}, Lgbsdk/android/arch/lifecycle/LiveData;->considerNotify(Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;)V

    .line 127
    iget-boolean v2, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-eqz v2, :cond_3

    .line 132
    :cond_4
    :goto_0
    iget-boolean v1, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-nez v1, :cond_1

    .line 133
    iput-boolean v0, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mDispatchingValue:Z

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 295
    sget-object v1, Lgbsdk/android/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getVersion()I
    .locals 1

    .line 303
    iget v0, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mVersion:I

    return v0
.end method

.method public hasActiveObservers()Z
    .locals 1

    .line 346
    iget v0, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mActiveCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasObservers()Z
    .locals 1

    .line 336
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mObservers:Lgbsdk/android/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0}, Lgbsdk/android/arch/core/internal/SafeIterableMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public observe(Lgbsdk/android/arch/lifecycle/LifecycleOwner;Lgbsdk/android/arch/lifecycle/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/android/arch/lifecycle/LifecycleOwner;",
            "Lgbsdk/android/arch/lifecycle/Observer<",
            "TT;>;)V"
        }
    .end annotation

    .line 166
    invoke-interface {p1}, Lgbsdk/android/arch/lifecycle/LifecycleOwner;->getLifecycle()Lgbsdk/android/arch/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/android/arch/lifecycle/Lifecycle;->getCurrentState()Lgbsdk/android/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Lgbsdk/android/arch/lifecycle/Lifecycle$State;->DESTROYED:Lgbsdk/android/arch/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    return-void

    .line 170
    :cond_0
    new-instance v0, Lgbsdk/android/arch/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {v0, p0, p1, p2}, Lgbsdk/android/arch/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Lgbsdk/android/arch/lifecycle/LiveData;Lgbsdk/android/arch/lifecycle/LifecycleOwner;Lgbsdk/android/arch/lifecycle/Observer;)V

    .line 171
    iget-object v1, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mObservers:Lgbsdk/android/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1, p2, v0}, Lgbsdk/android/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;

    if-eqz p2, :cond_2

    .line 172
    invoke-virtual {p2, p1}, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->isAttachedTo(Lgbsdk/android/arch/lifecycle/LifecycleOwner;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 173
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    return-void

    .line 179
    :cond_3
    invoke-interface {p1}, Lgbsdk/android/arch/lifecycle/LifecycleOwner;->getLifecycle()Lgbsdk/android/arch/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, v0}, Lgbsdk/android/arch/lifecycle/Lifecycle;->addObserver(Lgbsdk/android/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public observeForever(Lgbsdk/android/arch/lifecycle/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/android/arch/lifecycle/Observer<",
            "TT;>;)V"
        }
    .end annotation

    .line 198
    new-instance v0, Lgbsdk/android/arch/lifecycle/LiveData$AlwaysActiveObserver;

    invoke-direct {v0, p0, p1}, Lgbsdk/android/arch/lifecycle/LiveData$AlwaysActiveObserver;-><init>(Lgbsdk/android/arch/lifecycle/LiveData;Lgbsdk/android/arch/lifecycle/Observer;)V

    .line 199
    iget-object v1, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mObservers:Lgbsdk/android/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1, p1, v0}, Lgbsdk/android/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;

    if-eqz p1, :cond_1

    .line 200
    instance-of v1, p1, Lgbsdk/android/arch/lifecycle/LiveData$LifecycleBoundObserver;

    if-nez v1, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 207
    invoke-virtual {v0, p1}, Lgbsdk/android/arch/lifecycle/LiveData$AlwaysActiveObserver;->activeStateChanged(Z)V

    return-void
.end method

.method public onActive()V
    .locals 0

    return-void
.end method

.method protected onInactive()V
    .locals 0

    return-void
.end method

.method public postValue(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_0
    iget-object v1, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    sget-object v2, Lgbsdk/android/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 261
    :goto_0
    iput-object p1, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 262
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    .line 266
    :cond_1
    invoke-static {}, Lgbsdk/android/arch/core/executor/ArchTaskExecutor;->getInstance()Lgbsdk/android/arch/core/executor/ArchTaskExecutor;

    move-result-object p1

    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lgbsdk/android/arch/core/executor/ArchTaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 262
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeObserver(Lgbsdk/android/arch/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/android/arch/lifecycle/Observer<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "removeObserver"

    .line 217
    invoke-static {v0}, Lgbsdk/android/arch/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mObservers:Lgbsdk/android/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0, p1}, Lgbsdk/android/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;

    if-nez p1, :cond_0

    return-void

    .line 222
    :cond_0
    invoke-virtual {p1}, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->detachObserver()V

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p1, v0}, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    return-void
.end method

.method public removeObservers(Lgbsdk/android/arch/lifecycle/LifecycleOwner;)V
    .locals 3

    const-string v0, "removeObservers"

    .line 234
    invoke-static {v0}, Lgbsdk/android/arch/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mObservers:Lgbsdk/android/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0}, Lgbsdk/android/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 236
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;

    invoke-virtual {v2, p1}, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;->isAttachedTo(Lgbsdk/android/arch/lifecycle/LifecycleOwner;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/android/arch/lifecycle/Observer;

    invoke-virtual {p0, v1}, Lgbsdk/android/arch/lifecycle/LiveData;->removeObserver(Lgbsdk/android/arch/lifecycle/Observer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "setValue"

    .line 279
    invoke-static {v0}, Lgbsdk/android/arch/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 280
    iget v0, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mVersion:I

    .line 281
    iput-object p1, p0, Lgbsdk/android/arch/lifecycle/LiveData;->mData:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 282
    invoke-virtual {p0, p1}, Lgbsdk/android/arch/lifecycle/LiveData;->dispatchingValue(Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;)V

    return-void
.end method
