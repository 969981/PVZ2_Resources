.class Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;
.super Lcom/talkweb/twgame/callback/MediaCallback;
.source "TwGameSDKImpl.java"


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

    .line 1181
    iput-object p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    iput-object p2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    iput-object p3, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$groupCallback:Lcom/talkweb/twgame/callback/GroupCallback;

    invoke-direct {p0}, Lcom/talkweb/twgame/callback/MediaCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaClicked()V
    .locals 8

    .line 1239
    invoke-static {}, Lcom/talkweb/twgame/tools/Tools;->stopProgressDialog()V

    const-string v0, "showMediaByGroup onMediaClicked \u70b9\u51fb\u5e7f\u544a\u6210\u529f\u4e0a\u4f20\u65e5\u5fd7!"

    .line 1241
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1242
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getBid()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v7

    const-string v3, "2"

    invoke-static/range {v1 .. v7}, Lcom/talkweb/twgame/Param/UploadLogs;->uploadLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    invoke-virtual {v0}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaClicked()V

    return-void
.end method

.method public onMediaClosed()V
    .locals 8

    .line 1225
    invoke-static {}, Lcom/talkweb/twgame/tools/Tools;->stopProgressDialog()V

    const-string v0, "showMediaByGroup onMediaClosed!\u5173\u95ed\u5e7f\u544a"

    .line 1226
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1227
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    invoke-virtual {v0}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaClosed()V

    .line 1230
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getBid()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v7

    const-string v3, "5"

    invoke-static/range {v1 .. v7}, Lcom/talkweb/twgame/Param/UploadLogs;->uploadLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onMediaClosed,\u5173\u95ed\u5e7f\u544a\u4e8b\u4ef6\u4e0a\u62a5\u6210\u529f"

    .line 1232
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onMediaExposure()V
    .locals 8

    const-string v0, "\u5c55\u793a\u5e7f\u544a\u6210\u529f\u4e0a\u4f20\u65e5\u5fd7!"

    .line 1211
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1213
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-static {v0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$700(Lcom/talkweb/twgame/bean/PositionVo;)V

    .line 1214
    invoke-static {}, Lcom/talkweb/twgame/tools/Tools;->stopProgressDialog()V

    .line 1217
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getBid()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v7

    const-string v3, "1"

    invoke-static/range {v1 .. v7}, Lcom/talkweb/twgame/Param/UploadLogs;->uploadLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    invoke-virtual {v0}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaExposure()V

    .line 1219
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$groupCallback:Lcom/talkweb/twgame/callback/GroupCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/talkweb/twgame/callback/GroupCallback;->onGroupCallback(Z)V

    return-void
.end method

.method public onMediaIncentived()V
    .locals 8

    const-string v0, "showMediaByGroup onMediaIncentived \u89c6\u9891\u5e7f\u544a\u53ef\u53d1\u653e\u5956\u52b1!"

    .line 1202
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1203
    invoke-static {}, Lcom/talkweb/twgame/tools/Tools;->stopProgressDialog()V

    .line 1204
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getBid()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v7

    const-string v3, "4"

    invoke-static/range {v1 .. v7}, Lcom/talkweb/twgame/Param/UploadLogs;->uploadLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    invoke-virtual {v0}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaIncentived()V

    return-void
.end method

.method public onMediaPreparedFailed(Ljava/lang/String;)V
    .locals 3

    .line 1193
    invoke-static {}, Lcom/talkweb/twgame/tools/Tools;->stopProgressDialog()V

    .line 1194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showMediaByGroup onMediaPreparedFailed \u89c6\u9891\u5e7f\u544a\u5c55\u793a\u5931\u8d25\uff0cerror\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1195
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5c55\u793a\u5931\u8d25!id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1196
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    invoke-virtual {v0, p1}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaPreparedFailed(Ljava/lang/String;)V

    .line 1197
    iget-object p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$12;->val$groupCallback:Lcom/talkweb/twgame/callback/GroupCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/talkweb/twgame/callback/GroupCallback;->onGroupCallback(Z)V

    return-void
.end method
