.class public Lgbsdk/android/arch/lifecycle/SingleGeneratedAdapterObserver;
.super Ljava/lang/Object;
.source "SingleGeneratedAdapterObserver.java"

# interfaces
.implements Lgbsdk/android/arch/lifecycle/GenericLifecycleObserver;


# instance fields
.field private final mGeneratedAdapter:Lgbsdk/android/arch/lifecycle/GeneratedAdapter;


# direct methods
.method constructor <init>(Lgbsdk/android/arch/lifecycle/GeneratedAdapter;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lgbsdk/android/arch/lifecycle/SingleGeneratedAdapterObserver;->mGeneratedAdapter:Lgbsdk/android/arch/lifecycle/GeneratedAdapter;

    return-void
.end method


# virtual methods
.method public onStateChanged(Lgbsdk/android/arch/lifecycle/LifecycleOwner;Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)V
    .locals 3

    .line 35
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/SingleGeneratedAdapterObserver;->mGeneratedAdapter:Lgbsdk/android/arch/lifecycle/GeneratedAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lgbsdk/android/arch/lifecycle/GeneratedAdapter;->callMethods(Lgbsdk/android/arch/lifecycle/LifecycleOwner;Lgbsdk/android/arch/lifecycle/Lifecycle$Event;ZLgbsdk/android/arch/lifecycle/MethodCallsLogger;)V

    .line 36
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/SingleGeneratedAdapterObserver;->mGeneratedAdapter:Lgbsdk/android/arch/lifecycle/GeneratedAdapter;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Lgbsdk/android/arch/lifecycle/GeneratedAdapter;->callMethods(Lgbsdk/android/arch/lifecycle/LifecycleOwner;Lgbsdk/android/arch/lifecycle/Lifecycle$Event;ZLgbsdk/android/arch/lifecycle/MethodCallsLogger;)V

    return-void
.end method
