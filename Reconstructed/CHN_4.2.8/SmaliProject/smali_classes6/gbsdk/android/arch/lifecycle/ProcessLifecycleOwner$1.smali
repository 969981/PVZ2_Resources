.class public Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner$1;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner;


# direct methods
.method constructor <init>(Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner$1;->this$0:Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 66
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner$1;->this$0:Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {v0}, Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner;->dispatchPauseIfNeeded()V

    .line 67
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner$1;->this$0:Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {v0}, Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner;->dispatchStopIfNeeded()V

    return-void
.end method
