.class public abstract Lgbsdk/android/arch/lifecycle/ComputableLiveData;
.super Ljava/lang/Object;
.source "ComputableLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mInvalidationRunnable:Ljava/lang/Runnable;

.field public final mLiveData:Lgbsdk/android/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/android/arch/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mRefreshRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-static {}, Lgbsdk/android/arch/core/executor/ArchTaskExecutor;->getIOThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0}, Lgbsdk/android/arch/lifecycle/ComputableLiveData;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lgbsdk/android/arch/lifecycle/ComputableLiveData;->mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lgbsdk/android/arch/lifecycle/ComputableLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    new-instance v0, Lgbsdk/android/arch/lifecycle/ComputableLiveData$2;

    invoke-direct {v0, p0}, Lgbsdk/android/arch/lifecycle/ComputableLiveData$2;-><init>(Lgbsdk/android/arch/lifecycle/ComputableLiveData;)V

    iput-object v0, p0, Lgbsdk/android/arch/lifecycle/ComputableLiveData;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 122
    new-instance v0, Lgbsdk/android/arch/lifecycle/ComputableLiveData$3;

    invoke-direct {v0, p0}, Lgbsdk/android/arch/lifecycle/ComputableLiveData$3;-><init>(Lgbsdk/android/arch/lifecycle/ComputableLiveData;)V

    iput-object v0, p0, Lgbsdk/android/arch/lifecycle/ComputableLiveData;->mInvalidationRunnable:Ljava/lang/Runnable;

    .line 65
    iput-object p1, p0, Lgbsdk/android/arch/lifecycle/ComputableLiveData;->mExecutor:Ljava/util/concurrent/Executor;

    .line 66
    new-instance p1, Lgbsdk/android/arch/lifecycle/ComputableLiveData$1;

    invoke-direct {p1, p0}, Lgbsdk/android/arch/lifecycle/ComputableLiveData$1;-><init>(Lgbsdk/android/arch/lifecycle/ComputableLiveData;)V

    iput-object p1, p0, Lgbsdk/android/arch/lifecycle/ComputableLiveData;->mLiveData:Lgbsdk/android/arch/lifecycle/LiveData;

    return-void
.end method


# virtual methods
.method protected abstract compute()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getLiveData()Lgbsdk/android/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgbsdk/android/arch/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/ComputableLiveData;->mLiveData:Lgbsdk/android/arch/lifecycle/LiveData;

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .line 142
    invoke-static {}, Lgbsdk/android/arch/core/executor/ArchTaskExecutor;->getInstance()Lgbsdk/android/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/android/arch/lifecycle/ComputableLiveData;->mInvalidationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lgbsdk/android/arch/core/executor/ArchTaskExecutor;->executeOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
