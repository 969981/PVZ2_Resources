.class Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;
.super Ljava/lang/Object;
.source "TwGameSDKImpl.java"

# interfaces
.implements Lcom/talkweb/twgame/callback/SplashCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showMediaByGroup(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/MediaCallback;Lcom/talkweb/twgame/callback/GroupCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

.field final synthetic val$groupCallback:Lcom/talkweb/twgame/callback/GroupCallback;

.field final synthetic val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;


# direct methods
.method constructor <init>(Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/MediaCallback;Lcom/talkweb/twgame/callback/GroupCallback;)V
    .locals 0

    .line 1126
    iput-object p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    iput-object p2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    iput-object p3, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;->val$groupCallback:Lcom/talkweb/twgame/callback/GroupCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSplashClicked()V
    .locals 8

    .line 1171
    invoke-static {}, Lcom/talkweb/twgame/tools/Tools;->stopProgressDialog()V

    const-string v0, "\u70b9\u51fb\u5e7f\u544a\u6210\u529f\u4e0a\u4f20\u65e5\u5fd7!"

    .line 1173
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1174
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getBid()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v7

    const-string v3, "2"

    invoke-static/range {v1 .. v7}, Lcom/talkweb/twgame/Param/UploadLogs;->uploadLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    invoke-virtual {v0}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaClicked()V

    return-void
.end method

.method public onSplashClosed()V
    .locals 8

    .line 1160
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    invoke-virtual {v0}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaIncentived()V

    .line 1161
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    invoke-virtual {v0}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaClosed()V

    .line 1162
    invoke-static {}, Lcom/talkweb/twgame/tools/Tools;->stopProgressDialog()V

    const-string v0, "\u5f00\u5c4f\u5173\u95ed\u89c6\u4e3a\u89c6\u9891\u5e7f\u544a\u53ef\u53d1\u653e\u5956\u52b1!"

    .line 1163
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1164
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getBid()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v7

    const-string v3, "4"

    invoke-static/range {v1 .. v7}, Lcom/talkweb/twgame/Param/UploadLogs;->uploadLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSplashExposure()V
    .locals 8

    const-string v0, "\u5c55\u793a\u5e7f\u544a\u6210\u529f\u4e0a\u4f20\u65e5\u5fd7!"

    .line 1146
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1148
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-static {v0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$700(Lcom/talkweb/twgame/bean/PositionVo;)V

    .line 1149
    invoke-static {}, Lcom/talkweb/twgame/tools/Tools;->stopProgressDialog()V

    .line 1152
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getBid()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v7

    const-string v3, "1"

    invoke-static/range {v1 .. v7}, Lcom/talkweb/twgame/Param/UploadLogs;->uploadLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    invoke-virtual {v0}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaExposure()V

    .line 1154
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;->val$groupCallback:Lcom/talkweb/twgame/callback/GroupCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/talkweb/twgame/callback/GroupCallback;->onGroupCallback(Z)V

    return-void
.end method

.method public onSplashPreparedFailed(Ljava/lang/String;)V
    .locals 3

    .line 1138
    invoke-static {}, Lcom/talkweb/twgame/tools/Tools;->stopProgressDialog()V

    .line 1139
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5c55\u793a\u5931\u8d25!id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1140
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    invoke-virtual {v0, p1}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaPreparedFailed(Ljava/lang/String;)V

    .line 1141
    iget-object p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$11;->val$groupCallback:Lcom/talkweb/twgame/callback/GroupCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/talkweb/twgame/callback/GroupCallback;->onGroupCallback(Z)V

    return-void
.end method
