.class Lcom/tw/gamesdk/core/GameSDK$1$1;
.super Ljava/lang/Object;
.source "GameSDK.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/core/GameSDK$1;->responseData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tw/gamesdk/core/GameSDK$1;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/core/GameSDK$1;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/tw/gamesdk/core/GameSDK$1$1;->this$1:Lcom/tw/gamesdk/core/GameSDK$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestUtils.helpLink eventCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const/16 v0, 0x270f

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RequestUtils.helpLink:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 123
    :try_start_0
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 124
    const-class v0, Lcom/tw/gamesdk/bean/SimpleHelpResponse;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tw/gamesdk/bean/SimpleHelpResponse;

    .line 125
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleHelpResponse;->getData()Lcom/tw/gamesdk/bean/SimpleHelpData;

    move-result-object p1

    .line 126
    iget-object p2, p0, Lcom/tw/gamesdk/core/GameSDK$1$1;->this$1:Lcom/tw/gamesdk/core/GameSDK$1;

    iget-object p2, p2, Lcom/tw/gamesdk/core/GameSDK$1;->this$0:Lcom/tw/gamesdk/core/GameSDK;

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleHelpData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/tw/gamesdk/core/GameSDK;->access$102(Lcom/tw/gamesdk/core/GameSDK;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    iget-object p2, p0, Lcom/tw/gamesdk/core/GameSDK$1$1;->this$1:Lcom/tw/gamesdk/core/GameSDK$1;

    iget-object p2, p2, Lcom/tw/gamesdk/core/GameSDK$1;->this$0:Lcom/tw/gamesdk/core/GameSDK;

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleHelpData;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tw/gamesdk/core/GameSDK;->access$202(Lcom/tw/gamesdk/core/GameSDK;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RequestUtils.helpLink Exception:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
