.class public Lgbsdk/android/arch/lifecycle/MediatorLiveData$Source;
.super Ljava/lang/Object;
.source "MediatorLiveData.java"

# interfaces
.implements Lgbsdk/android/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/arch/lifecycle/MediatorLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lgbsdk/android/arch/lifecycle/Observer<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final mLiveData:Lgbsdk/android/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/android/arch/lifecycle/LiveData<",
            "TV;>;"
        }
    .end annotation
.end field

.field final mObserver:Lgbsdk/android/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/android/arch/lifecycle/Observer<",
            "TV;>;"
        }
    .end annotation
.end field

.field mVersion:I


# direct methods
.method constructor <init>(Lgbsdk/android/arch/lifecycle/LiveData;Lgbsdk/android/arch/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/android/arch/lifecycle/LiveData<",
            "TV;>;",
            "Lgbsdk/android/arch/lifecycle/Observer<",
            "TV;>;)V"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 133
    iput v0, p0, Lgbsdk/android/arch/lifecycle/MediatorLiveData$Source;->mVersion:I

    .line 136
    iput-object p1, p0, Lgbsdk/android/arch/lifecycle/MediatorLiveData$Source;->mLiveData:Lgbsdk/android/arch/lifecycle/LiveData;

    .line 137
    iput-object p2, p0, Lgbsdk/android/arch/lifecycle/MediatorLiveData$Source;->mObserver:Lgbsdk/android/arch/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 150
    iget v0, p0, Lgbsdk/android/arch/lifecycle/MediatorLiveData$Source;->mVersion:I

    iget-object v1, p0, Lgbsdk/android/arch/lifecycle/MediatorLiveData$Source;->mLiveData:Lgbsdk/android/arch/lifecycle/LiveData;

    invoke-virtual {v1}, Lgbsdk/android/arch/lifecycle/LiveData;->getVersion()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/MediatorLiveData$Source;->mLiveData:Lgbsdk/android/arch/lifecycle/LiveData;

    invoke-virtual {v0}, Lgbsdk/android/arch/lifecycle/LiveData;->getVersion()I

    move-result v0

    iput v0, p0, Lgbsdk/android/arch/lifecycle/MediatorLiveData$Source;->mVersion:I

    .line 152
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/MediatorLiveData$Source;->mObserver:Lgbsdk/android/arch/lifecycle/Observer;

    invoke-interface {v0, p1}, Lgbsdk/android/arch/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method plug()V
    .locals 1

    .line 141
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/MediatorLiveData$Source;->mLiveData:Lgbsdk/android/arch/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Lgbsdk/android/arch/lifecycle/LiveData;->observeForever(Lgbsdk/android/arch/lifecycle/Observer;)V

    return-void
.end method

.method unplug()V
    .locals 1

    .line 145
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/MediatorLiveData$Source;->mLiveData:Lgbsdk/android/arch/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Lgbsdk/android/arch/lifecycle/LiveData;->removeObserver(Lgbsdk/android/arch/lifecycle/Observer;)V

    return-void
.end method
