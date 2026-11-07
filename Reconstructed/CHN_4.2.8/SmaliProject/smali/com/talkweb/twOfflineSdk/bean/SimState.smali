.class public Lcom/talkweb/twOfflineSdk/bean/SimState;
.super Ljava/lang/Object;
.source "SimState.java"


# instance fields
.field private iccid:Ljava/lang/String;

.field private operator:Ljava/lang/String;

.field private province:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIccid()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/SimState;->iccid:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/SimState;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/SimState;->province:Ljava/lang/String;

    return-object v0
.end method

.method public setIccid(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/SimState;->iccid:Ljava/lang/String;

    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/SimState;->operator:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/SimState;->province:Ljava/lang/String;

    return-void
.end method
