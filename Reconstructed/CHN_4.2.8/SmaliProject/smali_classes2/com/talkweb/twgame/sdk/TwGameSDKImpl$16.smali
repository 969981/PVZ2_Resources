.class Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;
.super Lcom/talkweb/twgame/callback/MediaCallback;
.source "TwGameSDKImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showSplashByGroup(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/SplashCallback;Lcom/talkweb/twgame/callback/GroupCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/talkweb/twgame/callback/SplashCallback;

.field final synthetic val$groupCallback:Lcom/talkweb/twgame/callback/GroupCallback;

.field final synthetic val$iTwGameSDKBase:Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

.field final synthetic val$index:I

.field final synthetic val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;


# direct methods
.method constructor <init>(ILcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/callback/SplashCallback;Lcom/talkweb/twgame/callback/GroupCallback;)V
    .locals 0

    .line 1479
    iput p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$index:I

    iput-object p2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    iput-object p3, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$iTwGameSDKBase:Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

    iput-object p4, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$callback:Lcom/talkweb/twgame/callback/SplashCallback;

    iput-object p5, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$groupCallback:Lcom/talkweb/twgame/callback/GroupCallback;

    invoke-direct {p0}, Lcom/talkweb/twgame/callback/MediaCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaClicked()V
    .locals 8

    .line 1525
    invoke-static {}, Lcom/talkweb/twgame/tools/Tools;->stopProgressDialog()V

    const-string v0, "\u70b9\u51fb\u5e7f\u544a\u6210\u529f\u4e0a\u4f20\u65e5\u5fd7!"

    .line 1527
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1528
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getBid()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v7

    const-string v3, "2"

    invoke-static/range {v1 .. v7}, Lcom/talkweb/twgame/Param/UploadLogs;->uploadLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$callback:Lcom/talkweb/twgame/callback/SplashCallback;

    invoke-interface {v0}, Lcom/talkweb/twgame/callback/SplashCallback;->onSplashClicked()V

    return-void
.end method

.method public onMediaClosed()V
    .locals 1

    .line 1518
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$callback:Lcom/talkweb/twgame/callback/SplashCallback;

    invoke-interface {v0}, Lcom/talkweb/twgame/callback/SplashCallback;->onSplashClosed()V

    .line 1519
    invoke-static {}, Lcom/talkweb/twgame/tools/Tools;->stopProgressDialog()V

    return-void
.end method

.method public onMediaExposure()V
    .locals 8

    const-string v0, "\u5c55\u793a\u5e7f\u544a\u6210\u529f\u4e0a\u4f20\u65e5\u5fd7!"

    .line 1504
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1506
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-static {v0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$700(Lcom/talkweb/twgame/bean/PositionVo;)V

    .line 1507
    invoke-static {}, Lcom/talkweb/twgame/tools/Tools;->stopProgressDialog()V

    .line 1510
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getBid()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v7

    const-string v3, "1"

    invoke-static/range {v1 .. v7}, Lcom/talkweb/twgame/Param/UploadLogs;->uploadLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$callback:Lcom/talkweb/twgame/callback/SplashCallback;

    invoke-interface {v0}, Lcom/talkweb/twgame/callback/SplashCallback;->onSplashExposure()V

    .line 1512
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$groupCallback:Lcom/talkweb/twgame/callback/GroupCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/talkweb/twgame/callback/GroupCallback;->onGroupCallback(Z)V

    return-void
.end method

.method public onMediaIncentived()V
    .locals 0

    return-void
.end method

.method public onMediaPreparedFailed(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "unknown"

    .line 1486
    :cond_0
    iget v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$index:I

    add-int/lit8 v0, v0, 0x1

    .line 1487
    iget-object v1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_params()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 1488
    iget-object p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$iTwGameSDKBase:Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

    iget-object v1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    iget-object v2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$callback:Lcom/talkweb/twgame/callback/SplashCallback;

    iget-object v3, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$groupCallback:Lcom/talkweb/twgame/callback/GroupCallback;

    invoke-static {p1, v1, v2, v3, v0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$1000(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/SplashCallback;Lcom/talkweb/twgame/callback/GroupCallback;I)V

    return-void

    .line 1491
    :cond_1
    invoke-static {}, Lcom/talkweb/twgame/tools/Tools;->stopProgressDialog()V

    .line 1492
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5c55\u793a\u5931\u8d25!id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1493
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$callback:Lcom/talkweb/twgame/callback/SplashCallback;

    invoke-interface {v0, p1}, Lcom/talkweb/twgame/callback/SplashCallback;->onSplashPreparedFailed(Ljava/lang/String;)V

    .line 1494
    iget-object p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$16;->val$groupCallback:Lcom/talkweb/twgame/callback/GroupCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/talkweb/twgame/callback/GroupCallback;->onGroupCallback(Z)V

    return-void
.end method
