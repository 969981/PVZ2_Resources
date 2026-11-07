.class Lcom/tw/pay/sdk/util/TwWebUtil$2;
.super Ljava/lang/Object;
.source "TwWebUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/util/TwWebUtil;->doWebDialog(Ljava/lang/String;Ljava/lang/String;Lcom/tw/pay/sdk/callback/TwCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/TwWebUtil;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwWebUtil;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwWebUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 101
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwWebUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwWebUtil;->access$200(Lcom/tw/pay/sdk/util/TwWebUtil;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->getPopupWindowUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/PopupWindowUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->showPopupWindow()V

    .line 102
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwWebUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwWebUtil;->access$300(Lcom/tw/pay/sdk/util/TwWebUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwWebUtil;

    const-string v0, "02"

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/util/TwWebUtil;->access$402(Lcom/tw/pay/sdk/util/TwWebUtil;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwWebUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwWebUtil;->access$300(Lcom/tw/pay/sdk/util/TwWebUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwWebUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwWebUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwWebUtil;->access$400(Lcom/tw/pay/sdk/util/TwWebUtil;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
