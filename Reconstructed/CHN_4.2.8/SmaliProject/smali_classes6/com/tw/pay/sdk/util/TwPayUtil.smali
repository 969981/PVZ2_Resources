.class public Lcom/tw/pay/sdk/util/TwPayUtil;
.super Ljava/lang/Object;
.source "TwPayUtil.java"


# static fields
.field private static twPayUtil:Lcom/tw/pay/sdk/util/TwPayUtil;


# instance fields
.field callback:Lcom/tw/pay/sdk/callback/TwCallback;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;

.field private dialogView:Landroid/view/View;

.field private gameAct:Landroid/app/Activity;

.field private payCallBack:Lcom/tw/pay/sdk/callback/TwPayCallBack;

.field private payIntent:Landroid/content/Intent;

.field private payResultBean:Lcom/tw/pay/sdk/bean/PayResultBean;

.field private payTypeAdapter:Lcom/tw/pay/sdk/adapter/PayTypeAdapter;

.field private payTypeCallback:Lcom/tw/pay/sdk/callback/TwCallback;

.field private payView:Landroid/view/View;

.field private paywayInfo:Lcom/talkweb/sdk/orm/model/PaywayInfo;

.field private requestCallback:Lcom/tw/pay/sdk/callback/TwCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Lcom/tw/pay/sdk/util/TwPayUtil$3;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/TwPayUtil$3;-><init>(Lcom/tw/pay/sdk/util/TwPayUtil;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->clickListener:Landroid/view/View$OnClickListener;

    .line 236
    new-instance v0, Lcom/tw/pay/sdk/util/TwPayUtil$5;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/TwPayUtil$5;-><init>(Lcom/tw/pay/sdk/util/TwPayUtil;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payTypeCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 361
    new-instance v0, Lcom/tw/pay/sdk/util/TwPayUtil$7;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/TwPayUtil$7;-><init>(Lcom/tw/pay/sdk/util/TwPayUtil;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->requestCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 482
    new-instance v0, Lcom/tw/pay/sdk/util/TwPayUtil$9;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/TwPayUtil$9;-><init>(Lcom/tw/pay/sdk/util/TwPayUtil;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 91
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->context:Landroid/content/Context;

    .line 92
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->gameAct:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/pay/sdk/util/TwPayUtil;)Landroid/app/Dialog;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tw/pay/sdk/util/TwPayUtil;)Landroid/content/Context;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/tw/pay/sdk/bean/PayResultBean;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payResultBean:Lcom/tw/pay/sdk/bean/PayResultBean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/tw/pay/sdk/callback/TwPayCallBack;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payCallBack:Lcom/tw/pay/sdk/callback/TwPayCallBack;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tw/pay/sdk/util/TwPayUtil;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->setAppName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/tw/pay/sdk/util/TwPayUtil;Ljava/util/List;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->setGridView(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tw/pay/sdk/util/TwPayUtil;)Landroid/app/Activity;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->gameAct:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/talkweb/sdk/orm/model/PaywayInfo;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->paywayInfo:Lcom/talkweb/sdk/orm/model/PaywayInfo;

    return-object p0
.end method

.method static synthetic access$702(Lcom/tw/pay/sdk/util/TwPayUtil;Lcom/talkweb/sdk/orm/model/PaywayInfo;)Lcom/talkweb/sdk/orm/model/PaywayInfo;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->paywayInfo:Lcom/talkweb/sdk/orm/model/PaywayInfo;

    return-object p1
.end method

.method static synthetic access$800(Lcom/tw/pay/sdk/util/TwPayUtil;Lcom/talkweb/sdk/orm/model/PaywayInfo;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->toSendOrder(Lcom/talkweb/sdk/orm/model/PaywayInfo;)V

    return-void
.end method

.method private getDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "MyDialog"

    invoke-static {p1, v1}, Lcom/tw/pay/sdk/tool/Resource;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->dialog:Landroid/app/Dialog;

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private getPayType()V
    .locals 3

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tw/pay/sdk/net/HttpUrl;->PayType_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&channelId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getChannelsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tw/pay/sdk/util/TwPayUtil$4;

    invoke-direct {v2, p0, v0}, Lcom/tw/pay/sdk/util/TwPayUtil$4;-><init>(Lcom/tw/pay/sdk/util/TwPayUtil;Ljava/util/List;)V

    .line 191
    invoke-static {v1, v2}, Lcom/tw/gamesdk/net/OkHttpClientNet;->okHttpGet(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method public static getTwPayUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/TwPayUtil;
    .locals 1

    .line 75
    sget-object v0, Lcom/tw/pay/sdk/util/TwPayUtil;->twPayUtil:Lcom/tw/pay/sdk/util/TwPayUtil;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/TwPayUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tw/pay/sdk/util/TwPayUtil;->twPayUtil:Lcom/tw/pay/sdk/util/TwPayUtil;

    .line 78
    :cond_0
    sget-object p0, Lcom/tw/pay/sdk/util/TwPayUtil;->twPayUtil:Lcom/tw/pay/sdk/util/TwPayUtil;

    return-object p0
.end method

.method private selectShowView()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->dialogView:Landroid/view/View;

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->context:Landroid/content/Context;

    const-string v3, "closeImg"

    invoke-static {v2, v3}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 171
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getApplicationId()Ljava/lang/String;

    .line 172
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->context:Landroid/content/Context;

    const-string v2, "titleTxt"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 184
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->context:Landroid/content/Context;

    const-string v2, "payCenter"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setAppName(Ljava/lang/String;)V
    .locals 4

    .line 453
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->context:Landroid/content/Context;

    const-string v2, "payAppName"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 455
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payView:Landroid/view/View;

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->context:Landroid/content/Context;

    const-string v3, "payUserId"

    invoke-static {v2, v3}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 459
    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->gameAct:Landroid/app/Activity;

    new-instance v3, Lcom/tw/pay/sdk/util/TwPayUtil$8;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/tw/pay/sdk/util/TwPayUtil$8;-><init>(Lcom/tw/pay/sdk/util/TwPayUtil;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setGridView(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/talkweb/sdk/orm/model/PaywayInfo;",
            ">;)V"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->context:Landroid/content/Context;

    const-string v2, "payGridView"

    .line 272
    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 271
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tw/pay/sdk/widget/MyGridView;

    .line 273
    new-instance v1, Lcom/tw/pay/sdk/adapter/PayTypeAdapter;

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->context:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/tw/pay/sdk/adapter/PayTypeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payTypeAdapter:Lcom/tw/pay/sdk/adapter/PayTypeAdapter;

    .line 275
    invoke-virtual {v0, v1}, Lcom/tw/pay/sdk/widget/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 276
    new-instance v1, Lcom/tw/pay/sdk/util/TwPayUtil$6;

    invoke-direct {v1, p0, p1}, Lcom/tw/pay/sdk/util/TwPayUtil$6;-><init>(Lcom/tw/pay/sdk/util/TwPayUtil;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/tw/pay/sdk/widget/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private setPayAmount()V
    .locals 4

    .line 476
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->context:Landroid/content/Context;

    const-string v2, "orderAmount"

    .line 477
    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 476
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->context:Landroid/content/Context;

    const-string v3, "yuan"

    invoke-static {v2, v3}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payIntent:Landroid/content/Intent;

    const-string v3, "amount"

    .line 479
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 478
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private toSendOrder(Lcom/talkweb/sdk/orm/model/PaywayInfo;)V
    .locals 4

    .line 321
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->context:Landroid/content/Context;

    const-string v1, "\u63d0\u4ea4\u8ba2\u5355"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/DialogTool;->dialogShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 322
    new-instance v0, Lcom/talkweb/sdk/orm/model/PayRequestInfo;

    invoke-direct {v0}, Lcom/talkweb/sdk/orm/model/PayRequestInfo;-><init>()V

    .line 323
    sget-wide v1, Lcom/tw/pay/sdk/TwPaySetting;->appId:J

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->setAppId(Ljava/lang/Integer;)V

    .line 324
    sget-wide v1, Lcom/tw/pay/sdk/TwPaySetting;->channelId:J

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->setChannelId(Ljava/lang/Integer;)V

    .line 325
    invoke-virtual {p1}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->getPayWayId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->setPayWayId(Ljava/lang/String;)V

    .line 326
    new-instance p1, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payIntent:Landroid/content/Intent;

    const-string v2, "amount"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->setAmount(Ljava/math/BigDecimal;)V

    .line 327
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payIntent:Landroid/content/Intent;

    const-string v1, "orderId"

    .line 328
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 327
    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->setChannelOrderCode(Ljava/lang/String;)V

    .line 329
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/tw/pay/sdk/tool/Tools;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->setImei(Ljava/lang/String;)V

    .line 330
    sget-object p1, Lcom/tw/pay/sdk/TwPaySetting;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->setSdkVersion(Ljava/lang/String;)V

    .line 331
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payIntent:Landroid/content/Intent;

    const-string v1, "requestData"

    .line 332
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 331
    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->setRequestdata(Ljava/lang/String;)V

    .line 333
    sget-boolean p1, Lcom/tw/gamesdk/core/GameSDKConstant;->isTapLogin:Z

    if-eqz p1, :cond_0

    .line 334
    sget-object p1, Lcom/tw/gamesdk/core/GameSDKConstant;->tapLoginUserId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->setUserId(Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_0
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tw/gamesdk/core/GameSDK;->getCurrentUser()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->setUserId(Ljava/lang/String;)V

    .line 338
    :goto_0
    invoke-static {}, Lcom/tw/pay/sdk/util/DeviceUtil;->getLocalIpAddress()Ljava/lang/String;

    move-result-object p1

    .line 339
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payIntent:Landroid/content/Intent;

    const-string v2, "goodName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"ip\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"goodName\":\""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"description\":\""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payIntent:Landroid/content/Intent;

    const-string v1, "Description"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\""

    const-string v3, ""

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/sdk/util/Des;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->setMemo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 344
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 349
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "payinfo.toJson:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 350
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tw/pay/sdk/TwPaySetting;->appKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tw/pay/sdk/tool/DigestUtil;->encodeByMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 352
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 353
    invoke-static {}, Lcom/tw/pay/sdk/TwPaySetting;->getHead()Lcom/talkweb/sdk/vo/Head;

    move-result-object v2

    invoke-virtual {v2}, Lcom/talkweb/sdk/vo/Head;->encode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "head"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-virtual {v0}, Lcom/talkweb/sdk/orm/model/PayRequestInfo;->encode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "payRequest"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "md5"

    .line 355
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getHead.toJson:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tw/pay/sdk/TwPaySetting;->getHead()Lcom/talkweb/sdk/vo/Head;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/sdk/vo/Head;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 357
    new-instance p1, Lcom/tw/pay/sdk/net/HttpAsyncTask;

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->requestCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-direct {p1, v0, v1}, Lcom/tw/pay/sdk/net/HttpAsyncTask;-><init>(Lcom/tw/pay/sdk/callback/TwCallback;Ljava/util/HashMap;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 358
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/tw/pay/sdk/net/HttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public doPayDialog(Landroid/content/Intent;Lcom/tw/pay/sdk/callback/TwPayCallBack;)V
    .locals 2

    .line 97
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payIntent:Landroid/content/Intent;

    .line 98
    iput-object p2, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payCallBack:Lcom/tw/pay/sdk/callback/TwPayCallBack;

    .line 99
    new-instance p1, Lcom/tw/pay/sdk/bean/PayResultBean;

    invoke-direct {p1}, Lcom/tw/pay/sdk/bean/PayResultBean;-><init>()V

    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payResultBean:Lcom/tw/pay/sdk/bean/PayResultBean;

    .line 100
    iget-object p2, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payIntent:Landroid/content/Intent;

    const-string v0, "orderId"

    .line 101
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tw/pay/sdk/bean/PayResultBean;->serialNumber:Ljava/lang/String;

    .line 103
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 104
    iget-object p2, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/tw/pay/sdk/util/TwPayUtil;->getDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p2

    iput-object p2, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->dialog:Landroid/app/Dialog;

    .line 105
    iget-object p2, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->context:Landroid/content/Context;

    const-string v0, "dialog_port"

    invoke-static {p2, v0}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->context:Landroid/content/Context;

    const-string v1, "dialog"

    .line 106
    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 105
    invoke-static {p1, p2, v0}, Lcom/tw/pay/sdk/tool/Tools;->setSDKDialogScreen(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->dialogView:Landroid/view/View;

    .line 108
    iget-object p2, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->context:Landroid/content/Context;

    const-string v0, "payView"

    invoke-static {p2, v0}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payView:Landroid/view/View;

    .line 109
    invoke-direct {p0}, Lcom/tw/pay/sdk/util/TwPayUtil;->selectShowView()V

    .line 110
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->dialog:Landroid/app/Dialog;

    iget-object p2, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->dialogView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 111
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 112
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->dialog:Landroid/app/Dialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 119
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->dialog:Landroid/app/Dialog;

    new-instance p2, Lcom/tw/pay/sdk/util/TwPayUtil$1;

    invoke-direct {p2, p0}, Lcom/tw/pay/sdk/util/TwPayUtil$1;-><init>(Lcom/tw/pay/sdk/util/TwPayUtil;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 134
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->dialog:Landroid/app/Dialog;

    new-instance p2, Lcom/tw/pay/sdk/util/TwPayUtil$2;

    invoke-direct {p2, p0}, Lcom/tw/pay/sdk/util/TwPayUtil$2;-><init>(Lcom/tw/pay/sdk/util/TwPayUtil;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 147
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->getPopupWindowUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/PopupWindowUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->hidePopupWindow()V

    .line 148
    invoke-direct {p0}, Lcom/tw/pay/sdk/util/TwPayUtil;->setPayAmount()V

    .line 149
    invoke-direct {p0}, Lcom/tw/pay/sdk/util/TwPayUtil;->getPayType()V

    return-void
.end method

.method public setPayResultInfo(Landroid/content/Intent;I)V
    .locals 2

    const-string v0, "02"

    const/16 v1, 0x1020

    if-ne p2, v1, :cond_2

    .line 497
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "respCode"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 498
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "respCode is "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 499
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const-string p2, "1"

    .line 500
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 501
    iget-object p2, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payResultBean:Lcom/tw/pay/sdk/bean/PayResultBean;

    const-string v1, "01"

    iput-object v1, p2, Lcom/tw/pay/sdk/bean/PayResultBean;->code:Ljava/lang/String;

    const-string p2, "\u652f\u4ed8\u6210\u529f"

    .line 502
    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    :cond_0
    const-string p2, "0"

    .line 505
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 506
    iget-object p2, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payResultBean:Lcom/tw/pay/sdk/bean/PayResultBean;

    const-string v1, "04"

    iput-object v1, p2, Lcom/tw/pay/sdk/bean/PayResultBean;->code:Ljava/lang/String;

    const-string p2, "\u5904\u7406\u4e2d..."

    .line 507
    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    :cond_1
    const-string p2, "-1"

    .line 510
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 511
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payResultBean:Lcom/tw/pay/sdk/bean/PayResultBean;

    iput-object v0, p1, Lcom/tw/pay/sdk/bean/PayResultBean;->code:Ljava/lang/String;

    const-string p1, "\u652f\u4ed8\u5931\u8d25"

    .line 512
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :cond_2
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payResultBean:Lcom/tw/pay/sdk/bean/PayResultBean;

    iput-object v0, p1, Lcom/tw/pay/sdk/bean/PayResultBean;->code:Ljava/lang/String;

    const-string p1, "\u652f\u4ed8\u53d6\u6d88"

    .line 516
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 519
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    iget-object p2, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payResultBean:Lcom/tw/pay/sdk/bean/PayResultBean;

    iget-object p2, p2, Lcom/tw/pay/sdk/bean/PayResultBean;->code:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    return-void
.end method

.method public setPayResultInfo(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "02"

    const/16 v1, 0x1020

    if-ne p2, v1, :cond_2

    .line 524
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "respCode is "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 525
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const-string p2, "1"

    .line 526
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 527
    iget-object p2, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payResultBean:Lcom/tw/pay/sdk/bean/PayResultBean;

    const-string v1, "01"

    iput-object v1, p2, Lcom/tw/pay/sdk/bean/PayResultBean;->code:Ljava/lang/String;

    const-string p2, "\u652f\u4ed8\u6210\u529f"

    .line 528
    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    :cond_0
    const-string p2, "0"

    .line 531
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 532
    iget-object p2, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payResultBean:Lcom/tw/pay/sdk/bean/PayResultBean;

    const-string v1, "04"

    iput-object v1, p2, Lcom/tw/pay/sdk/bean/PayResultBean;->code:Ljava/lang/String;

    const-string p2, "\u5904\u7406\u4e2d..."

    .line 533
    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    :cond_1
    const-string p2, "-1"

    .line 536
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 537
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payResultBean:Lcom/tw/pay/sdk/bean/PayResultBean;

    iput-object v0, p1, Lcom/tw/pay/sdk/bean/PayResultBean;->code:Ljava/lang/String;

    const-string p1, "\u652f\u4ed8\u5931\u8d25"

    .line 538
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_2
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payResultBean:Lcom/tw/pay/sdk/bean/PayResultBean;

    iput-object v0, p1, Lcom/tw/pay/sdk/bean/PayResultBean;->code:Ljava/lang/String;

    const-string p1, "\u652f\u4ed8\u53d6\u6d88"

    .line 542
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 545
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    iget-object p2, p0, Lcom/tw/pay/sdk/util/TwPayUtil;->payResultBean:Lcom/tw/pay/sdk/bean/PayResultBean;

    iget-object p2, p2, Lcom/tw/pay/sdk/bean/PayResultBean;->code:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    return-void
.end method
