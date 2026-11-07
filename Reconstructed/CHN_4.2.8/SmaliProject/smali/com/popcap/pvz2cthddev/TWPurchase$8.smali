.class Lcom/popcap/pvz2cthddev/TWPurchase$8;
.super Ljava/lang/Object;
.source "TWPurchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWPurchase;->GetDeviceID()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/TWPurchase;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/TWPurchase;)V
    .locals 0

    .line 775
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$8;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "runOnUiThread run: thread="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TWPurchase"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWPurchase$8;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    invoke-static {}, Lcom/popcap/pvz2cthddev/TWPurchase;->access$200()Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/popcap/pvz2cthddev/TWPurchase;->access$300(Lcom/popcap/pvz2cthddev/TWPurchase;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
