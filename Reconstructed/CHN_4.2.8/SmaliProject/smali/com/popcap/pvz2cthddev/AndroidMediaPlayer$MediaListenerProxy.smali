.class Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;
.super Ljava/lang/Object;
.source "AndroidMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaListenerProxy"
.end annotation


# instance fields
.field public mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field public mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field public mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field public mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field mParent:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

.field final synthetic this$0:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;->this$0:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;->mParent:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;->mParent:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    move-object v1, p1

    check-cast v1, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->HandleOnCompletion(Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;)V

    .line 46
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;->mParent:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    move-object v1, p1

    check-cast v1, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-static {v0, v1, p2, p3}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->access$100(Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;II)V

    .line 37
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;->mParent:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    move-object v1, p1

    check-cast v1, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-static {v0, v1}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->access$000(Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;)V

    .line 30
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;->mParent:Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    move-object v1, p1

    check-cast v1, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;

    invoke-static {v0, v1}, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;->access$200(Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;Lcom/popcap/pvz2cthddev/AndroidMediaPlayer;)V

    .line 53
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidMediaPlayer$MediaListenerProxy;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method
