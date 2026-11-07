.class Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil$1;
.super Ljava/lang/Object;
.source "TwgameOneClickLoginUtil.java"

# interfaces
.implements Lcom/tw/gamesdk/oneclicklogin/OneClickLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->doOneClickLoginDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;

.field final synthetic val$outer:Lcom/tw/pay/sdk/callback/TwCallback;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil$1;->this$0:Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;

    iput-object p2, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil$1;->val$outer:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil$1;->this$0:Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->access$100(Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil$1;->this$0:Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->access$100(Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {p2, v0}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " msg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u8d85\u65f6 \u2192 \u81ea\u52a8\u56de\u9000\u9a8c\u8bc1\u7801\u767b\u5f55"

    invoke-static {p2, p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil$1;->this$0:Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->access$100(Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->getTwPayLoginUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil$1;->val$outer:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-virtual {p1, p2}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->doLoginDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil$1;->this$0:Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;

    iget-object v1, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil$1;->val$outer:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-static {v0, p1, v1}, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->access$000(Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;Ljava/lang/String;Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void
.end method

.method public onUserCancel()V
    .locals 2

    const-string v0, "\u8d85\u65f6 \u2192 \u81ea\u52a8\u56de\u9000\u9a8c\u8bc1\u7801\u767b\u5f55 onUserCancel"

    .line 69
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil$1;->this$0:Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->access$100(Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->getTwPayLoginUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil$1;->val$outer:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-virtual {v0, v1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->doLoginDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void
.end method
