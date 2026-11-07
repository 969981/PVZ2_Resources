.class Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$9;
.super Ljava/lang/Object;
.source "GooglePlayPurchaseDriver.java"

# interfaces
.implements Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeFinishedListener;


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

    .line 566
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$9;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/popcap/pvz2cthddev/utils/Purchase;Lcom/popcap/pvz2cthddev/utils/IabResult;)V
    .locals 2

    .line 571
    invoke-virtual {p2}, Lcom/popcap/pvz2cthddev/utils/IabResult;->isSuccess()Z

    move-result v0

    const-string v1, "Billing.Driver"

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/utils/Purchase;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/popcap/pvz2cthddev/utils/IabResult;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "ConfirmDelivery: %s %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$9;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    invoke-static {p2}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->access$800(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/utils/Purchase;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 578
    :cond_0
    const-string p1, "ConfirmDelivery failed"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :goto_0
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$9;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    const-string p2, "consumeAsync"

    invoke-static {p1, p2}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->access$600(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;Ljava/lang/String;)V

    return-void
.end method
