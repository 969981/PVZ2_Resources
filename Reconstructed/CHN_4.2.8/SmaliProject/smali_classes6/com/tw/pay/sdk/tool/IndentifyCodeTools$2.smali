.class Lcom/tw/pay/sdk/tool/IndentifyCodeTools$2;
.super Ljava/lang/Object;
.source "IndentifyCodeTools.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->showDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/tool/IndentifyCodeTools;

.field final synthetic val$indentifyEdt:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/tool/IndentifyCodeTools;Landroid/widget/EditText;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools$2;->this$0:Lcom/tw/pay/sdk/tool/IndentifyCodeTools;

    iput-object p2, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools$2;->val$indentifyEdt:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 81
    iget-object p1, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools$2;->val$indentifyEdt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools$2;->this$0:Lcom/tw/pay/sdk/tool/IndentifyCodeTools;

    invoke-static {v0}, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->access$000(Lcom/tw/pay/sdk/tool/IndentifyCodeTools;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    .line 84
    iget-object p1, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools$2;->this$0:Lcom/tw/pay/sdk/tool/IndentifyCodeTools;

    invoke-static {p1}, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->access$100(Lcom/tw/pay/sdk/tool/IndentifyCodeTools;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools$2;->this$0:Lcom/tw/pay/sdk/tool/IndentifyCodeTools;

    invoke-static {p1}, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->access$200(Lcom/tw/pay/sdk/tool/IndentifyCodeTools;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools$2;->this$0:Lcom/tw/pay/sdk/tool/IndentifyCodeTools;

    .line 87
    invoke-static {v0}, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->access$200(Lcom/tw/pay/sdk/tool/IndentifyCodeTools;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "indentifyCode_error"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
