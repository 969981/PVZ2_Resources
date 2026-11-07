.class Lcom/popcap/pvz2cthddev/TWPurchase$15;
.super Ljava/lang/Object;
.source "TWPurchase.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWPurchase;->VerifySecondLock()V
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

    .line 1026
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$15;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1029
    :cond_0
    const-string p2, ""

    :goto_0
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 1032
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$15;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/popcap/pvz2cthddev/TWPurchase;->Native_VerifySecondLock(ZLjava/lang/String;)V

    goto :goto_1

    .line 1035
    :cond_1
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$15;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/popcap/pvz2cthddev/TWPurchase;->Native_VerifySecondLock(ZLjava/lang/String;)V

    :goto_1
    return-void
.end method
