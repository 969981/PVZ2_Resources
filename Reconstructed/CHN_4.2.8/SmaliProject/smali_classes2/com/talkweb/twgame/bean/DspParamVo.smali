.class public Lcom/talkweb/twgame/bean/DspParamVo;
.super Ljava/lang/Object;
.source "DspParamVo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x62da81b7e2f707a6L


# instance fields
.field public dsp_class:Ljava/lang/String;

.field public dsp_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDsp_class()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/talkweb/twgame/bean/DspParamVo;->dsp_class:Ljava/lang/String;

    return-object v0
.end method

.method public getDsp_id()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/talkweb/twgame/bean/DspParamVo;->dsp_id:Ljava/lang/String;

    return-object v0
.end method

.method public setDsp_class(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/talkweb/twgame/bean/DspParamVo;->dsp_class:Ljava/lang/String;

    return-void
.end method

.method public setDsp_id(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/talkweb/twgame/bean/DspParamVo;->dsp_id:Ljava/lang/String;

    return-void
.end method
