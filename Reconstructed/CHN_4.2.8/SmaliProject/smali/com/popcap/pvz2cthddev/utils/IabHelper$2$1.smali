.class Lcom/popcap/pvz2cthddev/utils/IabHelper$2$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/utils/IabHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popcap/pvz2cthddev/utils/IabHelper$2;

.field final synthetic val$inv_f:Lcom/popcap/pvz2cthddev/utils/Inventory;

.field final synthetic val$result_f:Lcom/popcap/pvz2cthddev/utils/IabResult;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/utils/IabHelper$2;Lcom/popcap/pvz2cthddev/utils/IabResult;Lcom/popcap/pvz2cthddev/utils/Inventory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 534
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$2$1;->this$1:Lcom/popcap/pvz2cthddev/utils/IabHelper$2;

    iput-object p2, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$2$1;->val$result_f:Lcom/popcap/pvz2cthddev/utils/IabResult;

    iput-object p3, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$2$1;->val$inv_f:Lcom/popcap/pvz2cthddev/utils/Inventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 536
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$2$1;->this$1:Lcom/popcap/pvz2cthddev/utils/IabHelper$2;

    iget-object v0, v0, Lcom/popcap/pvz2cthddev/utils/IabHelper$2;->val$listener:Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$2$1;->val$result_f:Lcom/popcap/pvz2cthddev/utils/IabResult;

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$2$1;->val$inv_f:Lcom/popcap/pvz2cthddev/utils/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/popcap/pvz2cthddev/utils/IabResult;Lcom/popcap/pvz2cthddev/utils/Inventory;)V

    return-void
.end method
