.class public Lgbsdk/android/arch/lifecycle/ComputableLiveData$1;
.super Lgbsdk/android/arch/lifecycle/LiveData;
.source "ComputableLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/android/arch/lifecycle/ComputableLiveData;-><init>(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgbsdk/android/arch/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/arch/lifecycle/ComputableLiveData;


# direct methods
.method constructor <init>(Lgbsdk/android/arch/lifecycle/ComputableLiveData;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lgbsdk/android/arch/lifecycle/ComputableLiveData$1;->this$0:Lgbsdk/android/arch/lifecycle/ComputableLiveData;

    invoke-direct {p0}, Lgbsdk/android/arch/lifecycle/LiveData;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 2

    .line 69
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/ComputableLiveData$1;->this$0:Lgbsdk/android/arch/lifecycle/ComputableLiveData;

    iget-object v0, v0, Lgbsdk/android/arch/lifecycle/ComputableLiveData;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lgbsdk/android/arch/lifecycle/ComputableLiveData$1;->this$0:Lgbsdk/android/arch/lifecycle/ComputableLiveData;

    iget-object v1, v1, Lgbsdk/android/arch/lifecycle/ComputableLiveData;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
