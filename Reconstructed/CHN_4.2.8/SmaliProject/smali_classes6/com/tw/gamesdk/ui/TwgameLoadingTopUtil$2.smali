.class Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;
.super Ljava/lang/Object;
.source "TwgameLoadingTopUtil.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;

.field final synthetic val$simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;Lcom/tw/gamesdk/bean/SimpleUserData;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;

    iput-object p2, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;->val$simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 5

    const-string v0, "message:"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "twgameLogin \u5931\u8d25 eventCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->access$100(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    .line 117
    sget-object p1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    return-void

    .line 121
    :cond_0
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 122
    const-class v3, Lcom/tw/gamesdk/bean/SimpleApiResponse;

    invoke-virtual {v2, p2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tw/gamesdk/bean/SimpleApiResponse;

    if-eqz v2, :cond_1

    .line 123
    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getCode()I

    move-result v3

    if-nez v3, :cond_1

    .line 124
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->access$200(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Tools;->setLogined(Landroid/content/Context;Z)V

    .line 125
    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getData()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object p1

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u767b\u5f55\u6210\u529f simpleUserData:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getIsActive()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "msg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;->val$simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getIsActive()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->setIsActive(I)V

    .line 128
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2$1;

    invoke-direct {v0, p0, p2}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2$1;-><init>(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;Ljava/lang/String;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 149
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u767b\u5f55\u5931\u8d25 eventCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 150
    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getCode()I

    move-result p1

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_2

    .line 152
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->access$400(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_4

    .line 153
    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getCode()I

    move-result p1

    const/16 p2, 0x7d2

    if-eq p1, p2, :cond_3

    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getCode()I

    move-result p1

    const/16 p2, 0x7d3

    if-ne p1, p2, :cond_4

    .line 154
    :cond_3
    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    .line 155
    sget-object p1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseTopDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 156
    sget-object p1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    new-instance p2, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2$2;

    invoke-direct {p2, p0}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2$2;-><init>(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 165
    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    if-eq p1, p2, :cond_5

    .line 166
    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    .line 168
    :cond_5
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->access$100(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 172
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "twgameQuickLogin e:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 173
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->access$100(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
