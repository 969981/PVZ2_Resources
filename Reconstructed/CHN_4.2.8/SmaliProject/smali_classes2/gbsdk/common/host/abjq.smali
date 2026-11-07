.class public Lgbsdk/common/host/abjq;
.super Ljava/lang/Object;
.source "ThreadPoolConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abjq$ab;
    }
.end annotation


# instance fields
.field public hk:Ljava/util/concurrent/ThreadPoolExecutor;

.field public hl:Ljava/util/concurrent/ThreadPoolExecutor;

.field public hm:Ljava/util/concurrent/ThreadPoolExecutor;

.field public hn:Ljava/util/concurrent/ThreadPoolExecutor;

.field public ho:I

.field public hp:I

.field public hq:I

.field public hr:I

.field public hs:J

.field public ht:J

.field public hu:J

.field public hv:Z


# direct methods
.method private constructor <init>(Lgbsdk/common/host/abjq$ab;)V
    .locals 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 14
    iput v0, p0, Lgbsdk/common/host/abjq;->ho:I

    .line 15
    iput v0, p0, Lgbsdk/common/host/abjq;->hp:I

    .line 16
    iput v0, p0, Lgbsdk/common/host/abjq;->hq:I

    .line 17
    iput v0, p0, Lgbsdk/common/host/abjq;->hr:I

    const-wide/16 v0, 0x1e

    .line 18
    iput-wide v0, p0, Lgbsdk/common/host/abjq;->hs:J

    const-wide/16 v0, 0xa

    .line 19
    iput-wide v0, p0, Lgbsdk/common/host/abjq;->ht:J

    .line 20
    iput-wide v0, p0, Lgbsdk/common/host/abjq;->hu:J

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lgbsdk/common/host/abjq;->hv:Z

    .line 24
    iget-object v0, p1, Lgbsdk/common/host/abjq$ab;->hk:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p1, Lgbsdk/common/host/abjq$ab;->hk:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lgbsdk/common/host/abjq;->hk:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 27
    :cond_0
    iget-object v0, p1, Lgbsdk/common/host/abjq$ab;->hl:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p1, Lgbsdk/common/host/abjq$ab;->hl:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lgbsdk/common/host/abjq;->hl:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 30
    :cond_1
    iget-object v0, p1, Lgbsdk/common/host/abjq$ab;->hm:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p1, Lgbsdk/common/host/abjq$ab;->hm:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lgbsdk/common/host/abjq;->hm:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 33
    :cond_2
    iget-object v0, p1, Lgbsdk/common/host/abjq$ab;->hn:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_3

    .line 34
    iget-object v0, p1, Lgbsdk/common/host/abjq$ab;->hn:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lgbsdk/common/host/abjq;->hn:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 36
    :cond_3
    iget v0, p1, Lgbsdk/common/host/abjq$ab;->ho:I

    if-lez v0, :cond_4

    .line 37
    iget v0, p1, Lgbsdk/common/host/abjq$ab;->ho:I

    iput v0, p0, Lgbsdk/common/host/abjq;->ho:I

    .line 39
    :cond_4
    iget v0, p1, Lgbsdk/common/host/abjq$ab;->hp:I

    if-lez v0, :cond_5

    .line 40
    iget v0, p1, Lgbsdk/common/host/abjq$ab;->hp:I

    iput v0, p0, Lgbsdk/common/host/abjq;->hp:I

    .line 42
    :cond_5
    iget v0, p1, Lgbsdk/common/host/abjq$ab;->hq:I

    if-lez v0, :cond_6

    .line 43
    iget v0, p1, Lgbsdk/common/host/abjq$ab;->hq:I

    iput v0, p0, Lgbsdk/common/host/abjq;->hq:I

    .line 45
    :cond_6
    iget v0, p1, Lgbsdk/common/host/abjq$ab;->hr:I

    if-lez v0, :cond_7

    .line 46
    iget v0, p1, Lgbsdk/common/host/abjq$ab;->hr:I

    iput v0, p0, Lgbsdk/common/host/abjq;->hr:I

    .line 48
    :cond_7
    iget-wide v0, p1, Lgbsdk/common/host/abjq$ab;->hs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_8

    .line 49
    iget-wide v0, p1, Lgbsdk/common/host/abjq$ab;->hs:J

    iput-wide v0, p0, Lgbsdk/common/host/abjq;->hs:J

    .line 51
    :cond_8
    iget-wide v0, p1, Lgbsdk/common/host/abjq$ab;->ht:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    .line 52
    iget-wide v0, p1, Lgbsdk/common/host/abjq$ab;->ht:J

    iput-wide v0, p0, Lgbsdk/common/host/abjq;->ht:J

    .line 54
    :cond_9
    iget-wide v0, p1, Lgbsdk/common/host/abjq$ab;->hu:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_a

    .line 55
    iget-wide v0, p1, Lgbsdk/common/host/abjq$ab;->hu:J

    iput-wide v0, p0, Lgbsdk/common/host/abjq;->hu:J

    .line 57
    :cond_a
    iget-boolean p1, p1, Lgbsdk/common/host/abjq$ab;->hv:Z

    iput-boolean p1, p0, Lgbsdk/common/host/abjq;->hv:Z

    return-void
.end method

.method synthetic constructor <init>(Lgbsdk/common/host/abjq$ab;Lgbsdk/common/host/abjq$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lgbsdk/common/host/abjq;-><init>(Lgbsdk/common/host/abjq$ab;)V

    return-void
.end method

.method public static br()Lgbsdk/common/host/abjq$ab;
    .locals 1

    .line 113
    new-instance v0, Lgbsdk/common/host/abjq$ab;

    invoke-direct {v0}, Lgbsdk/common/host/abjq$ab;-><init>()V

    return-object v0
.end method
