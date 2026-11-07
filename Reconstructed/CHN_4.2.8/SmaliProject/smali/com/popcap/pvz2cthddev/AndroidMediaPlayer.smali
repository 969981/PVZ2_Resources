.class public Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "AndroidMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;
    }
.end annotation


# static fields
.field static final State_Completed:I = 0x7

.field static final State_End:I = 0x8

.field static final State_Idle:I = 0x0

.field static final State_Initialized:I = 0x2

.field static final State_Paused:I = 0x6

.field static final State_Prepared:I = 0x3

.field static final State_Preparing:I = 0x1

.field static final State_Started:I = 0x4

.field static final State_Stopped:I = 0x5

.field static final State_Unknown:I = -0x1


# instance fields
.field mListenerProxy:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;

.field mPlayerState:I

.field mbIsSeeking:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mPlayerState:I

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mbIsSeeking:Z

    .line 79
    new-instance v0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;

    invoke-direct {v0, p0, p0}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;-><init>(Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;)V

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mListenerProxy:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;

    .line 80
    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 81
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mListenerProxy:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 82
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mListenerProxy:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 83
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mListenerProxy:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method private HandleOnError(Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;II)V
    .locals 0

    return-void
.end method

.method private HandleOnPrepared(Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;)V
    .locals 2

    .line 190
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mPlayerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 191
    const-string v0, "Music"

    const-string v1, "Got a prepare-complete callback while not preparing!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x3

    .line 193
    iput v0, p1, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mPlayerState:I

    return-void
.end method

.method private HandleOnSeekComplete(Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;)V
    .locals 1

    .line 203
    iget-boolean p1, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mbIsSeeking:Z

    if-nez p1, :cond_0

    .line 204
    const-string p1, "Music"

    const-string v0, "Got a seek-complete callback while not seeking!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 206
    iput-boolean p1, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mbIsSeeking:Z

    return-void
.end method

.method static synthetic access$000(Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->HandleOnPrepared(Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;II)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->HandleOnError(Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->HandleOnSeekComplete(Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public final GetPlayerState()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mPlayerState:I

    return v0
.end method

.method public HandleOnCompletion(Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 1

    .line 105
    invoke-super {p0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x6

    .line 106
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mPlayerState:I

    return-void
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-super {p0}, Landroid/media/MediaPlayer;->prepare()V

    const/4 v0, 0x3

    .line 112
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mPlayerState:I

    return-void
.end method

.method public prepareAsync()V
    .locals 1

    .line 117
    invoke-super {p0}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 v0, 0x1

    .line 118
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mPlayerState:I

    return-void
.end method

.method public release()V
    .locals 1

    .line 129
    invoke-super {p0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, -0x1

    .line 130
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mPlayerState:I

    return-void
.end method

.method public reset()V
    .locals 1

    .line 123
    invoke-super {p0}, Landroid/media/MediaPlayer;->reset()V

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mPlayerState:I

    return-void
.end method

.method public seekTo(I)V
    .locals 2

    .line 160
    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mbIsSeeking:Z

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "Music"

    const-string v1, "Seeking while another seek is in progress!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mbIsSeeking:Z

    .line 164
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-super {p0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 p1, 0x2

    .line 154
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mPlayerState:I

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    const/4 p1, 0x2

    .line 136
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mPlayerState:I

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-super/range {p0 .. p5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    const/4 p1, 0x2

    .line 142
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mPlayerState:I

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 148
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mPlayerState:I

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mListenerProxy:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;

    iput-object p1, v0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mListenerProxy:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;

    iput-object p1, v0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mListenerProxy:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;

    iput-object p1, v0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mListenerProxy:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;

    iput-object p1, v0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public start()V
    .locals 1

    .line 93
    invoke-super {p0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x4

    .line 94
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mPlayerState:I

    return-void
.end method

.method public stop()V
    .locals 1

    .line 99
    invoke-super {p0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x5

    .line 100
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->mPlayerState:I

    return-void
.end method
