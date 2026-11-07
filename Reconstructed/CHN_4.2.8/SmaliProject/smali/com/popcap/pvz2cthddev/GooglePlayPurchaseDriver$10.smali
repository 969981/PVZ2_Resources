.class Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$10;
.super Ljava/lang/Object;
.source "GooglePlayPurchaseDriver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->ConfirmDelivery(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

.field final synthetic val$purchase:Lcom/popcap/pvz2cthddev/utils/Purchase;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;Lcom/popcap/pvz2cthddev/utils/Purchase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 608
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$10;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    iput-object p2, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$10;->val$purchase:Lcom/popcap/pvz2cthddev/utils/Purchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$10;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->access$300(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)Lcom/popcap/pvz2cthddev/utils/IabHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$10;->val$purchase:Lcom/popcap/pvz2cthddev/utils/Purchase;

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$10;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    invoke-static {v2}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->access$900(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeFinishedListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->consumeAsync(Lcom/popcap/pvz2cthddev/utils/Purchase;Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeFinishedListener;)V

    return-void
.end method
