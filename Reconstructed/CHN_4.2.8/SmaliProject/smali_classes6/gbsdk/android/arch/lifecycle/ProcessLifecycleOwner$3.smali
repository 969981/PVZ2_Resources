.class public Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner$3;
.super Lgbsdk/android/arch/lifecycle/EmptyActivityLifecycleCallbacks;
.source "ProcessLifecycleOwner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner;->attach(Landroid/content/Context;)V
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

    .line 157
    iput-object p1, p0, Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner$3;->this$0:Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner;

    invoke-direct {p0}, Lgbsdk/android/arch/lifecycle/EmptyActivityLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 160
    invoke-static {p1}, Lgbsdk/android/arch/lifecycle/ReportFragment;->get(Landroid/app/Activity;)Lgbsdk/android/arch/lifecycle/ReportFragment;

    move-result-object p1

    iget-object p2, p0, Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner$3;->this$0:Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner;

    iget-object p2, p2, Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner;->mInitializationListener:Lgbsdk/android/arch/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-virtual {p1, p2}, Lgbsdk/android/arch/lifecycle/ReportFragment;->setProcessListener(Lgbsdk/android/arch/lifecycle/ReportFragment$ActivityInitializationListener;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 165
    iget-object p1, p0, Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner$3;->this$0:Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {p1}, Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner;->activityPaused()V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 170
    iget-object p1, p0, Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner$3;->this$0:Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {p1}, Lgbsdk/android/arch/lifecycle/ProcessLifecycleOwner;->activityStopped()V

    return-void
.end method
