.class Lcom/popcap/pvz2cthddev/TWPurchase$RedeemInfo;
.super Ljava/lang/Object;
.source "TWPurchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/TWPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RedeemInfo"
.end annotation


# instance fields
.field public orderNumber:Ljava/lang/String;

.field public payCode:Ljava/lang/String;

.field final synthetic this$0:Lcom/popcap/pvz2cthddev/TWPurchase;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/TWPurchase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$RedeemInfo;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p2, p0, Lcom/popcap/pvz2cthddev/TWPurchase$RedeemInfo;->payCode:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lcom/popcap/pvz2cthddev/TWPurchase$RedeemInfo;->orderNumber:Ljava/lang/String;

    return-void
.end method
