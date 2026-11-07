.class Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$3$1;
.super Ljava/lang/Object;
.source "TwgameLoadingTopUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$3;->onFailure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$3;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$3;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$3$1;->this$1:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 254
    sget-object v0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseTopDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 255
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$3$1;->this$1:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$3;

    iget-object v0, v0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$3;->this$0:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->access$200(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$3$1;->this$1:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$3;

    iget-object v1, v1, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$3;->this$0:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;

    invoke-static {v1}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->access$100(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil;->tryOneClickThenFallback(Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void
.end method
