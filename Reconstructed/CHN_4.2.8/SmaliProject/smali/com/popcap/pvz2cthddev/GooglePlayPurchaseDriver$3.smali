.class Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$3;
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

    .line 311
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$3;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/popcap/pvz2cthddev/utils/IabResult;Lcom/popcap/pvz2cthddev/utils/Inventory;)V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$3;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    sget-object v1, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;->SUPPORTED:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;

    invoke-static {v0, v1}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->access$102(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;)Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;

    .line 321
    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/utils/IabResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 325
    invoke-virtual {p2}, Lcom/popcap/pvz2cthddev/utils/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/popcap/pvz2cthddev/utils/Purchase;

    .line 327
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$3;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    invoke-static {v0, p2}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->access$400(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;Lcom/popcap/pvz2cthddev/utils/Purchase;)Z

    goto :goto_0

    .line 331
    :cond_0
    const-string p1, "Billing.Driver"

    const-string p2, "Setup completed"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
