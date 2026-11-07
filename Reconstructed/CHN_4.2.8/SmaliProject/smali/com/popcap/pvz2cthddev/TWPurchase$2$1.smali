.class Lcom/popcap/pvz2cthddev/TWPurchase$2$1;
.super Ljava/lang/Object;
.source "TWPurchase.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWPurchase$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popcap/pvz2cthddev/TWPurchase$2;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/TWPurchase$2;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$2$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 2

    .line 228
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResponse result is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    const-class p1, Lcom/talkweb/twOfflineSdk/bean/ExitResultBean;

    .line 231
    invoke-static {p2, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/talkweb/twOfflineSdk/bean/ExitResultBean;

    .line 232
    iget p1, p1, Lcom/talkweb/twOfflineSdk/bean/ExitResultBean;->code:I

    const/16 p2, 0x1388

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$2$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$2;

    iget-object p1, p1, Lcom/popcap/pvz2cthddev/TWPurchase$2;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-object p2, p0, Lcom/popcap/pvz2cthddev/TWPurchase$2$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$2;

    iget-object p2, p2, Lcom/popcap/pvz2cthddev/TWPurchase$2;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-wide v0, p2, Lcom/popcap/pvz2cthddev/TWPurchase;->mNativeDriverPtr:J

    invoke-virtual {p1, v0, v1}, Lcom/popcap/pvz2cthddev/TWPurchase;->Native_ExitGame(J)V

    :goto_0
    return-void
.end method
