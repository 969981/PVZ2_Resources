.class public Lcom/talkweb/twOfflineSdk/bean/ReturnModel;
.super Ljava/lang/Object;
.source "ReturnModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5468767ba5ab1b04L


# instance fields
.field private code:Ljava/lang/String;

.field private content:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0000"

    .line 29
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/ReturnModel;->code:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lcom/talkweb/twOfflineSdk/bean/ReturnModel;->setCode(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p2}, Lcom/talkweb/twOfflineSdk/bean/ReturnModel;->setContent(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/ReturnModel;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/ReturnModel;->content:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/ReturnModel;->code:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/ReturnModel;->content:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 55
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
