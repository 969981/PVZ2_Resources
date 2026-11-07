.class Lcom/tw/gamesdk/core/GameSDK$2;
.super Ljava/lang/Object;
.source "GameSDK.java"

# interfaces
.implements Lcom/tw/pay/sdk/callback/TwLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/core/GameSDK;->showLoginUI(Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/core/GameSDK;

.field final synthetic val$callback:Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/core/GameSDK;Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/tw/gamesdk/core/GameSDK$2;->this$0:Lcom/tw/gamesdk/core/GameSDK;

    iput-object p2, p0, Lcom/tw/gamesdk/core/GameSDK$2;->val$callback:Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 3

    .line 240
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoginJson-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 241
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 242
    const-class v1, Lcom/tw/gamesdk/bean/SimpleApiResponse;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tw/gamesdk/bean/SimpleApiResponse;

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object p1, p0, Lcom/tw/gamesdk/core/GameSDK$2;->val$callback:Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;

    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK$2;->this$0:Lcom/tw/gamesdk/core/GameSDK;

    invoke-static {v0}, Lcom/tw/gamesdk/core/GameSDK;->access$300(Lcom/tw/gamesdk/core/GameSDK;)Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;->onSuccess(Lcom/tw/gamesdk/bean/SimpleUserData;)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK$2;->val$callback:Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;

    const/16 v1, 0x7d2

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;->onFailure(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
