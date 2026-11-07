.class Lcom/popcap/pvz2cthddev/TWPurchase$1$1;
.super Ljava/lang/Object;
.source "TWPurchase.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWPurchase$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popcap/pvz2cthddev/TWPurchase$1;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/TWPurchase$1;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 4

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TW_InitializeSDKResponse: code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "result: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TWPurchase"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResponse result is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    const-class p1, Lcom/talkweb/twOfflineSdk/bean/InitResultBean;

    .line 157
    invoke-static {p2, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/talkweb/twOfflineSdk/bean/InitResultBean;

    .line 158
    iget p1, p1, Lcom/talkweb/twOfflineSdk/bean/InitResultBean;->code:I

    const/16 p2, 0xfa0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, p2, :cond_1

    const/16 p2, 0xfa1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    sput-boolean v1, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    .line 201
    const-string p1, "TW_InitializeSDKResponseFail"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$1;

    iget-object p1, p1, Lcom/popcap/pvz2cthddev/TWPurchase$1;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-object p2, p0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$1;

    iget-object p2, p2, Lcom/popcap/pvz2cthddev/TWPurchase$1;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-wide v0, p2, Lcom/popcap/pvz2cthddev/TWPurchase;->mNativeDriverPtr:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/popcap/pvz2cthddev/TWPurchase;->Native_SDKInitEnd(JI)V

    goto :goto_0

    .line 160
    :cond_1
    sput-boolean v2, Lcom/popcap/pvz2cthddev/TWPurchase;->m_sdkSuccess:Z

    .line 161
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$1;

    iget-object p1, p1, Lcom/popcap/pvz2cthddev/TWPurchase$1;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-object p2, p0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$1;

    iget-object p2, p2, Lcom/popcap/pvz2cthddev/TWPurchase$1;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-wide v2, p2, Lcom/popcap/pvz2cthddev/TWPurchase;->mNativeDriverPtr:J

    invoke-virtual {p1, v2, v3, v1}, Lcom/popcap/pvz2cthddev/TWPurchase;->Native_SDKInitEnd(JI)V

    .line 162
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$1;

    iget-object p1, p1, Lcom/popcap/pvz2cthddev/TWPurchase$1;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-object p2, p0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$1;

    iget-object p2, p2, Lcom/popcap/pvz2cthddev/TWPurchase$1;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-wide v0, p2, Lcom/popcap/pvz2cthddev/TWPurchase;->mNativeDriverPtr:J

    invoke-virtual {p1, v0, v1}, Lcom/popcap/pvz2cthddev/TWPurchase;->Native_SDKLoginStart(J)V

    .line 163
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object p1

    new-instance p2, Lcom/popcap/pvz2cthddev/TWPurchase$1$1$1;

    invoke-direct {p2, p0}, Lcom/popcap/pvz2cthddev/TWPurchase$1$1$1;-><init>(Lcom/popcap/pvz2cthddev/TWPurchase$1$1;)V

    invoke-static {p1, p2}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->login(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    :goto_0
    return-void
.end method
