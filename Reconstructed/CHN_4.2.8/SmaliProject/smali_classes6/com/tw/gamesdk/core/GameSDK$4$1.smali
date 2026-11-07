.class Lcom/tw/gamesdk/core/GameSDK$4$1;
.super Ljava/lang/Object;
.source "GameSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/core/GameSDK$4;->onSuccess()V
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

    .line 277
    iput-object p1, p0, Lcom/tw/gamesdk/core/GameSDK$4$1;->this$1:Lcom/tw/gamesdk/core/GameSDK$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/tw/gamesdk/core/GameSDK$4$1;->this$1:Lcom/tw/gamesdk/core/GameSDK$4;

    iget-object v0, v0, Lcom/tw/gamesdk/core/GameSDK$4;->this$0:Lcom/tw/gamesdk/core/GameSDK;

    iget-object v0, v0, Lcom/tw/gamesdk/core/GameSDK;->context:Landroid/app/Activity;

    new-instance v1, Lcom/tw/gamesdk/core/GameSDK$4$1$1;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/core/GameSDK$4$1$1;-><init>(Lcom/tw/gamesdk/core/GameSDK$4$1;)V

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/TwPay;->loginQuickSdk(Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwLoginCallback;)V

    return-void
.end method
