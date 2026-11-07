.class Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$2;
.super Ljava/lang/Thread;
.source "RecordTerminalByUserInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;->record_user_attr(Landroid/content/Context;Lcom/tencent/map/geolocation/TencentLocation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$location:Lcom/tencent/map/geolocation/TencentLocation;

.field private final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;Ljava/lang/String;Landroid/content/Context;Lcom/tencent/map/geolocation/TencentLocation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$2;->this$0:Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;

    iput-object p2, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$2;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$2;->val$location:Lcom/tencent/map/geolocation/TencentLocation;

    .line 50
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 52
    new-instance v0, Lcom/tw/OnLinePaySdk/bean/RecordUserAttr;

    invoke-direct {v0}, Lcom/tw/OnLinePaySdk/bean/RecordUserAttr;-><init>()V

    .line 53
    iget-object v1, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$2;->val$userId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tw/OnLinePaySdk/bean/RecordUserAttr;->setUserId(Ljava/lang/Long;)V

    .line 54
    iget-object v1, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tw/OnLinePaySdk/tools/Tools;->getPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tw/OnLinePaySdk/bean/RecordUserAttr;->setPhone(Ljava/lang/String;)V

    .line 55
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$2;->val$location:Lcom/tencent/map/geolocation/TencentLocation;

    invoke-interface {v2}, Lcom/tencent/map/geolocation/TencentLocation;->getLongitude()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0, v1}, Lcom/tw/OnLinePaySdk/bean/RecordUserAttr;->setLongitude(Ljava/math/BigDecimal;)V

    .line 56
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$2;->val$location:Lcom/tencent/map/geolocation/TencentLocation;

    invoke-interface {v2}, Lcom/tencent/map/geolocation/TencentLocation;->getLatitude()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0, v1}, Lcom/tw/OnLinePaySdk/bean/RecordUserAttr;->setLatitude(Ljava/math/BigDecimal;)V

    .line 57
    iget-object v1, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tw/OnLinePaySdk/tools/Tools;->getOperatorSign(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tw/OnLinePaySdk/bean/RecordUserAttr;->setCarrier(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$2;->val$location:Lcom/tencent/map/geolocation/TencentLocation;

    invoke-interface {v1}, Lcom/tencent/map/geolocation/TencentLocation;->getNation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tw/OnLinePaySdk/bean/RecordUserAttr;->setCountry(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$2;->val$location:Lcom/tencent/map/geolocation/TencentLocation;

    invoke-interface {v1}, Lcom/tencent/map/geolocation/TencentLocation;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tw/OnLinePaySdk/bean/RecordUserAttr;->setCity(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$2;->val$location:Lcom/tencent/map/geolocation/TencentLocation;

    invoke-interface {v1}, Lcom/tencent/map/geolocation/TencentLocation;->getProvince()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tw/OnLinePaySdk/bean/RecordUserAttr;->setProvince(Ljava/lang/String;)V

    .line 62
    invoke-static {v0}, Lcom/tw/OnLinePaySdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tw/OnLinePaySdk/server/TalkwebServer;->recordTerminal(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
