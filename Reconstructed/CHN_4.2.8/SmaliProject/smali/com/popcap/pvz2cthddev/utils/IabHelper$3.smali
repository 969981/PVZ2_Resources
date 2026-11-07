.class Lcom/popcap/pvz2cthddev/utils/IabHelper$3;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/utils/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeFinishedListener;Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeMultiFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/utils/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$multiListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeMultiFinishedListener;

.field final synthetic val$purchases:Ljava/util/List;

.field final synthetic val$singleListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/utils/IabHelper;Ljava/util/List;Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 836
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$3;->this$0:Lcom/popcap/pvz2cthddev/utils/IabHelper;

    iput-object p2, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$3;->val$purchases:Ljava/util/List;

    iput-object p3, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$3;->val$singleListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$3;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$3;->val$multiListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeMultiFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 838
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 839
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/popcap/pvz2cthddev/utils/Purchase;

    .line 841
    :try_start_0
    iget-object v3, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$3;->this$0:Lcom/popcap/pvz2cthddev/utils/IabHelper;

    invoke-virtual {v3, v2}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->consume(Lcom/popcap/pvz2cthddev/utils/Purchase;)V

    .line 842
    new-instance v3, Lcom/popcap/pvz2cthddev/utils/IabResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successful consume of sku "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/popcap/pvz2cthddev/utils/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Lcom/popcap/pvz2cthddev/utils/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/popcap/pvz2cthddev/utils/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 845
    invoke-virtual {v2}, Lcom/popcap/pvz2cthddev/utils/IabException;->getResult()Lcom/popcap/pvz2cthddev/utils/IabResult;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 849
    :cond_0
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$3;->this$0:Lcom/popcap/pvz2cthddev/utils/IabHelper;

    invoke-virtual {v1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->flagEndAsync()V

    .line 850
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$3;->val$singleListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeFinishedListener;

    if-eqz v1, :cond_1

    .line 851
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/popcap/pvz2cthddev/utils/IabHelper$3$1;

    invoke-direct {v2, p0, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper$3$1;-><init>(Lcom/popcap/pvz2cthddev/utils/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 857
    :cond_1
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$3;->val$multiListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v1, :cond_2

    .line 858
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/popcap/pvz2cthddev/utils/IabHelper$3$2;

    invoke-direct {v2, p0, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper$3$2;-><init>(Lcom/popcap/pvz2cthddev/utils/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
