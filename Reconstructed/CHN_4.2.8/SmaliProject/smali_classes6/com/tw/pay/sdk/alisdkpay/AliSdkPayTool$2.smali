.class Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool$2;
.super Ljava/lang/Object;
.source "AliSdkPayTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->alipayPay(Ljava/lang/String;Lcom/tw/pay/sdk/callback/TwCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;

.field final synthetic val$info:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool$2;->this$0:Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;

    iput-object p2, p0, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool$2;->val$info:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 93
    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v1, p0, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool$2;->this$0:Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;

    invoke-static {v1}, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->access$200(Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 96
    iget-object v1, p0, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool$2;->val$info:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 99
    iput v2, v1, Landroid/os/Message;->what:I

    .line 100
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool$2;->this$0:Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;

    invoke-static {v0}, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->access$300(Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
