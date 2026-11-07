.class Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$5;
.super Ljava/lang/Object;
.source "GooglePlayPurchaseDriver.java"

# interfaces
.implements Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$5;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/popcap/pvz2cthddev/utils/IabResult;Lcom/popcap/pvz2cthddev/utils/Inventory;)V
    .locals 2

    .line 368
    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/utils/IabResult;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 376
    :cond_0
    invoke-virtual {p2}, Lcom/popcap/pvz2cthddev/utils/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/popcap/pvz2cthddev/utils/Purchase;

    .line 378
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$5;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    invoke-static {v1, v0}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->access$400(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;Lcom/popcap/pvz2cthddev/utils/Purchase;)Z

    goto :goto_0

    .line 381
    :cond_1
    invoke-virtual {p2}, Lcom/popcap/pvz2cthddev/utils/Inventory;->getAllSkuDetails()Ljava/util/Collection;

    .line 385
    :goto_1
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$5;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    const-string p2, "queryInventoryAsync"

    invoke-static {p1, p2}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->access$600(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;Ljava/lang/String;)V

    return-void
.end method
