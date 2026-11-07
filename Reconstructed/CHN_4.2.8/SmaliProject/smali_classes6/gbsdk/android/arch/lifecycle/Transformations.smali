.class public Lgbsdk/android/arch/lifecycle/Transformations;
.super Ljava/lang/Object;
.source "Transformations.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static map(Lgbsdk/android/arch/lifecycle/LiveData;Lgbsdk/android/arch/core/util/Function;)Lgbsdk/android/arch/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lgbsdk/android/arch/lifecycle/LiveData<",
            "TX;>;",
            "Lgbsdk/android/arch/core/util/Function<",
            "TX;TY;>;)",
            "Lgbsdk/android/arch/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;-><init>()V

    .line 67
    new-instance v1, Lgbsdk/android/arch/lifecycle/Transformations$1;

    invoke-direct {v1, v0, p1}, Lgbsdk/android/arch/lifecycle/Transformations$1;-><init>(Lgbsdk/android/arch/lifecycle/MediatorLiveData;Lgbsdk/android/arch/core/util/Function;)V

    invoke-virtual {v0, p0, v1}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;->addSource(Lgbsdk/android/arch/lifecycle/LiveData;Lgbsdk/android/arch/lifecycle/Observer;)V

    return-object v0
.end method

.method public static switchMap(Lgbsdk/android/arch/lifecycle/LiveData;Lgbsdk/android/arch/core/util/Function;)Lgbsdk/android/arch/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lgbsdk/android/arch/lifecycle/LiveData<",
            "TX;>;",
            "Lgbsdk/android/arch/core/util/Function<",
            "TX;",
            "Lgbsdk/android/arch/lifecycle/LiveData<",
            "TY;>;>;)",
            "Lgbsdk/android/arch/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation

    .line 127
    new-instance v0, Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;-><init>()V

    .line 128
    new-instance v1, Lgbsdk/android/arch/lifecycle/Transformations$2;

    invoke-direct {v1, p1, v0}, Lgbsdk/android/arch/lifecycle/Transformations$2;-><init>(Lgbsdk/android/arch/core/util/Function;Lgbsdk/android/arch/lifecycle/MediatorLiveData;)V

    invoke-virtual {v0, p0, v1}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;->addSource(Lgbsdk/android/arch/lifecycle/LiveData;Lgbsdk/android/arch/lifecycle/Observer;)V

    return-object v0
.end method
