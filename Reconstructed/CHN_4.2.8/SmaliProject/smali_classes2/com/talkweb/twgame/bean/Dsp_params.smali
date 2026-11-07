.class public Lcom/talkweb/twgame/bean/Dsp_params;
.super Ljava/lang/Object;
.source "Dsp_params.java"


# instance fields
.field private adtype:Ljava/lang/String;

.field private dsp_param:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdType()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/talkweb/twgame/bean/Dsp_params;->adtype:Ljava/lang/String;

    return-object v0
.end method

.method public getDsp_param()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/talkweb/twgame/bean/Dsp_params;->dsp_param:Ljava/lang/String;

    return-object v0
.end method

.method public setAdType(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/talkweb/twgame/bean/Dsp_params;->adtype:Ljava/lang/String;

    return-void
.end method

.method public setDsp_param(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/talkweb/twgame/bean/Dsp_params;->dsp_param:Ljava/lang/String;

    return-void
.end method
