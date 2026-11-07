.class public Lcom/popcap/pvz2cthdbk/wxapi/WXPayEntryActivity;
.super Landroid/app/Activity;
.source "WXPayEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# static fields
.field private static final appId:Ljava/lang/String; = "wxa873f52303000ae4"

.field private static final rxResultCode:I = 0x1020


# instance fields
.field private api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "\u8c03\u7528WXPayEntryActivity"

    .line 28
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->d(Ljava/lang/String;)V

    const-string p1, "wxa873f52303000ae4"

    .line 29
    invoke-static {p0, p1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    iput-object p1, p0, Lcom/popcap/pvz2cthdbk/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 30
    invoke-virtual {p0}, Lcom/popcap/pvz2cthdbk/wxapi/WXPayEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthdbk/wxapi/WXPayEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 36
    iget-object v0, p0, Lcom/popcap/pvz2cthdbk/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    return-void
.end method

.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 0

    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WX\u652f\u4ed8\u56de\u8c03 baseResp transaction_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->transaction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->d(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 48
    iget p1, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    const/16 v1, 0x1020

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "WX\u652f\u4ed8\u6210\u529f"

    .line 52
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->d(Ljava/lang/String;)V

    .line 53
    invoke-static {p0}, Lcom/tw/pay/sdk/util/TwPayUtil;->getTwPayUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/TwPayUtil;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0, v1}, Lcom/tw/pay/sdk/util/TwPayUtil;->setPayResultInfo(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string p1, "WX\u652f\u4ed8\u5931\u8d25"

    .line 57
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->d(Ljava/lang/String;)V

    .line 58
    invoke-static {p0}, Lcom/tw/pay/sdk/util/TwPayUtil;->getTwPayUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/TwPayUtil;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0, v1}, Lcom/tw/pay/sdk/util/TwPayUtil;->setPayResultInfo(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string v0, "WX\u652f\u4ed8\u53d6\u6d88"

    .line 62
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->d(Ljava/lang/String;)V

    .line 63
    invoke-static {p0}, Lcom/tw/pay/sdk/util/TwPayUtil;->getTwPayUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/TwPayUtil;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v1, p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->setPayResultInfo(Ljava/lang/String;I)V

    .line 66
    :goto_0
    invoke-virtual {p0}, Lcom/popcap/pvz2cthdbk/wxapi/WXPayEntryActivity;->finish()V

    :cond_3
    return-void
.end method
