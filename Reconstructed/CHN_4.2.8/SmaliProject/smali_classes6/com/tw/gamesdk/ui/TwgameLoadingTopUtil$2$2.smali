.class Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2$2;
.super Ljava/lang/Object;
.source "TwgameLoadingTopUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;->onResponse(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2$2;->this$1:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2$2;->this$1:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;

    iget-object v0, v0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->access$200(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2$2;->this$1:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;

    iget-object v1, v1, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;

    invoke-static {v1}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->access$100(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil;->tryOneClickThenFallback(Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void
.end method
