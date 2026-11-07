.class Lcom/popcap/pvz2cthddev/AndroidSurfaceView$FPSCounter;
.super Ljava/lang/Object;
.source "AndroidSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/AndroidSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FPSCounter"
.end annotation


# instance fields
.field frames:I

.field startTime:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$FPSCounter;->startTime:J

    const/4 v0, 0x0

    .line 474
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$FPSCounter;->frames:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/popcap/pvz2cthddev/AndroidSurfaceView$1;)V
    .locals 0

    .line 471
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$FPSCounter;-><init>()V

    return-void
.end method


# virtual methods
.method public logFrame()V
    .locals 4

    .line 481
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$FPSCounter;->frames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$FPSCounter;->frames:I

    .line 482
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$FPSCounter;->startTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fps: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$FPSCounter;->frames:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FPSCounter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 485
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$FPSCounter;->frames:I

    .line 486
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$FPSCounter;->startTime:J

    :cond_0
    return-void
.end method
