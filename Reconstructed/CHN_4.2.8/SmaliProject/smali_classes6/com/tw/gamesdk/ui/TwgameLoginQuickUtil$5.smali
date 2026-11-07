.class Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$5;
.super Ljava/lang/Object;
.source "TwgameLoginQuickUtil.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->switchLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$5;->this$0:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "message:"

    if-eqz p1, :cond_0

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "twgameLogin \u5931\u8d25 eventCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 306
    sget-object p1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    .line 307
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$5;->this$0:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->access$400(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    return-void

    .line 310
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchLogin eventCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 312
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 313
    const-class v3, Lcom/tw/gamesdk/bean/SimpleApiResponse;

    invoke-virtual {v2, p2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tw/gamesdk/bean/SimpleApiResponse;

    if-eqz v2, :cond_1

    .line 314
    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getCode()I

    move-result v3

    if-nez v3, :cond_1

    .line 315
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$5;->this$0:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->access$100(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/tw/pay/sdk/tool/Tools;->setLogined(Landroid/content/Context;Z)V

    .line 316
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object p1

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$5;->this$0:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;

    invoke-static {v1}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->access$500(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tw/gamesdk/core/GameSDK;->updateUserInfo(Lcom/tw/gamesdk/bean/SimpleUserData;)V

    .line 317
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$5;->this$0:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->access$400(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    .line 318
    sget-object p1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 320
    :cond_1
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

    .line 321
    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getCode()I

    move-result p1

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_2

    .line 323
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$5;->this$0:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->access$600(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 325
    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    if-eq p1, p2, :cond_3

    .line 326
    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    .line 328
    :cond_3
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$5;->this$0:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->access$400(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 332
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "twgameLogin e:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 333
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$5;->this$0:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->access$400(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
