.class public Lcom/talkweb/twOfflineSdk/bean/UploadBean;
.super Ljava/lang/Object;
.source "UploadBean.java"


# instance fields
.field private appVersion:Ljava/lang/String;

.field private applicationId:Ljava/lang/String;

.field private channelsId:Ljava/lang/String;

.field private distributionChannels:Ljava/lang/String;

.field private iccid:Ljava/lang/String;

.field private idfa:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private merchantId:Ljava/lang/String;

.field private op:Ljava/lang/String;

.field private operators:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private publicKey:Ljava/lang/String;

.field private record:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/talkweb/twOfflineSdk/bean/RecordBean;",
            ">;"
        }
    .end annotation
.end field

.field private sdkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->op:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->merchantId:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->applicationId:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->sdkVersion:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->distributionChannels:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->iccid:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->province:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->operators:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->imei:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->imsi:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->channelsId:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->mac:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->publicKey:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->idfa:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->appVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelsId()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->channelsId:Ljava/lang/String;

    return-object v0
.end method

.method public getDistributionChannels()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->distributionChannels:Ljava/lang/String;

    return-object v0
.end method

.method public getIccid()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->iccid:Ljava/lang/String;

    return-object v0
.end method

.method public getIdfa()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->idfa:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantId()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->merchantId:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->op:Ljava/lang/String;

    return-object v0
.end method

.method public getOperators()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->operators:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRecord()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/talkweb/twOfflineSdk/bean/RecordBean;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->record:Ljava/util/List;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->applicationId:Ljava/lang/String;

    return-void
.end method

.method public setChannelsId(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->channelsId:Ljava/lang/String;

    return-void
.end method

.method public setDistributionChannels(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->distributionChannels:Ljava/lang/String;

    return-void
.end method

.method public setIccid(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->iccid:Ljava/lang/String;

    return-void
.end method

.method public setIdfa(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->idfa:Ljava/lang/String;

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->imei:Ljava/lang/String;

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->imsi:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->mac:Ljava/lang/String;

    return-void
.end method

.method public setMerchantId(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->merchantId:Ljava/lang/String;

    return-void
.end method

.method public setOp(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->op:Ljava/lang/String;

    return-void
.end method

.method public setOperators(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->operators:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->province:Ljava/lang/String;

    return-void
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->publicKey:Ljava/lang/String;

    return-void
.end method

.method public setRecord(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/talkweb/twOfflineSdk/bean/RecordBean;",
            ">;)V"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->record:Ljava/util/List;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/UploadBean;->sdkVersion:Ljava/lang/String;

    return-void
.end method
