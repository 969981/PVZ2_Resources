.class public abstract Lgbsdk/common/host/abjv;
.super Ljava/lang/Object;
.source "IApiTask.java"

# interfaces
.implements Lgbsdk/common/host/abju;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgbsdk/common/host/abju;",
        "Ljava/lang/Comparable<",
        "Lgbsdk/common/host/abju;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field protected final gM:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public gN:I

.field protected gO:I

.field protected final mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lgbsdk/common/host/abjv;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lgbsdk/common/host/abjv;->gM:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    iput v1, p0, Lgbsdk/common/host/abjv;->gN:I

    return-void
.end method


# virtual methods
.method public bi()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public bj()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cancel()V
    .locals 3

    .line 29
    iget-object v0, p0, Lgbsdk/common/host/abjv;->gM:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method public isCanceled()Z
    .locals 1

    .line 33
    iget-object v0, p0, Lgbsdk/common/host/abjv;->gM:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public p(I)Lgbsdk/common/host/abjv;
    .locals 0

    .line 37
    iput p1, p0, Lgbsdk/common/host/abjv;->gO:I

    return-object p0
.end method
