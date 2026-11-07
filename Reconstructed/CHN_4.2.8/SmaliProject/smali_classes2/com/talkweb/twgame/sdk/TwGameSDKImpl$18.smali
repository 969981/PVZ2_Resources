.class Lcom/talkweb/twgame/sdk/TwGameSDKImpl$18;
.super Ljava/lang/Object;
.source "TwGameSDKImpl.java"

# interfaces
.implements Lcom/talkweb/twgame/callback/GroupCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->showNativeAdView(Lcom/talkweb/twgame/callback/NativeViewCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/talkweb/twgame/callback/NativeViewCallback;

.field final synthetic val$iTwGameSDKBase:Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

.field final synthetic val$nativePositon:I

.field final synthetic val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;


# direct methods
.method constructor <init>(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/NativeViewCallback;I)V
    .locals 0

    .line 1797
    iput-object p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$18;->val$iTwGameSDKBase:Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

    iput-object p2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$18;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    iput-object p3, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$18;->val$callback:Lcom/talkweb/twgame/callback/NativeViewCallback;

    iput p4, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$18;->val$nativePositon:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupCallback(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u4f4d\u7ec4\u4e2d\u5df2\u7ecf\u6709\u5e7f\u544a\u5c55\u793a\u8fc7\u4e86:IsShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 1804
    :cond_0
    iget-object p1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$18;->val$iTwGameSDKBase:Lcom/talkweb/twgame/sdk/ITwGameSDKBase;

    iget-object v0, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$18;->val$positionVo:Lcom/talkweb/twgame/bean/PositionVo;

    iget-object v1, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$18;->val$callback:Lcom/talkweb/twgame/callback/NativeViewCallback;

    iget v2, p0, Lcom/talkweb/twgame/sdk/TwGameSDKImpl$18;->val$nativePositon:I

    invoke-static {p1, v0, v1, v2}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->access$1200(Lcom/talkweb/twgame/sdk/ITwGameSDKBase;Lcom/talkweb/twgame/bean/PositionVo;Lcom/talkweb/twgame/callback/NativeViewCallback;I)V

    :goto_0
    return-void
.end method
