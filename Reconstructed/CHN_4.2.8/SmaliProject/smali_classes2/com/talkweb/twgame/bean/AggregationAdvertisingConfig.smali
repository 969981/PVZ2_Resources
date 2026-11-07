.class public Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;
.super Ljava/lang/Object;
.source "AggregationAdvertisingConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x76e2027ef306f7f1L


# instance fields
.field public displaytimeconfig:Lcom/talkweb/twgame/bean/DisplaytimeConfig;

.field public dsps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/talkweb/twgame/bean/DspParamVo;",
            ">;"
        }
    .end annotation
.end field

.field public position:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/talkweb/twgame/bean/DspVo;",
            ">;>;"
        }
    .end annotation
.end field

.field public version:Ljava/lang/String;

.field public weekdays:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplaytimeconfig()Lcom/talkweb/twgame/bean/DisplaytimeConfig;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;->displaytimeconfig:Lcom/talkweb/twgame/bean/DisplaytimeConfig;

    return-object v0
.end method

.method public getDsps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/talkweb/twgame/bean/DspParamVo;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;->dsps:Ljava/util/Map;

    return-object v0
.end method

.method public getPosition()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/talkweb/twgame/bean/DspVo;",
            ">;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;->position:Ljava/util/Map;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getWeekdays()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;->weekdays:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplaytimeconfig(Lcom/talkweb/twgame/bean/DisplaytimeConfig;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;->displaytimeconfig:Lcom/talkweb/twgame/bean/DisplaytimeConfig;

    return-void
.end method

.method public setDsps(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/talkweb/twgame/bean/DspParamVo;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;->dsps:Ljava/util/Map;

    return-void
.end method

.method public setPosition(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/talkweb/twgame/bean/DspVo;",
            ">;>;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;->position:Ljava/util/Map;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;->version:Ljava/lang/String;

    return-void
.end method

.method public setWeekdays(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;->weekdays:Ljava/lang/String;

    return-void
.end method
