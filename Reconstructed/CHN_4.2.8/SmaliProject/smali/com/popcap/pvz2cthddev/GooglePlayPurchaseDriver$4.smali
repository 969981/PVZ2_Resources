.class Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$4;
.super Ljava/lang/Object;
.source "GooglePlayPurchaseDriver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->Refresh([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

.field final synthetic val$skus:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 353
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$4;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    iput-object p2, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$4;->val$skus:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 355
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$4;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->access$300(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)Lcom/popcap/pvz2cthddev/utils/IabHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$4;->val$skus:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$4;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    invoke-static {v2}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->access$500(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method
