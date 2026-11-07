.class public abstract Lgbsdk/android/arch/lifecycle/Lifecycle;
.super Ljava/lang/Object;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/android/arch/lifecycle/Lifecycle$State;,
        Lgbsdk/android/arch/lifecycle/Lifecycle$Event;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addObserver(Lgbsdk/android/arch/lifecycle/LifecycleObserver;)V
.end method

.method public abstract getCurrentState()Lgbsdk/android/arch/lifecycle/Lifecycle$State;
.end method

.method public abstract removeObserver(Lgbsdk/android/arch/lifecycle/LifecycleObserver;)V
.end method
