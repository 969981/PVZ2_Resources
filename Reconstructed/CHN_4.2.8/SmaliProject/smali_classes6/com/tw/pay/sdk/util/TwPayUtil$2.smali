.class Lcom/tw/pay/sdk/util/TwPayUtil$2;
.super Ljava/lang/Object;
.source "TwPayUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/util/TwPayUtil;->doPayDialog(Landroid/content/Intent;Lcom/tw/pay/sdk/callback/TwPayCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/TwPayUtil;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwPayUtil;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 139
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$100(Lcom/tw/pay/sdk/util/TwPayUtil;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->getPopupWindowUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/PopupWindowUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->showPopupWindow()V

    .line 140
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$200(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/tw/pay/sdk/bean/PayResultBean;

    move-result-object p1

    iget-object p1, p1, Lcom/tw/pay/sdk/bean/PayResultBean;->code:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    .line 141
    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$200(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/tw/pay/sdk/bean/PayResultBean;

    move-result-object p1

    iget-object p1, p1, Lcom/tw/pay/sdk/bean/PayResultBean;->code:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$200(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/tw/pay/sdk/bean/PayResultBean;

    move-result-object p1

    const-string v0, "02"

    iput-object v0, p1, Lcom/tw/pay/sdk/bean/PayResultBean;->code:Ljava/lang/String;

    .line 144
    :cond_1
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$300(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/tw/pay/sdk/callback/TwPayCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$200(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/tw/pay/sdk/bean/PayResultBean;

    move-result-object v0

    invoke-static {v0}, Lcom/tw/pay/sdk/tool/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tw/pay/sdk/callback/TwPayCallBack;->responseData(Ljava/lang/String;)V

    return-void
.end method
