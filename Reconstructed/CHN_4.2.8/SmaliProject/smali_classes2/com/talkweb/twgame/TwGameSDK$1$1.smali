.class Lcom/talkweb/twgame/TwGameSDK$1$1;
.super Lcom/talkweb/twgame/callback/MediaCallback;
.source "TwGameSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twgame/TwGameSDK$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twgame/TwGameSDK$1;


# direct methods
.method constructor <init>(Lcom/talkweb/twgame/TwGameSDK$1;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/talkweb/twgame/TwGameSDK$1$1;->this$0:Lcom/talkweb/twgame/TwGameSDK$1;

    invoke-direct {p0}, Lcom/talkweb/twgame/callback/MediaCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaClicked()V
    .locals 1

    const-string v0, "TwGameSDKshowMedia onMediaClicked!"

    .line 176
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/talkweb/twgame/TwGameSDK$1$1;->this$0:Lcom/talkweb/twgame/TwGameSDK$1;

    iget-object v0, v0, Lcom/talkweb/twgame/TwGameSDK$1;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    invoke-virtual {v0}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaClicked()V

    return-void
.end method

.method public onMediaClosed()V
    .locals 1

    const-string v0, "TwGameSDKshowMedia onMediaClosed!"

    .line 169
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/talkweb/twgame/TwGameSDK$1$1;->this$0:Lcom/talkweb/twgame/TwGameSDK$1;

    iget-object v0, v0, Lcom/talkweb/twgame/TwGameSDK$1;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    invoke-virtual {v0}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaClosed()V

    return-void
.end method

.method public onMediaExposure()V
    .locals 1

    const-string v0, "TwGameSDKshowMedia onMediaExposure!"

    .line 163
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/talkweb/twgame/TwGameSDK$1$1;->this$0:Lcom/talkweb/twgame/TwGameSDK$1;

    iget-object v0, v0, Lcom/talkweb/twgame/TwGameSDK$1;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    invoke-virtual {v0}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaExposure()V

    return-void
.end method

.method public onMediaIncentived()V
    .locals 1

    const-string v0, "TwGameSDKshowMedia onMediaIncentived!"

    .line 157
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/talkweb/twgame/TwGameSDK$1$1;->this$0:Lcom/talkweb/twgame/TwGameSDK$1;

    iget-object v0, v0, Lcom/talkweb/twgame/TwGameSDK$1;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    invoke-virtual {v0}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaIncentived()V

    return-void
.end method

.method public onMediaPreparedFailed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TwGameSDKshowMedia onMediaPreparedFailed!"

    .line 151
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/talkweb/twgame/TwGameSDK$1$1;->this$0:Lcom/talkweb/twgame/TwGameSDK$1;

    iget-object v0, v0, Lcom/talkweb/twgame/TwGameSDK$1;->val$callback:Lcom/talkweb/twgame/callback/MediaCallback;

    invoke-virtual {v0, p1}, Lcom/talkweb/twgame/callback/MediaCallback;->onMediaPreparedFailed(Ljava/lang/String;)V

    return-void
.end method
