.class public Lcom/talkweb/sdk/orm/model/PayNoticeSchedule;
.super Ljava/lang/Object;
.source "PayNoticeSchedule.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private createTime:Ljava/util/Date;

.field private currTimes:Ljava/lang/Integer;

.field private finishTime:Ljava/util/Date;

.field private id:Ljava/lang/Long;

.field private nextTime:Ljava/util/Date;

.field private payId:Ljava/lang/Long;


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

    .line 140
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayNoticeSchedule;->createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getCurrTimes()Ljava/lang/Integer;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayNoticeSchedule;->currTimes:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFinishTime()Ljava/util/Date;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayNoticeSchedule;->finishTime:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayNoticeSchedule;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getNextTime()Ljava/util/Date;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayNoticeSchedule;->nextTime:Ljava/util/Date;

    return-object v0
.end method

.method public getPayId()Ljava/lang/Long;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PayNoticeSchedule;->payId:Ljava/lang/Long;

    return-object v0
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayNoticeSchedule;->createTime:Ljava/util/Date;

    return-void
.end method

.method public setCurrTimes(Ljava/lang/Integer;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayNoticeSchedule;->currTimes:Ljava/lang/Integer;

    return-void
.end method

.method public setFinishTime(Ljava/util/Date;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayNoticeSchedule;->finishTime:Ljava/util/Date;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayNoticeSchedule;->id:Ljava/lang/Long;

    return-void
.end method

.method public setNextTime(Ljava/util/Date;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayNoticeSchedule;->nextTime:Ljava/util/Date;

    return-void
.end method

.method public setPayId(Ljava/lang/Long;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PayNoticeSchedule;->payId:Ljava/lang/Long;

    return-void
.end method
