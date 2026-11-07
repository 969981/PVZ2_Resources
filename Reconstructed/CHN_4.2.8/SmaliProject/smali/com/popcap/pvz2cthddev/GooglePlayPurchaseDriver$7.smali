.class Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$7;
.super Ljava/lang/Object;
.source "GooglePlayPurchaseDriver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->RequestPayment(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 453
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$7;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    iput-object p2, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$7;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$7;->val$productId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 455
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$7;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->access$300(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)Lcom/popcap/pvz2cthddev/utils/IabHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$7;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$7;->val$productId:Ljava/lang/String;

    iget-object v3, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$7;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    invoke-static {v3}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->access$700(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;

    move-result-object v3

    const v4, 0x8ca166

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;)V

    return-void
.end method
