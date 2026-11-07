.class Lcom/tw/gamesdk/core/GameSDK$1;
.super Ljava/lang/Object;
.source "GameSDK.java"

# interfaces
.implements Lcom/tw/pay/sdk/callback/TwInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/core/GameSDK;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/tw/gamesdk/callback/GameSDKCallback$InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/core/GameSDK;

.field final synthetic val$callback:Lcom/tw/gamesdk/callback/GameSDKCallback$InitCallback;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/core/GameSDK;Lcom/tw/gamesdk/callback/GameSDKCallback$InitCallback;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/tw/gamesdk/core/GameSDK$1;->this$0:Lcom/tw/gamesdk/core/GameSDK;

    iput-object p2, p0, Lcom/tw/gamesdk/core/GameSDK$1;->val$callback:Lcom/tw/gamesdk/callback/GameSDKCallback$InitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 2

    .line 108
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    .line 109
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "01"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object p1, p0, Lcom/tw/gamesdk/core/GameSDK$1;->this$0:Lcom/tw/gamesdk/core/GameSDK;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tw/gamesdk/core/GameSDK;->access$002(Lcom/tw/gamesdk/core/GameSDK;Z)Z

    .line 112
    iget-object p1, p0, Lcom/tw/gamesdk/core/GameSDK$1;->val$callback:Lcom/tw/gamesdk/callback/GameSDKCallback$InitCallback;

    invoke-interface {p1}, Lcom/tw/gamesdk/callback/GameSDKCallback$InitCallback;->onSuccess()V

    .line 116
    new-instance p1, Lcom/tw/gamesdk/core/GameSDK$1$1;

    invoke-direct {p1, p0}, Lcom/tw/gamesdk/core/GameSDK$1$1;-><init>(Lcom/tw/gamesdk/core/GameSDK$1;)V

    invoke-static {p1}, Lcom/tw/gamesdk/net/RequestUtils;->helpLink(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK$1;->val$callback:Lcom/tw/gamesdk/callback/GameSDKCallback$InitCallback;

    const/16 v1, 0x3ec

    invoke-interface {v0, v1, p1}, Lcom/tw/gamesdk/callback/GameSDKCallback$InitCallback;->onFailure(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 144
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
