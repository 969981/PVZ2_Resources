.class Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;
.super Ljava/lang/Object;
.source "PayToolTW.java"

# interfaces
.implements Lcom/tw/OnLinePaySdk/callback/MyCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->payTwSDk(Landroid/content/Context;Landroid/content/Intent;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

.field final synthetic val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;Landroid/content/Intent;Lcom/tw/OnLinePaySdk/callback/TWCallback;Landroid/content/Context;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    iput-object p2, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

    iput-object p4, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/Object;)V
    .locals 9

    .line 311
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "payJson--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "02"

    if-eqz p1, :cond_2

    .line 314
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 317
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "0000"

    .line 318
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 319
    new-instance p1, Lorg/json/JSONObject;

    const-string v0, "content"

    .line 320
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "goodName"

    .line 322
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->productName:Ljava/lang/String;

    const-string v0, "orderAmount"

    .line 324
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->price:Ljava/lang/String;

    .line 327
    sget-boolean p1, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->testHJ:Z

    if-eqz p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    iget-object v0, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    invoke-static {v0}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$100(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->val$intent:Landroid/content/Intent;

    sget-object v2, Lcom/tw/OnLinePaySdk/PayKey;->OrderSerial:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->price:Ljava/lang/String;

    iget-object v3, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$400(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    goto/16 :goto_0

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    iget-object v1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->val$context:Landroid/content/Context;

    iget-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->val$intent:Landroid/content/Intent;

    sget-object v2, Lcom/tw/OnLinePaySdk/PayKey;->OrderSerial:Ljava/lang/String;

    .line 334
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->price:Ljava/lang/String;

    sget-object v4, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->productName:Ljava/lang/String;

    iget-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->val$intent:Landroid/content/Intent;

    sget-object v5, Lcom/tw/OnLinePaySdk/PayKey;->OrderSerial:Ljava/lang/String;

    .line 335
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->val$intent:Landroid/content/Intent;

    sget-object v6, Lcom/tw/OnLinePaySdk/PayKey;->GameBak:Ljava/lang/String;

    .line 336
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    .line 337
    invoke-static {p1}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$100(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

    .line 332
    invoke-static/range {v0 .. v8}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$500(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    goto :goto_0

    .line 341
    :cond_1
    iget-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    .line 343
    invoke-static {p1}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$200(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    .line 344
    invoke-static {v1}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$100(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->val$intent:Landroid/content/Intent;

    sget-object v3, Lcom/tw/OnLinePaySdk/PayKey;->OrderSerial:Ljava/lang/String;

    .line 345
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

    .line 341
    invoke-static {v0, p1, v1, v2, v3}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->payCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    goto :goto_0

    .line 350
    :cond_2
    iget-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    .line 352
    invoke-static {p1}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$200(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    .line 353
    invoke-static {v1}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$100(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->val$intent:Landroid/content/Intent;

    sget-object v3, Lcom/tw/OnLinePaySdk/PayKey;->OrderSerial:Ljava/lang/String;

    .line 354
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

    .line 350
    invoke-static {v0, p1, v1, v2, v3}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->payCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 359
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    iget-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    .line 362
    invoke-static {p1}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$200(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    .line 363
    invoke-static {v0}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$100(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->val$intent:Landroid/content/Intent;

    sget-object v2, Lcom/tw/OnLinePaySdk/PayKey;->OrderSerial:Ljava/lang/String;

    .line 364
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$4;->val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

    const-string v3, "06"

    .line 360
    invoke-static {v3, p1, v0, v1, v2}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->payCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    :goto_0
    return-void
.end method
