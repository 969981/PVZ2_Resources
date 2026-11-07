.class Lcom/tw/pay/sdk/util/TwLoginUtil$1;
.super Ljava/lang/Object;
.source "TwLoginUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/util/TwLoginUtil;->doLoginDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

.field final synthetic val$callback:Lcom/tw/pay/sdk/callback/TwCallback;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwLoginUtil;Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    iput-object p2, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$1;->val$callback:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 139
    :cond_0
    invoke-static {}, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->getChannelAppId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "1000010"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 140
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    new-instance p2, Lcom/tw/pay/sdk/bean/LoginResultBean;

    invoke-direct {p2}, Lcom/tw/pay/sdk/bean/LoginResultBean;-><init>()V

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$002(Lcom/tw/pay/sdk/util/TwLoginUtil;Lcom/tw/pay/sdk/bean/LoginResultBean;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    .line 141
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object p1

    const-string p2, "05"

    iput-object p2, p1, Lcom/tw/pay/sdk/bean/LoginResultBean;->code:Ljava/lang/String;

    .line 142
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$1;->val$callback:Lcom/tw/pay/sdk/callback/TwCallback;

    iget-object p2, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p2}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    .line 143
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$100(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
