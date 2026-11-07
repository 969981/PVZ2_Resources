.class public abstract Lcom/talkweb/twgame/sdk/ITwGameSDKBase;
.super Ljava/lang/Object;
.source "ITwGameSDKBase.java"

# interfaces
.implements Lcom/talkweb/twgame/sdk/ITwGameSDK;


# instance fields
.field private gameType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 21
    iput-object v0, p0, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->gameType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public flashNativeAD(Lcom/talkweb/twgame/bean/PositionVo;)V
    .locals 0

    return-void
.end method

.method public getGameType()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->gameType:Ljava/lang/String;

    return-object v0
.end method

.method public hideBanner(I)V
    .locals 0

    return-void
.end method

.method public onClickNativeAD(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onClickNativeAD(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onExposuredNativeAD(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onExposuredNativeAD(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public setGameType(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->gameType:Ljava/lang/String;

    return-void
.end method

.method public showBanner(Lcom/talkweb/twgame/callback/BannerCallback;IIZI)V
    .locals 0

    return-void
.end method

.method public showNativeScreenView(Lcom/talkweb/twgame/callback/ScreenCallback;Lcom/talkweb/twgame/bean/PositionVo;)V
    .locals 0

    const-string p2, "showNativeScreenView not support"

    .line 127
    invoke-interface {p1, p2}, Lcom/talkweb/twgame/callback/ScreenCallback;->onScreenPreparedFailed(Ljava/lang/String;)V

    return-void
.end method

.method public showSplash(Lcom/talkweb/twgame/bean/PositionVo;)V
    .locals 0

    return-void
.end method

.method public showSplash(Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/SplashCallback;)V
    .locals 0

    const-string p1, "no support"

    .line 110
    invoke-interface {p2, p1}, Lcom/talkweb/twgame/callback/SplashCallback;->onSplashPreparedFailed(Ljava/lang/String;)V

    return-void
.end method
