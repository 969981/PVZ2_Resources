.class public interface abstract Lgbsdk/android/support/constraint/solver/LinearSystem$Row;
.super Ljava/lang/Object;
.source "LinearSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/constraint/solver/LinearSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Row"
.end annotation


# virtual methods
.method public abstract addError(Lgbsdk/android/support/constraint/solver/SolverVariable;)V
.end method

.method public abstract clear()V
.end method

.method public abstract getKey()Lgbsdk/android/support/constraint/solver/SolverVariable;
.end method

.method public abstract getPivotCandidate(Lgbsdk/android/support/constraint/solver/LinearSystem;[Z)Lgbsdk/android/support/constraint/solver/SolverVariable;
.end method

.method public abstract initFromRow(Lgbsdk/android/support/constraint/solver/LinearSystem$Row;)V
.end method

.method public abstract isEmpty()Z
.end method
