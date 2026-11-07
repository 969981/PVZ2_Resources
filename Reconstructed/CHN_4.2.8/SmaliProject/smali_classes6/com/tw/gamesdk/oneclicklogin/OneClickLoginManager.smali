.class public final Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;
.super Ljava/lang/Object;
.source "OneClickLoginManager.java"


# static fields
.field private static final CODE_INTERMEDIATE_PRIVACY:Ljava/lang/String; = "600001"

.field private static final CODE_SUCCESS_TOKEN:Ljava/lang/String; = "600000"

.field private static volatile sInstance:Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;


# instance fields
.field private mAuthHelper:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

.field private mCurrentListener:Lcom/tw/gamesdk/oneclicklogin/OneClickLoginListener;

.field private mInited:Z

.field private mIsOtherLogin:Z

.field private mOtherLoginListener:Lcom/tw/gamesdk/oneclicklogin/OneClickLoginListener$OnOtherLoginListener;

.field private mTokenListener:Lcom/mobile/auth/gatewayauth/TokenResultListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mInited:Z

    .line 37
    iput-boolean v0, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mIsOtherLogin:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;Ljava/lang/String;Z)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->dispatch(Ljava/lang/String;Z)V

    return-void
.end method

.method private dispatch(Ljava/lang/String;Z)V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mCurrentListener:Lcom/tw/gamesdk/oneclicklogin/OneClickLoginListener;

    if-nez v0, :cond_0

    return-void

    .line 243
    :cond_0
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->fromJson(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object p1

    const-string v1, ""

    if-eqz p1, :cond_1

    .line 244
    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 245
    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz p2, :cond_5

    const-string p2, "600001"

    .line 250
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    :cond_3
    const-string p2, "600000"

    .line 255
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    .line 256
    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getToken()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 257
    invoke-virtual {p0}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->closeAuthPage()V

    .line 258
    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_1

    .line 260
    :cond_4
    invoke-virtual {p0}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->closeAuthPage()V

    .line 261
    invoke-interface {v0, v2, v1}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_5
    const-string p1, "700000"

    .line 266
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "700010"

    .line 267
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "700011"

    .line 268
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "700001"

    .line 269
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 278
    :cond_6
    invoke-virtual {p0}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->closeAuthPage()V

    .line 279
    invoke-interface {v0, v2, v1}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 271
    :cond_7
    :goto_2
    iget-boolean p1, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mIsOtherLogin:Z

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 272
    iput-boolean p1, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mIsOtherLogin:Z

    return-void

    .line 275
    :cond_8
    invoke-virtual {p0}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->closeAuthPage()V

    .line 276
    invoke-interface {v0}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginListener;->onUserCancel()V

    :goto_3
    return-void
.end method

.method public static getInstance()Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;
    .locals 2

    .line 40
    sget-object v0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->sInstance:Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;

    if-nez v0, :cond_1

    .line 41
    const-class v0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->sInstance:Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;

    invoke-direct {v1}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;-><init>()V

    sput-object v1, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->sInstance:Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;

    .line 45
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 47
    :cond_1
    :goto_0
    sget-object v0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->sInstance:Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;

    return-object v0
.end method


# virtual methods
.method public cancelAuthPage()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mAuthHelper:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    if-eqz v0, :cond_0

    .line 72
    :try_start_0
    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->userControlAuthPageCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public closeAuthPage()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mAuthHelper:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    if-nez v0, :cond_0

    return-void

    .line 206
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$OneClickLoginManager$FJBx72QungkkcHH9fSyZaoRxtQE;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$OneClickLoginManager$FJBx72QungkkcHH9fSyZaoRxtQE;-><init>(Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mAuthHelper:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->getVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 96
    sget-object v0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginConfig;->SECRET:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mInited:Z

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    sput-object p2, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginConfig;->SECRET:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 107
    new-instance p2, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager$1;

    invoke-direct {p2, p0}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager$1;-><init>(Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;)V

    iput-object p2, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mTokenListener:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    .line 119
    invoke-static {p1, p2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->getInstance(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/TokenResultListener;)Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mAuthHelper:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    if-eqz p1, :cond_1

    .line 128
    sget-object p2, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginConfig;->SECRET:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->setAuthSDKInfo(Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mAuthHelper:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->closeAuthPageReturnBack(Z)V

    .line 130
    iget-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mAuthHelper:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-virtual {p1, p2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->keepAuthPageLandscapeFullSreen(Z)V

    .line 131
    iput-boolean p2, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mInited:Z

    return-void

    :cond_1
    const-string p1, "OneClickLoginManager"

    const-string p2, "PhoneNumberAuthHelper.getInstance() returned null"

    .line 123
    invoke-static {p1, p2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\u4e00\u952e\u767b\u5f55 SDK \u521d\u59cb\u5316\u5931\u8d25\uff1aPhoneNumberAuthHelper.getInstance() \u8fd4\u56de null\u3002\u8bf7\u68c0\u67e5\u662f\u5426\u7f3a\u5c11 main-2.2.3 / logger-2.2.2 \u7ec4\u4ef6 aar\uff0c\u4ee5\u53ca\u6df7\u6dc6\u914d\u7f6e\u662f\u5426\u4fdd\u7559\u4e86 com.mobile.auth.**"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isInited()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mInited:Z

    return v0
.end method

.method public synthetic lambda$closeAuthPage$0$OneClickLoginManager()V
    .locals 1

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mAuthHelper:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->quitLoginPage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public login(Landroid/content/Context;Lcom/tw/gamesdk/oneclicklogin/OneClickLoginListener;)V
    .locals 3

    .line 162
    iget-boolean v0, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mInited:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mAuthHelper:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    if-nez v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    iput-object p2, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mCurrentListener:Lcom/tw/gamesdk/oneclicklogin/OneClickLoginListener;

    const/4 p2, 0x0

    .line 169
    iput-boolean p2, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mIsOtherLogin:Z

    .line 173
    :try_start_0
    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->removeAuthRegisterXmlConfig()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :catchall_0
    iget-object p2, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mAuthHelper:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    new-instance v0, Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig$Builder;

    invoke-direct {v0}, Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig$Builder;-><init>()V

    const-string v1, "twgame_login_oneclick_custom"

    .line 178
    invoke-static {p1, v1}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickAuthDelegate;

    invoke-direct {v2, p0}, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickAuthDelegate;-><init>(Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig$Builder;->setLayout(ILcom/mobile/auth/gatewayauth/ui/AbstractPnsViewDelegate;)Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig$Builder;->build()Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig;

    move-result-object v0

    .line 177
    invoke-virtual {p2, v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->addAuthRegisterXmlConfig(Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig;)V

    .line 192
    iget-object p2, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mAuthHelper:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-static {p1}, Lcom/tw/gamesdk/oneclicklogin/OneClickAuthUIConfig;->build(Landroid/content/Context;)Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->setAuthUIConfig(Lcom/mobile/auth/gatewayauth/AuthUIConfig;)V

    .line 193
    iget-object p2, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mAuthHelper:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mTokenListener:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    invoke-virtual {p2, v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->setAuthListener(Lcom/mobile/auth/gatewayauth/TokenResultListener;)V

    .line 194
    iget-object p2, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mAuthHelper:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    const/16 v0, 0x1f40

    invoke-virtual {p2, p1, v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->getLoginToken(Landroid/content/Context;I)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const-string p1, "-1"

    const-string v0, "SDK \u672a\u521d\u59cb\u5316"

    .line 164
    invoke-interface {p2, p1, v0}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onOtherLoginRequested()V
    .locals 1

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mIsOtherLogin:Z

    .line 82
    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mAuthHelper:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->quitLoginPage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 89
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mOtherLoginListener:Lcom/tw/gamesdk/oneclicklogin/OneClickLoginListener$OnOtherLoginListener;

    if-eqz v0, :cond_1

    .line 90
    invoke-interface {v0}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginListener$OnOtherLoginListener;->onOtherLogin()V

    :cond_1
    return-void
.end method

.method public preLogin(Lcom/tw/gamesdk/oneclicklogin/OneClickPreLoginListener;)V
    .locals 3

    .line 136
    iget-boolean v0, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mInited:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mAuthHelper:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x1388

    .line 142
    new-instance v2, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager$2;

    invoke-direct {v2, p0, p1}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager$2;-><init>(Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;Lcom/tw/gamesdk/oneclicklogin/OneClickPreLoginListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->accelerateLoginPage(ILcom/mobile/auth/gatewayauth/PreLoginResultListener;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const-string v0, "-1"

    const-string v1, "SDK \u672a\u521d\u59cb\u5316"

    .line 138
    invoke-interface {p1, v0, v1}, Lcom/tw/gamesdk/oneclicklogin/OneClickPreLoginListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public release()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mAuthHelper:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    if-eqz v0, :cond_0

    .line 219
    :try_start_0
    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->quitLoginPage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mCurrentListener:Lcom/tw/gamesdk/oneclicklogin/OneClickLoginListener;

    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mInited:Z

    return-void
.end method

.method public setOtherLoginListener(Lcom/tw/gamesdk/oneclicklogin/OneClickLoginListener$OnOtherLoginListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->mOtherLoginListener:Lcom/tw/gamesdk/oneclicklogin/OneClickLoginListener$OnOtherLoginListener;

    return-void
.end method

.method public setSecret(Ljava/lang/String;)V
    .locals 0

    .line 55
    sput-object p1, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginConfig;->SECRET:Ljava/lang/String;

    return-void
.end method
