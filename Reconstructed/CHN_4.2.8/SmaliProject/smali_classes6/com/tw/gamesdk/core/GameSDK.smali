.class public Lcom/tw/gamesdk/core/GameSDK;
.super Ljava/lang/Object;
.source "GameSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tw/gamesdk/core/GameSDK$LoginStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GameSDK"

.field private static instance:Lcom/tw/gamesdk/core/GameSDK;


# instance fields
.field private bebugMode:Z

.field private config:Lcom/tw/gamesdk/core/GameSDKConfig;

.field public context:Landroid/app/Activity;

.field private currentUser:Lcom/tw/gamesdk/bean/SimpleUserData;

.field private helpLink:Ljava/lang/String;

.field private helpTitle:Ljava/lang/String;

.field private isInitialized:Z

.field private loginStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tw/gamesdk/core/GameSDK$LoginStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/tw/gamesdk/core/GameSDK;->isInitialized:Z

    const-string v1, ""

    .line 47
    iput-object v1, p0, Lcom/tw/gamesdk/core/GameSDK;->helpTitle:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/tw/gamesdk/core/GameSDK;->helpLink:Ljava/lang/String;

    .line 62
    iput-boolean v0, p0, Lcom/tw/gamesdk/core/GameSDK;->bebugMode:Z

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tw/gamesdk/core/GameSDK;->loginStateListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lcom/tw/gamesdk/core/GameSDK;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/tw/gamesdk/core/GameSDK;->isInitialized:Z

    return p1
.end method

.method static synthetic access$102(Lcom/tw/gamesdk/core/GameSDK;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/tw/gamesdk/core/GameSDK;->helpTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/tw/gamesdk/core/GameSDK;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/tw/gamesdk/core/GameSDK;->helpLink:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tw/gamesdk/core/GameSDK;)Lcom/tw/gamesdk/bean/SimpleUserData;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tw/gamesdk/core/GameSDK;->currentUser:Lcom/tw/gamesdk/bean/SimpleUserData;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tw/gamesdk/core/GameSDK;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/tw/gamesdk/core/GameSDK;->clearUserData()V

    return-void
.end method

.method static synthetic access$500(Lcom/tw/gamesdk/core/GameSDK;Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/tw/gamesdk/core/GameSDK;->showLoginUI(Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;)V

    return-void
.end method

.method private autoLogin(Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;)V
    .locals 2

    .line 254
    invoke-direct {p0}, Lcom/tw/gamesdk/core/GameSDK;->getUserInfo()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/core/GameSDK;->currentUser:Lcom/tw/gamesdk/bean/SimpleUserData;

    .line 255
    invoke-virtual {p0}, Lcom/tw/gamesdk/core/GameSDK;->checkTokenExpires()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK;->context:Landroid/app/Activity;

    new-instance v1, Lcom/tw/gamesdk/core/GameSDK$3;

    invoke-direct {v1, p0, p1}, Lcom/tw/gamesdk/core/GameSDK$3;-><init>(Lcom/tw/gamesdk/core/GameSDK;Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;)V

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/TwPay;->loginQuickSdk(Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwLoginCallback;)V

    goto :goto_0

    :cond_0
    const-string v0, "gameSDK refreshToken:"

    .line 272
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 274
    new-instance v0, Lcom/tw/gamesdk/core/GameSDK$4;

    invoke-direct {v0, p0, p1}, Lcom/tw/gamesdk/core/GameSDK$4;-><init>(Lcom/tw/gamesdk/core/GameSDK;Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;)V

    invoke-static {v0}, Lcom/tw/gamesdk/core/TokenUtils;->refreshToken(Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;)V

    :goto_0
    return-void
.end method

.method private checkAutoLogin()Z
    .locals 4

    .line 395
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK;->context:Landroid/app/Activity;

    const-string v1, "game_sdk"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "user_token"

    const/4 v3, 0x0

    .line 396
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private clearUserData()V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK;->context:Landroid/app/Activity;

    const-string v1, "game_sdk"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 402
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private getDeviceId()Ljava/lang/String;
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/tw/gamesdk/core/GameSDK;
    .locals 2

    .line 72
    sget-object v0, Lcom/tw/gamesdk/core/GameSDK;->instance:Lcom/tw/gamesdk/core/GameSDK;

    if-nez v0, :cond_1

    .line 73
    const-class v0, Lcom/tw/gamesdk/core/GameSDK;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/tw/gamesdk/core/GameSDK;->instance:Lcom/tw/gamesdk/core/GameSDK;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/tw/gamesdk/core/GameSDK;

    invoke-direct {v1}, Lcom/tw/gamesdk/core/GameSDK;-><init>()V

    sput-object v1, Lcom/tw/gamesdk/core/GameSDK;->instance:Lcom/tw/gamesdk/core/GameSDK;

    .line 77
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 79
    :cond_1
    :goto_0
    sget-object v0, Lcom/tw/gamesdk/core/GameSDK;->instance:Lcom/tw/gamesdk/core/GameSDK;

    return-object v0
.end method

.method private getUserInfo()Lcom/tw/gamesdk/bean/SimpleUserData;
    .locals 5

    .line 334
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK;->context:Landroid/app/Activity;

    const-string v1, "game_sdk"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 335
    new-instance v1, Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-direct {v1}, Lcom/tw/gamesdk/bean/SimpleUserData;-><init>()V

    const-string v3, "user_name"

    const-string v4, ""

    .line 336
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tw/gamesdk/bean/SimpleUserData;->setNickname(Ljava/lang/String;)V

    const-string v3, "user_id"

    .line 337
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tw/gamesdk/bean/SimpleUserData;->setUid(Ljava/lang/String;)V

    const-string v3, "user_token"

    .line 338
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tw/gamesdk/bean/SimpleUserData;->setToken(Ljava/lang/String;)V

    const-string v3, "refresh_token"

    .line 339
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tw/gamesdk/bean/SimpleUserData;->setRefreshToken(Ljava/lang/String;)V

    const-string v3, "expires_in"

    .line 340
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tw/gamesdk/bean/SimpleUserData;->setExpireIn(I)V

    const-string v3, "user_activate"

    .line 341
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tw/gamesdk/bean/SimpleUserData;->setIsActive(I)V

    const-string v2, "user_phone"

    .line 342
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->setPhone(Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic lambda$initialize$0(Lcom/tw/gamesdk/callback/GameSDKCallback$InitCallback;)V
    .locals 2

    if-eqz p0, :cond_0

    const/16 v0, 0x3e9

    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    .line 158
    invoke-interface {p0, v0, v1}, Lcom/tw/gamesdk/callback/GameSDKCallback$InitCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private notifyLoginStateChanged(Z)V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK;->loginStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tw/gamesdk/core/GameSDK$LoginStateListener;

    if-eqz p1, :cond_0

    .line 408
    iget-object v2, p0, Lcom/tw/gamesdk/core/GameSDK;->currentUser:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-interface {v1, v2}, Lcom/tw/gamesdk/core/GameSDK$LoginStateListener;->onLogin(Lcom/tw/gamesdk/bean/SimpleUserData;)V

    goto :goto_0

    .line 410
    :cond_0
    invoke-interface {v1}, Lcom/tw/gamesdk/core/GameSDK$LoginStateListener;->onLogout()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 416
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showLoginUI(Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK;->context:Landroid/app/Activity;

    new-instance v1, Lcom/tw/gamesdk/core/GameSDK$2;

    invoke-direct {v1, p0, p1}, Lcom/tw/gamesdk/core/GameSDK$2;-><init>(Lcom/tw/gamesdk/core/GameSDK;Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;)V

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/TwPay;->loginSdk(Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwLoginCallback;)V

    return-void
.end method


# virtual methods
.method public addLoginStateListener(Lcom/tw/gamesdk/core/GameSDK$LoginStateListener;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK;->loginStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK;->loginStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public checkTokenExpires()Z
    .locals 7

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    add-long/2addr v0, v2

    .line 366
    iget-object v2, p0, Lcom/tw/gamesdk/core/GameSDK;->context:Landroid/app/Activity;

    const-string v3, "game_sdk"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "token_expires"

    const-wide/16 v5, 0x0

    .line 367
    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tokenExpires:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "expiresTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    cmp-long v5, v2, v0

    if-gez v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public getCurrentUser()Lcom/tw/gamesdk/bean/SimpleUserData;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK;->currentUser:Lcom/tw/gamesdk/bean/SimpleUserData;

    return-object v0
.end method

.method public getHelpLink()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK;->helpLink:Ljava/lang/String;

    return-object v0
.end method

.method public getHelpTitle()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK;->helpTitle:Ljava/lang/String;

    return-object v0
.end method

.method public initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/tw/gamesdk/callback/GameSDKCallback$InitCallback;)V
    .locals 8

    .line 86
    iput-object p1, p0, Lcom/tw/gamesdk/core/GameSDK;->context:Landroid/app/Activity;

    .line 87
    new-instance v0, Lcom/tw/gamesdk/core/GameSDKConfig;

    const-string v1, ""

    invoke-direct {v0, p2, v1, v1}, Lcom/tw/gamesdk/core/GameSDKConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tw/gamesdk/core/GameSDK;->config:Lcom/tw/gamesdk/core/GameSDKConfig;

    .line 90
    invoke-virtual {v0}, Lcom/tw/gamesdk/core/GameSDKConfig;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK;->config:Lcom/tw/gamesdk/core/GameSDKConfig;

    invoke-virtual {v0}, Lcom/tw/gamesdk/core/GameSDKConfig;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 96
    :cond_0
    invoke-static {p1, p2}, Lcom/tw/OnLinePaySdk/tools/Tools;->getAppSetBean(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    :try_start_0
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "twOfflinePay.xml"

    const-string v1, "debug"

    invoke-static {p2, v0, v1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "true"

    .line 99
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/tw/gamesdk/core/GameSDK;->bebugMode:Z

    .line 100
    invoke-static {}, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->getChannelAppId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {}, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->getChannelAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->getChannelId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x1

    new-instance v7, Lcom/tw/gamesdk/core/GameSDK$1;

    invoke-direct {v7, p0, p3}, Lcom/tw/gamesdk/core/GameSDK$1;-><init>(Lcom/tw/gamesdk/core/GameSDK;Lcom/tw/gamesdk/callback/GameSDKCallback$InitCallback;)V

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/tw/pay/sdk/TwPay;->initSdk(Landroid/content/Context;JLjava/lang/String;JZLcom/tw/pay/sdk/callback/TwInitCallback;)V

    .line 152
    invoke-static {}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->getInstance()Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;

    move-result-object p2

    invoke-static {}, Lcom/tw/gamesdk/core/GameSDKConstant;->getAuthLoginKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->init(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "GameSDK"

    const-string p2, "\u521d\u59cb\u5316\u5f02\u5e38"

    .line 155
    invoke-static {p1, p2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance p1, Lcom/tw/gamesdk/core/-$$Lambda$GameSDK$nAARgMeYKvOahfgPfpzywCAYeRY;

    invoke-direct {p1, p3}, Lcom/tw/gamesdk/core/-$$Lambda$GameSDK$nAARgMeYKvOahfgPfpzywCAYeRY;-><init>(Lcom/tw/gamesdk/callback/GameSDKCallback$InitCallback;)V

    invoke-direct {p0, p1}, Lcom/tw/gamesdk/core/GameSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    const/16 p1, 0x3eb

    const-string p2, "AppId\u4e0d\u80fd\u4e3a\u7a7a"

    .line 92
    invoke-interface {p3, p1, p2}, Lcom/tw/gamesdk/callback/GameSDKCallback$InitCallback;->onFailure(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public isBebugMode()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/tw/gamesdk/core/GameSDK;->bebugMode:Z

    return v0
.end method

.method public isLoggedIn()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK;->currentUser:Lcom/tw/gamesdk/bean/SimpleUserData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public login(Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;)V
    .locals 2

    .line 169
    iget-boolean v0, p0, Lcom/tw/gamesdk/core/GameSDK;->isInitialized:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x3ea

    const-string v1, "SDK\u672a\u521d\u59cb\u5316"

    .line 171
    invoke-interface {p1, v0, v1}, Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 177
    :cond_1
    invoke-direct {p0}, Lcom/tw/gamesdk/core/GameSDK;->checkAutoLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    invoke-direct {p0, p1}, Lcom/tw/gamesdk/core/GameSDK;->autoLogin(Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;)V

    goto :goto_0

    .line 182
    :cond_2
    invoke-direct {p0, p1}, Lcom/tw/gamesdk/core/GameSDK;->showLoginUI(Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;)V

    :goto_0
    return-void
.end method

.method public logout(Lcom/tw/gamesdk/callback/GameSDKCallback$LogoutCallback;)V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK;->currentUser:Lcom/tw/gamesdk/bean/SimpleUserData;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x7d1

    const-string v1, "\u7528\u6237\u672a\u767b\u5f55"

    .line 193
    invoke-interface {p1, v0, v1}, Lcom/tw/gamesdk/callback/GameSDKCallback$LogoutCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 199
    :cond_1
    invoke-direct {p0}, Lcom/tw/gamesdk/core/GameSDK;->clearUserData()V

    return-void
.end method

.method public removeLoginStateListener(Lcom/tw/gamesdk/core/GameSDK$LoginStateListener;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK;->loginStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public saveUserInfo(Lcom/tw/gamesdk/bean/SimpleUserData;)V
    .locals 5

    .line 377
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK;->context:Landroid/app/Activity;

    const-string v1, "game_sdk"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 378
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 379
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_id"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 380
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_token"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 381
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getNickname()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_name"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 382
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "refresh_token"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 383
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getExpireIn()I

    move-result v1

    const-string v2, "expires_in"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 384
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getPhone()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_phone"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 385
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getIsActive()I

    move-result v1

    const-string v2, "user_activate"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getExpireIn()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-string v3, "token_expires"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 387
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 388
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/tw/gamesdk/core/UserDataManager;->getInstance(Landroid/content/Context;)Lcom/tw/gamesdk/core/UserDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tw/gamesdk/core/UserDataManager;->saveUser(Lcom/tw/gamesdk/bean/SimpleUserData;)V

    .line 389
    iput-object p1, p0, Lcom/tw/gamesdk/core/GameSDK;->currentUser:Lcom/tw/gamesdk/bean/SimpleUserData;

    .line 390
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "saveUserInfo simpleUserData:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK;->currentUser:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public updateUserInfo(Lcom/tw/gamesdk/bean/SimpleUserData;)V
    .locals 5

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUserInfo SimpleUserData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 347
    iput-object p1, p0, Lcom/tw/gamesdk/core/GameSDK;->currentUser:Lcom/tw/gamesdk/bean/SimpleUserData;

    .line 348
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK;->context:Landroid/app/Activity;

    const-string v1, "game_sdk"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 349
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 350
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_id"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 351
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_token"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 352
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getNickname()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_name"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 353
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "refresh_token"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 354
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getExpireIn()I

    move-result v1

    const-string v2, "expires_in"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 355
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getPhone()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_phone"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 356
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getIsActive()I

    move-result v1

    const-string v2, "user_activate"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getExpireIn()I

    move-result p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    const-string p1, "token_expires"

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 358
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
