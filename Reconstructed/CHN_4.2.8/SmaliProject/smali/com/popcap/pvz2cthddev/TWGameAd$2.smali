.class Lcom/popcap/pvz2cthddev/TWGameAd$2;
.super Ljava/lang/Object;
.source "TWGameAd.java"

# interfaces
.implements Lcom/talkweb/twgame/callback/ScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWGameAd;->ShowScreenView(I)V
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

    .line 156
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$2;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenClicked()V
    .locals 5

    .line 181
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$2;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    iget-wide v1, v0, Lcom/popcap/pvz2cthddev/TWGameAd;->mNativeDriverPtr:J

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/popcap/pvz2cthddev/TWGameAd;->Native_WatchAdComplete(JII)V

    return-void
.end method

.method public onScreenClosed()V
    .locals 5

    .line 175
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$2;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    iget-wide v1, v0, Lcom/popcap/pvz2cthddev/TWGameAd;->mNativeDriverPtr:J

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/popcap/pvz2cthddev/TWGameAd;->Native_WatchAdComplete(JII)V

    return-void
.end method

.method public onScreenExposure()V
    .locals 4

    .line 168
    const-string v0, "AdCheck"

    const-string v1, "aaa"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$2;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    iget-wide v1, v0, Lcom/popcap/pvz2cthddev/TWGameAd;->mNativeDriverPtr:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/popcap/pvz2cthddev/TWGameAd;->Native_WatchAdComplete(JII)V

    return-void
.end method

.method public onScreenPreparedFailed(Ljava/lang/String;)V
    .locals 4

    .line 161
    const-string v0, "AdCheck"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$2;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    iget-wide v0, p1, Lcom/popcap/pvz2cthddev/TWGameAd;->mNativeDriverPtr:J

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/popcap/pvz2cthddev/TWGameAd;->Native_WatchAdComplete(JII)V

    return-void
.end method
