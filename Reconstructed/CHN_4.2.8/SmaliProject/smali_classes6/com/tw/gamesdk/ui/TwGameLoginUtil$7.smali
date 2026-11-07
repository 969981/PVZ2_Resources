.class Lcom/tw/gamesdk/ui/TwGameLoginUtil$7;
.super Ljava/lang/Object;
.source "TwGameLoginUtil.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwGameLoginUtil;->performLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;

.field final synthetic val$phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwGameLoginUtil;Ljava/lang/String;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$7;->this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    iput-object p2, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$7;->val$phone:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "message:"

    if-eqz p1, :cond_0

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "twgameLogin\u5931\u8d25 eventCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 435
    invoke-static {}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->access$600()Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    .line 436
    sget-object p1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    return-void

    .line 440
    :cond_0
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 441
    const-class v3, Lcom/tw/gamesdk/bean/SimpleApiResponse;

    invoke-virtual {v2, p2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tw/gamesdk/bean/SimpleApiResponse;

    if-eqz v2, :cond_3

    .line 442
    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getCode()I

    move-result v3

    if-nez v3, :cond_3

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u767b\u5f55\u6210\u529f phone:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$7;->val$phone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 444
    iget-object v3, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$7;->this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    invoke-static {v3}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->access$500(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/tw/pay/sdk/tool/Tools;->setLogined(Landroid/content/Context;Z)V

    .line 445
    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getData()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v2

    .line 446
    iget-object v3, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$7;->val$phone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tw/gamesdk/bean/SimpleUserData;->setPhone(Ljava/lang/String;)V

    .line 447
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tw/gamesdk/core/GameSDK;->saveUserInfo(Lcom/tw/gamesdk/bean/SimpleUserData;)V

    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RequestUtils.twgameLogin simpleUserData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleUserData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RequestUtils:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleUserData;->getIsActive()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "channleid \uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tw/gamesdk/core/TwGameBaseDialog;->channleid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 450
    sget-object v3, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 451
    sget-object v3, Lcom/tw/gamesdk/core/TwGameBaseDialog;->channleid:Ljava/lang/String;

    const-string v4, "10011"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "RequestUtils getTwgameActivateUtil Show"

    .line 452
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 453
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$7;->this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    invoke-static {}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->access$600()Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object v1

    iget-object v3, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$7;->this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    invoke-static {v3}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->access$500(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v3, p2}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->activateCode(Lcom/tw/gamesdk/bean/SimpleUserData;Lcom/tw/pay/sdk/callback/TwCallback;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 482
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u767b\u5f55\u6210\u529f eventCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 483
    invoke-static {}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->access$600()Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    .line 484
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_2

    .line 486
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$7;->this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->access$500(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->getPopupWindowUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/PopupWindowUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->showPopupWindow()V

    goto :goto_0

    .line 489
    :cond_2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/tw/gamesdk/ui/TwGameLoginUtil$7$1;

    invoke-direct {p2, p0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil$7$1;-><init>(Lcom/tw/gamesdk/ui/TwGameLoginUtil$7;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 499
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u767b\u5f55\u5931\u8d25 eventCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    if-eqz v2, :cond_4

    .line 500
    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    if-eq p1, p2, :cond_4

    .line 501
    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    .line 503
    :cond_4
    invoke-static {}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->access$600()Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 506
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "twgameLoginUtil e:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 507
    invoke-static {}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->access$600()Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
