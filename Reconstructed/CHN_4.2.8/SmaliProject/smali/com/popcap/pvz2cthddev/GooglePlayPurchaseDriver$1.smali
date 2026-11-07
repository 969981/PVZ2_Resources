.class Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$1;
.super Ljava/lang/Object;
.source "GooglePlayPurchaseDriver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->startOperation(Ljava/lang/Runnable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$1;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    iput-object p2, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$1;->val$runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 238
    new-instance v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PendingOperation;

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$1;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$1;->val$runnable:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$1;->val$name:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PendingOperation;-><init>(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$1;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    invoke-static {v1}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->access$000(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 242
    :goto_0
    iget-object v2, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$1;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    invoke-static {v2}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->access$000(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    .line 246
    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PendingOperation;->getOperation()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$1;->val$name:Ljava/lang/String;

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$1;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    invoke-static {v1}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->access$000(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PendingOperation;

    invoke-virtual {v1}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PendingOperation;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "operation %s queued; %s is currently running"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Billing.Driver"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
