.class Lcom/popcap/pvz2cthddev/TWPurchase$1$1$1;
.super Ljava/lang/Object;
.source "TWPurchase.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWPurchase$1$1;->onResponse(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/popcap/pvz2cthddev/TWPurchase$1$1;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/TWPurchase$1$1;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1$1;->this$2:Lcom/popcap/pvz2cthddev/TWPurchase$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 4

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TW_LoginSDKResponse: code: "

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

    .line 168
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResponse result is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    const-class p1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;

    .line 170
    invoke-static {p2, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;

    .line 171
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1$1;->this$2:Lcom/popcap/pvz2cthddev/TWPurchase$1$1;

    iget-object p2, p2, Lcom/popcap/pvz2cthddev/TWPurchase$1$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$1;

    iget-object p2, p2, Lcom/popcap/pvz2cthddev/TWPurchase$1;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-object v1, p1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;->userId:Ljava/lang/String;

    iput-object v1, p2, Lcom/popcap/pvz2cthddev/TWPurchase;->mUniqueID:Ljava/lang/String;

    .line 172
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResponse mUniqueID is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1$1;->this$2:Lcom/popcap/pvz2cthddev/TWPurchase$1$1;

    iget-object v2, v2, Lcom/popcap/pvz2cthddev/TWPurchase$1$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$1;

    iget-object v2, v2, Lcom/popcap/pvz2cthddev/TWPurchase$1;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-object v2, v2, Lcom/popcap/pvz2cthddev/TWPurchase;->mUniqueID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    iget p2, p1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;->code:I

    const/16 v1, 0xbbe

    const/4 v2, 0x0

    if-eq p2, v1, :cond_0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    .line 192
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1$1;->this$2:Lcom/popcap/pvz2cthddev/TWPurchase$1$1;

    iget-object p2, p2, Lcom/popcap/pvz2cthddev/TWPurchase$1$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$1;

    iget-object p2, p2, Lcom/popcap/pvz2cthddev/TWPurchase$1;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1$1;->this$2:Lcom/popcap/pvz2cthddev/TWPurchase$1$1;

    iget-object v0, v0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$1;

    iget-object v0, v0, Lcom/popcap/pvz2cthddev/TWPurchase$1;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-wide v2, v0, Lcom/popcap/pvz2cthddev/TWPurchase;->mNativeDriverPtr:J

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;->token:Ljava/lang/String;

    invoke-virtual {p2, v2, v3, v1, p1}, Lcom/popcap/pvz2cthddev/TWPurchase;->Native_SDKLoginEnd(JILjava/lang/String;)V

    goto :goto_0

    .line 187
    :pswitch_0
    const-string p2, "TW_LoginSDKResponseCancel"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1$1;->this$2:Lcom/popcap/pvz2cthddev/TWPurchase$1$1;

    iget-object p2, p2, Lcom/popcap/pvz2cthddev/TWPurchase$1$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$1;

    iget-object p2, p2, Lcom/popcap/pvz2cthddev/TWPurchase$1;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1$1;->this$2:Lcom/popcap/pvz2cthddev/TWPurchase$1$1;

    iget-object v0, v0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$1;

    iget-object v0, v0, Lcom/popcap/pvz2cthddev/TWPurchase$1;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-wide v2, v0, Lcom/popcap/pvz2cthddev/TWPurchase;->mNativeDriverPtr:J

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;->token:Ljava/lang/String;

    invoke-virtual {p2, v2, v3, v1, p1}, Lcom/popcap/pvz2cthddev/TWPurchase;->Native_SDKLoginEnd(JILjava/lang/String;)V

    goto :goto_0

    .line 183
    :pswitch_1
    const-string p2, "TW_LoginSDKResponseFail"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1$1;->this$2:Lcom/popcap/pvz2cthddev/TWPurchase$1$1;

    iget-object p2, p2, Lcom/popcap/pvz2cthddev/TWPurchase$1$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$1;

    iget-object p2, p2, Lcom/popcap/pvz2cthddev/TWPurchase$1;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1$1;->this$2:Lcom/popcap/pvz2cthddev/TWPurchase$1$1;

    iget-object v0, v0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$1;

    iget-object v0, v0, Lcom/popcap/pvz2cthddev/TWPurchase$1;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-wide v2, v0, Lcom/popcap/pvz2cthddev/TWPurchase;->mNativeDriverPtr:J

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;->token:Ljava/lang/String;

    invoke-virtual {p2, v2, v3, v1, p1}, Lcom/popcap/pvz2cthddev/TWPurchase;->Native_SDKLoginEnd(JILjava/lang/String;)V

    goto :goto_0

    .line 175
    :pswitch_2
    const-string p2, "TW_LoginSDKResponseSuccess"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1$1;->this$2:Lcom/popcap/pvz2cthddev/TWPurchase$1$1;

    iget-object p2, p2, Lcom/popcap/pvz2cthddev/TWPurchase$1$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$1;

    iget-object p2, p2, Lcom/popcap/pvz2cthddev/TWPurchase$1;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1$1;->this$2:Lcom/popcap/pvz2cthddev/TWPurchase$1$1;

    iget-object v0, v0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$1;

    iget-object v0, v0, Lcom/popcap/pvz2cthddev/TWPurchase$1;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-wide v0, v0, Lcom/popcap/pvz2cthddev/TWPurchase;->mNativeDriverPtr:J

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;->token:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/popcap/pvz2cthddev/TWPurchase;->Native_SDKLoginEnd(JILjava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_0
    const-string p2, "TW_LoginSDKResponseGuest"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1$1;->this$2:Lcom/popcap/pvz2cthddev/TWPurchase$1$1;

    iget-object p2, p2, Lcom/popcap/pvz2cthddev/TWPurchase$1$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$1;

    iget-object p2, p2, Lcom/popcap/pvz2cthddev/TWPurchase$1;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1$1;->this$2:Lcom/popcap/pvz2cthddev/TWPurchase$1$1;

    iget-object v0, v0, Lcom/popcap/pvz2cthddev/TWPurchase$1$1;->this$1:Lcom/popcap/pvz2cthddev/TWPurchase$1;

    iget-object v0, v0, Lcom/popcap/pvz2cthddev/TWPurchase$1;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-wide v0, v0, Lcom/popcap/pvz2cthddev/TWPurchase;->mNativeDriverPtr:J

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;->token:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/popcap/pvz2cthddev/TWPurchase;->Native_SDKLoginEnd(JILjava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xbb8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
