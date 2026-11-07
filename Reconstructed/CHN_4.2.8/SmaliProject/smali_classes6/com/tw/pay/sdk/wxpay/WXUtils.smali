.class public Lcom/tw/pay/sdk/wxpay/WXUtils;
.super Ljava/lang/Object;
.source "WXUtils.java"


# static fields
.field public static api:Lcom/tencent/mm/opensdk/openapi/IWXAPI; = null

.field private static final appId:Ljava/lang/String; = "wxa873f52303000ae4"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static WXLaunchMiniProgram(Lorg/json/JSONObject;)V
    .locals 6

    :try_start_0
    const-string v0, "prepayid"

    .line 46
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "partnerid"

    .line 47
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "noncestr"

    .line 48
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "timestamp"

    .line 49
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sign"

    .line 50
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 52
    new-instance v4, Lcom/tencent/mm/opensdk/modelpay/PayReq;

    invoke-direct {v4}, Lcom/tencent/mm/opensdk/modelpay/PayReq;-><init>()V

    const-string v5, "wxa873f52303000ae4"

    .line 53
    iput-object v5, v4, Lcom/tencent/mm/opensdk/modelpay/PayReq;->appId:Ljava/lang/String;

    .line 54
    iput-object v1, v4, Lcom/tencent/mm/opensdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    .line 55
    iput-object v0, v4, Lcom/tencent/mm/opensdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    const-string v0, "Sign=WXPay"

    .line 56
    iput-object v0, v4, Lcom/tencent/mm/opensdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    .line 57
    iput-object v2, v4, Lcom/tencent/mm/opensdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    .line 58
    iput-object v3, v4, Lcom/tencent/mm/opensdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    .line 59
    iput-object p0, v4, Lcom/tencent/mm/opensdk/modelpay/PayReq;->sign:Ljava/lang/String;

    .line 60
    sget-object p0, Lcom/tw/pay/sdk/wxpay/WXUtils;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {p0, v4}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static regToWx(Landroid/content/Context;)V
    .locals 3

    const-string v0, "wxa873f52303000ae4"

    const/4 v1, 0x1

    .line 29
    invoke-static {p0, v0, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v1

    sput-object v1, Lcom/tw/pay/sdk/wxpay/WXUtils;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 32
    invoke-interface {v1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 35
    new-instance v0, Lcom/tw/pay/sdk/wxpay/WXUtils$1;

    invoke-direct {v0}, Lcom/tw/pay/sdk/wxpay/WXUtils$1;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.tencent.mm.plugin.openapi.Intent.ACTION_REFRESH_WXAPP"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
