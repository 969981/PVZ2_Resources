.class public Lcom/talkweb/sdk/orm/model/AppPayway;
.super Ljava/lang/Object;
.source "AppPayway.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private appId:Ljava/lang/Integer;

.field private id:Ljava/lang/Integer;

.field private paywayId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/Integer;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppPayway;->appId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppPayway;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPaywayId()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppPayway;->paywayId:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/Integer;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppPayway;->appId:Ljava/lang/Integer;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppPayway;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setPaywayId(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppPayway;->paywayId:Ljava/lang/String;

    return-void
.end method
