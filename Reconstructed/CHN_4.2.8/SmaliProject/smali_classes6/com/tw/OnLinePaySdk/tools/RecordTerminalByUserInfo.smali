.class public Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;
.super Ljava/lang/Object;
.source "RecordTerminalByUserInfo.java"


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/tencent/map/geolocation/TencentLocationListener;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$1;

    invoke-direct {v0, p0}, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$1;-><init>(Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;)V

    iput-object v0, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;->listener:Lcom/tencent/map/geolocation/TencentLocationListener;

    return-void
.end method

.method static synthetic access$0(Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;)Landroid/content/Context;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1(Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;->userId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2(Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;Landroid/content/Context;Lcom/tencent/map/geolocation/TencentLocation;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;->record_user_attr(Landroid/content/Context;Lcom/tencent/map/geolocation/TencentLocation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;)Lcom/tencent/map/geolocation/TencentLocationListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;->listener:Lcom/tencent/map/geolocation/TencentLocationListener;

    return-object p0
.end method

.method private record_user_attr(Landroid/content/Context;Lcom/tencent/map/geolocation/TencentLocation;Ljava/lang/String;)V
    .locals 1

    .line 50
    new-instance v0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$2;-><init>(Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;Ljava/lang/String;Landroid/content/Context;Lcom/tencent/map/geolocation/TencentLocation;)V

    .line 65
    invoke-virtual {v0}, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$2;->start()V

    return-void
.end method


# virtual methods
.method public recordUserAttr(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;->userId:Ljava/lang/String;

    .line 45
    iget-object p2, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;->listener:Lcom/tencent/map/geolocation/TencentLocationListener;

    invoke-static {p1, p2}, Lcom/tw/OnLinePaySdk/tools/TencentGetLocal;->getLocal(Landroid/content/Context;Lcom/tencent/map/geolocation/TencentLocationListener;)Z

    return-void
.end method
