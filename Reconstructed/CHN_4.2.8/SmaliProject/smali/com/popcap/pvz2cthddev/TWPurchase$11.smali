.class Lcom/popcap/pvz2cthddev/TWPurchase$11;
.super Ljava/lang/Object;
.source "TWPurchase.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/CheckNumberCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWPurchase;->CheckSpecialRedeem()V
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

    .line 928
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$11;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public result(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 935
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$11;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/popcap/pvz2cthddev/TWPurchase;->Native_CheckSpecialRedeem(Z)V

    goto :goto_0

    .line 939
    :cond_0
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$11;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/popcap/pvz2cthddev/TWPurchase;->Native_CheckSpecialRedeem(Z)V

    :goto_0
    return-void
.end method
