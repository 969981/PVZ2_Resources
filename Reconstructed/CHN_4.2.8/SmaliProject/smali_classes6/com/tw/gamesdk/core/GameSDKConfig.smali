.class public Lcom/tw/gamesdk/core/GameSDKConfig;
.super Ljava/lang/Object;
.source "GameSDKConfig.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private autoLogin:Z

.field private channelId:Ljava/lang/String;

.field private debugMode:Z

.field private sdkVersion:Ljava/lang/String;

.field private serverUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "default"

    .line 8
    iput-object v0, p0, Lcom/tw/gamesdk/core/GameSDKConfig;->channelId:Ljava/lang/String;

    const-string v0, "1.0.0"

    .line 9
    iput-object v0, p0, Lcom/tw/gamesdk/core/GameSDKConfig;->sdkVersion:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/tw/gamesdk/core/GameSDKConfig;->debugMode:Z

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/tw/gamesdk/core/GameSDKConfig;->autoLogin:Z

    .line 15
    iput-object p1, p0, Lcom/tw/gamesdk/core/GameSDKConfig;->appId:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/tw/gamesdk/core/GameSDKConfig;->appKey:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/tw/gamesdk/core/GameSDKConfig;->serverUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDKConfig;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDKConfig;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDKConfig;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDKConfig;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDKConfig;->serverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoLogin()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/tw/gamesdk/core/GameSDKConfig;->autoLogin:Z

    return v0
.end method

.method public isDebugMode()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/tw/gamesdk/core/GameSDKConfig;->debugMode:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/tw/gamesdk/core/GameSDKConfig;->appId:Ljava/lang/String;

    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/tw/gamesdk/core/GameSDKConfig;->appKey:Ljava/lang/String;

    return-void
.end method

.method public setAutoLogin(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/tw/gamesdk/core/GameSDKConfig;->autoLogin:Z

    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/tw/gamesdk/core/GameSDKConfig;->channelId:Ljava/lang/String;

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/tw/gamesdk/core/GameSDKConfig;->debugMode:Z

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/tw/gamesdk/core/GameSDKConfig;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public setServerUrl(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/tw/gamesdk/core/GameSDKConfig;->serverUrl:Ljava/lang/String;

    return-void
.end method
