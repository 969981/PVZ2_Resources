.class final Lcom/talkweb/twgame/gdt/GDTManager$1;
.super Ljava/lang/Object;
.source "GDTManager.java"

# interfaces
.implements Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twgame/gdt/GDTManager;->getIAD(Ljava/lang/String;Lcom/talkweb/twgame/callback/ScreenCallback;)Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/talkweb/twgame/callback/ScreenCallback;


# direct methods
.method constructor <init>(Lcom/talkweb/twgame/callback/ScreenCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$callback"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/talkweb/twgame/gdt/GDTManager$1;->val$callback:Lcom/talkweb/twgame/callback/ScreenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClicked()V
    .locals 1

    const-string v0, "onADClicked"

    .line 124
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/talkweb/twgame/gdt/GDTManager$1;->val$callback:Lcom/talkweb/twgame/callback/ScreenCallback;

    invoke-interface {v0}, Lcom/talkweb/twgame/callback/ScreenCallback;->onScreenClicked()V

    return-void
.end method

.method public onADClosed()V
    .locals 1

    const-string v0, "onADClosed"

    .line 137
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/talkweb/twgame/gdt/GDTManager$1;->val$callback:Lcom/talkweb/twgame/callback/ScreenCallback;

    invoke-interface {v0}, Lcom/talkweb/twgame/callback/ScreenCallback;->onScreenClosed()V

    return-void
.end method

.method public onADExposure()V
    .locals 1

    const-string v0, "onADExposure"

    .line 117
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/talkweb/twgame/gdt/GDTManager$1;->val$callback:Lcom/talkweb/twgame/callback/ScreenCallback;

    invoke-interface {v0}, Lcom/talkweb/twgame/callback/ScreenCallback;->onScreenExposure()V

    return-void
.end method

.method public onADLeftApplication()V
    .locals 1

    const-string v0, "onADLeftApplication"

    .line 131
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onADOpened()V
    .locals 1

    const-string v0, "onADOpened"

    .line 111
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onADReceive()V
    .locals 1

    const-string v0, "onADReceive"

    .line 87
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/talkweb/twgame/gdt/GDTManager;->access$000()Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->show()V

    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 100
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 101
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "onNoAD, error code: %d, error msg: %s"

    .line 100
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNoAD, error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/talkweb/twgame/gdt/GDTManager$1;->val$callback:Lcom/talkweb/twgame/callback/ScreenCallback;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/talkweb/twgame/callback/ScreenCallback;->onScreenPreparedFailed(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result p1

    const/16 v0, 0x7d1

    if-ne p1, v0, :cond_0

    .line 105
    invoke-static {}, Lcom/talkweb/twgame/gdt/GDTManager;->access$100()Landroid/app/Activity;

    move-result-object p1

    invoke-static {}, Lcom/talkweb/twgame/gdt/GDTManager;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/talkweb/twgame/gdt/GDTManager;->gdtInit(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRenderFail()V
    .locals 0

    return-void
.end method

.method public onRenderSuccess()V
    .locals 0

    return-void
.end method

.method public onVideoCached()V
    .locals 1

    const-string v0, "onVideoCached"

    .line 94
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method
