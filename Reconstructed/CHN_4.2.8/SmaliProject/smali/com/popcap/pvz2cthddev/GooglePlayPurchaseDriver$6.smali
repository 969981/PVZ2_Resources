.class Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$6;
.super Ljava/lang/Object;
.source "GooglePlayPurchaseDriver.java"

# interfaces
.implements Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$OnActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$6;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 431
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1, p3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SexyAppFrameworkActivity.OnActivityResultListener %d %d %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Billing.Driver"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$6;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->access$300(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)Lcom/popcap/pvz2cthddev/utils/IabHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method
