.class Lcom/tw/pay/sdk/util/TwCheckPwdUtil$2;
.super Ljava/lang/Object;
.source "TwCheckPwdUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 90
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwCheckPwdUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwCheckPwdUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->access$300(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "changePwdTxt"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwCheckPwdUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->access$400(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwCheckPwdUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->access$300(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "newPwdEdt"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwCheckPwdUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->access$300(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "startGameBtn"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 103
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwCheckPwdUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->access$000(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwCheckPwdUtil;

    invoke-virtual {v0, p1}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->setNewPwd(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwCheckPwdUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->access$300(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwCheckPwdUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->access$300(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "pwdToShort"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwCheckPwdUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->access$100(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwCheckPwdUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->access$500(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    .line 112
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwCheckPwdUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->access$200(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method
