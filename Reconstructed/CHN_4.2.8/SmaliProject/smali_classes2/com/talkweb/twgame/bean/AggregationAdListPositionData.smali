.class public Lcom/talkweb/twgame/bean/AggregationAdListPositionData;
.super Ljava/lang/Object;
.source "AggregationAdListPositionData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private levelnum:Ljava/lang/String;

.field private positionid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevelnum()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/talkweb/twgame/bean/AggregationAdListPositionData;->levelnum:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionid()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/talkweb/twgame/bean/AggregationAdListPositionData;->positionid:Ljava/lang/String;

    return-object v0
.end method

.method public setLevelnum(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/talkweb/twgame/bean/AggregationAdListPositionData;->levelnum:Ljava/lang/String;

    return-void
.end method

.method public setPositionid(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/talkweb/twgame/bean/AggregationAdListPositionData;->positionid:Ljava/lang/String;

    return-void
.end method
