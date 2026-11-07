.class final Lcom/talkweb/twgame/gdt/GDTManager$2;
.super Ljava/lang/Object;
.source "GDTManager.java"

# interfaces
.implements Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twgame/gdt/GDTManager;->showMediaAD(Ljava/lang/String;Lcom/talkweb/twgame/callback/MediaCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/talkweb/twgame/callback/MediaCallback;


# direct methods
.method constructor <init>(Lcom/talkweb/twgame/callback/MediaCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$callback"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/talkweb/twgame/gdt/GDTManager$2;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClick()V
    .locals 1

    const-string v0, "onADClick:\u6fc0\u52b1\u89c6\u9891\u5e7f\u544a\u88ab\u70b9\u51fb"

    .line 233
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/talkweb/twgame/gdt/GDTManager$2;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    invoke-virtual {v0}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaClicked()V

    return-void
.end method

.method public onADClose()V
    .locals 1

    const-string v0, "onADClose:\u6fc0\u52b1\u89c6\u9891\u5e7f\u544a\u88ab\u5173\u95ed"

    .line 246
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/talkweb/twgame/gdt/GDTManager$2;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    invoke-virtual {v0}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaClosed()V

    return-void
.end method

.method public onADExpose()V
    .locals 1

    const-string v0, "onADExpose:\u6fc0\u52b1\u89c6\u9891\u5e7f\u544a\u66dd\u5149"

    .line 217
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/talkweb/twgame/gdt/GDTManager$2;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    invoke-virtual {v0}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaExposure()V

    return-void
.end method

.method public onADLoad()V
    .locals 2

    const-string v0, "onADLoad:\u5e7f\u544a\u52a0\u8f7d\u6210\u529f\uff0c\u53ef\u5728\u6b64\u56de\u8c03\u540e\u8fdb\u884c\u5e7f\u544a\u5c55\u793a"

    .line 187
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/talkweb/twgame/gdt/GDTManager;->access$300()Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->hasShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-static {}, Lcom/talkweb/twgame/gdt/GDTManager;->access$300()Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->showAD()V

    goto :goto_0

    :cond_0
    const-string v0, "Sorry\u6b64\u6761\u5e7f\u544a\u5df2\u7ecf\u5c55\u793a\u8fc7\uff0c\u8bf7\u518d\u6b21\u8bf7\u6c42\u5e7f\u544a\u540e\u8fdb\u884c\u5e7f\u544a\u5c55\u793a\uff01"

    .line 193
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/talkweb/twgame/gdt/GDTManager$2;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    const-string v1, "Sorry\u6b64\u6761\u5e7f\u544a\u5df2\u7ecf\u5c55\u793a\u8fc7\uff0c\u8bf7\u518d\u6b21\u8bf7\u6c42\u5e7f\u544a\u540e\u8fdb\u884c\u5e7f\u544a\u5c55\u793a"

    invoke-virtual {v0, v1}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaPreparedFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onADShow()V
    .locals 1

    const-string v0, "onADShow"

    .line 211
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/qq/e/comm/util/AdError;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adError"
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError:\u5e7f\u544a\u9519\u8bef"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v0

    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_0

    .line 255
    invoke-static {}, Lcom/talkweb/twgame/gdt/GDTManager;->access$100()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/talkweb/twgame/gdt/GDTManager;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/talkweb/twgame/gdt/GDTManager;->gdtInit(Landroid/app/Activity;Ljava/lang/String;)V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/talkweb/twgame/gdt/GDTManager$2;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError:adError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getErrorCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaPreparedFailed(Ljava/lang/String;)V

    return-void
.end method

.method public onReward(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p1, "onADExpose"

    .line 224
    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/talkweb/twgame/gdt/GDTManager$2;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    invoke-virtual {p1}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaIncentived()V

    return-void
.end method

.method public onVideoCached()V
    .locals 1

    const-string v0, "onVideoCached\u89c6\u9891\u7d20\u6750\u7f13\u5b58\u6210\u529f\uff0c\u53ef\u5728\u6b64\u56de\u8c03\u540e\u8fdb\u884c\u5e7f\u544a\u5c55\u793a"

    .line 206
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoComplete()V
    .locals 1

    const-string v0, "onVideoComplete:\u6fc0\u52b1\u89c6\u9891\u64ad\u653e\u5b8c\u6bd5"

    .line 240
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method
