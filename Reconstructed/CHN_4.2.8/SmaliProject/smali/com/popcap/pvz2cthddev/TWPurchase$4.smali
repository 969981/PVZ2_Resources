.class Lcom/popcap/pvz2cthddev/TWPurchase$4;
.super Ljava/lang/Object;
.source "TWPurchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWPurchase;->RequestPaySub(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

.field final synthetic val$code:Ljava/lang/String;

.field final synthetic val$orderNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/TWPurchase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 308
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$4;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iput-object p2, p0, Lcom/popcap/pvz2cthddev/TWPurchase$4;->val$code:Ljava/lang/String;

    iput-object p3, p0, Lcom/popcap/pvz2cthddev/TWPurchase$4;->val$orderNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 310
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWPurchase$4;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$4;->val$code:Ljava/lang/String;

    iput-object v1, v0, Lcom/popcap/pvz2cthddev/TWPurchase;->mPurchaseCode:Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWPurchase$4;->val$code:Ljava/lang/String;

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TW_RequestPay( "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/TWPurchase$4;->val$code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TWPurchase"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "orderNumber is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/popcap/pvz2cthddev/TWPurchase$4;->val$orderNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$4;->val$orderNumber:Ljava/lang/String;

    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v2

    new-instance v3, Lcom/popcap/pvz2cthddev/TWPurchase$4$1;

    invoke-direct {v3, p0}, Lcom/popcap/pvz2cthddev/TWPurchase$4$1;-><init>(Lcom/popcap/pvz2cthddev/TWPurchase$4;)V

    invoke-static {v0, v1, v2, v3}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->pay(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method
