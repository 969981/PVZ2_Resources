.class Lcom/popcap/pvz2cthddev/TWGameAd$9;
.super Ljava/lang/Object;
.source "TWGameAd.java"

# interfaces
.implements Lcom/talkweb/twgame/callback/ActiveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWGameAd;->CheckActivityInfos()V
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

    .line 739
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$9;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public response(Ljava/util/Map;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 744
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 746
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CheckKey: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GetActivityCheck"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CheckValue: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$9;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    iget-object v1, v1, Lcom/popcap/pvz2cthddev/TWGameAd;->mActivityInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 756
    :cond_0
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$9;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/popcap/pvz2cthddev/TWGameAd;->mCheckedActivityInfos:Z

    .line 758
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$9;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    iget-object p1, p1, Lcom/popcap/pvz2cthddev/TWGameAd;->mActivityInfos:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    return p1
.end method
