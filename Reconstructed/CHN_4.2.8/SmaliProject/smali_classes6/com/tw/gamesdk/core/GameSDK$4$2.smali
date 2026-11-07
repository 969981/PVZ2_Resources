.class Lcom/tw/gamesdk/core/GameSDK$4$2;
.super Ljava/lang/Object;
.source "GameSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/core/GameSDK$4;->onFailure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tw/gamesdk/core/GameSDK$4;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/core/GameSDK$4;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/tw/gamesdk/core/GameSDK$4$2;->this$1:Lcom/tw/gamesdk/core/GameSDK$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK$4$2;->this$1:Lcom/tw/gamesdk/core/GameSDK$4;

    iget-object v0, v0, Lcom/tw/gamesdk/core/GameSDK$4;->this$0:Lcom/tw/gamesdk/core/GameSDK;

    iget-object v1, p0, Lcom/tw/gamesdk/core/GameSDK$4$2;->this$1:Lcom/tw/gamesdk/core/GameSDK$4;

    iget-object v1, v1, Lcom/tw/gamesdk/core/GameSDK$4;->val$callback:Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;

    invoke-static {v0, v1}, Lcom/tw/gamesdk/core/GameSDK;->access$500(Lcom/tw/gamesdk/core/GameSDK;Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;)V

    return-void
.end method
