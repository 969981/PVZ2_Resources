.class public Lcom/talkweb/twgame/bean/PositionVo;
.super Ljava/lang/Object;
.source "PositionVo.java"


# instance fields
.field private bid:Ljava/lang/String;

.field private displayTime:Ljava/lang/String;

.field private dsp:Lcom/talkweb/twgame/bean/DspVo;

.field private dsps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/talkweb/twgame/bean/DspVo;",
            ">;"
        }
    .end annotation
.end field

.field private efftime:Ljava/lang/String;

.field private exptime:Ljava/lang/String;

.field private psets:Lcom/talkweb/twgame/bean/Psets;

.field private rate:Ljava/lang/String;

.field private tw_pid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/talkweb/twgame/bean/DspVo;

    invoke-direct {v0}, Lcom/talkweb/twgame/bean/DspVo;-><init>()V

    iput-object v0, p0, Lcom/talkweb/twgame/bean/PositionVo;->dsp:Lcom/talkweb/twgame/bean/DspVo;

    return-void
.end method


# virtual methods
.method public getBid()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/talkweb/twgame/bean/PositionVo;->bid:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayTime()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/talkweb/twgame/bean/PositionVo;->displayTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDsp()Lcom/talkweb/twgame/bean/DspVo;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/talkweb/twgame/bean/PositionVo;->dsp:Lcom/talkweb/twgame/bean/DspVo;

    return-object v0
.end method

.method public getDsps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/talkweb/twgame/bean/DspVo;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/talkweb/twgame/bean/PositionVo;->dsps:Ljava/util/List;

    return-object v0
.end method

.method public getEfftime()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/talkweb/twgame/bean/PositionVo;->efftime:Ljava/lang/String;

    return-object v0
.end method

.method public getExptime()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/talkweb/twgame/bean/PositionVo;->exptime:Ljava/lang/String;

    return-object v0
.end method

.method public getPsets()Lcom/talkweb/twgame/bean/Psets;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/talkweb/twgame/bean/PositionVo;->psets:Lcom/talkweb/twgame/bean/Psets;

    return-object v0
.end method

.method public getRate()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/talkweb/twgame/bean/PositionVo;->rate:Ljava/lang/String;

    return-object v0
.end method

.method public getTw_pid()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/talkweb/twgame/bean/PositionVo;->tw_pid:Ljava/lang/String;

    return-object v0
.end method

.method public setBid(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/talkweb/twgame/bean/PositionVo;->bid:Ljava/lang/String;

    return-void
.end method

.method public setDisplayTime(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/talkweb/twgame/bean/PositionVo;->displayTime:Ljava/lang/String;

    return-void
.end method

.method public setDsp(Lcom/talkweb/twgame/bean/DspVo;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/talkweb/twgame/bean/PositionVo;->dsp:Lcom/talkweb/twgame/bean/DspVo;

    return-void
.end method

.method public setDsps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/talkweb/twgame/bean/DspVo;",
            ">;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/talkweb/twgame/bean/PositionVo;->dsps:Ljava/util/List;

    return-void
.end method

.method public setEfftime(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/talkweb/twgame/bean/PositionVo;->efftime:Ljava/lang/String;

    return-void
.end method

.method public setExptime(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/talkweb/twgame/bean/PositionVo;->exptime:Ljava/lang/String;

    return-void
.end method

.method public setPsets(Lcom/talkweb/twgame/bean/Psets;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/talkweb/twgame/bean/PositionVo;->psets:Lcom/talkweb/twgame/bean/Psets;

    return-void
.end method

.method public setRate(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/talkweb/twgame/bean/PositionVo;->rate:Ljava/lang/String;

    return-void
.end method

.method public setTw_pid(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/talkweb/twgame/bean/PositionVo;->tw_pid:Ljava/lang/String;

    return-void
.end method
