.class Lcom/tw/pay/sdk/util/TwPayUtil$7;
.super Ljava/lang/Object;
.source "TwPayUtil.java"

# interfaces
.implements Lcom/tw/pay/sdk/callback/TwCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/util/TwPayUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/TwPayUtil;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwPayUtil;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/Object;)V
    .locals 6

    const-string v0, "1"

    const-string v1, "2"

    .line 366
    invoke-static {}, Lcom/tw/pay/sdk/tool/DialogTool;->dialogDimiss()V

    .line 367
    check-cast p1, Lcom/talkweb/sdk/vo/ReturnObject;

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCallback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    const-string v2, "02"

    if-eqz p1, :cond_9

    .line 369
    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/ReturnObject;->getResultCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 371
    :try_start_0
    new-instance v3, Lcom/talkweb/sdk/vo/OrderRepsonseVo;

    invoke-direct {v3}, Lcom/talkweb/sdk/vo/OrderRepsonseVo;-><init>()V

    iget-object p1, p1, Lcom/talkweb/sdk/vo/ReturnObject;->content:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/talkweb/sdk/vo/OrderRepsonseVo;->decode(Ljava/lang/String;)Lcom/talkweb/sdk/vo/BaseVO;

    move-result-object p1

    check-cast p1, Lcom/talkweb/sdk/vo/OrderRepsonseVo;

    .line 372
    iget-object v3, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {v3}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$200(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/tw/pay/sdk/bean/PayResultBean;

    move-result-object v3

    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/OrderRepsonseVo;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tw/pay/sdk/bean/PayResultBean;->serialNumber:Ljava/lang/String;

    .line 373
    iget-object v3, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {v3}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$700(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/talkweb/sdk/orm/model/PaywayInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->getPayStyle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 374
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$100(Lcom/tw/pay/sdk/util/TwPayUtil;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u914d\u7f6e\u9519\u8bef\uff0c\u8bf7\u91cd\u542f\u6216\u8005\u8054\u7cfb\u5ba2\u670d\uff01"

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 375
    :cond_0
    iget-object v3, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {v3}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$700(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/talkweb/sdk/orm/model/PaywayInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->getPayStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 381
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$100(Lcom/tw/pay/sdk/util/TwPayUtil;)Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/tw/pay/sdk/ui/WebActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "webTitle"

    .line 382
    iget-object v3, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {v3}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$700(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/talkweb/sdk/orm/model/PaywayInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->getPayWayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "webUrl"

    .line 383
    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/OrderRepsonseVo;->getPayUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 384
    sput p1, Lcom/tw/pay/sdk/ui/WebActivity;->webType:I

    .line 385
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    iget-object p1, p1, Lcom/tw/pay/sdk/util/TwPayUtil;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    sput-object p1, Lcom/tw/pay/sdk/ui/WebActivity;->twCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 386
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$100(Lcom/tw/pay/sdk/util/TwPayUtil;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 388
    :cond_1
    iget-object v3, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {v3}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$700(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/talkweb/sdk/orm/model/PaywayInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->getPayStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    .line 389
    invoke-static {v3}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$700(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/talkweb/sdk/orm/model/PaywayInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->getPayType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$100(Lcom/tw/pay/sdk/util/TwPayUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tw/pay/sdk/alipay/AlipayTool;->getInstance(Landroid/content/Context;)Lcom/tw/pay/sdk/alipay/AlipayTool;

    move-result-object v0

    .line 391
    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/OrderRepsonseVo;->getPayRequestData()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    iget-object v1, v1, Lcom/tw/pay/sdk/util/TwPayUtil;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 390
    invoke-virtual {v0, p1, v1}, Lcom/tw/pay/sdk/alipay/AlipayTool;->alipayPay(Ljava/lang/String;Lcom/tw/pay/sdk/callback/TwCallback;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "9"

    .line 392
    iget-object v3, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {v3}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$700(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/talkweb/sdk/orm/model/PaywayInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->getPayWayId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 393
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$100(Lcom/tw/pay/sdk/util/TwPayUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->getInstance(Landroid/content/Context;)Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;

    move-result-object v0

    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/OrderRepsonseVo;->getPayRequestData()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    iget-object v1, v1, Lcom/tw/pay/sdk/util/TwPayUtil;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-virtual {v0, p1, v1}, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->alipayPay(Ljava/lang/String;Lcom/tw/pay/sdk/callback/TwCallback;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "10"

    .line 394
    iget-object v3, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {v3}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$700(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/talkweb/sdk/orm/model/PaywayInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->getPayWayId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orderInfo.getPayRequestData():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/OrderRepsonseVo;->getPayRequestData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 396
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/OrderRepsonseVo;->getPayRequestData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "token_id"

    .line 401
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "agent_id"

    .line 402
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$100(Lcom/tw/pay/sdk/util/TwPayUtil;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/tw/pay/sdk/wxpay/HeePayActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "tokenId"

    .line 405
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "agentId"

    .line 406
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "orderNumber"

    .line 407
    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/OrderRepsonseVo;->getSerialNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$100(Lcom/tw/pay/sdk/util/TwPayUtil;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 409
    :cond_4
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$700(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/talkweb/sdk/orm/model/PaywayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->getPayStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    .line 410
    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$700(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/talkweb/sdk/orm/model/PaywayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->getPayType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 411
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$200(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/tw/pay/sdk/bean/PayResultBean;

    move-result-object p1

    iput-object v2, p1, Lcom/tw/pay/sdk/bean/PayResultBean;->code:Ljava/lang/String;

    .line 412
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$000(Lcom/tw/pay/sdk/util/TwPayUtil;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    :cond_5
    const-string v0, "11"

    .line 413
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$700(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/talkweb/sdk/orm/model/PaywayInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->getPayWayId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 414
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/OrderRepsonseVo;->getPayRequestData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-static {v0}, Lcom/tw/pay/sdk/wxpay/WXUtils;->WXLaunchMiniProgram(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "12"

    .line 417
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$700(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/talkweb/sdk/orm/model/PaywayInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->getPayWayId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AliSdkPayTool 12 orderInfo.getPayRequestData():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/OrderRepsonseVo;->getPayRequestData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$100(Lcom/tw/pay/sdk/util/TwPayUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->getInstance(Landroid/content/Context;)Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;

    move-result-object v0

    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/OrderRepsonseVo;->getPayRequestData()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    iget-object v1, v1, Lcom/tw/pay/sdk/util/TwPayUtil;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-virtual {v0, p1, v1}, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->alipayPay(Ljava/lang/String;Lcom/tw/pay/sdk/callback/TwCallback;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "13"

    .line 423
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$700(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/talkweb/sdk/orm/model/PaywayInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->getPayWayId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AliSdkPayTool 13 orderInfo.getPayRequestData():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/OrderRepsonseVo;->getPayRequestData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 425
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/OrderRepsonseVo;->getPayRequestData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "200"

    const-string v1, "result_code"

    .line 426
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 427
    new-instance p1, Lorg/json/JSONObject;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$100(Lcom/tw/pay/sdk/util/TwPayUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->getInstance(Landroid/content/Context;)Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;

    move-result-object v0

    const-string v1, "order_str"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    iget-object v1, v1, Lcom/tw/pay/sdk/util/TwPayUtil;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-virtual {v0, p1, v1}, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->alipayPay(Ljava/lang/String;Lcom/tw/pay/sdk/callback/TwCallback;)V

    goto :goto_0

    .line 431
    :cond_8
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$100(Lcom/tw/pay/sdk/util/TwPayUtil;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u652f\u4ed8\u65b9\u5f0f\u4e0d\u5b58\u5728"

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 432
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$200(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/tw/pay/sdk/bean/PayResultBean;

    move-result-object p1

    iput-object v2, p1, Lcom/tw/pay/sdk/bean/PayResultBean;->code:Ljava/lang/String;

    .line 433
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$000(Lcom/tw/pay/sdk/util/TwPayUtil;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 439
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 440
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$200(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/tw/pay/sdk/bean/PayResultBean;

    move-result-object p1

    iput-object v2, p1, Lcom/tw/pay/sdk/bean/PayResultBean;->code:Ljava/lang/String;

    .line 441
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$000(Lcom/tw/pay/sdk/util/TwPayUtil;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 445
    :cond_9
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$200(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/tw/pay/sdk/bean/PayResultBean;

    move-result-object p1

    iput-object v2, p1, Lcom/tw/pay/sdk/bean/PayResultBean;->code:Ljava/lang/String;

    .line 446
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$000(Lcom/tw/pay/sdk/util/TwPayUtil;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_a
    :goto_0
    return-void
.end method
