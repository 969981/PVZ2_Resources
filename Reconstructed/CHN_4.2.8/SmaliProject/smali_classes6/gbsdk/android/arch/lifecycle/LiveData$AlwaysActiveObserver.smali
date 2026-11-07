.class public Lgbsdk/android/arch/lifecycle/LiveData$AlwaysActiveObserver;
.super Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlwaysActiveObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgbsdk/android/arch/lifecycle/LiveData<",
        "TT;>.ObserverWrapper;"
    }
.end annotation


# instance fields
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

    .line 423
    iput-object p1, p0, Lgbsdk/android/arch/lifecycle/LiveData$AlwaysActiveObserver;->this$0:Lgbsdk/android/arch/lifecycle/LiveData;

    .line 424
    invoke-direct {p0, p1, p2}, Lgbsdk/android/arch/lifecycle/LiveData$ObserverWrapper;-><init>(Lgbsdk/android/arch/lifecycle/LiveData;Lgbsdk/android/arch/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method shouldBeActive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
