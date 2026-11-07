.class Lcom/tw/pay/sdk/util/TwBindUtil$5;
.super Ljava/lang/Object;
.source "TwBindUtil.java"

# interfaces
.implements Lcom/tw/pay/sdk/callback/TwCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/util/TwBindUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/TwBindUtil;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwBindUtil;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/Object;)V
    .locals 8

    const-string v0, "phone"

    .line 313
    check-cast p1, Lcom/talkweb/sdk/vo/ReturnObject;

    const-string v1, "system_busy"

    if-eqz p1, :cond_2

    .line 315
    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/ReturnObject;->getResultCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0000"

    .line 316
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    :try_start_0
    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    new-instance v3, Lcom/tw/pay/sdk/bean/LoginResultBean;

    invoke-direct {v3}, Lcom/tw/pay/sdk/bean/LoginResultBean;-><init>()V

    invoke-static {v2, v3}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$702(Lcom/tw/pay/sdk/util/TwBindUtil;Lcom/tw/pay/sdk/bean/LoginResultBean;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    .line 319
    new-instance v2, Lorg/json/JSONObject;

    .line 320
    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/ReturnObject;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/talkweb/sdk/util/Des;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 321
    iget-object v3, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {v3}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$700(Lcom/tw/pay/sdk/util/TwBindUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v3

    const-string v4, "01"

    iput-object v4, v3, Lcom/tw/pay/sdk/bean/LoginResultBean;->code:Ljava/lang/String;

    .line 322
    iget-object v3, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {v3}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$700(Lcom/tw/pay/sdk/util/TwBindUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v3

    const-string v4, "userId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tw/pay/sdk/bean/LoginResultBean;->userId:Ljava/lang/String;

    .line 323
    iget-object v3, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {v3}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$700(Lcom/tw/pay/sdk/util/TwBindUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v3

    const-string v4, "userNick"

    .line 324
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tw/pay/sdk/bean/LoginResultBean;->nickName:Ljava/lang/String;

    .line 325
    iget-object v3, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {v3}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$700(Lcom/tw/pay/sdk/util/TwBindUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v3

    const-string v4, "token"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tw/pay/sdk/bean/LoginResultBean;->token:Ljava/lang/String;

    const-string v3, ""

    .line 327
    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/ReturnObject;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/sdk/util/Des;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    .line 329
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    move-object v7, v3

    .line 331
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$100(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/content/Context;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/tw/pay/sdk/util/TwBindUtil;->doRegisterPhone(Ljava/lang/String;Landroid/content/Context;)V

    .line 332
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$100(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/tw/pay/sdk/bean/UserBean;

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    .line 333
    invoke-static {v2}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$700(Lcom/tw/pay/sdk/util/TwBindUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v2

    iget-object v3, v2, Lcom/tw/pay/sdk/bean/LoginResultBean;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {v2}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$700(Lcom/tw/pay/sdk/util/TwBindUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v2

    iget-object v4, v2, Lcom/tw/pay/sdk/bean/LoginResultBean;->token:Ljava/lang/String;

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    .line 334
    invoke-static {v2}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$800(Lcom/tw/pay/sdk/util/TwBindUtil;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tw/pay/sdk/tool/DigestUtil;->encodeByMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    .line 335
    invoke-static {v2}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$700(Lcom/tw/pay/sdk/util/TwBindUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v2

    iget-object v6, v2, Lcom/tw/pay/sdk/bean/LoginResultBean;->nickName:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/tw/pay/sdk/bean/UserBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {v2}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$800(Lcom/tw/pay/sdk/util/TwBindUtil;)Ljava/lang/String;

    move-result-object v2

    .line 332
    invoke-static {p1, v0, v2}, Lcom/tw/pay/sdk/tool/Tools;->setLoginUserBean(Landroid/content/Context;Lcom/tw/pay/sdk/bean/UserBean;Ljava/lang/String;)V

    .line 336
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$100(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Tools;->setLogined(Landroid/content/Context;Z)V

    .line 337
    const-class p1, Lcom/bytedance/ttgame/tob/optional/datalink/api/IDataLinkService;

    invoke-static {p1}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ttgame/tob/optional/datalink/api/IDataLinkService;

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    .line 338
    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$700(Lcom/tw/pay/sdk/util/TwBindUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v0

    iget-object v0, v0, Lcom/tw/pay/sdk/bean/LoginResultBean;->userId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/bytedance/ttgame/tob/optional/datalink/api/IDataLinkService;->onAccountRegister(Ljava/lang/String;)Z

    move-result p1

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8c03\u7528\u6296\u97f3\u6ce8\u518c \u6ce8\u518c\u7ed3\u679c onAccountRegister result:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 340
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$100(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$900(Lcom/tw/pay/sdk/util/TwBindUtil;Landroid/content/Context;)V

    .line 341
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$000(Lcom/tw/pay/sdk/util/TwBindUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$700(Lcom/tw/pay/sdk/util/TwBindUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    .line 342
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$200(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 345
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 346
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$100(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    .line 347
    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$100(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$100(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/ReturnObject;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_2
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$100(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    .line 354
    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$100(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
