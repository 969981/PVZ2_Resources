.class public Lcom/tw/gamesdk/core/TokenUtils;
.super Ljava/lang/Object;
.source "TokenUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getRefreshTokenParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "account"

    .line 28
    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static refreshToken(Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;)V
    .locals 4

    .line 36
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/gamesdk/core/GameSDK;->getCurrentUser()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getPhone()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5237\u65b0token begin simpleUserData\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tw/gamesdk/core/TokenUtils;->getRefreshTokenParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/tw/gamesdk/core/TokenUtils$1;

    invoke-direct {v3, p0, v1}, Lcom/tw/gamesdk/core/TokenUtils$1;-><init>(Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;Ljava/lang/String;)V

    invoke-static {v2, v0, v3}, Lcom/tw/gamesdk/net/RequestUtils;->tokenRefreshRequest(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "\u5237\u65b0token \u6821\u9a8c\u5931\u8d25"

    .line 39
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 40
    invoke-interface {p0}, Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;->onFailure()V

    return-void
.end method
