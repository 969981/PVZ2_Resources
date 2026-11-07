.class Lcom/tw/gamesdk/core/GameSDK$4;
.super Ljava/lang/Object;
.source "GameSDK.java"

# interfaces
.implements Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/core/GameSDK;->autoLogin(Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/core/GameSDK;

.field final synthetic val$callback:Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/core/GameSDK;Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/tw/gamesdk/core/GameSDK$4;->this$0:Lcom/tw/gamesdk/core/GameSDK;

    iput-object p2, p0, Lcom/tw/gamesdk/core/GameSDK$4;->val$callback:Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    const-string v0, "\u5237\u65b0token\u5931\u8d25"

    .line 301
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK$4;->this$0:Lcom/tw/gamesdk/core/GameSDK;

    invoke-static {v0}, Lcom/tw/gamesdk/core/GameSDK;->access$400(Lcom/tw/gamesdk/core/GameSDK;)V

    .line 303
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK$4;->this$0:Lcom/tw/gamesdk/core/GameSDK;

    iget-object v0, v0, Lcom/tw/gamesdk/core/GameSDK;->context:Landroid/app/Activity;

    new-instance v1, Lcom/tw/gamesdk/core/GameSDK$4$2;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/core/GameSDK$4$2;-><init>(Lcom/tw/gamesdk/core/GameSDK$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK$4;->this$0:Lcom/tw/gamesdk/core/GameSDK;

    iget-object v0, v0, Lcom/tw/gamesdk/core/GameSDK;->context:Landroid/app/Activity;

    new-instance v1, Lcom/tw/gamesdk/core/GameSDK$4$1;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/core/GameSDK$4$1;-><init>(Lcom/tw/gamesdk/core/GameSDK$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
