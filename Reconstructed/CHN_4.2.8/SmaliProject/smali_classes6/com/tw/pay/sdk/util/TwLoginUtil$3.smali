.class Lcom/tw/pay/sdk/util/TwLoginUtil$3;
.super Ljava/lang/Object;
.source "TwLoginUtil.java"

# interfaces
.implements Lcom/tw/pay/sdk/callback/TwCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/util/TwLoginUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwLoginUtil;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/Object;)V
    .locals 22

    move-object/from16 v0, p0

    .line 361
    move-object/from16 v1, p1

    check-cast v1, Lcom/talkweb/sdk/vo/ReturnObject;

    .line 362
    iget-object v2, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    new-instance v3, Lcom/tw/pay/sdk/bean/LoginResultBean;

    invoke-direct {v3}, Lcom/tw/pay/sdk/bean/LoginResultBean;-><init>()V

    invoke-static {v2, v3}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$002(Lcom/tw/pay/sdk/util/TwLoginUtil;Lcom/tw/pay/sdk/bean/LoginResultBean;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    const-string v2, "system_busy"

    const-string v3, "04"

    if-eqz v1, :cond_6

    .line 366
    :try_start_0
    invoke-virtual {v1}, Lcom/talkweb/sdk/vo/ReturnObject;->getResultCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0000"

    .line 367
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "bindPhone"

    const-string v8, "bindPhoneToast"

    const/4 v9, -0x1

    const-string v10, "webUrl"

    const-string v11, "token"

    const-string v12, "webTitle"

    const-string v13, "userId"

    const-string v14, "phone"

    const/4 v15, 0x1

    if-eqz v6, :cond_1

    .line 368
    :try_start_1
    invoke-static {}, Lcom/tw/pay/sdk/tool/DialogTool;->dialogDimiss()V

    .line 370
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 371
    invoke-virtual {v1}, Lcom/talkweb/sdk/vo/ReturnObject;->getContent()Ljava/lang/String;

    move-result-object v6

    .line 370
    invoke-static {v6}, Lcom/talkweb/sdk/util/Des;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    new-instance v5, Lorg/json/JSONObject;

    .line 373
    invoke-virtual {v1}, Lcom/talkweb/sdk/vo/ReturnObject;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/talkweb/sdk/util/Des;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 374
    iget-object v6, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v6}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v6

    const-string v4, "01"

    iput-object v4, v6, Lcom/tw/pay/sdk/bean/LoginResultBean;->code:Ljava/lang/String;

    .line 375
    iget-object v4, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v4

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/tw/pay/sdk/bean/LoginResultBean;->userId:Ljava/lang/String;

    .line 376
    iget-object v4, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v4

    const-string v6, "userNick"

    .line 377
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/tw/pay/sdk/bean/LoginResultBean;->nickName:Ljava/lang/String;

    .line 378
    iget-object v4, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v4

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/tw/pay/sdk/bean/LoginResultBean;->token:Ljava/lang/String;

    .line 380
    invoke-virtual {v1}, Lcom/talkweb/sdk/vo/ReturnObject;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/sdk/util/Des;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v9, :cond_0

    .line 382
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 383
    iget-object v1, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "quickly_login_tips"

    invoke-static {v4, v5}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 384
    iget-object v1, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v1

    new-instance v4, Lcom/tw/pay/sdk/bean/UserBean;

    iget-object v5, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    .line 385
    invoke-static {v5}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v5

    iget-object v5, v5, Lcom/tw/pay/sdk/bean/LoginResultBean;->userId:Ljava/lang/String;

    iget-object v6, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v6}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v6

    iget-object v6, v6, Lcom/tw/pay/sdk/bean/LoginResultBean;->token:Ljava/lang/String;

    iget-object v7, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    .line 386
    invoke-static {v7}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$900(Lcom/tw/pay/sdk/util/TwLoginUtil;)Ljava/lang/String;

    move-result-object v19

    iget-object v7, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v7}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v7

    iget-object v7, v7, Lcom/tw/pay/sdk/bean/LoginResultBean;->nickName:Ljava/lang/String;

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v20, v7

    invoke-direct/range {v16 .. v21}, Lcom/tw/pay/sdk/bean/UserBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v5}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$1000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Ljava/lang/String;

    move-result-object v5

    .line 384
    invoke-static {v1, v4, v5}, Lcom/tw/pay/sdk/tool/Tools;->setLoginUserBean(Landroid/content/Context;Lcom/tw/pay/sdk/bean/UserBean;Ljava/lang/String;)V

    const-string v1, "isPasswordUpdate"

    const-string v4, "true"

    .line 387
    iget-object v5, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v5}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/talkweb/twOfflineSdk/tools/Tools;->storeData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 388
    iget-object v1, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v15}, Lcom/tw/pay/sdk/tool/Tools;->setLogined(Landroid/content/Context;Z)V

    .line 389
    iget-object v1, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    iget-object v4, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$1100(Lcom/tw/pay/sdk/util/TwLoginUtil;Landroid/content/Context;)V

    .line 390
    iget-object v1, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$300(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object v1

    iget-object v4, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    .line 391
    iget-object v1, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$100(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 392
    iget-object v1, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$1200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "SubmitServiceString"

    iget-object v4, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$1200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 393
    iget-object v1, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$1200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tw/pay/sdk/util/TwRegUtil;->doRegisterPhone(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 396
    :cond_0
    iget-object v1, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 397
    new-instance v1, Landroid/content/Intent;

    iget-object v4, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v4

    const-class v6, Lcom/tw/pay/sdk/ui/WebActivity;

    invoke-direct {v1, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    iget-object v4, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    .line 399
    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 398
    invoke-virtual {v1, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    iget-object v4, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v6, v5}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$1300(Lcom/tw/pay/sdk/util/TwLoginUtil;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    sput v15, Lcom/tw/pay/sdk/ui/WebActivity;->webType:I

    .line 402
    iget-object v4, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    const-string v4, "6666"

    .line 404
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 405
    invoke-static {}, Lcom/tw/pay/sdk/tool/DialogTool;->dialogDimiss()V

    .line 406
    new-instance v4, Lorg/json/JSONObject;

    .line 407
    invoke-virtual {v1}, Lcom/talkweb/sdk/vo/ReturnObject;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/talkweb/sdk/util/Des;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v1}, Lcom/talkweb/sdk/vo/ReturnObject;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/sdk/util/Des;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v9, :cond_2

    .line 410
    iget-object v1, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "login_msg_update"

    invoke-static {v4, v5}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 411
    new-instance v1, Landroid/content/Intent;

    iget-object v4, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/tw/pay/sdk/ui/WebActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 412
    iget-object v4, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "changePassword"

    invoke-static {v4, v5}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    iget-object v4, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$400(Lcom/tw/pay/sdk/util/TwLoginUtil;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    sput v15, Lcom/tw/pay/sdk/ui/WebActivity;->webType:I

    .line 415
    iget-object v4, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 417
    :cond_2
    iget-object v1, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v1

    iget-object v5, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v5}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 418
    new-instance v1, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v5}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/tw/pay/sdk/ui/WebActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 419
    iget-object v5, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    .line 420
    invoke-static {v5}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 419
    invoke-virtual {v1, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    iget-object v5, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$1300(Lcom/tw/pay/sdk/util/TwLoginUtil;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    sput v15, Lcom/tw/pay/sdk/ui/WebActivity;->webType:I

    .line 423
    iget-object v4, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    const-string v4, "0086"

    .line 427
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 428
    invoke-static {}, Lcom/tw/pay/sdk/tool/DialogTool;->dialogDimiss()V

    .line 429
    iget-object v1, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$1200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Ljava/lang/String;

    move-result-object v1

    .line 430
    new-instance v4, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;

    iget-object v5, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v5}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;-><init>(Landroid/content/Context;)V

    .line 431
    new-instance v5, Lcom/tw/pay/sdk/util/TwLoginUtil$3$1;

    invoke-direct {v5, v0}, Lcom/tw/pay/sdk/util/TwLoginUtil$3$1;-><init>(Lcom/tw/pay/sdk/util/TwLoginUtil$3;)V

    invoke-virtual {v4, v1, v5}, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->showIndentifyCodeDialog(Ljava/lang/String;Lcom/tw/pay/sdk/callback/TwCallback;)V

    goto/16 :goto_0

    :cond_4
    const-string v4, "999999"

    .line 442
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 443
    invoke-static {}, Lcom/tw/pay/sdk/tool/DialogTool;->dialogDimiss()V

    .line 444
    iget-object v1, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v1

    iput-object v3, v1, Lcom/tw/pay/sdk/bean/LoginResultBean;->code:Ljava/lang/String;

    .line 445
    iget-object v1, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/tw/pay/sdk/tool/Tools;->setLogined(Landroid/content/Context;Z)V

    .line 446
    iget-object v1, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    .line 447
    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "interent_busy"

    invoke-static {v4, v5}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 446
    invoke-static {v1, v4}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_5
    invoke-static {}, Lcom/tw/pay/sdk/tool/DialogTool;->dialogDimiss()V

    .line 450
    iget-object v4, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/tw/pay/sdk/tool/Tools;->setLogined(Landroid/content/Context;Z)V

    .line 451
    iget-object v4, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v4

    const-string v5, "02"

    iput-object v5, v4, Lcom/tw/pay/sdk/bean/LoginResultBean;->code:Ljava/lang/String;

    .line 452
    iget-object v4, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Lcom/talkweb/sdk/vo/ReturnObject;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    invoke-static {}, Lcom/tw/pay/sdk/tool/DialogTool;->dialogDimiss()V

    .line 457
    iget-object v1, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v1

    iput-object v3, v1, Lcom/tw/pay/sdk/bean/LoginResultBean;->code:Ljava/lang/String;

    .line 458
    iget-object v1, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/tw/pay/sdk/tool/Tools;->setLogined(Landroid/content/Context;Z)V

    .line 459
    iget-object v1, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    .line 460
    invoke-static {v3}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 459
    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_6
    invoke-static {}, Lcom/tw/pay/sdk/tool/DialogTool;->dialogDimiss()V

    .line 464
    iget-object v1, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v1

    iput-object v3, v1, Lcom/tw/pay/sdk/bean/LoginResultBean;->code:Ljava/lang/String;

    .line 465
    iget-object v1, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/tw/pay/sdk/tool/Tools;->setLogined(Landroid/content/Context;Z)V

    .line 466
    iget-object v1, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    .line 467
    invoke-static {v3}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 466
    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method
