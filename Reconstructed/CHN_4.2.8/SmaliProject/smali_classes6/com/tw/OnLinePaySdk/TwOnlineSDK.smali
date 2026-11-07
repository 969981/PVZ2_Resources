.class public Lcom/tw/OnLinePaySdk/TwOnlineSDK;
.super Ljava/lang/Object;
.source "TwOnlineSDK.java"


# static fields
.field private static AppId:Ljava/lang/String; = null

.field public static ISPAYOK:Z = true

.field private static REPAYSWITCH:Z

.field private static payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static channelSpecialCallback(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/ChannelSpecialCallback;)V
    .locals 1

    .line 72
    :try_start_0
    sget-boolean v0, Lcom/tw/OnLinePaySdk/bean/TagBean;->isLoadInit:Z

    if-nez v0, :cond_0

    const-string p0, "talkweb log"

    const-string p1, "\'TwOnlineSDK.channelSpecialCallback\' must be load after init."

    .line 73
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 76
    :cond_0
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->load(Landroid/content/Context;)V

    .line 77
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0, p0, p1}, Lcom/tw/OnLinePaySdk/PayInterFace;->channelSpecialCallback(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/ChannelSpecialCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static checkAppVersion(Landroid/content/Context;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 1

    .line 200
    :try_start_0
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->load(Landroid/content/Context;)V

    .line 201
    sget-object p1, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {p1, p0, p2}, Lcom/tw/OnLinePaySdk/PayInterFace;->checkAppVersionByChannel(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "talkweb log"

    const-string v0, "checkAppVersion error."

    .line 204
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "03"

    .line 206
    invoke-static {p0, p2}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->checkAppVersionCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    :goto_0
    return-void
.end method

.method public static destroySDK(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 2

    .line 259
    :try_start_0
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->load(Landroid/content/Context;)V

    .line 260
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0, p0, p1}, Lcom/tw/OnLinePaySdk/PayInterFace;->destroySDK(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "talkweb log"

    const-string v1, "destroySDK error."

    .line 263
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "03"

    .line 265
    invoke-static {p0, p1}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->destroyCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    :goto_0
    return-void
.end method

.method public static existBbs()Z
    .locals 1

    .line 147
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0}, Lcom/tw/OnLinePaySdk/PayInterFace;->existBbs()Z

    move-result v0

    return v0
.end method

.method public static existDestroySDKWindow()Z
    .locals 1

    .line 254
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0}, Lcom/tw/OnLinePaySdk/PayInterFace;->existDestroySDKWindow()Z

    move-result v0

    return v0
.end method

.method public static existFloatingWindow()Z
    .locals 1

    .line 163
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0}, Lcom/tw/OnLinePaySdk/PayInterFace;->existFloatingWindow()Z

    move-result v0

    return v0
.end method

.method public static existLogoutAccount()Z
    .locals 1

    .line 237
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0}, Lcom/tw/OnLinePaySdk/PayInterFace;->existLogoutAccount()Z

    move-result v0

    return v0
.end method

.method public static existSendUserInfo()Z
    .locals 1

    .line 101
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0}, Lcom/tw/OnLinePaySdk/PayInterFace;->existSendUserInfo()Z

    move-result v0

    return v0
.end method

.method public static existUserCenter()Z
    .locals 1

    .line 130
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0}, Lcom/tw/OnLinePaySdk/PayInterFace;->existUserCenter()Z

    move-result v0

    return v0
.end method

.method public static initSDK(Landroid/content/Context;Ljava/lang/String;ZLcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-static {p0, p1, p2, p3, v0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->initSDK(Landroid/content/Context;Ljava/lang/String;ZLcom/tw/OnLinePaySdk/callback/TWCallback;Lcom/tw/OnLinePaySdk/callback/ChannelSpecialCallback;)V

    return-void
.end method

.method public static initSDK(Landroid/content/Context;Ljava/lang/String;ZLcom/tw/OnLinePaySdk/callback/TWCallback;Lcom/tw/OnLinePaySdk/callback/ChannelSpecialCallback;)V
    .locals 8

    const-string v0, "talkweb log"

    :try_start_0
    const-string v1, "call initsdk."

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 49
    sput-boolean v1, Lcom/tw/OnLinePaySdk/bean/TagBean;->isLoadInit:Z

    .line 50
    sput-boolean v1, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->ISPAYOK:Z

    .line 51
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->load(Landroid/content/Context;)V

    .line 52
    sput-object p1, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->AppId:Ljava/lang/String;

    const-string v2, "onlinePayUrl.xml"

    .line 53
    invoke-static {p0, v2}, Lcom/tw/OnLinePaySdk/net/ServerPath;->setUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    invoke-static {p0, p1}, Lcom/tw/OnLinePaySdk/tools/Tools;->getAppSetBean(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->getRePaySwitch()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "true"

    invoke-static {}, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->getRePaySwitch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    sput-boolean v1, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->REPAYSWITCH:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 58
    sput-boolean v1, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->REPAYSWITCH:Z

    .line 60
    :goto_0
    sget-object v2, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/tw/OnLinePaySdk/PayInterFace;->initSDK(Landroid/content/Context;Ljava/lang/String;ZLcom/tw/OnLinePaySdk/callback/TWCallback;Lcom/tw/OnLinePaySdk/callback/ChannelSpecialCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "init sdk error."

    .line 62
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    const-string p1, "03"

    .line 64
    invoke-static {p1, p0, p3}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->initCallBack(Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    :goto_1
    return-void
.end method

.method private static load(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    if-nez v0, :cond_0

    const-string v0, "twonlinepay.xml"

    .line 37
    invoke-static {p0, v0}, Lcom/tw/OnLinePaySdk/tools/Tools;->getChannelFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 38
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tw/OnLinePaySdk/PayInterFace;

    sput-object p0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    :cond_0
    return-void
.end method

.method public static loginSDK(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 8

    .line 88
    :try_start_0
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->load(Landroid/content/Context;)V

    .line 89
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0, p0, p1}, Lcom/tw/OnLinePaySdk/PayInterFace;->loginSDK(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "talkweb log"

    const-string v1, "login sdk error."

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v2, "04"

    move-object v7, p1

    .line 94
    invoke-static/range {v2 .. v7}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->loginCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    :goto_0
    return-void
.end method

.method public static logoutAccount(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 2

    .line 242
    :try_start_0
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->load(Landroid/content/Context;)V

    .line 243
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0, p0, p1}, Lcom/tw/OnLinePaySdk/PayInterFace;->logoutAccount(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "talkweb log"

    const-string v1, "logoutAccount error."

    .line 246
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "03"

    .line 248
    invoke-static {p0, p1}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->logoutCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    :goto_0
    return-void
.end method

.method public static onActivityResult(Landroid/content/Context;IILandroid/content/Intent;)V
    .locals 1

    .line 362
    :try_start_0
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->load(Landroid/content/Context;)V

    .line 363
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tw/OnLinePaySdk/PayInterFace;->onActivityResult(Landroid/content/Context;IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "talkweb log"

    const-string p2, "onActivityResult error."

    .line 366
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static onCreate(Landroid/content/Context;)V
    .locals 2

    .line 272
    :try_start_0
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->load(Landroid/content/Context;)V

    .line 273
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0, p0}, Lcom/tw/OnLinePaySdk/PayInterFace;->onCreate(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "talkweb log"

    const-string v1, "onCreate error."

    .line 276
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static onDestroy(Landroid/content/Context;)V
    .locals 2

    .line 317
    :try_start_0
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->load(Landroid/content/Context;)V

    .line 318
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0, p0}, Lcom/tw/OnLinePaySdk/PayInterFace;->onDestroy(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "talkweb log"

    const-string v1, "onDestroy error."

    .line 321
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static onNewIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 350
    :try_start_0
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->load(Landroid/content/Context;)V

    .line 351
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0, p0, p1}, Lcom/tw/OnLinePaySdk/PayInterFace;->onNewIntent(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "talkweb log"

    const-string v0, "onNewIntent error."

    .line 354
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 2

    .line 284
    :try_start_0
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->load(Landroid/content/Context;)V

    .line 285
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0, p0}, Lcom/tw/OnLinePaySdk/PayInterFace;->onPause(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "talkweb log"

    const-string v1, "onPause error."

    .line 288
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static onRestart(Landroid/content/Context;)V
    .locals 2

    .line 339
    :try_start_0
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->load(Landroid/content/Context;)V

    .line 340
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0, p0}, Lcom/tw/OnLinePaySdk/PayInterFace;->onRestart(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "talkweb log"

    const-string v1, "onRestart error."

    .line 343
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 2

    .line 295
    :try_start_0
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->load(Landroid/content/Context;)V

    .line 296
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0, p0}, Lcom/tw/OnLinePaySdk/PayInterFace;->onResume(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "talkweb log"

    const-string v1, "onResume error."

    .line 299
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static onStart(Landroid/content/Context;)V
    .locals 2

    .line 328
    :try_start_0
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->load(Landroid/content/Context;)V

    .line 329
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0, p0}, Lcom/tw/OnLinePaySdk/PayInterFace;->onStart(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "talkweb log"

    const-string v1, "onStart error."

    .line 332
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static onStop(Landroid/content/Context;)V
    .locals 2

    .line 306
    :try_start_0
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->load(Landroid/content/Context;)V

    .line 307
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0, p0}, Lcom/tw/OnLinePaySdk/PayInterFace;->onStop(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "talkweb log"

    const-string v1, "onStop error."

    .line 310
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static openBbs(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 2

    .line 152
    :try_start_0
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->load(Landroid/content/Context;)V

    .line 153
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0, p0, p1}, Lcom/tw/OnLinePaySdk/PayInterFace;->openBbs(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "talkweb log"

    const-string v1, "openBbs error."

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "03"

    .line 158
    invoke-static {p0, p1}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->openBbsCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    :goto_0
    return-void
.end method

.method public static openFloatingWindow(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 2

    .line 168
    :try_start_0
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->load(Landroid/content/Context;)V

    .line 169
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0, p0, p1}, Lcom/tw/OnLinePaySdk/PayInterFace;->openFloatingWindow(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "talkweb log"

    const-string v1, "openFloatingWindow error."

    .line 172
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "03"

    .line 174
    invoke-static {p0, p1}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->openFloatCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    :goto_0
    return-void
.end method

.method public static openUserCenter(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 2

    .line 135
    :try_start_0
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->load(Landroid/content/Context;)V

    .line 136
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0, p0, p1}, Lcom/tw/OnLinePaySdk/PayInterFace;->openUserCenter(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "talkweb log"

    const-string v1, "openUserCenter error."

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "03"

    .line 141
    invoke-static {p0, p1}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->openUserCenterCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    :goto_0
    return-void
.end method

.method public static pay(Landroid/content/Context;Landroid/content/Intent;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 1

    .line 181
    :try_start_0
    sget-boolean v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->REPAYSWITCH:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->ISPAYOK:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "\u8bf7\u7b49\u5f85\u4e0a\u7b14\u8ba2\u5355\u652f\u4ed8\u5b8c\u6210"

    .line 186
    invoke-static {p0, p1}, Lcom/tw/OnLinePaySdk/tools/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 182
    sput-boolean v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->ISPAYOK:Z

    .line 183
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->load(Landroid/content/Context;)V

    .line 184
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0, p0, p1, p2}, Lcom/tw/OnLinePaySdk/PayInterFace;->pay(Landroid/content/Context;Landroid/content/Intent;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "talkweb log"

    const-string v0, "pay error."

    .line 190
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "06"

    const/4 p1, 0x0

    .line 192
    invoke-static {p0, p1, p1, p1, p2}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->payCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    :goto_1
    return-void
.end method

.method public static queryOrderResutl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 1

    .line 380
    :try_start_0
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->load(Landroid/content/Context;)V

    .line 381
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tw/OnLinePaySdk/PayInterFace;->queryOrderResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "04"

    const/4 p1, 0x0

    .line 384
    invoke-static {p0, p1, p1, p1, p3}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->payQueryResultCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    :goto_0
    return-void
.end method

.method public static redeemGiftPack(Landroid/content/Context;Landroid/content/Intent;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 1

    .line 225
    :try_start_0
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->load(Landroid/content/Context;)V

    .line 226
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0, p0, p1, p2}, Lcom/tw/OnLinePaySdk/PayInterFace;->redeemGiftPack(Landroid/content/Context;Landroid/content/Intent;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "talkweb log"

    const-string v0, "redeemGiftPack error."

    .line 229
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "06"

    .line 231
    invoke-static {p0, p2}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->redeemGiftPackCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    :goto_0
    return-void
.end method

.method public static sendUserInfo(Landroid/content/Context;Landroid/content/Intent;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 5

    const-string v0, "sendUserInfo error."

    const-string v1, "talkweb log"

    .line 107
    :try_start_0
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->load(Landroid/content/Context;)V

    .line 108
    sget-object v2, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    sget-object v3, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->AppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tw/OnLinePaySdk/PayInterFace;->setAppId(Ljava/lang/String;)V

    .line 109
    new-instance v2, Lcom/tw/OnLinePaySdk/tools/SendUserInfoUtil;

    invoke-direct {v2}, Lcom/tw/OnLinePaySdk/tools/SendUserInfoUtil;-><init>()V

    .line 110
    invoke-virtual {v2, p0, p1, p2}, Lcom/tw/OnLinePaySdk/tools/SendUserInfoUtil;->CheckRoleInfo(Landroid/content/Context;Landroid/content/Intent;Lcom/tw/OnLinePaySdk/callback/TWCallback;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    sget-object v3, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->AppId:Ljava/lang/String;

    sget-object v4, Lcom/tw/OnLinePaySdk/PayInterFace;->userId:Ljava/lang/String;

    invoke-virtual {v2, p0, p1, v3, v4}, Lcom/tw/OnLinePaySdk/tools/SendUserInfoUtil;->SendUserInfo(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 115
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    :cond_0
    :goto_0
    :try_start_1
    sget-object v2, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v2, p0, p1, p2}, Lcom/tw/OnLinePaySdk/PayInterFace;->sendUserInfo(Landroid/content/Context;Landroid/content/Intent;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 122
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "03"

    .line 124
    invoke-static {p0, p2}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->sendUserInfoCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    :goto_1
    return-void
.end method

.method public static updateApp(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 2

    .line 212
    :try_start_0
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->load(Landroid/content/Context;)V

    .line 213
    sget-object v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->payInterFace:Lcom/tw/OnLinePaySdk/PayInterFace;

    invoke-virtual {v0, p0, p1}, Lcom/tw/OnLinePaySdk/PayInterFace;->updateApp(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "talkweb log"

    const-string v1, "updateApp error."

    .line 216
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "03"

    .line 218
    invoke-static {p0, p1}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->updateAppCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    :goto_0
    return-void
.end method
