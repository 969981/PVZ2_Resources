.class Lcom/popcap/pvz2cthddev/TWGameAd$4;
.super Lcom/talkweb/twgame/callback/MediaCallback;
.source "TWGameAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWGameAd;->ShowMediaParam(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/TWGameAd;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/TWGameAd;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$4;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-direct {p0}, Lcom/talkweb/twgame/callback/MediaCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaClicked()V
    .locals 5

    .line 272
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$4;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    iget-wide v1, v0, Lcom/popcap/pvz2cthddev/TWGameAd;->mNativeDriverPtr:J

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/popcap/pvz2cthddev/TWGameAd;->Native_WatchAdComplete(JII)V

    return-void
.end method

.method public onMediaClosed()V
    .locals 5

    .line 259
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$4;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    iget-boolean v0, v0, Lcom/popcap/pvz2cthddev/TWGameAd;->mHasAdFinished:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$4;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    iget-wide v2, v0, Lcom/popcap/pvz2cthddev/TWGameAd;->mNativeDriverPtr:J

    const/4 v4, 0x4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/popcap/pvz2cthddev/TWGameAd;->Native_WatchAdComplete(JII)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$4;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    iget-wide v2, v0, Lcom/popcap/pvz2cthddev/TWGameAd;->mNativeDriverPtr:J

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/popcap/pvz2cthddev/TWGameAd;->Native_WatchAdComplete(JII)V

    :goto_0
    return-void
.end method

.method public onMediaExposure()V
    .locals 5

    .line 253
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$4;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    iget-wide v1, v0, Lcom/popcap/pvz2cthddev/TWGameAd;->mNativeDriverPtr:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/popcap/pvz2cthddev/TWGameAd;->Native_WatchAdComplete(JII)V

    return-void
.end method

.method public onMediaIncentived()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$4;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/popcap/pvz2cthddev/TWGameAd;->mHasAdFinished:Z

    return-void
.end method

.method public onMediaPreparedFailed(Ljava/lang/String;)V
    .locals 3

    .line 240
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$4;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    iget-wide v0, p1, Lcom/popcap/pvz2cthddev/TWGameAd;->mNativeDriverPtr:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/popcap/pvz2cthddev/TWGameAd;->Native_WatchAdComplete(JII)V

    return-void
.end method
