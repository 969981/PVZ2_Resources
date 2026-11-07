.class public Lgbsdk/android/arch/lifecycle/LiveData$1;
.super Ljava/lang/Object;
.source "LiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Lgbsdk/android/arch/lifecycle/LiveData;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lgbsdk/android/arch/lifecycle/LiveData$1;->this$0:Lgbsdk/android/arch/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 82
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/LiveData$1;->this$0:Lgbsdk/android/arch/lifecycle/LiveData;

    iget-object v0, v0, Lgbsdk/android/arch/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lgbsdk/android/arch/lifecycle/LiveData$1;->this$0:Lgbsdk/android/arch/lifecycle/LiveData;

    iget-object v1, v1, Lgbsdk/android/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 84
    iget-object v2, p0, Lgbsdk/android/arch/lifecycle/LiveData$1;->this$0:Lgbsdk/android/arch/lifecycle/LiveData;

    sget-object v3, Lgbsdk/android/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v3, v2, Lgbsdk/android/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 85
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/LiveData$1;->this$0:Lgbsdk/android/arch/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Lgbsdk/android/arch/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    .line 85
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
