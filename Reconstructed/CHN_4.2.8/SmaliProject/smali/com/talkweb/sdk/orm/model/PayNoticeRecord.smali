.class public Lcom/talkweb/sdk/orm/model/PayNoticeRecord;
.super Ljava/lang/Object;
.source "PayNoticeRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private createTime:Ljava/util/Date;

.field private currTimes:Ljava/lang/Integer;

.field private finishTime:Ljava/util/Date;

.field private id:Ljava/lang/Long;

.field private payId:Ljava/lang/Long;

.field private result:Ljava/lang/String;

.field private state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateTime()Ljava/util/Date;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayNoticeRecord;->createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getCurrTimes()Ljava/lang/Integer;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayNoticeRecord;->currTimes:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFinishTime()Ljava/util/Date;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayNoticeRecord;->finishTime:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayNoticeRecord;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getPayId()Ljava/lang/Long;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayNoticeRecord;->payId:Ljava/lang/Long;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayNoticeRecord;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayNoticeRecord;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayNoticeRecord;->createTime:Ljava/util/Date;

    return-void
.end method

.method public setCurrTimes(Ljava/lang/Integer;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayNoticeRecord;->currTimes:Ljava/lang/Integer;

    return-void
.end method

.method public setFinishTime(Ljava/util/Date;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayNoticeRecord;->finishTime:Ljava/util/Date;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayNoticeRecord;->id:Ljava/lang/Long;

    return-void
.end method

.method public setPayId(Ljava/lang/Long;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayNoticeRecord;->payId:Ljava/lang/Long;

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayNoticeRecord;->result:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayNoticeRecord;->state:Ljava/lang/String;

    return-void
.end method
