.class public Lgbsdk/android/support/constraint/solver/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# instance fields
.field arrayRowPool:Lgbsdk/android/support/constraint/solver/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/android/support/constraint/solver/Pools$Pool<",
            "Lgbsdk/android/support/constraint/solver/ArrayRow;",
            ">;"
        }
    .end annotation
.end field

.field mIndexedVariables:[Lgbsdk/android/support/constraint/solver/SolverVariable;

.field solverVariablePool:Lgbsdk/android/support/constraint/solver/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/android/support/constraint/solver/Pools$Pool<",
            "Lgbsdk/android/support/constraint/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lgbsdk/android/support/constraint/solver/Pools$SimplePool;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lgbsdk/android/support/constraint/solver/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lgbsdk/android/support/constraint/solver/Cache;->arrayRowPool:Lgbsdk/android/support/constraint/solver/Pools$Pool;

    .line 23
    new-instance v0, Lgbsdk/android/support/constraint/solver/Pools$SimplePool;

    invoke-direct {v0, v1}, Lgbsdk/android/support/constraint/solver/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lgbsdk/android/support/constraint/solver/Cache;->solverVariablePool:Lgbsdk/android/support/constraint/solver/Pools$Pool;

    const/16 v0, 0x20

    new-array v0, v0, [Lgbsdk/android/support/constraint/solver/SolverVariable;

    .line 24
    iput-object v0, p0, Lgbsdk/android/support/constraint/solver/Cache;->mIndexedVariables:[Lgbsdk/android/support/constraint/solver/SolverVariable;

    return-void
.end method
