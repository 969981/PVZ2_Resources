.class public Lcom/tw/gamesdk/net/RequestUtils;
.super Ljava/lang/Object;
.source "RequestUtils.java"


# static fields
.field private static BaseURL:Ljava/lang/String; = "https://pvzu.ditwan.cn"

.field public static PRIVACY_POLICY_URL:Ljava/lang/String; = "http://filead.talkyun.com.cn/tw/twys.htm"

.field private static TWGAME_ACTIVATE:Ljava/lang/String; = "/preview/activate"

.field private static TWGAME_GET_SMS_CODE:Ljava/lang/String; = "/user/sendLoginCode"

.field private static TWGAME_LOGIN:Ljava/lang/String; = "/user/login"

.field private static TestURL:Ljava/lang/String; = "http://pvzu-test.ditwan.cn:8899"

.field private static UPLOAD_URL:Ljava/lang/String; = "https://adc.ditwan.cn/ad/callback/tapad/game/eventd"

.field public static USER_AGREEMENT_URL:Ljava/lang/String; = "http://filead.talkyun.com.cn/tw/twyh.htm"

.field private static token:Ljava/lang/String; = ""

.field public static final unParams:Ljava/lang/String; = "-1"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPublicParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 61
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "app_id"

    .line 63
    sget-wide v2, Lcom/tw/pay/sdk/TwPaySetting;->newAppId:J

    invoke-virtual {v1, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "channel_id"

    .line 64
    sget-wide v2, Lcom/tw/pay/sdk/TwPaySetting;->channelId:J

    invoke-virtual {v1, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "device_type"

    const/4 v2, 0x1

    .line 65
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "device_id"

    .line 66
    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "sdk_version"

    .line 68
    sget-object v2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->getAppVersionInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "device_name"

    .line 69
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newJsonStr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 74
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    .line 311
    invoke-static {p0, p1}, Lcom/tw/gamesdk/net/RequestUtils;->modifyPwdParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/tw/gamesdk/net/RequestUtils;->changePasswordRequest(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method public static changePasswordRequest(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 2

    const-string v0, "changePasswordRequest"

    .line 150
    invoke-static {v0}, Lcom/tw/pay/sdk/tool/ClickUtil;->canPost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "changePasswordRequest \u5feb\u901f\u70b9\u51fb \u2192 \u76f4\u63a5\u62e6\u622a"

    .line 151
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tw/gamesdk/core/GameSDK;->isBebugMode()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->TestURL:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->BaseURL:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/user/changePassword"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {p0}, Lcom/tw/gamesdk/net/RequestUtils;->addPublicParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 156
    invoke-static {v0, p0, p1, p2}, Lcom/tw/gamesdk/net/OkHttpClientNet;->okHttpPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method public static changePhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    .line 321
    invoke-static {p0, p1, p2}, Lcom/tw/gamesdk/net/RequestUtils;->changePhoneParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3, p4}, Lcom/tw/gamesdk/net/RequestUtils;->changePhoneRequest(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method private static changePhoneParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 278
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "account"

    .line 279
    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "phone"

    .line 280
    invoke-virtual {v0, p0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "code"

    .line 281
    invoke-virtual {v0, p0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static changePhoneRequest(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 2

    const-string v0, "changePhoneRequest"

    .line 164
    invoke-static {v0}, Lcom/tw/pay/sdk/tool/ClickUtil;->canPost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "changePhoneRequest \u5feb\u901f\u70b9\u51fb \u2192 \u76f4\u63a5\u62e6\u622a"

    .line 165
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tw/gamesdk/core/GameSDK;->isBebugMode()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->TestURL:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->BaseURL:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/user/changePhone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {p0}, Lcom/tw/gamesdk/net/RequestUtils;->addPublicParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 170
    invoke-static {v0, p0, p1, p2}, Lcom/tw/gamesdk/net/OkHttpClientNet;->okHttpPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method private getBaseURL()Ljava/lang/String;
    .locals 1

    .line 81
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/gamesdk/core/GameSDK;->isBebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tw/gamesdk/net/RequestUtils;->TestURL:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tw/gamesdk/net/RequestUtils;->BaseURL:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static helpLink(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 5

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tw/gamesdk/core/GameSDK;->isBebugMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->TestURL:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->BaseURL:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/news/notice?cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/tw/pay/sdk/TwPaySetting;->channelId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tw/pay/sdk/TwPaySetting;->newSdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-static {v0, p0}, Lcom/tw/gamesdk/net/OkHttpClientNet;->okHttpGet(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method public static loginRequest(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 2

    const-string v0, "loginRequest"

    .line 135
    invoke-static {v0}, Lcom/tw/pay/sdk/tool/ClickUtil;->canPost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "loginRequest \u5feb\u901f\u70b9\u51fb \u2192 \u76f4\u63a5\u62e6\u622a"

    .line 136
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tw/gamesdk/core/GameSDK;->isBebugMode()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->TestURL:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->BaseURL:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/user/login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {p0}, Lcom/tw/gamesdk/net/RequestUtils;->addPublicParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 141
    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->token:Ljava/lang/String;

    invoke-static {v0, p0, v1, p1}, Lcom/tw/gamesdk/net/OkHttpClientNet;->okHttpPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method private static modifyPwdParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 236
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "account"

    .line 237
    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "new_password"

    .line 238
    invoke-virtual {v0, p0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sendCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    .line 291
    invoke-static {p0, p3, p2}, Lcom/tw/gamesdk/net/RequestUtils;->sendCodeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p4}, Lcom/tw/gamesdk/net/RequestUtils;->sendCodeRequest(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method private static sendCodeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 265
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "account"

    .line 266
    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "phone"

    .line 267
    invoke-virtual {v0, p0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "code_type"

    .line 268
    invoke-virtual {v0, p0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sendCodeRequest(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 2

    const-string v0, "sendCodeRequest"

    .line 178
    invoke-static {v0}, Lcom/tw/pay/sdk/tool/ClickUtil;->canPost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "sendCodeRequest \u5feb\u901f\u70b9\u51fb \u2192 \u76f4\u63a5\u62e6\u622a"

    .line 179
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tw/gamesdk/core/GameSDK;->isBebugMode()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->TestURL:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->BaseURL:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/user/sendCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {p0}, Lcom/tw/gamesdk/net/RequestUtils;->addPublicParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 184
    invoke-static {v0, p0, p1, p2}, Lcom/tw/gamesdk/net/OkHttpClientNet;->okHttpPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method public static sendLoginCode(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 2

    const-string v0, "loginCode"

    .line 102
    invoke-static {v0}, Lcom/tw/pay/sdk/tool/ClickUtil;->canPost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "sendLoginCode \u5feb\u901f\u70b9\u51fb \u2192 \u76f4\u63a5\u62e6\u622a"

    .line 103
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tw/gamesdk/core/GameSDK;->isBebugMode()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->TestURL:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->BaseURL:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->TWGAME_GET_SMS_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {p0}, Lcom/tw/gamesdk/net/RequestUtils;->addPublicParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 108
    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->token:Ljava/lang/String;

    invoke-static {v0, p0, v1, p1}, Lcom/tw/gamesdk/net/OkHttpClientNet;->okHttpPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method public static tokenAuthRequest(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 2

    const-string v0, "tokenAuthRequest"

    .line 220
    invoke-static {v0}, Lcom/tw/pay/sdk/tool/ClickUtil;->canPost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "tokenAuthRequest \u5feb\u901f\u70b9\u51fb \u2192 \u76f4\u63a5\u62e6\u622a"

    .line 221
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tw/gamesdk/core/GameSDK;->isBebugMode()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->TestURL:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->BaseURL:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/token/auth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {p0}, Lcom/tw/gamesdk/net/RequestUtils;->addPublicParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 226
    invoke-static {v0, p0, p1, p2}, Lcom/tw/gamesdk/net/OkHttpClientNet;->okHttpPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method public static tokenRefreshRequest(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 2

    const-string v0, "tokenRefreshRequest"

    .line 206
    invoke-static {v0}, Lcom/tw/pay/sdk/tool/ClickUtil;->canPost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "tokenRefreshRequest \u5feb\u901f\u70b9\u51fb \u2192 \u76f4\u63a5\u62e6\u622a"

    .line 207
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tw/gamesdk/core/GameSDK;->isBebugMode()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->TestURL:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->BaseURL:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/token/refresh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {p0}, Lcom/tw/gamesdk/net/RequestUtils;->addPublicParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 212
    invoke-static {v0, p0, p1, p2}, Lcom/tw/gamesdk/net/OkHttpClientNet;->okHttpPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method public static twgameActivate(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 2

    const-string v0, "activate"

    .line 112
    invoke-static {v0}, Lcom/tw/pay/sdk/tool/ClickUtil;->canPost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "twgameActivate \u5feb\u901f\u70b9\u51fb \u2192 \u76f4\u63a5\u62e6\u622a"

    .line 113
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tw/gamesdk/core/GameSDK;->isBebugMode()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->TestURL:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->BaseURL:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->TWGAME_ACTIVATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {p0}, Lcom/tw/gamesdk/net/RequestUtils;->addPublicParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 118
    invoke-static {v0, p0, p1, p2}, Lcom/tw/gamesdk/net/OkHttpClientNet;->okHttpPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method public static twgameLogin(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 2

    const-string v0, "login"

    .line 87
    invoke-static {v0}, Lcom/tw/pay/sdk/tool/ClickUtil;->canPost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "twgameLogin \u5feb\u901f\u70b9\u51fb \u2192 \u76f4\u63a5\u62e6\u622a"

    .line 88
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tw/gamesdk/core/GameSDK;->isBebugMode()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->TestURL:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->BaseURL:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->TWGAME_LOGIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {p0}, Lcom/tw/gamesdk/net/RequestUtils;->addPublicParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 93
    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->token:Ljava/lang/String;

    invoke-static {v0, p0, v1, p1}, Lcom/tw/gamesdk/net/OkHttpClientNet;->okHttpPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method public static uploadTapTapInfo(Ljava/util/Map;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "uploadTapTapInfo"

    .line 121
    invoke-static {v0}, Lcom/tw/pay/sdk/tool/ClickUtil;->canPost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    sget-object v0, Lcom/tw/gamesdk/net/RequestUtils;->UPLOAD_URL:Ljava/lang/String;

    .line 125
    invoke-static {v0, p0, p1}, Lcom/tw/gamesdk/net/OkHttpClientNet;->okHttpPost(Ljava/lang/String;Ljava/util/Map;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method public static verifyOldPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    .line 302
    invoke-static {p0, p1, p3}, Lcom/tw/gamesdk/net/RequestUtils;->verifyOldPhoneParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2, p4}, Lcom/tw/gamesdk/net/RequestUtils;->verifyOldPhoneRequest(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method private static verifyOldPhoneParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 250
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "account"

    .line 251
    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "code"

    .line 252
    invoke-virtual {v0, p0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "code_type"

    .line 253
    invoke-virtual {v0, p0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static verifyOldPhoneRequest(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 2

    const-string v0, "verifyOldPhoneRequest"

    .line 192
    invoke-static {v0}, Lcom/tw/pay/sdk/tool/ClickUtil;->canPost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "verifyOldPhoneRequest \u5feb\u901f\u70b9\u51fb \u2192 \u76f4\u63a5\u62e6\u622a"

    .line 193
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tw/gamesdk/core/GameSDK;->isBebugMode()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->TestURL:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/tw/gamesdk/net/RequestUtils;->BaseURL:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/user/verifyOldPhone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {p0}, Lcom/tw/gamesdk/net/RequestUtils;->addPublicParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 198
    invoke-static {v0, p0, p1, p2}, Lcom/tw/gamesdk/net/OkHttpClientNet;->okHttpPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method
