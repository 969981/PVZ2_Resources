.class Lcom/tw/pay/sdk/util/TwLoginUtil$4;
.super Ljava/lang/Object;
.source "TwLoginUtil.java"

# interfaces
.implements Lcom/tw/pay/sdk/callback/TwCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/util/TwLoginUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwLoginUtil;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/Object;)V
    .locals 3

    .line 510
    check-cast p1, Lcom/talkweb/sdk/vo/ReturnObject;

    .line 511
    invoke-static {}, Lcom/tw/pay/sdk/tool/DialogTool;->dialogDimiss()V

    .line 512
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    new-instance v1, Lcom/tw/pay/sdk/bean/LoginResultBean;

    invoke-direct {v1}, Lcom/tw/pay/sdk/bean/LoginResultBean;-><init>()V

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$002(Lcom/tw/pay/sdk/util/TwLoginUtil;Lcom/tw/pay/sdk/bean/LoginResultBean;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    if-eqz p1, :cond_0

    .line 514
    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/ReturnObject;->getResultCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 517
    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/ReturnObject;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/sdk/util/Des;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 518
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object p1

    const-string v1, "01"

    iput-object v1, p1, Lcom/tw/pay/sdk/bean/LoginResultBean;->code:Ljava/lang/String;

    .line 519
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object p1

    const-string v1, "userId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tw/pay/sdk/bean/LoginResultBean;->userId:Ljava/lang/String;

    .line 520
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object p1

    const-string v1, "userNick"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tw/pay/sdk/bean/LoginResultBean;->nickName:Ljava/lang/String;

    .line 521
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object p1

    const-string v1, "token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tw/pay/sdk/bean/LoginResultBean;->token:Ljava/lang/String;

    .line 523
    new-instance p1, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v1

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v2}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$900(Lcom/tw/pay/sdk/util/TwLoginUtil;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;-><init>(Landroid/content/Context;Lcom/tw/pay/sdk/bean/LoginResultBean;Ljava/lang/String;)V

    new-instance v0, Lcom/tw/pay/sdk/util/TwLoginUtil$4$1;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/TwLoginUtil$4$1;-><init>(Lcom/tw/pay/sdk/util/TwLoginUtil$4;)V

    .line 524
    invoke-virtual {p1, v0}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->doCheckPwdDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 547
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v0

    const-string v1, "04"

    iput-object v1, v0, Lcom/tw/pay/sdk/bean/LoginResultBean;->code:Ljava/lang/String;

    .line 548
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$300(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    .line 549
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$100(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 550
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 553
    :cond_0
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object p1

    const-string v0, "02"

    iput-object v0, p1, Lcom/tw/pay/sdk/bean/LoginResultBean;->code:Ljava/lang/String;

    .line 554
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$300(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    .line 555
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$100(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void
.end method
