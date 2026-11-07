.class Lcom/talkweb/twgame/sdk/TwGameSDKImpl$20$1;
.super Ljava/lang/Object;
.source "TwGameSDKImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twgame/sdk/TwGameSDKImpl$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twgame/sdk/TwGameSDKImpl$20;


# direct methods
.method constructor <init>(Lcom/talkweb/twgame/sdk/TwGameSDKImpl$20;)V
    .locals 0

    .line 2011
    iput-object p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$20$1;->this$0:Lcom/talkweb/twgame/sdk/TwGameSDKImpl$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2015
    invoke-static {}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$1300()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$20$1;->this$0:Lcom/talkweb/twgame/sdk/TwGameSDKImpl$20;

    iget-object v0, v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$20;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/PositionVo;->getPsets()Lcom/talkweb/twgame/bean/Psets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2016
    invoke-static {}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$1300()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$20$1;->this$0:Lcom/talkweb/twgame/sdk/TwGameSDKImpl$20;

    iget-object v2, v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$20;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v2}, Lcom/talkweb/twgame/bean/PositionVo;->getPsets()Lcom/talkweb/twgame/bean/Psets;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2018
    :cond_0
    invoke-static {v1}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$1402(Z)Z

    .line 2020
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8c03\u7528\u65f6\u95f4\u5df2\u7ecf\u5230"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->psetShowTime:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\u79d2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 2021
    sget-object v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->mContext:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->psetShowTime:J

    div-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\u79d2 "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$20$1;->this$0:Lcom/talkweb/twgame/sdk/TwGameSDKImpl$20;

    iget-object v1, v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$20;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/PositionVo;->getTw_pid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/talkweb/twgame/tools/Tools;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
