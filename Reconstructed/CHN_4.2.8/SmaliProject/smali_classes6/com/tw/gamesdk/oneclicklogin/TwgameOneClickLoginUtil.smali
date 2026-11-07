.class public Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;
.super Ljava/lang/Object;
.source "TwgameOneClickLoginUtil.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;Ljava/lang/String;Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->exchangeToken(Ljava/lang/String;Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;Ljava/lang/String;Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->handleServerLoginResult(Ljava/lang/String;Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void
.end method

.method private exchangeToken(Ljava/lang/String;Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 4

    .line 87
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "account"

    const-string v2, "-1"

    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "phone"

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "login_type"

    invoke-virtual {v0, v3, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "token"

    .line 91
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "code"

    .line 92
    invoke-virtual {v0, p1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "password"

    .line 93
    invoke-virtual {v0, p1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil$2;

    invoke-direct {v0, p0, p2}, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil$2;-><init>(Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;Lcom/tw/pay/sdk/callback/TwCallback;)V

    invoke-static {p1, v0}, Lcom/tw/gamesdk/net/RequestUtils;->twgameLogin(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method public static getTwGameOneClickLoginUtil(Landroid/content/Context;)Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;
    .locals 1

    .line 39
    new-instance v0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;

    invoke-direct {v0, p0}, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private handleServerLoginResult(Ljava/lang/String;Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 6

    const/4 v0, 0x0

    .line 121
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 122
    const-class v2, Lcom/tw/gamesdk/bean/SimpleApiResponse;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tw/gamesdk/bean/SimpleApiResponse;

    if-nez v1, :cond_0

    .line 124
    invoke-interface {p2, v0}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    return-void

    .line 127
    :cond_0
    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getCode()I

    move-result v2

    if-nez v2, :cond_5

    .line 128
    iget-object v2, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/tw/pay/sdk/tool/Tools;->setLogined(Landroid/content/Context;Z)V

    .line 129
    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getData()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v1

    .line 131
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tw/gamesdk/core/GameSDK;->saveUserInfo(Lcom/tw/gamesdk/bean/SimpleUserData;)V

    .line 133
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getChannelsId()Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getIsActive()I

    move-result v4

    const-string v5, "10011"

    .line 135
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eq v4, v3, :cond_3

    const/4 p1, 0x2

    if-ne v4, p1, :cond_1

    .line 137
    iget-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->context:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_1

    const-string p1, "\u60a8\u5df2\u5728\u65b0\u8bbe\u5907\u767b\u5f55\uff0c\u8bf7\u8f93\u5165\u65b0\u6fc0\u6d3b\u7801\u6216\u524d\u5f80\u65e7\u8bbe\u5907\u767b\u5f55!"

    .line 138
    iget-object v2, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {p1, v2}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    if-ne v4, p1, :cond_2

    .line 139
    iget-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->context:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_2

    const-string p1, "\u6fc0\u6d3b\u7801\u5df2\u4f5c\u5e9f\uff0c\u8bf7\u91cd\u65b0\u6fc0\u6d3b"

    .line 140
    iget-object v2, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {p1, v2}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    .line 142
    :cond_2
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickLoginUtil$7qIfpniFFftSxGyJR9qOCD0QJm0;

    invoke-direct {v2, p0, p2, v1}, Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickLoginUtil$7qIfpniFFftSxGyJR9qOCD0QJm0;-><init>(Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;Lcom/tw/pay/sdk/callback/TwCallback;Lcom/tw/gamesdk/bean/SimpleUserData;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 145
    :cond_3
    invoke-interface {p2, p1}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    .line 149
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_4

    .line 150
    iget-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->getPopupWindowUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/PopupWindowUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->showPopupWindow()V

    goto :goto_1

    .line 152
    :cond_4
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickLoginUtil$ZgL7rpdb-D4Ht-XimK6EZ6gAwOM;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickLoginUtil$ZgL7rpdb-D4Ht-XimK6EZ6gAwOM;-><init>(Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 157
    :cond_5
    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->context:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_6

    .line 158
    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    .line 160
    :cond_6
    invoke-interface {p2, v0}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exchangeToken \u89e3\u6790\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 164
    invoke-interface {p2, v0}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public doOneClickLoginDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 3

    .line 54
    invoke-static {}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->getInstance()Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;

    move-result-object v0

    new-instance v1, Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickLoginUtil$QAgv4qgmLI25D4khxgyvw9M2UqE;

    invoke-direct {v1, p0, p1}, Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickLoginUtil$QAgv4qgmLI25D4khxgyvw9M2UqE;-><init>(Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;Lcom/tw/pay/sdk/callback/TwCallback;)V

    invoke-virtual {v0, v1}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->setOtherLoginListener(Lcom/tw/gamesdk/oneclicklogin/OneClickLoginListener$OnOtherLoginListener;)V

    .line 59
    invoke-static {}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->getInstance()Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->context:Landroid/content/Context;

    new-instance v2, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil$1;

    invoke-direct {v2, p0, p1}, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil$1;-><init>(Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;Lcom/tw/pay/sdk/callback/TwCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->login(Landroid/content/Context;Lcom/tw/gamesdk/oneclicklogin/OneClickLoginListener;)V

    return-void
.end method

.method public synthetic lambda$doOneClickLoginDialog$0$TwgameOneClickLoginUtil(Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 1

    .line 55
    invoke-static {}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->getInstance()Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->closeAuthPage()V

    .line 56
    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->getTwPayLoginUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->doLoginDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void
.end method

.method public synthetic lambda$handleServerLoginResult$1$TwgameOneClickLoginUtil(Lcom/tw/pay/sdk/callback/TwCallback;Lcom/tw/gamesdk/bean/SimpleUserData;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->getTwgameActivateUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->doActivateDialog(Lcom/tw/pay/sdk/callback/TwCallback;Lcom/tw/gamesdk/bean/SimpleUserData;)V

    return-void
.end method

.method public synthetic lambda$handleServerLoginResult$2$TwgameOneClickLoginUtil()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->getPopupWindowUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/PopupWindowUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->showPopupWindow()V

    return-void
.end method
