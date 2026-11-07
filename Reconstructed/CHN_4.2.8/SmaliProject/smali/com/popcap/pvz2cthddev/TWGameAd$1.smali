.class Lcom/popcap/pvz2cthddev/TWGameAd$1;
.super Ljava/lang/Object;
.source "TWGameAd.java"

# interfaces
.implements Lcom/talkweb/twgame/callback/QueryMediaStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWGameAd;->IsMediaAvailable(I)Z
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

    .line 116
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$1;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMedialState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$1;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/popcap/pvz2cthddev/TWGameAd;->mMediaAvailable:Z

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$1;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/popcap/pvz2cthddev/TWGameAd;->mMediaAvailable:Z

    :goto_0
    return-void
.end method
