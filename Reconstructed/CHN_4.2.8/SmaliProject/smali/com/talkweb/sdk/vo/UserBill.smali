.class public Lcom/talkweb/sdk/vo/UserBill;
.super Ljava/lang/Object;
.source "UserBill.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private amount:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private payId:Ljava/lang/Long;

.field private payWayName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/talkweb/sdk/vo/UserBill;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/talkweb/sdk/vo/UserBill;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getPayId()Ljava/lang/Long;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/talkweb/sdk/vo/UserBill;->payId:Ljava/lang/Long;

    return-object v0
.end method

.method public getPayWayName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/talkweb/sdk/vo/UserBill;->payWayName:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/talkweb/sdk/vo/UserBill;->amount:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/talkweb/sdk/vo/UserBill;->date:Ljava/lang/String;

    return-void
.end method

.method public setPayId(Ljava/lang/Long;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/talkweb/sdk/vo/UserBill;->payId:Ljava/lang/Long;

    return-void
.end method

.method public setPayWayName(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/talkweb/sdk/vo/UserBill;->payWayName:Ljava/lang/String;

    return-void
.end method
