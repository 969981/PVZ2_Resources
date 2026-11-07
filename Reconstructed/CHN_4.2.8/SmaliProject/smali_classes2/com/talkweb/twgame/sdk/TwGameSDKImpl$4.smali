.class Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;
.super Ljava/lang/Object;
.source "TwGameSDKImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showScreenView(Lcom/talkweb/twgame/callback/ScreenCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/talkweb/twgame/callback/ScreenCallback;

.field final synthetic val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

.field final synthetic val$screenViewPosition:I


# direct methods
.method constructor <init>(Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/ScreenCallback;I)V
    .locals 0

    .line 708
    iput-object p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    iput-object p2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;->val$callback:Lcom/talkweb/twgame/callback/ScreenCallback;

    iput p3, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;->val$screenViewPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 711
    invoke-static {}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

    .line 712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "positionVo.getDsp().getDsp_id()\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v3}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "----iTwGameSDKBase.getGameType():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-virtual {v1}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->getGameType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 712
    invoke-static {v2}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 715
    invoke-virtual {v1}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->getGameType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v3}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 717
    iget-object v2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-static {v2}, Lcom/talkweb/twgame/Param/PositionManager;->isShow(Lcom/talkweb/twgame/bean/PositionVo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 719
    :try_start_0
    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    const/4 v4, 0x5

    invoke-static {v2, v4}, Lcom/talkweb/twgame/tools/Tools;->startProgressDialog(Landroid/content/Context;I)V

    .line 720
    sget-object v5, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    iget-object v2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v9

    iget-object v2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/PositionVo;->getBid()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v5 .. v11}, Lcom/talkweb/twgame/Param/UploadLogs;->uploadLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object v2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    iget-object v4, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;->val$callback:Lcom/talkweb/twgame/callback/ScreenCallback;

    new-instance v5, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4$1;

    invoke-direct {v5, p0, v1}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4$1;-><init>(Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;Lcom/talkweb/twgame/sdk/ITwGameSDKBase;)V

    invoke-static {v1, v2, v4, v5, v3}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$600(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/ScreenCallback;Lcom/talkweb/twgame/callback/GroupCallback;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 733
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u63d2\u5c4f\u5c55\u793a\u5f02\u5e38 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 734
    iget-object v2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;->val$callback:Lcom/talkweb/twgame/callback/ScreenCallback;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/talkweb/twgame/callback/ScreenCallback;->onScreenPreparedFailed(Ljava/lang/String;)V

    .line 735
    sput-boolean v3, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isScreenShow:Z

    goto/16 :goto_0

    .line 738
    :cond_0
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0d\u5728\u5c55\u793a\u7684\u6982\u7387\u5185!id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;->val$screenViewPosition:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " \u5f53\u524d\u5c55\u793a\u6982\u7387\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/PositionVo;->getRate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    const-string v1, "\u4e0d\u5728\u5c55\u793a\u7684\u6982\u7387\u5185!"

    .line 739
    invoke-static {v1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 740
    sput-boolean v3, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isScreenShow:Z

    .line 741
    iget-object v1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;->val$callback:Lcom/talkweb/twgame/callback/ScreenCallback;

    const-string v2, "\u4e0d\u5728\u5c55\u793a\u7684\u6982\u7387\u5185"

    invoke-interface {v1, v2}, Lcom/talkweb/twgame/callback/ScreenCallback;->onScreenPreparedFailed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 744
    :cond_1
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5e7f\u544a\u4f4d\u65e0\u6548!screenViewPosition:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;->val$screenViewPosition:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    const-string v1, "\u5e7f\u544a\u4f4d\u65e0\u6548!"

    .line 745
    invoke-static {v1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 746
    iget-object v1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;->val$callback:Lcom/talkweb/twgame/callback/ScreenCallback;

    const-string v2, "\u5e7f\u544a\u4f4d\u65e0\u6548"

    invoke-interface {v1, v2}, Lcom/talkweb/twgame/callback/ScreenCallback;->onScreenPreparedFailed(Ljava/lang/String;)V

    .line 747
    sput-boolean v3, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->isScreenShow:Z

    goto/16 :goto_0

    :cond_2
    return-void
.end method
