.class Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$6;
.super Ljava/lang/Object;
.source "TwgameLoginQuickUtil.java"

# interfaces
.implements Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->refreshToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$6;->this$0:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    const-string v0, "\u5237\u65b0token\u5931\u8d25"

    .line 361
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 362
    sget-object v0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$6$1;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$6$1;-><init>(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$6;->this$0:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;

    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tw/gamesdk/core/GameSDK;->getCurrentUser()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->access$502(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;Lcom/tw/gamesdk/bean/SimpleUserData;)Lcom/tw/gamesdk/bean/SimpleUserData;

    .line 355
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$6;->this$0:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->access$700(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)V

    return-void
.end method
