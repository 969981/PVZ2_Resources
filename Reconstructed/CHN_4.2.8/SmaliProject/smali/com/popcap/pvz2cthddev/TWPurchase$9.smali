.class Lcom/popcap/pvz2cthddev/TWPurchase$9;
.super Ljava/lang/Object;
.source "TWPurchase.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWPurchase;->CheckRedeemOrders()V
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

    .line 830
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$9;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 6

    .line 834
    const-class p1, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResultBean;

    .line 835
    invoke-static {p2, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResultBean;

    .line 836
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "CheckOrderValid onResponse, code = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResultBean;->code:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TwOfflineSDK"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget p2, p1, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResultBean;->code:I

    const/16 v1, 0x3e8

    if-eq p2, v1, :cond_2

    const/16 v1, 0x1770

    if-eq p2, v1, :cond_0

    const/16 p1, 0x1771

    if-eq p2, p1, :cond_2

    goto :goto_1

    .line 839
    :cond_0
    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResultBean;->checkOrderMap:Ljava/util/Map;

    .line 840
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 841
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 842
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;

    iget-object v2, v2, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;->payCode:Ljava/lang/String;

    .line 843
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;

    iget-object p2, p2, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;->orderNumber:Ljava/lang/String;

    .line 844
    iget-object v3, p0, Lcom/popcap/pvz2cthddev/TWPurchase$9;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-object v3, v3, Lcom/popcap/pvz2cthddev/TWPurchase;->mRedeemOrders:Ljava/util/Map;

    new-instance v4, Lcom/popcap/pvz2cthddev/TWPurchase$RedeemInfo;

    iget-object v5, p0, Lcom/popcap/pvz2cthddev/TWPurchase$9;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    invoke-direct {v4, v5, v2, p2}, Lcom/popcap/pvz2cthddev/TWPurchase$RedeemInfo;-><init>(Lcom/popcap/pvz2cthddev/TWPurchase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CheckOrderValid "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 847
    :cond_1
    const-string p1, "CheckOrderValid Success"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 851
    :cond_2
    const-string p1, "CheckOrderValid failure"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :goto_1
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$9;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/popcap/pvz2cthddev/TWPurchase;->mCheckedRedeemOrders:Z

    return-void
.end method
