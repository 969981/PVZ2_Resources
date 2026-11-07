.class Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$6$1;
.super Ljava/lang/Object;
.source "TwgameLoginQuickUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$6;->onFailure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$6;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$6;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$6$1;->this$1:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 365
    sget-object v0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const-string v0, "\u8d85\u65f6 \u2192 \u81ea\u52a8\u56de\u9000\u9a8c\u8bc1\u7801\u767b\u5f55 \u5237\u65b0token\u5931\u8d25"

    .line 367
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$6$1;->this$1:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$6;

    iget-object v0, v0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$6;->this$0:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->access$100(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->getTwPayLoginUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$6$1;->this$1:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$6;

    iget-object v1, v1, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$6;->this$0:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;

    invoke-static {v1}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->access$400(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->doLoginDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void
.end method
