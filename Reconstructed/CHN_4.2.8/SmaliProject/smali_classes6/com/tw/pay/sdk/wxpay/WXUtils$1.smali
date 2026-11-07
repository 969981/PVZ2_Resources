.class final Lcom/tw/pay/sdk/wxpay/WXUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "WXUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/wxpay/WXUtils;->regToWx(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 39
    sget-object p1, Lcom/tw/pay/sdk/wxpay/WXUtils;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    const-string p2, "wxa873f52303000ae4"

    invoke-interface {p1, p2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    return-void
.end method
