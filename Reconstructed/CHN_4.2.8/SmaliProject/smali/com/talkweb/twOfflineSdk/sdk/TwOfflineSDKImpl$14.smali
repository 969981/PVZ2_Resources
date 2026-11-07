.class final Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$14;
.super Ljava/lang/Object;
.source "TwOfflineSDKImpl.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->set(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwStorageSetCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/talkweb/twOfflineSdk/callback/TwStorageSetCallBack;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/callback/TwStorageSetCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1051
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$14;->val$callback:Lcom/talkweb/twOfflineSdk/callback/TwStorageSetCallBack;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$14;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$14;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x3ed

    if-eqz p1, :cond_2

    .line 1057
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/talkweb/twOfflineSdk/bean/ReturnModel;

    .line 1058
    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/talkweb/twOfflineSdk/bean/ReturnModel;

    .line 1060
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/ReturnModel;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1061
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/ReturnModel;->getContent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1062
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/ReturnModel;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 1063
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1066
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/ReturnModel;->getContent()Ljava/lang/String;

    move-result-object p1

    const-string v1, "1234567890aba45678901234"

    .line 1065
    invoke-static {p1, v1}, Lcom/talkweb/twOfflineSdk/tools/DesUtil;->decrypt3des(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1068
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decryptedString is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1069
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1071
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$14;->val$callback:Lcom/talkweb/twOfflineSdk/callback/TwStorageSetCallBack;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$14;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$14;->val$value:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/talkweb/twOfflineSdk/callback/TwStorageSetCallBack;->onConflict(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1075
    :cond_0
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$14;->val$callback:Lcom/talkweb/twOfflineSdk/callback/TwStorageSetCallBack;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$14;->val$key:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/talkweb/twOfflineSdk/callback/TwStorageSetCallBack;->onSuccess(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1078
    :cond_1
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$14;->val$callback:Lcom/talkweb/twOfflineSdk/callback/TwStorageSetCallBack;

    .line 1079
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/ReturnModel;->getContent()Ljava/lang/String;

    move-result-object p1

    .line 1078
    invoke-interface {v1, p1, v0}, Lcom/talkweb/twOfflineSdk/callback/TwStorageSetCallBack;->onError(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1085
    :catch_0
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$14;->val$callback:Lcom/talkweb/twOfflineSdk/callback/TwStorageSetCallBack;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$14;->val$key:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lcom/talkweb/twOfflineSdk/callback/TwStorageSetCallBack;->onError(Ljava/lang/String;I)Ljava/lang/String;

    goto :goto_0

    .line 1090
    :cond_2
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$14;->val$callback:Lcom/talkweb/twOfflineSdk/callback/TwStorageSetCallBack;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$14;->val$key:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lcom/talkweb/twOfflineSdk/callback/TwStorageSetCallBack;->onError(Ljava/lang/String;I)Ljava/lang/String;

    :goto_0
    return-void
.end method
