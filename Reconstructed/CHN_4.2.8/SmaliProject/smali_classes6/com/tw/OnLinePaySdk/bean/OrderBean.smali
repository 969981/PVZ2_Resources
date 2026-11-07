.class public Lcom/tw/OnLinePaySdk/bean/OrderBean;
.super Ljava/lang/Object;
.source "OrderBean.java"


# instance fields
.field private OrderId:Ljava/lang/String;

.field private goodDetail:Ljava/lang/String;

.field private goodName:Ljava/lang/String;

.field private goodPrice:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoodDetail()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/tw/OnLinePaySdk/bean/OrderBean;->goodDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/tw/OnLinePaySdk/bean/OrderBean;->goodName:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodPrice()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/tw/OnLinePaySdk/bean/OrderBean;->goodPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/tw/OnLinePaySdk/bean/OrderBean;->OrderId:Ljava/lang/String;

    return-object v0
.end method

.method public setGoodDetail(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/bean/OrderBean;->goodDetail:Ljava/lang/String;

    return-void
.end method

.method public setGoodName(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/bean/OrderBean;->goodName:Ljava/lang/String;

    return-void
.end method

.method public setGoodPrice(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/bean/OrderBean;->goodPrice:Ljava/lang/String;

    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/bean/OrderBean;->OrderId:Ljava/lang/String;

    return-void
.end method
