.class public Lcom/talkweb/twOfflineSdk/tools/FPSMonitor;
.super Ljava/lang/Object;
.source "FPSMonitor.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# static fields
.field private static final FRAME_INTERVAL_NANOS:J = 0xfe502aL

.field private static final TAG:Ljava/lang/String; = "FPSMonitor"


# instance fields
.field private frameCount:I

.field private lastFPSTime:J

.field private lastFrameTimeNanos:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/talkweb/twOfflineSdk/tools/FPSMonitor;->lastFrameTimeNanos:J

    const/4 v2, 0x0

    .line 10
    iput v2, p0, Lcom/talkweb/twOfflineSdk/tools/FPSMonitor;->frameCount:I

    .line 11
    iput-wide v0, p0, Lcom/talkweb/twOfflineSdk/tools/FPSMonitor;->lastFPSTime:J

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 12

    .line 20
    iget-wide v0, p0, Lcom/talkweb/twOfflineSdk/tools/FPSMonitor;->lastFPSTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/talkweb/twOfflineSdk/tools/FPSMonitor;->lastFPSTime:J

    .line 23
    :cond_0
    iget v0, p0, Lcom/talkweb/twOfflineSdk/tools/FPSMonitor;->frameCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/talkweb/twOfflineSdk/tools/FPSMonitor;->frameCount:I

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 25
    iget-wide v6, p0, Lcom/talkweb/twOfflineSdk/tools/FPSMonitor;->lastFPSTime:J

    sub-long v8, v4, v6

    const-wide/16 v10, 0x3e8

    cmp-long v0, v8, v10

    const-string v8, "FPSMonitor"

    if-ltz v0, :cond_1

    .line 26
    iget v0, p0, Lcom/talkweb/twOfflineSdk/tools/FPSMonitor;->frameCount:I

    int-to-float v0, v0

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v9

    sub-long v6, v4, v6

    long-to-float v6, v6

    div-float/2addr v0, v6

    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FPS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v7, 0x0

    aput-object v0, v1, v7

    const-string v0, "%.2f"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iput v7, p0, Lcom/talkweb/twOfflineSdk/tools/FPSMonitor;->frameCount:I

    .line 29
    iput-wide v4, p0, Lcom/talkweb/twOfflineSdk/tools/FPSMonitor;->lastFPSTime:J

    .line 33
    :cond_1
    iget-wide v0, p0, Lcom/talkweb/twOfflineSdk/tools/FPSMonitor;->lastFrameTimeNanos:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    sub-long v0, p1, v0

    const-wide/32 v2, 0xfe502a

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 36
    div-long/2addr v0, v2

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropped frames: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_2
    iput-wide p1, p0, Lcom/talkweb/twOfflineSdk/tools/FPSMonitor;->lastFrameTimeNanos:J

    .line 43
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 14
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
