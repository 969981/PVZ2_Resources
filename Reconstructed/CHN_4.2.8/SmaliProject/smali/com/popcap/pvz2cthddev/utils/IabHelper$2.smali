.class Lcom/popcap/pvz2cthddev/utils/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/utils/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/utils/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/utils/IabHelper;ZLjava/util/List;Landroid/os/Handler;Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 519
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$2;->this$0:Lcom/popcap/pvz2cthddev/utils/IabHelper;

    iput-boolean p2, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$2;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$2;->val$listener:Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 521
    new-instance v0, Lcom/popcap/pvz2cthddev/utils/IabResult;

    const/4 v1, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/utils/IabResult;-><init>(ILjava/lang/String;)V

    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$2;->this$0:Lcom/popcap/pvz2cthddev/utils/IabHelper;

    iget-boolean v2, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$2;->val$querySkuDetails:Z

    iget-object v3, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/popcap/pvz2cthddev/utils/Inventory;

    move-result-object v1
    :try_end_0
    .catch Lcom/popcap/pvz2cthddev/utils/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 527
    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/utils/IabException;->getResult()Lcom/popcap/pvz2cthddev/utils/IabResult;

    move-result-object v0

    const/4 v1, 0x0

    .line 530
    :goto_0
    iget-object v2, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$2;->this$0:Lcom/popcap/pvz2cthddev/utils/IabHelper;

    invoke-virtual {v2}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->flagEndAsync()V

    .line 534
    iget-object v2, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v3, Lcom/popcap/pvz2cthddev/utils/IabHelper$2$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/popcap/pvz2cthddev/utils/IabHelper$2$1;-><init>(Lcom/popcap/pvz2cthddev/utils/IabHelper$2;Lcom/popcap/pvz2cthddev/utils/IabResult;Lcom/popcap/pvz2cthddev/utils/Inventory;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
