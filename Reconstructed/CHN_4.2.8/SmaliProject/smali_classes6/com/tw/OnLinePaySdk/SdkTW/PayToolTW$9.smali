.class Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;
.super Ljava/lang/Object;
.source "PayToolTW.java"

# interfaces
.implements Lcom/tw/pay/sdk/callback/TwPayCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->twSdkPay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

.field final synthetic val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

.field final synthetic val$channelId:Ljava/lang/String;

.field final synthetic val$orderSerial:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    iput-object p2, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->val$channelId:Ljava/lang/String;

    iput-object p3, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->val$orderSerial:Ljava/lang/String;

    iput-object p4, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 6

    const-string v0, "04"

    const-string v1, "03"

    const-string v2, "02"

    const-string v3, "01"

    const-string v4, "06"

    .line 475
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 476
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 477
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 478
    iget-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    .line 479
    invoke-static {p1}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$200(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->val$channelId:Ljava/lang/String;

    iget-object v1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->val$orderSerial:Ljava/lang/String;

    iget-object v2, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

    .line 478
    invoke-static {v3, p1, v0, v1, v2}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->payCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    goto :goto_0

    .line 481
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 482
    iget-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    .line 483
    invoke-static {p1}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$200(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->val$channelId:Ljava/lang/String;

    iget-object v1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->val$orderSerial:Ljava/lang/String;

    iget-object v3, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

    .line 482
    invoke-static {v2, p1, v0, v1, v3}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->payCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    goto :goto_0

    .line 485
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 486
    iget-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    .line 487
    invoke-static {p1}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$200(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->val$channelId:Ljava/lang/String;

    iget-object v2, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->val$orderSerial:Ljava/lang/String;

    iget-object v3, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

    .line 486
    invoke-static {v1, p1, v0, v2, v3}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->payCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    goto :goto_0

    .line 489
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 490
    iget-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    .line 491
    invoke-static {p1}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$200(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->val$channelId:Ljava/lang/String;

    iget-object v2, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->val$orderSerial:Ljava/lang/String;

    iget-object v3, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

    .line 490
    invoke-static {v0, p1, v1, v2, v3}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->payCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    goto :goto_0

    .line 494
    :cond_3
    iget-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    .line 495
    invoke-static {p1}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$200(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->val$channelId:Ljava/lang/String;

    iget-object v1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->val$orderSerial:Ljava/lang/String;

    iget-object v2, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

    .line 494
    invoke-static {v4, p1, v0, v1, v2}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->payCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 500
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 501
    iget-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    .line 502
    invoke-static {p1}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$200(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->val$channelId:Ljava/lang/String;

    iget-object v1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->val$orderSerial:Ljava/lang/String;

    iget-object v2, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$9;->val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

    .line 501
    invoke-static {v4, p1, v0, v1, v2}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->payCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    :goto_0
    return-void
.end method
