.class final Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$10;
.super Ljava/lang/Object;
.source "PayToolTW.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->queryOrderID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/OrderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 2

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u67e5\u8be2\u8ba2\u5355\u8fd4\u56de\u7684\u6570\u636ereturnObject:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const-string v0, "1"

    if-eqz p1, :cond_0

    .line 559
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 560
    sget-object p1, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->mOrderCallback:Lcom/talkweb/twOfflineSdk/OrderCallback;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Lcom/talkweb/twOfflineSdk/OrderCallback;->payResult(Ljava/lang/String;)V

    goto :goto_0

    .line 562
    :cond_0
    sget-object p1, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->mOrderCallback:Lcom/talkweb/twOfflineSdk/OrderCallback;

    invoke-virtual {p1, v0}, Lcom/talkweb/twOfflineSdk/OrderCallback;->payResult(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
