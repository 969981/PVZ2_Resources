.class Lcom/popcap/pvz2cthddev/TWPurchase$5;
.super Ljava/lang/Object;
.source "TWPurchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWPurchase;->RequestOrderSub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

.field final synthetic val$code:Ljava/lang/String;

.field final synthetic val$goodName:Ljava/lang/String;

.field final synthetic val$orderNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/TWPurchase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 357
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$5;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iput-object p2, p0, Lcom/popcap/pvz2cthddev/TWPurchase$5;->val$code:Ljava/lang/String;

    iput-object p3, p0, Lcom/popcap/pvz2cthddev/TWPurchase$5;->val$goodName:Ljava/lang/String;

    iput-object p4, p0, Lcom/popcap/pvz2cthddev/TWPurchase$5;->val$orderNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 359
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWPurchase$5;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$5;->val$code:Ljava/lang/String;

    iput-object v1, v0, Lcom/popcap/pvz2cthddev/TWPurchase;->mPurchaseCode:Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWPurchase$5;->val$code:Ljava/lang/String;

    .line 361
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$5;->val$goodName:Ljava/lang/String;

    .line 364
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "orderNumber is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/popcap/pvz2cthddev/TWPurchase$5;->val$orderNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    iget-object v2, p0, Lcom/popcap/pvz2cthddev/TWPurchase$5;->val$orderNumber:Ljava/lang/String;

    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v3

    new-instance v4, Lcom/popcap/pvz2cthddev/TWPurchase$5$1;

    invoke-direct {v4, p0}, Lcom/popcap/pvz2cthddev/TWPurchase$5$1;-><init>(Lcom/popcap/pvz2cthddev/TWPurchase$5;)V

    invoke-static {v0, v2, v1, v3, v4}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->order(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method
