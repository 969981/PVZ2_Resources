.class Lcom/popcap/pvz2cthddev/TWGameAd$8;
.super Ljava/lang/Object;
.source "TWGameAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWGameAd;->CloseBanner(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/TWGameAd;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 679
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$8;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    iput p2, p0, Lcom/popcap/pvz2cthddev/TWGameAd$8;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "viewMap.remove id : "

    const-string v1, "viewMap cant find id : "

    .line 684
    :try_start_0
    iget-object v2, p0, Lcom/popcap/pvz2cthddev/TWGameAd$8;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v2}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v2

    iget v3, p0, Lcom/popcap/pvz2cthddev/TWGameAd$8;->val$id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    const-string v3, "AdCheck"

    if-eqz v2, :cond_0

    .line 687
    :try_start_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 688
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 689
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$8;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v1}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/popcap/pvz2cthddev/TWGameAd$8;->val$id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$8;->val$id:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 693
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$8;->val$id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 697
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
