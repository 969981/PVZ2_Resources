.class Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3$1;
.super Ljava/lang/Object;
.source "TwGameSDKImpl.java"

# interfaces
.implements Lcom/talkweb/twgame/callback/GroupCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;

.field final synthetic val$iTwGameSDKBase:Lcom/talkweb/twgame/sdk/ITwGameSDKBase;


# direct methods
.method constructor <init>(Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;Lcom/talkweb/twgame/sdk/ITwGameSDKBase;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3$1;->this$0:Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;

    iput-object p2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3$1;->val$iTwGameSDKBase:Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupCallback(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "\u5e7f\u544a\u4f4d\u7ec4\u4e2d\u5df2\u7ecf\u6709\u5e7f\u544a\u5c55\u793a\u8fc7\u4e86"

    .line 596
    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u6ca1\u6709\u8fc7\u5e7f\u544a!"

    .line 598
    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 599
    iget-object p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3$1;->val$iTwGameSDKBase:Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3$1;->this$0:Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;

    iget-object v0, v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    iget-object v1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3$1;->this$0:Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;

    iget-object v1, v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$3;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    invoke-static {p1, v0, v1}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$300(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/MediaCallback;)V

    :goto_0
    return-void
.end method
