.class Lcom/tw/pay/sdk/alipay/AlipayTool$1;
.super Landroid/os/Handler;
.source "AlipayTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/alipay/AlipayTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/alipay/AlipayTool;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/alipay/AlipayTool;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/tw/pay/sdk/alipay/AlipayTool$1;->this$0:Lcom/tw/pay/sdk/alipay/AlipayTool;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "02"

    .line 23
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 25
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v1, "resultStatus="

    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    const-string v2, ";memo="

    .line 35
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 36
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "9000"

    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/tw/pay/sdk/alipay/AlipayTool$1;->this$0:Lcom/tw/pay/sdk/alipay/AlipayTool;

    const-string v1, "01"

    invoke-static {p1, v1}, Lcom/tw/pay/sdk/alipay/AlipayTool;->access$002(Lcom/tw/pay/sdk/alipay/AlipayTool;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_0
    const-string v1, "4000"

    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    iget-object p1, p0, Lcom/tw/pay/sdk/alipay/AlipayTool$1;->this$0:Lcom/tw/pay/sdk/alipay/AlipayTool;

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/alipay/AlipayTool;->access$002(Lcom/tw/pay/sdk/alipay/AlipayTool;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    const-string v1, "4001"

    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    iget-object p1, p0, Lcom/tw/pay/sdk/alipay/AlipayTool$1;->this$0:Lcom/tw/pay/sdk/alipay/AlipayTool;

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/alipay/AlipayTool;->access$002(Lcom/tw/pay/sdk/alipay/AlipayTool;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    const-string v1, "4003"

    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 45
    iget-object p1, p0, Lcom/tw/pay/sdk/alipay/AlipayTool$1;->this$0:Lcom/tw/pay/sdk/alipay/AlipayTool;

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/alipay/AlipayTool;->access$002(Lcom/tw/pay/sdk/alipay/AlipayTool;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    const-string v1, "4004"

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 47
    iget-object p1, p0, Lcom/tw/pay/sdk/alipay/AlipayTool$1;->this$0:Lcom/tw/pay/sdk/alipay/AlipayTool;

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/alipay/AlipayTool;->access$002(Lcom/tw/pay/sdk/alipay/AlipayTool;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v1, "4005"

    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 49
    iget-object p1, p0, Lcom/tw/pay/sdk/alipay/AlipayTool$1;->this$0:Lcom/tw/pay/sdk/alipay/AlipayTool;

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/alipay/AlipayTool;->access$002(Lcom/tw/pay/sdk/alipay/AlipayTool;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v1, "4006"

    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 51
    iget-object p1, p0, Lcom/tw/pay/sdk/alipay/AlipayTool$1;->this$0:Lcom/tw/pay/sdk/alipay/AlipayTool;

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/alipay/AlipayTool;->access$002(Lcom/tw/pay/sdk/alipay/AlipayTool;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v1, "4010"

    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 53
    iget-object p1, p0, Lcom/tw/pay/sdk/alipay/AlipayTool$1;->this$0:Lcom/tw/pay/sdk/alipay/AlipayTool;

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/alipay/AlipayTool;->access$002(Lcom/tw/pay/sdk/alipay/AlipayTool;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string v1, "6000"

    .line 54
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 55
    iget-object p1, p0, Lcom/tw/pay/sdk/alipay/AlipayTool$1;->this$0:Lcom/tw/pay/sdk/alipay/AlipayTool;

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/alipay/AlipayTool;->access$002(Lcom/tw/pay/sdk/alipay/AlipayTool;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string v1, "6001"

    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 57
    iget-object p1, p0, Lcom/tw/pay/sdk/alipay/AlipayTool$1;->this$0:Lcom/tw/pay/sdk/alipay/AlipayTool;

    const-string v1, "05"

    invoke-static {p1, v1}, Lcom/tw/pay/sdk/alipay/AlipayTool;->access$002(Lcom/tw/pay/sdk/alipay/AlipayTool;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_9
    const-string v1, "6002"

    .line 58
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 59
    iget-object p1, p0, Lcom/tw/pay/sdk/alipay/AlipayTool$1;->this$0:Lcom/tw/pay/sdk/alipay/AlipayTool;

    const-string v1, "03"

    invoke-static {p1, v1}, Lcom/tw/pay/sdk/alipay/AlipayTool;->access$002(Lcom/tw/pay/sdk/alipay/AlipayTool;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 61
    :cond_a
    iget-object p1, p0, Lcom/tw/pay/sdk/alipay/AlipayTool$1;->this$0:Lcom/tw/pay/sdk/alipay/AlipayTool;

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/alipay/AlipayTool;->access$002(Lcom/tw/pay/sdk/alipay/AlipayTool;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    iget-object p1, p0, Lcom/tw/pay/sdk/alipay/AlipayTool$1;->this$0:Lcom/tw/pay/sdk/alipay/AlipayTool;

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/alipay/AlipayTool;->access$002(Lcom/tw/pay/sdk/alipay/AlipayTool;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    :goto_0
    iget-object p1, p0, Lcom/tw/pay/sdk/alipay/AlipayTool$1;->this$0:Lcom/tw/pay/sdk/alipay/AlipayTool;

    invoke-static {p1}, Lcom/tw/pay/sdk/alipay/AlipayTool;->access$100(Lcom/tw/pay/sdk/alipay/AlipayTool;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/alipay/AlipayTool$1;->this$0:Lcom/tw/pay/sdk/alipay/AlipayTool;

    invoke-static {v0}, Lcom/tw/pay/sdk/alipay/AlipayTool;->access$000(Lcom/tw/pay/sdk/alipay/AlipayTool;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    return-void
.end method
