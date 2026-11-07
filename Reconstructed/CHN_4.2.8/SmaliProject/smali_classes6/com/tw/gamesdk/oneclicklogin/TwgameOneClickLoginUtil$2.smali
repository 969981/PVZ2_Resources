.class Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil$2;
.super Ljava/lang/Object;
.source "TwgameOneClickLoginUtil.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->exchangeToken(Ljava/lang/String;Lcom/tw/pay/sdk/callback/TwCallback;)V
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

    .line 95
    iput-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil$2;->this$0:Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;

    iput-object p2, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil$2;->val$outer:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 3

    const-string v0, " msg:"

    if-eqz p1, :cond_1

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e00\u952e\u767b\u5f55\u670d\u52a1\u7aef\u5931\u8d25 eventCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 100
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil$2;->this$0:Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->access$100(Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil$2;->this$0:Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->access$100(Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    .line 104
    :cond_0
    invoke-static {}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->getInstance()Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->closeAuthPage()V

    const-string p1, "\u8d85\u65f6 \u2192 \u81ea\u52a8\u56de\u9000\u9a8c\u8bc1\u7801\u767b\u5f55 closeAuthPage"

    .line 105
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil$2;->this$0:Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->access$100(Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->getTwPayLoginUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil$2;->val$outer:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-virtual {p1, p2}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->doLoginDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void

    .line 109
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e00\u952e\u767b\u5f55\u670d\u52a1\u7aef\u6210\u529f eventCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->getInstance()Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->closeAuthPage()V

    .line 113
    iget-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil$2;->this$0:Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;

    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil$2;->val$outer:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-static {p1, p2, v0}, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->access$200(Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;Ljava/lang/String;Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void
.end method
