.class Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4$1;
.super Ljava/lang/Object;
.source "TwGameSDKImpl.java"

# interfaces
.implements Lcom/talkweb/twgame/callback/GroupCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;

.field final synthetic val$iTwGameSDKBase:Lcom/talkweb/twgame/sdk/ITwGameSDKBase;


# direct methods
.method constructor <init>(Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;Lcom/talkweb/twgame/sdk/ITwGameSDKBase;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4$1;->this$0:Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;

    iput-object p2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4$1;->val$iTwGameSDKBase:Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupCallback(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "\u5e7f\u544a\u4f4d\u7ec4\u4e2d\u5df2\u7ecf\u6709\u5e7f\u544a\u5c55\u793a\u8fc7\u4e86"

    .line 725
    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 727
    :cond_0
    iget-object p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4$1;->val$iTwGameSDKBase:Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4$1;->this$0:Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;

    iget-object v0, v0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    iget-object v1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4$1;->this$0:Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;

    iget-object v1, v1, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$4;->val$callback:Lcom/talkweb/twgame/callback/ScreenCallback;

    invoke-static {p1, v0, v1}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$500(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/ScreenCallback;)V

    :goto_0
    return-void
.end method
