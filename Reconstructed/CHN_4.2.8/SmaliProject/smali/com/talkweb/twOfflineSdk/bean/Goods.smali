.class public Lcom/talkweb/twOfflineSdk/bean/Goods;
.super Ljava/lang/Object;
.source "Goods.java"


# instance fields
.field private desc:Ljava/lang/String;

.field private goodsId:Ljava/lang/String;

.field private goodsName:Ljava/lang/String;

.field private options:Ljava/lang/String;

.field private payWayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/talkweb/twOfflineSdk/bean/PayWay;",
            ">;"
        }
    .end annotation
.end field

.field private price:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/Goods;->options:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/Goods;->payWayList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/Goods;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/Goods;->goodsId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/Goods;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/Goods;->options:Ljava/lang/String;

    return-object v0
.end method

.method public getPayWayList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/talkweb/twOfflineSdk/bean/PayWay;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/Goods;->payWayList:Ljava/util/List;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/Goods;->price:Ljava/lang/String;

    return-object v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/Goods;->desc:Ljava/lang/String;

    return-void
.end method

.method public setGoodsId(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/Goods;->goodsId:Ljava/lang/String;

    return-void
.end method

.method public setGoodsName(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/Goods;->goodsName:Ljava/lang/String;

    return-void
.end method

.method public setOptions(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/Goods;->options:Ljava/lang/String;

    return-void
.end method

.method public setPayWayList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/talkweb/twOfflineSdk/bean/PayWay;",
            ">;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/Goods;->payWayList:Ljava/util/List;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/Goods;->price:Ljava/lang/String;

    return-void
.end method
