.class Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;
.super Ljava/lang/Object;
.source "TwGameSDKImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showMedia(Lcom/talkweb/twgame/callback/MediaCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

.field final synthetic val$mediaPostion:I

.field final synthetic val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;


# direct methods
.method constructor <init>(Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/MediaCallback;I)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    iput-object p2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    iput p3, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;->val$mediaPostion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdkList size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$100()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 582
    :goto_0
    invoke-static {}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$100()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 583
    invoke-static {}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$100()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

    .line 585
    invoke-virtual {v2}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->getGameType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 587
    iget-object v3, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-static {v3}, Lcom/talkweb/twgame/Param/PositionManager;->isShow(Lcom/talkweb/twgame/bean/PositionVo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 589
    :try_start_0
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8c03\u7528\u89c6\u9891\u5e7f\u544a \u5e73\u53f0\u5e7f\u544a\u4f4did:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 590
    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    const/16 v3, 0xf

    invoke-static {v1, v3}, Lcom/talkweb/twgame/tools/Tools;->startProgressDialog(Landroid/content/Context;I)V

    .line 591
    sget-object v4, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v5

    const-string v6, "3"

    iget-object v1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_param()Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/PositionVo;->getBid()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/talkweb/twgame/Param/GameConstant;->getUserId()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v4 .. v10}, Lcom/talkweb/twgame/Param/UploadLogs;->uploadLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    iget-object v3, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    new-instance v4, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3$1;

    invoke-direct {v4, p0, v2}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3$1;-><init>(Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;Lcom/talkweb/twgame/sdk/ITwGameSDKBase;)V

    invoke-static {v2, v1, v3, v4, v0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$400(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/MediaCallback;Lcom/talkweb/twgame/callback/GroupCallback;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89c6\u9891\u5c55\u793a\u5f02\u5e38:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 606
    iget-object v1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaPreparedFailed(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 610
    :cond_0
    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0d\u5728\u5c55\u793a\u7684\u6982\u7387\u5185!id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;->val$mediaPostion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " \u5f53\u524d\u5c55\u793a\u6982\u7387\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/PositionVo;->getRate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    const-string v2, "\u4e0d\u5728\u5c55\u793a\u7684\u6982\u7387\u5185!"

    .line 611
    invoke-static {v2}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 612
    iget-object v2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    const-string v3, "\u4e0d\u5728\u5c55\u793a\u7684\u6982\u7387\u5185"

    invoke-virtual {v2, v3}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaPreparedFailed(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 616
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iTwGameSDKBase.getGameType():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->getGameType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " positionVo.getDsp().getDsp_id()\uff1a"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/PositionVo;->getDsp()Lcom/talkweb/twgame/bean/DspVo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5e7f\u544a\u4f4d\u65e0\u6548!id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;->val$mediaPostion:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " i:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sdkList.size():"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$100()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 618
    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;->val$mediaPostion:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 619
    invoke-static {}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$100()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    .line 620
    iget-object v2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    const-string v3, "\u5e7f\u544a\u4f4d\u65e0\u6548"

    invoke-virtual {v2, v3}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaPreparedFailed(Ljava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method
