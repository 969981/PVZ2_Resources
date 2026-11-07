.class Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$8;
.super Ljava/lang/Object;
.source "GooglePlayPurchaseDriver.java"

# interfaces
.implements Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;


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

    .line 465
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$8;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/popcap/pvz2cthddev/utils/IabResult;Lcom/popcap/pvz2cthddev/utils/Purchase;)V
    .locals 2

    .line 468
    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/utils/IabResult;->isSuccess()Z

    move-result v0

    const-string v1, "Billing.Driver"

    if-eqz v0, :cond_0

    .line 470
    const-string p1, "purchaseFinished completed"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$8;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    invoke-static {p1, p2}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->access$400(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;Lcom/popcap/pvz2cthddev/utils/Purchase;)Z

    goto :goto_1

    .line 481
    :cond_0
    sget-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;->Error:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    .line 483
    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/utils/IabResult;->getResponse()I

    move-result p1

    const/16 v0, -0x3ed

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    .line 495
    sget-object p1, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;->Error:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    goto :goto_0

    .line 491
    :cond_1
    sget-object p1, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;->Pending:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    goto :goto_0

    .line 487
    :cond_2
    sget-object p1, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;->Canceled:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    .line 499
    :goto_0
    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "purchaseFinished failed %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    .line 502
    invoke-virtual {p2}, Lcom/popcap/pvz2cthddev/utils/Purchase;->getSku()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 504
    invoke-virtual {p2}, Lcom/popcap/pvz2cthddev/utils/Purchase;->getSku()Ljava/lang/String;

    .line 509
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$8;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    const-string p2, "launchPurchaseFlow"

    invoke-static {p1, p2}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->access$600(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;Ljava/lang/String;)V

    return-void
.end method
