.class Lcom/tw/pay/sdk/util/TwCheckPwdUtil$1;
.super Landroid/os/Handler;
.source "TwCheckPwdUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/util/TwCheckPwdUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/TwCheckPwdUtil;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwCheckPwdUtil;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 36
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 37
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/talkweb/sdk/vo/ReturnObject;

    .line 38
    iget-object v0, p1, Lcom/talkweb/sdk/vo/ReturnObject;->resultCode:Ljava/lang/String;

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwCheckPwdUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->access$100(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwCheckPwdUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->access$000(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    .line 40
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwCheckPwdUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->access$200(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwCheckPwdUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->access$300(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/talkweb/sdk/vo/ReturnObject;->content:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwCheckPwdUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->access$300(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwCheckPwdUtil;

    .line 46
    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->access$300(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "modifyPwdFail"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
