.class public Lcom/talkweb/sdk/orm/model/PaywayKey;
.super Lcom/talkweb/sdk/vo/BaseVO;
.source "PaywayKey.java"


# instance fields
.field private appPrivateKey:Ljava/lang/String;

.field private partner:Ljava/lang/String;

.field private partnerName:Ljava/lang/String;

.field private paywayId:Ljava/lang/String;

.field private serPrivateKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/talkweb/sdk/vo/BaseVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppPrivateKey()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PaywayKey;->appPrivateKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPartner()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PaywayKey;->partner:Ljava/lang/String;

    return-object v0
.end method

.method public getPartnerName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PaywayKey;->partnerName:Ljava/lang/String;

    return-object v0
.end method

.method public getPaywayId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PaywayKey;->paywayId:Ljava/lang/String;

    return-object v0
.end method

.method public getSerPrivateKey()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/PaywayKey;->serPrivateKey:Ljava/lang/String;

    return-object v0
.end method

.method public setAppPrivateKey(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PaywayKey;->appPrivateKey:Ljava/lang/String;

    return-void
.end method

.method public setPartner(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PaywayKey;->partner:Ljava/lang/String;

    return-void
.end method

.method public setPartnerName(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PaywayKey;->partnerName:Ljava/lang/String;

    return-void
.end method

.method public setPaywayId(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PaywayKey;->paywayId:Ljava/lang/String;

    return-void
.end method

.method public setSerPrivateKey(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/PaywayKey;->serPrivateKey:Ljava/lang/String;

    return-void
.end method
