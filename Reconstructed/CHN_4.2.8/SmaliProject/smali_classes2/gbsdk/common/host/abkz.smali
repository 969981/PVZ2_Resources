.class public final Lgbsdk/common/host/abkz;
.super Ljava/lang/Object;
.source "QueryActionInfo.java"


# instance fields
.field public qX:Z

.field public tY:I

.field public tZ:J

.field public ua:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lgbsdk/common/host/abkz;->qX:Z

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lgbsdk/common/host/abkz;->tY:I

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lgbsdk/common/host/abkz;->tZ:J

    .line 7
    iput-wide v0, p0, Lgbsdk/common/host/abkz;->ua:J

    return-void
.end method


# virtual methods
.method public cN()J
    .locals 7

    .line 10
    iget-wide v0, p0, Lgbsdk/common/host/abkz;->tZ:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-wide v4, p0, Lgbsdk/common/host/abkz;->ua:J

    cmp-long v6, v4, v2

    if-ltz v6, :cond_1

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr v4, v0

    return-wide v4

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
