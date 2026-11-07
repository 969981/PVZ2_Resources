.class public Lcom/talkweb/twgame/Param/PositionManager;
.super Ljava/lang/Object;
.source "PositionManager.java"


# static fields
.field private static activeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static positionVoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/talkweb/twgame/bean/PositionVo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcDsp(Lcom/talkweb/twgame/bean/PositionVo;)V
    .locals 5

    .line 111
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calcDsp randomInt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dsp\u5e73\u53f0\u4e2a\u6570\u4e3a\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/PositionVo;->getDsps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/talkweb/twgame/bean/DspVo;

    .line 117
    invoke-virtual {v3}, Lcom/talkweb/twgame/bean/DspVo;->getRate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calcDsp true rate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\u5c55\u793a\u7684\u5e7f\u544a\u5e73\u53f0\u662f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/talkweb/twgame/bean/DspVo;->getDsp_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v3}, Lcom/talkweb/twgame/bean/PositionVo;->setDsp(Lcom/talkweb/twgame/bean/DspVo;)V

    :cond_1
    return-void
.end method

.method public static getActiveMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/talkweb/twgame/Param/PositionManager;->activeMap:Ljava/util/Map;

    return-object v0
.end method

.method public static getPositionVoMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/talkweb/twgame/bean/PositionVo;",
            ">;"
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/talkweb/twgame/Param/PositionManager;->positionVoMap:Ljava/util/Map;

    return-object v0
.end method

.method public static isShow(Lcom/talkweb/twgame/bean/PositionVo;)Z
    .locals 3

    .line 159
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShow randomInt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 164
    :try_start_0
    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/PositionVo;->getRate()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isShow true rate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShow false rate:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return v1
.end method

.method public static parsePosition(Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;Lcom/talkweb/twgame/bean/AbTestResponseVo;)V
    .locals 6

    .line 46
    sget-object v0, Lcom/talkweb/twgame/Param/PositionManager;->positionVoMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/talkweb/twgame/Param/PositionManager;->positionVoMap:Ljava/util/Map;

    .line 50
    :cond_0
    sget-object v0, Lcom/talkweb/twgame/Param/PositionManager;->activeMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/talkweb/twgame/Param/PositionManager;->activeMap:Ljava/util/Map;

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/AbTestResponseVo;->getActive()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/AbTestResponseVo;->getActive()Ljava/util/Map;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 54
    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/AbTestResponseVo;->getActive()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/talkweb/twgame/Param/PositionManager;->activeMap:Ljava/util/Map;

    goto :goto_0

    :cond_2
    const-string v0, "\u6ca1\u6709\u914d\u7f6e\u6d3b\u52a8\u6570\u636e"

    .line 56
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 59
    :goto_0
    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/AbTestResponseVo;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/AbTestResponseVo;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_5

    .line 62
    :cond_3
    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;->getPosition()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    new-instance v2, Lcom/talkweb/twgame/bean/PositionVo;

    invoke-direct {v2}, Lcom/talkweb/twgame/bean/PositionVo;-><init>()V

    .line 64
    invoke-virtual {v2, v1}, Lcom/talkweb/twgame/bean/PositionVo;->setTw_pid(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;->getPosition()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/talkweb/twgame/bean/PositionVo;->setDsps(Ljava/util/List;)V

    .line 67
    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;->getDisplaytimeconfig()Lcom/talkweb/twgame/bean/DisplaytimeConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/talkweb/twgame/bean/DisplaytimeConfig;->getPsets()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 68
    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;->getDisplaytimeconfig()Lcom/talkweb/twgame/bean/DisplaytimeConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/talkweb/twgame/bean/DisplaytimeConfig;->getPsets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/talkweb/twgame/bean/Psets;

    .line 69
    invoke-static {v4}, Lcom/talkweb/twgame/Param/PositionManager;->parsePsets(Lcom/talkweb/twgame/bean/Psets;)V

    .line 70
    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/Psets;->getPidList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/Psets;->getPidList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 71
    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/Psets;->getDisplaytime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/talkweb/twgame/bean/PositionVo;->setDisplayTime(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2, v4}, Lcom/talkweb/twgame/bean/PositionVo;->setPsets(Lcom/talkweb/twgame/bean/Psets;)V

    goto :goto_3

    .line 75
    :cond_4
    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;->getDisplaytimeconfig()Lcom/talkweb/twgame/bean/DisplaytimeConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/DisplaytimeConfig;->getDefaultTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/talkweb/twgame/bean/PositionVo;->setDisplayTime(Ljava/lang/String;)V

    goto :goto_2

    .line 79
    :cond_5
    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/AggregationAdvertisingConfig;->getDisplaytimeconfig()Lcom/talkweb/twgame/bean/DisplaytimeConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/talkweb/twgame/bean/DisplaytimeConfig;->getDefaultTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/talkweb/twgame/bean/PositionVo;->setDisplayTime(Ljava/lang/String;)V

    .line 83
    :cond_6
    :goto_3
    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/AbTestResponseVo;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/talkweb/twgame/bean/AbTestVo;

    .line 84
    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/AbTestVo;->getTw_pid()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 85
    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/AbTestVo;->getEfftime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/talkweb/twgame/bean/PositionVo;->setEfftime(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/AbTestVo;->getExptime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/talkweb/twgame/bean/PositionVo;->setExptime(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/AbTestVo;->getBid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/talkweb/twgame/bean/PositionVo;->setBid(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v4}, Lcom/talkweb/twgame/bean/AbTestVo;->getRate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/talkweb/twgame/bean/PositionVo;->setRate(Ljava/lang/String;)V

    goto :goto_4

    .line 91
    :cond_8
    sget-object v3, Lcom/talkweb/twgame/Param/PositionManager;->positionVoMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    :goto_5
    return-void
.end method

.method private static parsePsets(Lcom/talkweb/twgame/bean/Psets;)V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/Psets;->getTw_pids()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/talkweb/twgame/bean/Psets;->getTw_pids()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/talkweb/twgame/bean/Psets;->setPidList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static setActiveMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 39
    sput-object p0, Lcom/talkweb/twgame/Param/PositionManager;->activeMap:Ljava/util/Map;

    return-void
.end method

.method public static setPositionVoMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/talkweb/twgame/bean/PositionVo;",
            ">;)V"
        }
    .end annotation

    .line 31
    sput-object p0, Lcom/talkweb/twgame/Param/PositionManager;->positionVoMap:Ljava/util/Map;

    return-void
.end method
