.class Lcom/tw/gamesdk/ui/TwgameActivateUtil$2$2;
.super Ljava/lang/Object;
.source "TwgameActivateUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;->onResponse(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2$2;->this$1:Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;

    iput-object p2, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2$2;->this$1:Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;

    iget-object v0, v0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->access$100(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2$2;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2$2;->this$1:Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;

    iget-object v0, v0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->access$300(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->getTwgameActivateResultUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2$2;->this$1:Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;

    iget-object v1, v1, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    invoke-static {v1}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->access$100(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2$2;->this$1:Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;

    iget-object v2, v2, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    invoke-static {v2}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->access$200(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/tw/gamesdk/ui/TwgameActivateResultUtil;->doActivateResultDialog(Lcom/tw/pay/sdk/callback/TwCallback;ZLcom/tw/gamesdk/bean/SimpleUserData;)V

    .line 160
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2$2;->this$1:Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;

    iget-object v0, v0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->access$300(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->getPopupWindowUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/PopupWindowUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->showPopupWindow()V

    return-void
.end method
