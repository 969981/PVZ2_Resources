.class Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool$1;
.super Landroid/os/Handler;
.source "AliSdkPayTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool$1;->this$0:Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const-string v0, "02"

    .line 25
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    new-instance v1, Lcom/tw/pay/sdk/alisdkpay/PayResult;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/tw/pay/sdk/alisdkpay/PayResult;-><init>(Ljava/lang/String;)V

    const-string v2, "AliSdkPayTool"

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PayResult:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/tw/pay/sdk/alisdkpay/PayResult;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "msg.obj :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1}, Lcom/tw/pay/sdk/alisdkpay/PayResult;->getResult()Ljava/lang/String;

    .line 32
    invoke-virtual {v1}, Lcom/tw/pay/sdk/alisdkpay/PayResult;->getResultStatus()Ljava/lang/String;

    move-result-object p1

    const-string v1, "9000"

    .line 35
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    iget-object p1, p0, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool$1;->this$0:Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;

    const-string v1, "01"

    invoke-static {p1, v1}, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->access$002(Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "8000"

    .line 41
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 46
    :cond_2
    iget-object p1, p0, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool$1;->this$0:Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->access$002(Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    iget-object p1, p0, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool$1;->this$0:Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->access$002(Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    :goto_0
    iget-object p1, p0, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool$1;->this$0:Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;

    invoke-static {p1}, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->access$100(Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool$1;->this$0:Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;

    invoke-static {v0}, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->access$000(Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    return-void
.end method
