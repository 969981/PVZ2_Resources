.class public Lcom/talkweb/twOfflineSdk/bean/PayConfig;
.super Ljava/lang/Object;
.source "PayConfig.java"


# instance fields
.field private applicationId:Ljava/lang/String;

.field private applicationName:Ljava/lang/String;

.field private channelsId:Ljava/lang/String;

.field private curCarrierPayWay:Lcom/talkweb/twOfflineSdk/bean/PayWay;

.field private goodsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/talkweb/twOfflineSdk/bean/Goods;",
            ">;"
        }
    .end annotation
.end field

.field private merchantId:Ljava/lang/String;

.field private merchantName:Ljava/lang/String;

.field private operator:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->goodsList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelsId()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->channelsId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurCarrierPayWay()Lcom/talkweb/twOfflineSdk/bean/PayWay;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->curCarrierPayWay:Lcom/talkweb/twOfflineSdk/bean/PayWay;

    return-object v0
.end method

.method public getGoodsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/talkweb/twOfflineSdk/bean/Goods;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->goodsList:Ljava/util/List;

    return-object v0
.end method

.method public getMerchantId()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->merchantId:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantName()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->merchantName:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->applicationId:Ljava/lang/String;

    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->applicationName:Ljava/lang/String;

    return-void
.end method

.method public setChannelsId(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->channelsId:Ljava/lang/String;

    return-void
.end method

.method public setCurCarrierPayWay(Lcom/talkweb/twOfflineSdk/bean/PayWay;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->curCarrierPayWay:Lcom/talkweb/twOfflineSdk/bean/PayWay;

    return-void
.end method

.method public setGoodsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/talkweb/twOfflineSdk/bean/Goods;",
            ">;)V"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->goodsList:Ljava/util/List;

    return-void
.end method

.method public setMerchantId(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->merchantId:Ljava/lang/String;

    return-void
.end method

.method public setMerchantName(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->merchantName:Ljava/lang/String;

    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->operator:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->versionCode:Ljava/lang/String;

    return-void
.end method
