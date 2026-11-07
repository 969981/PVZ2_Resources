.class public final Lgbsdk/android/arch/lifecycle/Transformations$2;
.super Ljava/lang/Object;
.source "Transformations.java"

# interfaces
.implements Lgbsdk/android/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/android/arch/lifecycle/Transformations;->switchMap(Lgbsdk/android/arch/lifecycle/LiveData;Lgbsdk/android/arch/core/util/Function;)Lgbsdk/android/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgbsdk/android/arch/lifecycle/Observer<",
        "TX;>;"
    }
.end annotation


# instance fields
.field mSource:Lgbsdk/android/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/android/arch/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation
.end field

.field final synthetic val$func:Lgbsdk/android/arch/core/util/Function;

.field final synthetic val$result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;


# direct methods
.method constructor <init>(Lgbsdk/android/arch/core/util/Function;Lgbsdk/android/arch/lifecycle/MediatorLiveData;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lgbsdk/android/arch/lifecycle/Transformations$2;->val$func:Lgbsdk/android/arch/core/util/Function;

    iput-object p2, p0, Lgbsdk/android/arch/lifecycle/Transformations$2;->val$result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/Transformations$2;->val$func:Lgbsdk/android/arch/core/util/Function;

    invoke-interface {v0, p1}, Lgbsdk/android/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgbsdk/android/arch/lifecycle/LiveData;

    .line 134
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/Transformations$2;->mSource:Lgbsdk/android/arch/lifecycle/LiveData;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 138
    iget-object v1, p0, Lgbsdk/android/arch/lifecycle/Transformations$2;->val$result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    invoke-virtual {v1, v0}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;->removeSource(Lgbsdk/android/arch/lifecycle/LiveData;)V

    .line 140
    :cond_1
    iput-object p1, p0, Lgbsdk/android/arch/lifecycle/Transformations$2;->mSource:Lgbsdk/android/arch/lifecycle/LiveData;

    if-eqz p1, :cond_2

    .line 142
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/Transformations$2;->val$result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    new-instance v1, Lgbsdk/android/arch/lifecycle/Transformations$2$1;

    invoke-direct {v1, p0}, Lgbsdk/android/arch/lifecycle/Transformations$2$1;-><init>(Lgbsdk/android/arch/lifecycle/Transformations$2;)V

    invoke-virtual {v0, p1, v1}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;->addSource(Lgbsdk/android/arch/lifecycle/LiveData;Lgbsdk/android/arch/lifecycle/Observer;)V

    :cond_2
    return-void
.end method
