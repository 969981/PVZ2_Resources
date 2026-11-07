.class public Lcom/popcap/pvz2cthddev/AndroidAudioProxy;
.super Ljava/lang/Object;
.source "AndroidAudioProxy.java"


# instance fields
.field private mAudioBuffer:[B

.field private mAudioFetchSize:I

.field private mAudioSkipAheadThreshold:I

.field public mBitsPerSample:I

.field public mBufferSize:I

.field private mFrameSize:I

.field public mNativeSampleRate:I

.field public mNativeSoundManagerContext:J

.field public mNumChannels:I

.field public mSampleRate:I

.field public mTrack:Landroid/media/AudioTrack;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private FlushAudioTrack()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 186
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 187
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 188
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private ResetAudioTrack()V
    .locals 0

    .line 193
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->FlushAudioTrack()V

    return-void
.end method

.method private Sound_Disable()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 93
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->FlushAudioTrack()V

    .line 95
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mTrack:Landroid/media/AudioTrack;

    :cond_0
    return-void
.end method

.method private Sound_Enable(III)Z
    .locals 7

    .line 45
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mSampleRate:I

    .line 46
    iput p2, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mNumChannels:I

    .line 47
    iput p3, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mBitsPerSample:I

    mul-int/2addr p3, p2

    .line 49
    div-int/lit8 p3, p3, 0x8

    iput p3, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mFrameSize:I

    .line 51
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->GetSampleType()I

    move-result v4

    const/4 p1, 0x0

    if-nez v4, :cond_0

    return p1

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->GetChannelFormat()I

    move-result v3

    if-nez v3, :cond_1

    return p1

    :cond_1
    const/4 p2, 0x3

    .line 59
    invoke-static {p2}, Landroid/media/AudioTrack;->getNativeOutputSampleRate(I)I

    move-result p3

    iput p3, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mNativeSampleRate:I

    .line 60
    iget p3, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mSampleRate:I

    invoke-static {p3, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p3

    iput p3, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mBufferSize:I

    const/16 v0, 0x1000

    if-ge p3, v0, :cond_2

    .line 64
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mBufferSize:I

    .line 67
    :cond_2
    iget p3, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mBufferSize:I

    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mFrameSize:I

    div-int v0, p3, v0

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mAudioFetchSize:I

    mul-int/2addr v0, p2

    .line 68
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mAudioSkipAheadThreshold:I

    .line 70
    new-array p2, p3, [B

    iput-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mAudioBuffer:[B

    .line 73
    new-instance p2, Landroid/media/AudioTrack;

    iget v2, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mSampleRate:I

    iget p3, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mBufferSize:I

    mul-int/lit8 v5, p3, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x3

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mTrack:Landroid/media/AudioTrack;

    .line 80
    invoke-virtual {p2}, Landroid/media/AudioTrack;->play()V

    .line 81
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->FlushAudioTrack()V

    .line 83
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mTrack:Landroid/media/AudioTrack;

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    :cond_3
    return p1
.end method

.method private Sound_FlushAudioTrack()V
    .locals 2

    .line 152
    const-string v0, "AUDIODEBUG"

    const-string v1, "Calling FlushAudioTrack!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->FlushAudioTrack()V

    return-void
.end method

.method private Sound_GetAudioFetchSize()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mAudioFetchSize:I

    return v0
.end method

.method private Sound_NotifyAudioAvailable(I)V
    .locals 5

    .line 105
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mAudioFetchSize:I

    if-lt p1, v0, :cond_2

    .line 107
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mAudioSkipAheadThreshold:I

    if-le p1, v0, :cond_0

    sub-int v0, p1, v0

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Skipping ahead in audio stream by %d frames"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AUDIODEBUG"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-wide v1, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mNativeSoundManagerContext:J

    invoke-virtual {p0, v1, v2, v0}, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->SkipAudioDataCallback(JI)I

    :goto_0
    sub-int/2addr p1, v0

    .line 118
    :cond_0
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mAudioFetchSize:I

    if-le p1, v0, :cond_2

    .line 120
    iget-wide v1, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mNativeSoundManagerContext:J

    iget-object v3, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mAudioBuffer:[B

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->FetchAudioDataCallback(J[BI)I

    move-result v0

    if-ltz v0, :cond_1

    .line 125
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mTrack:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mAudioBuffer:[B

    iget v3, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mFrameSize:I

    mul-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    if-gez v1, :cond_1

    .line 132
    iget-object v2, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v4, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mFrameSize:I

    mul-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, v3, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "FAILED TO WRITE - %s State: %d - Got bad write result: %d - Tried to write %d bytes"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUDIOERROR"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 134
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->FlushAudioTrack()V

    .line 138
    :cond_1
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mAudioFetchSize:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private Sound_Shutdown()V
    .locals 0

    return-void
.end method

.method private Sound_Startup(J)Z
    .locals 0

    .line 33
    iput-wide p1, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mNativeSoundManagerContext:J

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final native FetchAudioDataCallback(J[BI)I
.end method

.method GetChannelFormat()I
    .locals 2

    .line 160
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mNumChannels:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0xc

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method GetSampleType()I
    .locals 2

    .line 170
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidAudioProxy;->mBitsPerSample:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final native SkipAudioDataCallback(JI)I
.end method
