.class public Lcom/talkweb/twOfflineSdk/bean/PayWay;
.super Ljava/lang/Object;
.source "PayWay.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private currencyUnit:Ljava/lang/String;

.field private feeCode:Ljava/lang/String;

.field private goodsID:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private mcccprovince:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private noselloffgoods:Ljava/lang/String;

.field private nothirdpay:Ljava/lang/String;

.field private operators:Ljava/lang/String;

.field private privatekey:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private publickey:Ljava/lang/String;

.field private realPrice:Ljava/lang/String;

.field private selloff:Ljava/lang/String;

.field private showPay:Ljava/lang/String;

.field private usethirdpay:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->id:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->name:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->currencyUnit:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->operators:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->province:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->mcccprovince:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->appId:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->appKey:Ljava/lang/String;

    const-string v1, "100"

    .line 63
    iput-object v1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->selloff:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->noselloffgoods:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->nothirdpay:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->usethirdpay:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->feeCode:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->publickey:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->privatekey:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->realPrice:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->goodsID:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->showPay:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/talkweb/twOfflineSdk/bean/PayWay;
    .locals 3

    .line 255
    new-instance v0, Lcom/talkweb/twOfflineSdk/bean/PayWay;

    invoke-direct {v0}, Lcom/talkweb/twOfflineSdk/bean/PayWay;-><init>()V

    .line 256
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->setAppId(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->setAppKey(Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->currencyUnit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->setCurrencyUnit(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->feeCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->setFeeCode(Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->setId(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->setName(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->noselloffgoods:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->setNoselloffgoods(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->operators:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->setOperators(Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->privatekey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->setPrivatekey(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->province:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->setProvince(Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->mcccprovince:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->setMcccprovince(Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->publickey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->setPublickey(Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->nothirdpay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->setNothirdpay(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->usethirdpay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->setUsethirdpay(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->realPrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->setRealPrice(Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->showPay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->setShowPay(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->goodsID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->setGoodsID(Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->noselloffgoods:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->goodsID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->selloff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->setSelloff(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "100"

    .line 274
    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->setSelloff(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->clone()Lcom/talkweb/twOfflineSdk/bean/PayWay;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyUnit()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->currencyUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getFeeCode()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->feeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsID()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->goodsID:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMcccprovince()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->mcccprovince:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNoselloffgoods()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->noselloffgoods:Ljava/lang/String;

    return-object v0
.end method

.method public getNothirdpay()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->nothirdpay:Ljava/lang/String;

    return-object v0
.end method

.method public getOperators()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->operators:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivatekey()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->privatekey:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getPublickey()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->publickey:Ljava/lang/String;

    return-object v0
.end method

.method public getRealPrice()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->realPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getSelloff()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->selloff:Ljava/lang/String;

    return-object v0
.end method

.method public getShowPay()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->showPay:Ljava/lang/String;

    return-object v0
.end method

.method public getUsethirdpay()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->usethirdpay:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->appId:Ljava/lang/String;

    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->appKey:Ljava/lang/String;

    return-void
.end method

.method public setCurrencyUnit(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->currencyUnit:Ljava/lang/String;

    return-void
.end method

.method public setFeeCode(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->feeCode:Ljava/lang/String;

    return-void
.end method

.method public setGoodsID(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->goodsID:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->id:Ljava/lang/String;

    return-void
.end method

.method public setMcccprovince(Ljava/lang/String;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->mcccprovince:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->name:Ljava/lang/String;

    return-void
.end method

.method public setNoselloffgoods(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->noselloffgoods:Ljava/lang/String;

    return-void
.end method

.method public setNothirdpay(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->nothirdpay:Ljava/lang/String;

    return-void
.end method

.method public setOperators(Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->operators:Ljava/lang/String;

    return-void
.end method

.method public setPrivatekey(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->privatekey:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->province:Ljava/lang/String;

    return-void
.end method

.method public setPublickey(Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->publickey:Ljava/lang/String;

    return-void
.end method

.method public setRealPrice(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->realPrice:Ljava/lang/String;

    return-void
.end method

.method public setSelloff(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->selloff:Ljava/lang/String;

    return-void
.end method

.method public setShowPay(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->showPay:Ljava/lang/String;

    return-void
.end method

.method public setUsethirdpay(Ljava/lang/String;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/PayWay;->usethirdpay:Ljava/lang/String;

    return-void
.end method
