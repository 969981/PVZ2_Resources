.class Lcom/tw/pay/sdk/TwPay$4$1;
.super Ljava/lang/Object;
.source "TwPay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/TwPay$4;->responseData(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/TwPay$4;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/TwPay$4;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/tw/pay/sdk/TwPay$4$1;->this$0:Lcom/tw/pay/sdk/TwPay$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/tw/pay/sdk/TwPay$4$1;->this$0:Lcom/tw/pay/sdk/TwPay$4;

    iget-object v0, v0, Lcom/tw/pay/sdk/TwPay$4;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->getPopupWindowUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/PopupWindowUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->showPopupWindow()V

    return-void
.end method
