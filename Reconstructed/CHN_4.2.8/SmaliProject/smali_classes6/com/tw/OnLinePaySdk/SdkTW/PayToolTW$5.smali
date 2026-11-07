.class Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$5;
.super Ljava/lang/Object;
.source "PayToolTW.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->payTest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

.field final synthetic val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

.field final synthetic val$orderNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$5;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    iput-object p2, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$5;->val$orderNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$5;->val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 4

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6d4b\u8bd5\u652f\u4ed8\u8fd4\u56dereturnObject:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "0000"

    .line 395
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 396
    iget-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$5;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    .line 397
    invoke-static {p1}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$200(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$5;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    .line 398
    invoke-static {v0}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$100(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$5;->val$orderNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$5;->val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

    const-string v3, "01"

    .line 396
    invoke-static {v3, p1, v0, v1, v2}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->payCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    goto :goto_0

    .line 401
    :cond_0
    iget-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$5;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    .line 402
    invoke-static {p1}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$200(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$5;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    .line 403
    invoke-static {v0}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$100(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$5;->val$orderNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$5;->val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

    const-string v3, "02"

    .line 401
    invoke-static {v3, p1, v0, v1, v2}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->payCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    :goto_0
    return-void
.end method
