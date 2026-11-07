.class Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$2;
.super Ljava/lang/Object;
.source "GooglePlayPurchaseDriver.java"

# interfaces
.implements Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabSetupFinishedListener;


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

    .line 284
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$2;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/popcap/pvz2cthddev/utils/IabResult;)V
    .locals 3

    .line 287
    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/utils/IabResult;->isSuccess()Z

    move-result v0

    const-string v1, "Billing.Driver"

    if-eqz v0, :cond_1

    .line 292
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$2;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    invoke-static {p1}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->access$100(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;

    move-result-object p1

    sget-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;->UNKNOWN:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;

    if-ne p1, v0, :cond_0

    .line 296
    const-string p1, "Setup succeeded, looking for pending transactions"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$2;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    invoke-static {p1}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->access$300(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)Lcom/popcap/pvz2cthddev/utils/IabHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$2;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->access$200(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;)V

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$2;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    sget-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;->SUPPORTED:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;

    invoke-static {p1, v0}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->access$102(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;)Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;

    goto :goto_0

    .line 304
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Setup failed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$2;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    sget-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;->UNSUPPORTED:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;

    invoke-static {p1, v0}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->access$102(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;)Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;

    :goto_0
    return-void
.end method
