.class public abstract Lcom/popcap/util/PopCapNotificationAbstract;
.super Ljava/lang/Object;
.source "PopCapNotificationAbstract.java"


# instance fields
.field public action:I

.field protected id:I

.field protected interval:J

.field lastSendTime:J

.field protected ntType:I

.field protected skuId:I

.field protected text:Ljava/lang/String;

.field protected title:Ljava/lang/String;

.field protected type:I

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JI)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 27
    iput-wide v0, p0, Lcom/popcap/util/PopCapNotificationAbstract;->lastSendTime:J

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/popcap/util/PopCapNotificationAbstract;->type:I

    .line 31
    iput v0, p0, Lcom/popcap/util/PopCapNotificationAbstract;->skuId:I

    .line 32
    iput v0, p0, Lcom/popcap/util/PopCapNotificationAbstract;->ntType:I

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/popcap/util/PopCapNotificationAbstract;->url:Ljava/lang/String;

    .line 50
    iput p1, p0, Lcom/popcap/util/PopCapNotificationAbstract;->id:I

    .line 51
    iput-object p2, p0, Lcom/popcap/util/PopCapNotificationAbstract;->title:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/popcap/util/PopCapNotificationAbstract;->text:Ljava/lang/String;

    .line 53
    iput-wide p4, p0, Lcom/popcap/util/PopCapNotificationAbstract;->interval:J

    .line 54
    iput p6, p0, Lcom/popcap/util/PopCapNotificationAbstract;->action:I

    return-void
.end method

.method public static updateNotification(Lcom/popcap/util/PopCapNotificationAbstract;Lcom/popcap/util/PopCapNotificationAbstract;)V
    .locals 5

    .line 78
    iget-object v0, p1, Lcom/popcap/util/PopCapNotificationAbstract;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/popcap/util/PopCapNotificationAbstract;->title:Ljava/lang/String;

    .line 79
    :cond_0
    iget-object v0, p1, Lcom/popcap/util/PopCapNotificationAbstract;->text:Ljava/lang/String;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/popcap/util/PopCapNotificationAbstract;->text:Ljava/lang/String;

    .line 80
    :cond_1
    iget-wide v0, p1, Lcom/popcap/util/PopCapNotificationAbstract;->interval:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    iput-wide v0, p0, Lcom/popcap/util/PopCapNotificationAbstract;->interval:J

    .line 81
    :cond_2
    iget v0, p1, Lcom/popcap/util/PopCapNotificationAbstract;->type:I

    if-lez v0, :cond_3

    iput v0, p0, Lcom/popcap/util/PopCapNotificationAbstract;->type:I

    .line 82
    :cond_3
    iget v0, p1, Lcom/popcap/util/PopCapNotificationAbstract;->action:I

    if-lez v0, :cond_4

    iput v0, p0, Lcom/popcap/util/PopCapNotificationAbstract;->action:I

    .line 83
    :cond_4
    iget-wide v0, p1, Lcom/popcap/util/PopCapNotificationAbstract;->lastSendTime:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_5

    iput-wide v0, p0, Lcom/popcap/util/PopCapNotificationAbstract;->lastSendTime:J

    :cond_5
    return-void
.end method


# virtual methods
.method public GetSkuId()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/popcap/util/PopCapNotificationAbstract;->skuId:I

    return v0
.end method

.method public SetSkuId(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/popcap/util/PopCapNotificationAbstract;->skuId:I

    return-void
.end method

.method public getId()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/popcap/util/PopCapNotificationAbstract;->id:I

    return v0
.end method

.method public getNextSendTime()J
    .locals 4

    .line 68
    iget-wide v0, p0, Lcom/popcap/util/PopCapNotificationAbstract;->lastSendTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/popcap/util/PopCapNotificationAbstract;->lastSendTime:J

    .line 70
    :cond_0
    iget-wide v0, p0, Lcom/popcap/util/PopCapNotificationAbstract;->lastSendTime:J

    iget-wide v2, p0, Lcom/popcap/util/PopCapNotificationAbstract;->interval:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getNtType()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/popcap/util/PopCapNotificationAbstract;->ntType:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/popcap/util/PopCapNotificationAbstract;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/popcap/util/PopCapNotificationAbstract;->id:I

    return-void
.end method

.method public setNtType(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/popcap/util/PopCapNotificationAbstract;->ntType:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/popcap/util/PopCapNotificationAbstract;->url:Ljava/lang/String;

    return-void
.end method

.method public statusToHtml()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 111
    const-string v0, ""

    return-object v0
.end method

.method public updateNextSendTime()V
    .locals 2

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/popcap/util/PopCapNotificationAbstract;->lastSendTime:J

    return-void
.end method
