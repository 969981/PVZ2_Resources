.class Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;
.super Ljava/lang/Object;
.source "TwOfflineSDKImpl.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/PayAllowedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->pay(Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$good:Lcom/talkweb/twOfflineSdk/bean/Goods;

.field final synthetic val$orderNumber:Ljava/lang/String;

.field final synthetic val$payWay:Lcom/talkweb/twOfflineSdk/bean/PayWay;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/bean/Goods;Lcom/talkweb/twOfflineSdk/bean/PayWay;)V
    .locals 0

    .line 803
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->this$0:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$orderNumber:Ljava/lang/String;

    iput-object p4, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$good:Lcom/talkweb/twOfflineSdk/bean/Goods;

    iput-object p5, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$payWay:Lcom/talkweb/twOfflineSdk/bean/PayWay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public payAllowed(Z)V
    .locals 10

    if-eqz p1, :cond_1

    const-string p1, "\u7ecf\u8fc7\u672a\u6210\u5e74\u4eba\u68c0\u6d4b\uff0c\u53ef\u4ee5\u652f\u4ed8"

    .line 808
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 809
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$orderNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$good:Lcom/talkweb/twOfflineSdk/bean/Goods;

    invoke-virtual {v1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getGoodsId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/talkweb/twOfflineSdk/tools/OrderUploader;->syncOrderToServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$context:Landroid/app/Activity;

    iget-object v4, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$orderNumber:Ljava/lang/String;

    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$good:Lcom/talkweb/twOfflineSdk/bean/Goods;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getGoodsId()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$good:Lcom/talkweb/twOfflineSdk/bean/Goods;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPrice()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$context:Landroid/app/Activity;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getChannelUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    const-string v3, "1"

    const-string v7, "Payment successful"

    invoke-static/range {v2 .. v9}, Lcom/talkweb/twutil/TgaPointUtil;->payFlow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$payWay:Lcom/talkweb/twOfflineSdk/bean/PayWay;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getOperators()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil;->OPERATOR_THIRD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 813
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->this$0:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$payWay:Lcom/talkweb/twOfflineSdk/bean/PayWay;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$orderNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$context:Landroid/app/Activity;

    invoke-virtual {p1, v0, v1, v2}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->channelPay(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 815
    :cond_0
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->this$0:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$payWay:Lcom/talkweb/twOfflineSdk/bean/PayWay;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$orderNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$context:Landroid/app/Activity;

    invoke-virtual {p1, v0, v1, v2}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->carrierPay(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const-string p1, "\u672a\u7ecf\u8fc7\u672a\u6210\u5e74\u4eba\u68c0\u6d4b\uff0c\u4e0d\u53ef\u4ee5\u652f\u4ed8"

    .line 818
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$context:Landroid/app/Activity;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$orderNumber:Ljava/lang/String;

    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$good:Lcom/talkweb/twOfflineSdk/bean/Goods;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getGoodsId()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$good:Lcom/talkweb/twOfflineSdk/bean/Goods;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPrice()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$context:Landroid/app/Activity;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getChannelUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    const-string v1, "11"

    const-string v5, "Minor, cannot pay"

    invoke-static/range {v0 .. v7}, Lcom/talkweb/twutil/TgaPointUtil;->payFlow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3e8

    .line 820
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;->val$orderNumber:Ljava/lang/String;

    const-string v1, "\u672a\u7ecf\u8fc7\u672a\u6210\u5e74\u4eba\u68c0\u6d4b\uff0c\u4e0d\u53ef\u4ee5\u652f\u4ed8!"

    const-string v2, ""

    invoke-static {p1, v1, v0, v0, v2}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
