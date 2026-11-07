.class final Lcom/popcap/pvz2cthddev/AndroidFramePacer;
.super Ljava/lang/Object;
.source "AndroidFramePacer.java"


# instance fields
.field private mNextFrameTimeNs:J

.field private mTargetFps:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method nextFrameDeadline(IJ)J
    .locals 4

    const-wide/32 v0, 0x3b9aca00

    int-to-long v2, p1

    .line 13
    div-long/2addr v0, v2

    .line 14
    iget v2, p0, Lcom/popcap/pvz2cthddev/AndroidFramePacer;->mTargetFps:I

    if-eq v2, p1, :cond_0

    .line 15
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidFramePacer;->mTargetFps:I

    .line 16
    iput-wide p2, p0, Lcom/popcap/pvz2cthddev/AndroidFramePacer;->mNextFrameTimeNs:J

    .line 20
    :cond_0
    iget-wide v2, p0, Lcom/popcap/pvz2cthddev/AndroidFramePacer;->mNextFrameTimeNs:J

    sub-long v2, p2, v2

    cmp-long p1, v2, v0

    if-ltz p1, :cond_1

    .line 21
    iput-wide p2, p0, Lcom/popcap/pvz2cthddev/AndroidFramePacer;->mNextFrameTimeNs:J

    .line 24
    :cond_1
    iget-wide p1, p0, Lcom/popcap/pvz2cthddev/AndroidFramePacer;->mNextFrameTimeNs:J

    add-long/2addr v0, p1

    .line 25
    iput-wide v0, p0, Lcom/popcap/pvz2cthddev/AndroidFramePacer;->mNextFrameTimeNs:J

    return-wide p1
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidFramePacer;->mTargetFps:I

    return-void
.end method
