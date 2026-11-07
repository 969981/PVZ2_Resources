.class public Lcom/popcap/pvz2cthddev/AndroidMusicProxy;
.super Ljava/lang/Object;
.source "AndroidMusicProxy.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private mCurrentMusicFilename:Ljava/lang/String;

.field private mCurrentMusicId:I

.field private mFileLength:I

.field private mFileOffset:I

.field private mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

.field private mNativeContext:J

.field private mSuspendedPlaybackPosition:I

.field private mbCriticalError:Z

.field private mbLoopMusicPlayer:Z

.field private mbPlayWhenReady:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mNativeContext:J

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mCurrentMusicId:I

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mbLoopMusicPlayer:Z

    .line 39
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mbPlayWhenReady:Z

    .line 40
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mbCriticalError:Z

    .line 42
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mSuspendedPlaybackPosition:I

    return-void
.end method

.method private CreateMediaPlayer()V
    .locals 1

    .line 250
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->DestroyMediaPlayer()V

    .line 252
    new-instance v0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-direct {v0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    .line 254
    invoke-virtual {v0, p0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 255
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-virtual {v0, p0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 256
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-virtual {v0, p0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 257
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-virtual {v0, p0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method private DestroyMediaPlayer()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->reset()V

    .line 265
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 268
    iput-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    return-void
.end method

.method private Music_Enable(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->CreateMediaPlayer()V

    .line 71
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mCurrentMusicFilename:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->Prepare()V

    .line 74
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->ResumeMusic()V

    goto :goto_0

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->SuspendMusic()V

    .line 80
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->DestroyMediaPlayer()V

    :cond_1
    :goto_0
    return-void
.end method

.method private Music_IsStreamPlaying(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 228
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mCurrentMusicId:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 230
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->isPlaying()Z

    move-result p1

    return p1
.end method

.method private Music_PauseCurrentStream()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method private Music_PlayCurrentStream()Z
    .locals 3

    .line 163
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->GetPlayerState()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->CanPlay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->start()V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 175
    iput-boolean v2, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mbPlayWhenReady:Z

    .line 179
    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    .line 180
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private Music_ResumeCurrentStream()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method private Music_SetCurrentMusicStream(Ljava/lang/String;II)Z
    .locals 2

    .line 105
    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mbCriticalError:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    if-nez v0, :cond_1

    .line 107
    :cond_0
    iput-boolean v1, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mbCriticalError:Z

    .line 108
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->CreateMediaPlayer()V

    .line 111
    :cond_1
    iput v1, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mSuspendedPlaybackPosition:I

    .line 113
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->stop()V

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mCurrentMusicFilename:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mFileOffset:I

    if-ne v0, p2, :cond_3

    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mFileLength:I

    if-ne v0, p3, :cond_3

    .line 122
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-virtual {p1, v1}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->seekTo(I)V

    goto :goto_0

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->reset()V

    .line 129
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mCurrentMusicFilename:Ljava/lang/String;

    .line 130
    iput p2, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mFileOffset:I

    .line 131
    iput p3, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mFileLength:I

    .line 133
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->Prepare()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private Music_SetCurrentStreamPosition(I)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->seekTo(I)V

    goto :goto_0

    .line 157
    :cond_0
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mSuspendedPlaybackPosition:I

    :goto_0
    return-void
.end method

.method private Music_SetDeviceVolume(FF)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0, p1, p2}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method private Music_SetLooping(Z)V
    .locals 1

    .line 141
    iput-boolean p1, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mbLoopMusicPlayer:Z

    .line 142
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0, p1}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->setLooping(Z)V

    :cond_0
    return-void
.end method

.method private Music_StopCurrentStream()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->stop()V

    :cond_0
    return-void
.end method

.method private ResumeMusic()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mSuspendedPlaybackPosition:I

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->seekTo(I)V

    .line 88
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->start()V

    return-void
.end method

.method private SuspendMusic()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mSuspendedPlaybackPosition:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mSuspendedPlaybackPosition:I

    :goto_0
    return-void
.end method


# virtual methods
.method CanPlay()Z
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->GetPlayerState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public Music_Shutdown()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->stop()V

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->DestroyMediaPlayer()V

    :cond_1
    return-void
.end method

.method public Music_Startup(J)Z
    .locals 1

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mSuspendedPlaybackPosition:I

    .line 48
    iput-wide p1, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mNativeContext:J

    .line 49
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->CreateMediaPlayer()V

    const/4 p1, 0x1

    return p1
.end method

.method native NotifyMusicCompletedCallback(JLjava/lang/String;I)V
.end method

.method native NotifyMusicErrorCallback(JLjava/lang/String;II)V
.end method

.method Prepare()V
    .locals 9

    .line 273
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->GetPlayerState()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Music"

    if-ne v0, v1, :cond_0

    .line 275
    const-string v0, "Calling Prepare while another prepare is in progress!!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mCurrentMusicFilename:Ljava/lang/String;

    invoke-static {v1}, Lcom/popcap/pvz2cthddev/AndroidAssetUtils;->GetAssetNameFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 291
    iget-object v3, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mFileOffset:I

    int-to-long v5, v0

    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mFileLength:I

    int-to-long v7, v0

    invoke-virtual/range {v3 .. v8}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->setAudioStreamType(I)V

    .line 303
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mMusicPlayer:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->prepareAsync()V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 346
    iget-wide v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mNativeContext:J

    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mCurrentMusicFilename:Ljava/lang/String;

    iget v2, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mCurrentMusicId:I

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->NotifyMusicCompletedCallback(JLjava/lang/String;I)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6

    .line 335
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "MediaPlayer error: %d reported!"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Music"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-wide v1, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mNativeContext:J

    iget-object v3, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mCurrentMusicFilename:Ljava/lang/String;

    iget v4, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mCurrentMusicId:I

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->NotifyMusicErrorCallback(JLjava/lang/String;II)V

    const/4 p1, 0x1

    .line 339
    iput-boolean p1, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mbCriticalError:Z

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 311
    monitor-enter p0

    .line 313
    :try_start_0
    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mbPlayWhenReady:Z

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 p1, 0x0

    .line 316
    iput-boolean p1, p0, Lcom/popcap/pvz2cthddev/AndroidMusicProxy;->mbPlayWhenReady:Z

    .line 318
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 324
    monitor-enter p0

    .line 330
    :try_start_0
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0
.end method
