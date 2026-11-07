.class public Lcom/bytedance/applog/event/EventBasicData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final abSdkVersion:Ljava/lang/String;

.field public final eventCreateTime:J

.field public final eventIndex:J

.field public final sessionId:Ljava/lang/String;

.field public final ssid:Ljava/lang/String;

.field public final uuid:Ljava/lang/String;

.field public final uuidType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abfu;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lgbsdk/optional/applog/abfu;->s:J

    iput-wide v0, p0, Lcom/bytedance/applog/event/EventBasicData;->eventIndex:J

    iget-wide v0, p1, Lgbsdk/optional/applog/abfu;->r:J

    iput-wide v0, p0, Lcom/bytedance/applog/event/EventBasicData;->eventCreateTime:J

    iget-object v0, p1, Lgbsdk/optional/applog/abfu;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/applog/event/EventBasicData;->sessionId:Ljava/lang/String;

    iget-object v0, p1, Lgbsdk/optional/applog/abfu;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/applog/event/EventBasicData;->uuid:Ljava/lang/String;

    iget-object v0, p1, Lgbsdk/optional/applog/abfu;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/applog/event/EventBasicData;->uuidType:Ljava/lang/String;

    iget-object v0, p1, Lgbsdk/optional/applog/abfu;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/applog/event/EventBasicData;->ssid:Ljava/lang/String;

    iget-object p1, p1, Lgbsdk/optional/applog/abfu;->y:Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/applog/event/EventBasicData;->abSdkVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAbSdkVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/event/EventBasicData;->abSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getEventCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/applog/event/EventBasicData;->eventCreateTime:J

    return-wide v0
.end method

.method public getEventIndex()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/applog/event/EventBasicData;->eventIndex:J

    return-wide v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/event/EventBasicData;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/event/EventBasicData;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/event/EventBasicData;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getUuidType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/event/EventBasicData;->uuidType:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "EventBasisData{eventIndex="

    invoke-static {v0}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/applog/event/EventBasicData;->eventIndex:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", eventCreateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/applog/event/EventBasicData;->eventCreateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/applog/event/EventBasicData;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uuid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/applog/event/EventBasicData;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uuidType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/applog/event/EventBasicData;->uuidType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ssid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/applog/event/EventBasicData;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", abSdkVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/applog/event/EventBasicData;->abSdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
