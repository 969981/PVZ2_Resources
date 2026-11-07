.class Lcom/popcap/pvz2cthddev/TWPurchase$5$1;
.super Ljava/lang/Object;
.source "TWPurchase.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWPurchase$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popcap/pvz2cthddev/TWPurchase$5;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/TWPurchase$5;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$5$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 6

    .line 370
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResponse result is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    const-class p1, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;

    .line 373
    invoke-static {p2, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;

    .line 375
    iget-object v4, p1, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;->orderId:Ljava/lang/String;

    .line 376
    iget-object v5, p1, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;->payType:Ljava/lang/String;

    .line 378
    iget p1, p1, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;->code:I

    const/16 p2, 0x3e8

    if-eq p1, p2, :cond_2

    const/16 p2, 0x7d0

    if-eq p1, p2, :cond_1

    const/16 p2, 0x270f

    if-eq p1, p2, :cond_0

    .line 389
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$5$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$5;

    iget-object v0, p1, Lcom/popcap/pvz2cthddev/TWPurchase$5;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$5$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$5;

    iget-object p1, p1, Lcom/popcap/pvz2cthddev/TWPurchase$5;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-wide v1, p1, Lcom/popcap/pvz2cthddev/TWPurchase;->mNativeDriverPtr:J

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/popcap/pvz2cthddev/TWPurchase;->FirePaymentComplete(JILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_0
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$5$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$5;

    iget-object v0, p1, Lcom/popcap/pvz2cthddev/TWPurchase$5;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$5$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$5;

    iget-object p1, p1, Lcom/popcap/pvz2cthddev/TWPurchase$5;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-wide v1, p1, Lcom/popcap/pvz2cthddev/TWPurchase;->mNativeDriverPtr:J

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/popcap/pvz2cthddev/TWPurchase;->FirePaymentComplete(JILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_1
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$5$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$5;

    iget-object v0, p1, Lcom/popcap/pvz2cthddev/TWPurchase$5;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$5$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$5;

    iget-object p1, p1, Lcom/popcap/pvz2cthddev/TWPurchase$5;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-wide v1, p1, Lcom/popcap/pvz2cthddev/TWPurchase;->mNativeDriverPtr:J

    const/4 v3, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/popcap/pvz2cthddev/TWPurchase;->FirePaymentComplete(JILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_2
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$5$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$5;

    iget-object v0, p1, Lcom/popcap/pvz2cthddev/TWPurchase$5;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$5$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$5;

    iget-object p1, p1, Lcom/popcap/pvz2cthddev/TWPurchase$5;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-wide v1, p1, Lcom/popcap/pvz2cthddev/TWPurchase;->mNativeDriverPtr:J

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/popcap/pvz2cthddev/TWPurchase;->FirePaymentComplete(JILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
