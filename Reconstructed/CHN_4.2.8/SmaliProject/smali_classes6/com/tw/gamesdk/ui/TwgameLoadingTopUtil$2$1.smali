.class Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2$1;
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

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2$1;->this$1:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;

    iput-object p2, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 132
    sget-object v0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseTopDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 133
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2$1;->this$1:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;

    iget-object v0, v0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->access$300(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    sget-object v0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->channleid:Ljava/lang/String;

    const-string v1, "10011"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2$1;->this$1:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;

    iget-object v0, v0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2$1;->this$1:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;

    iget-object v1, v1, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;->val$simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2$1;->this$1:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;

    iget-object v2, v2, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;

    invoke-static {v2}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->access$100(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2$1;->this$1:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;

    iget-object v3, v3, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;

    invoke-static {v3}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->access$200(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2$1;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->activateCode(Lcom/tw/gamesdk/bean/SimpleUserData;Lcom/tw/pay/sdk/callback/TwCallback;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2$1;->this$1:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;

    iget-object v0, v0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->access$100(Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil$2$1;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
