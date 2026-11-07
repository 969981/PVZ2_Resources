.class public Lcom/talkweb/sdk/vo/CallBackVo;
.super Ljava/lang/Object;
.source "CallBackVo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x16065a057fdf5777L


# instance fields
.field private pay_amount:Ljava/lang/String;

.field private pay_id:Ljava/lang/String;

.field private record:Lcom/talkweb/sdk/orm/model/PayRequestInfo;

.field private returnMsg:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private thirdTradeTime:Ljava/util/Date;

.field private third_trade_number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPay_amount()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/talkweb/sdk/vo/CallBackVo;->pay_amount:Ljava/lang/String;

    return-object v0
.end method

.method public getPay_id()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/talkweb/sdk/vo/CallBackVo;->pay_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRecord()Lcom/talkweb/sdk/orm/model/PayRequestInfo;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/talkweb/sdk/vo/CallBackVo;->record:Lcom/talkweb/sdk/orm/model/PayRequestInfo;

    return-object v0
.end method

.method public getReturnMsg()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/talkweb/sdk/vo/CallBackVo;->returnMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/talkweb/sdk/vo/CallBackVo;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdTradeTime()Ljava/util/Date;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/talkweb/sdk/vo/CallBackVo;->thirdTradeTime:Ljava/util/Date;

    return-object v0
.end method

.method public getThird_trade_number()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/talkweb/sdk/vo/CallBackVo;->third_trade_number:Ljava/lang/String;

    return-object v0
.end method

.method public setPay_amount(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/talkweb/sdk/vo/CallBackVo;->pay_amount:Ljava/lang/String;

    return-void
.end method

.method public setPay_id(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/talkweb/sdk/vo/CallBackVo;->pay_id:Ljava/lang/String;

    return-void
.end method

.method public setRecord(Lcom/talkweb/sdk/orm/model/PayRequestInfo;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/talkweb/sdk/vo/CallBackVo;->record:Lcom/talkweb/sdk/orm/model/PayRequestInfo;

    return-void
.end method

.method public setReturnMsg(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/talkweb/sdk/vo/CallBackVo;->returnMsg:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/talkweb/sdk/vo/CallBackVo;->state:Ljava/lang/String;

    return-void
.end method

.method public setThirdTradeTime(Ljava/util/Date;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/talkweb/sdk/vo/CallBackVo;->thirdTradeTime:Ljava/util/Date;

    return-void
.end method

.method public setThird_trade_number(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/talkweb/sdk/vo/CallBackVo;->third_trade_number:Ljava/lang/String;

    return-void
.end method
