.class final Lcom/tw/gamesdk/core/TokenUtils$1;
.super Ljava/lang/Object;
.source "TokenUtils.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/core/TokenUtils;->refreshToken(Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;

.field final synthetic val$phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/tw/gamesdk/core/TokenUtils$1;->val$callback:Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;

    iput-object p2, p0, Lcom/tw/gamesdk/core/TokenUtils$1;->val$phone:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 3

    const-string v0, "message:"

    if-eqz p1, :cond_0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tokenRefreshRequest \u5931\u8d25 eventCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 49
    sget-object p1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    .line 50
    iget-object p1, p0, Lcom/tw/gamesdk/core/TokenUtils$1;->val$callback:Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;

    invoke-interface {p1}, Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;->onFailure()V

    return-void

    .line 54
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5237\u65b0token eventCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 55
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 56
    const-class v0, Lcom/tw/gamesdk/bean/SimpleApiResponse;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tw/gamesdk/bean/SimpleApiResponse;

    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getCode()I

    move-result p2

    if-nez p2, :cond_1

    .line 59
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getData()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object p1

    .line 60
    iget-object p2, p0, Lcom/tw/gamesdk/core/TokenUtils$1;->val$phone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/tw/gamesdk/bean/SimpleUserData;->setPhone(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tw/gamesdk/core/GameSDK;->updateUserInfo(Lcom/tw/gamesdk/bean/SimpleUserData;)V

    .line 62
    sget-object p2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/tw/gamesdk/core/UserDataManager;->getInstance(Landroid/content/Context;)Lcom/tw/gamesdk/core/UserDataManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tw/gamesdk/core/UserDataManager;->updateUserToken(Lcom/tw/gamesdk/bean/SimpleUserData;)Z

    .line 63
    iget-object p1, p0, Lcom/tw/gamesdk/core/TokenUtils$1;->val$callback:Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;

    invoke-interface {p1}, Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;->onSuccess()V

    goto :goto_0

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/tw/gamesdk/core/TokenUtils$1;->val$callback:Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;

    invoke-interface {p1}, Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;->onFailure()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5237\u65b0token e:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/tw/gamesdk/core/TokenUtils$1;->val$callback:Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;

    invoke-interface {p1}, Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;->onFailure()V

    :goto_0
    return-void
.end method
