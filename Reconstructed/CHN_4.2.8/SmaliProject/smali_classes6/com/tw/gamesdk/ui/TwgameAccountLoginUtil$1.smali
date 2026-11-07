.class Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil$1;
.super Ljava/lang/Object;
.source "TwgameAccountLoginUtil.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->performLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil$1;->this$0:Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;

    iput-object p2, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil$1;->val$userName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "message:"

    if-eqz p1, :cond_0

    .line 135
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

    .line 136
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil$1;->this$0:Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->access$000(Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    .line 137
    sget-object p1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    return-void

    .line 141
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccoutLogin\u767b\u5f55\u7ed3\u675f eventCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 142
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 143
    const-class v1, Lcom/tw/gamesdk/bean/SimpleApiResponse;

    invoke-virtual {p1, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tw/gamesdk/bean/SimpleApiResponse;

    if-eqz p1, :cond_3

    .line 144
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getCode()I

    move-result v1

    if-nez v1, :cond_3

    .line 145
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil$1;->this$0:Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->access$100(Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Tools;->setLogined(Landroid/content/Context;Z)V

    .line 146
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getData()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object p1

    .line 147
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil$1;->val$userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->setPhone(Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 149
    sget-object v0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->channleid:Ljava/lang/String;

    const-string v1, "10011"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RequestUtils getTwgameActivateUtil Show"

    .line 150
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil$1;->this$0:Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil$1;->this$0:Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;

    invoke-static {v1}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->access$000(Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil$1;->this$0:Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;

    invoke-static {v2}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->access$100(Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->activateCode(Lcom/tw/gamesdk/bean/SimpleUserData;Lcom/tw/pay/sdk/callback/TwCallback;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    :cond_1
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tw/gamesdk/core/GameSDK;->saveUserInfo(Lcom/tw/gamesdk/bean/SimpleUserData;)V

    .line 154
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil$1;->this$0:Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->access$000(Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    .line 155
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_2

    .line 157
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil$1;->this$0:Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->access$100(Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->getPopupWindowUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/PopupWindowUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->showPopupWindow()V

    goto :goto_0

    .line 160
    :cond_2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil$1$1;

    invoke-direct {p2, p0}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil$1$1;-><init>(Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 170
    :cond_3
    iget-object p2, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil$1;->this$0:Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;

    invoke-static {p2}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->access$000(Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    .line 171
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getMsg()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getMsg()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    if-eq p2, v0, :cond_4

    .line 172
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 176
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "twgameLogin e:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
