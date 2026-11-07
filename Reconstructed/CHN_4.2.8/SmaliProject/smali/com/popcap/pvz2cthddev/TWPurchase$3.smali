.class Lcom/popcap/pvz2cthddev/TWPurchase$3;
.super Ljava/lang/Object;
.source "TWPurchase.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWPurchase;->QueryOrder(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/TWPurchase;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 257
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$3;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iput-object p2, p0, Lcom/popcap/pvz2cthddev/TWPurchase$3;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 1

    .line 262
    const-class p1, Lcom/talkweb/twOfflineSdk/bean/QueryOrderResultBean;

    invoke-static {p2, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/talkweb/twOfflineSdk/bean/QueryOrderResultBean;

    .line 263
    iget p1, p1, Lcom/talkweb/twOfflineSdk/bean/QueryOrderResultBean;->code:I

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$3;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWPurchase$3;->val$code:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/popcap/pvz2cthddev/TWPurchase;->Native_SDKQueryOrder(Ljava/lang/String;I)V

    goto :goto_0

    .line 274
    :cond_1
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$3;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWPurchase$3;->val$code:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/popcap/pvz2cthddev/TWPurchase;->Native_SDKQueryOrder(Ljava/lang/String;I)V

    goto :goto_0

    .line 271
    :cond_2
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$3;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWPurchase$3;->val$code:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/popcap/pvz2cthddev/TWPurchase;->Native_SDKQueryOrder(Ljava/lang/String;I)V

    goto :goto_0

    .line 268
    :cond_3
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$3;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWPurchase$3;->val$code:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/popcap/pvz2cthddev/TWPurchase;->Native_SDKQueryOrder(Ljava/lang/String;I)V

    goto :goto_0

    .line 265
    :cond_4
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$3;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-object p2, p0, Lcom/popcap/pvz2cthddev/TWPurchase$3;->val$code:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/popcap/pvz2cthddev/TWPurchase;->Native_SDKQueryOrder(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
