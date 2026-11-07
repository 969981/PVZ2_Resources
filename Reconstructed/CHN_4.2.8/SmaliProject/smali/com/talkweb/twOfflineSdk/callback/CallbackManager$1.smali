.class final Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;
.super Ljava/lang/Object;
.source "CallbackManager.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$code:I

.field final synthetic val$finalTwOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$orderNumber:Ljava/lang/String;

.field final synthetic val$realPrice:Ljava/lang/String;

.field final synthetic val$tradeNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$orderNumber:Ljava/lang/String;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$finalTwOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    iput p3, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$code:I

    iput-object p4, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$msg:Ljava/lang/String;

    iput-object p5, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$tradeNumber:Ljava/lang/String;

    iput-object p6, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$realPrice:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 14

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u67e5\u8be2\u5931\u8d25\u8ba2\u5355\u4fe1\u606f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "0000"

    .line 191
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u67e5\u8be2\u5230\u8ba2\u5355\u6570\u636e"

    .line 192
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$orderNumber:Ljava/lang/String;

    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$finalTwOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->getCurPayGood()Lcom/talkweb/twOfflineSdk/bean/Goods;

    move-result-object p1

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getGoodsId()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$finalTwOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->getCurPayGood()Lcom/talkweb/twOfflineSdk/bean/Goods;

    move-result-object p1

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPrice()Ljava/lang/String;

    move-result-object v4

    iget p1, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$code:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getChannelUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    const-string v1, "22"

    invoke-static/range {v0 .. v7}, Lcom/talkweb/twutil/TgaPointUtil;->payFlow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x270f

    .line 194
    iget-object v9, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$msg:Ljava/lang/String;

    iget-object v10, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$orderNumber:Ljava/lang/String;

    iget-object v11, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$tradeNumber:Ljava/lang/String;

    iget-object v12, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$realPrice:Ljava/lang/String;

    iget-object v13, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$finalTwOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-static/range {v8 .. v13}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u672a\u67e5\u8be2\u5230\u8ba2\u5355\u6570\u636e"

    .line 196
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$orderNumber:Ljava/lang/String;

    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$finalTwOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->getCurPayGood()Lcom/talkweb/twOfflineSdk/bean/Goods;

    move-result-object p1

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getGoodsId()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$finalTwOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->getCurPayGood()Lcom/talkweb/twOfflineSdk/bean/Goods;

    move-result-object p1

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPrice()Ljava/lang/String;

    move-result-object v4

    iget p1, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$code:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getChannelUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    const-string v1, "23"

    invoke-static/range {v0 .. v7}, Lcom/talkweb/twutil/TgaPointUtil;->payFlow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget v8, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$code:I

    iget-object v9, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$msg:Ljava/lang/String;

    iget-object v10, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$orderNumber:Ljava/lang/String;

    iget-object v11, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$tradeNumber:Ljava/lang/String;

    iget-object v12, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$realPrice:Ljava/lang/String;

    iget-object v13, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$1;->val$finalTwOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-static/range {v8 .. v13}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V

    :goto_0
    return-void
.end method
