.class Lcom/talkweb/twgame/sdk/TwGameSDKImpl$8;
.super Ljava/lang/Object;
.source "TwGameSDKImpl.java"

# interfaces
.implements Lcom/talkweb/twgame/callback/SplashCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showScreenByGroup(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/ScreenCallback;Lcom/talkweb/twgame/callback/GroupCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/talkweb/twgame/callback/ScreenCallback;

.field final synthetic val$groupCallback:Lcom/talkweb/twgame/callback/GroupCallback;

.field final synthetic val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;


# direct methods
.method constructor <init>(Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/ScreenCallback;Lcom/talkweb/twgame/callback/GroupCallback;)V
    .locals 0

    .line 932
    iput-object p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$8;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    iput-object p2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$8;->val$callback:Lcom/talkweb/twgame/callback/ScreenCallback;

    iput-object p3, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$8;->val$groupCallback:Lcom/talkweb/twgame/callback/GroupCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSplashClicked()V
    .locals 8

    .line 976
    invoke-static {}, Lcom/talkweb/twgame/tools/Tools;->stopProgressDialog()V

    const-string v0, "\u70b9\u51fb\u5e7f\u544a\u6210\u529f\u4e0a\u4f20\u65e5\u5fd7!"

    .line 978
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 979
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$8;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$8;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$8;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$8;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getBid()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v7

    const-string v3, "2"

    invoke-static/range {v1 .. v7}, Lcom/talkweb/twgame/Param/UploadLogs;->uploadLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$8;->val$callback:Lcom/talkweb/twgame/callback/ScreenCallback;

    invoke-interface {v0}, Lcom/talkweb/twgame/callback/ScreenCallback;->onScreenClicked()V

    const/4 v0, 0x0

    .line 981
    sput-boolean v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isScreenShow:Z

    return-void
.end method

.method public onSplashClosed()V
    .locals 1

    .line 968
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$8;->val$callback:Lcom/talkweb/twgame/callback/ScreenCallback;

    invoke-interface {v0}, Lcom/talkweb/twgame/callback/ScreenCallback;->onScreenClosed()V

    .line 969
    invoke-static {}, Lcom/talkweb/twgame/tools/Tools;->stopProgressDialog()V

    const/4 v0, 0x0

    .line 970
    sput-boolean v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isScreenShow:Z

    return-void
.end method

.method public onSplashExposure()V
    .locals 8

    const-string v0, "\u5c55\u793a\u5e7f\u544a\u6210\u529f\u4e0a\u4f20\u65e5\u5fd7!"

    .line 953
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$8;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-static {v0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$700(Lcom/talkweb/twgame/bean/PositionVo;)V

    .line 956
    invoke-static {}, Lcom/talkweb/twgame/tools/Tools;->stopProgressDialog()V

    .line 959
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$8;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$8;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$8;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$8;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getBid()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v7

    const-string v3, "1"

    invoke-static/range {v1 .. v7}, Lcom/talkweb/twgame/Param/UploadLogs;->uploadLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$8;->val$callback:Lcom/talkweb/twgame/callback/ScreenCallback;

    invoke-interface {v0}, Lcom/talkweb/twgame/callback/ScreenCallback;->onScreenExposure()V

    .line 961
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$8;->val$groupCallback:Lcom/talkweb/twgame/callback/GroupCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/talkweb/twgame/callback/GroupCallback;->onGroupCallback(Z)V

    const/4 v0, 0x0

    .line 962
    sput-boolean v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isScreenShow:Z

    return-void
.end method

.method public onSplashPreparedFailed(Ljava/lang/String;)V
    .locals 3

    .line 944
    invoke-static {}, Lcom/talkweb/twgame/tools/Tools;->stopProgressDialog()V

    .line 945
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5c55\u793a\u5931\u8d25!id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$8;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 946
    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$8;->val$callback:Lcom/talkweb/twgame/callback/ScreenCallback;

    invoke-interface {v0, p1}, Lcom/talkweb/twgame/callback/ScreenCallback;->onScreenPreparedFailed(Ljava/lang/String;)V

    .line 947
    iget-object p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$8;->val$groupCallback:Lcom/talkweb/twgame/callback/GroupCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/talkweb/twgame/callback/GroupCallback;->onGroupCallback(Z)V

    .line 948
    sput-boolean v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isScreenShow:Z

    return-void
.end method
