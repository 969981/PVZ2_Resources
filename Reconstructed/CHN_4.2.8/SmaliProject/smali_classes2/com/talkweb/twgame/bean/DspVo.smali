.class public Lcom/talkweb/twgame/bean/DspVo;
.super Ljava/lang/Object;
.source "DspVo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x62da81b7e2f707a6L


# instance fields
.field private dsp_id:Ljava/lang/String;

.field private dsp_param:Ljava/lang/String;

.field private dsp_params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/talkweb/twgame/bean/Dsp_params;",
            ">;"
        }
    .end annotation
.end field

.field private rate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lcom/talkweb/twgame/bean/DspVo;->dsp_id:Ljava/lang/String;

    const-string v1, "0"

    .line 23
    iput-object v1, p0, Lcom/talkweb/twgame/bean/DspVo;->rate:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/talkweb/twgame/bean/DspVo;->dsp_param:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/talkweb/twgame/bean/DspVo;->dsp_params:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDsp_id()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/talkweb/twgame/bean/DspVo;->dsp_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDsp_param()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/talkweb/twgame/bean/DspVo;->dsp_param:Ljava/lang/String;

    return-object v0
.end method

.method public getDsp_params()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/talkweb/twgame/bean/Dsp_params;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/talkweb/twgame/bean/DspVo;->dsp_params:Ljava/util/List;

    return-object v0
.end method

.method public getRate()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/talkweb/twgame/bean/DspVo;->rate:Ljava/lang/String;

    return-object v0
.end method

.method public setDsp_id(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/talkweb/twgame/bean/DspVo;->dsp_id:Ljava/lang/String;

    return-void
.end method

.method public setDsp_param(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/talkweb/twgame/bean/DspVo;->dsp_param:Ljava/lang/String;

    return-void
.end method

.method public setDsp_params(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/talkweb/twgame/bean/Dsp_params;",
            ">;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/talkweb/twgame/bean/DspVo;->dsp_params:Ljava/util/List;

    return-void
.end method

.method public setRate(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/talkweb/twgame/bean/DspVo;->rate:Ljava/lang/String;

    return-void
.end method
