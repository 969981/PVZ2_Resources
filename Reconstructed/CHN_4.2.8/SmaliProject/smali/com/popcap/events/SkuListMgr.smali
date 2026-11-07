.class public Lcom/popcap/events/SkuListMgr;
.super Ljava/lang/Object;
.source "SkuListMgr.java"

# interfaces
.implements Lcom/popcap/events/IEventTick;


# instance fields
.field private mGetSkuDisTime:J

.field private mLastGetSkuListTime:Ljava/util/Date;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/popcap/events/SkuListMgr;->params:Ljava/util/Map;

    const-wide/16 v1, 0x0

    .line 143
    iput-wide v1, p0, Lcom/popcap/events/SkuListMgr;->mGetSkuDisTime:J

    .line 144
    iput-object v0, p0, Lcom/popcap/events/SkuListMgr;->mLastGetSkuListTime:Ljava/util/Date;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/popcap/events/SkuListMgr;->params:Ljava/util/Map;

    return-void
.end method

.method private GetConfigXmlParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/popcap/events/SkuListMgr;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 134
    iget-object v0, p0, Lcom/popcap/events/SkuListMgr;->params:Ljava/util/Map;

    const-string v1, "req"

    const-string v2, "I2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/popcap/events/SkuListMgr;->params:Ljava/util/Map;

    return-object v0
.end method

.method private GetGameConfig()Ljava/lang/String;
    .locals 2

    .line 87
    invoke-direct {p0}, Lcom/popcap/events/SkuListMgr;->GetConfigXmlParams()Ljava/util/Map;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/popcap/network/PCPNetWork;->GetNetData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 90
    const-string v1, "skus"

    invoke-static {v1, v0}, Lcom/popcap/util/NtfUtil;->SaveDatalocal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private GetServerBaserInfo()V
    .locals 2

    .line 81
    invoke-direct {p0}, Lcom/popcap/events/SkuListMgr;->GetGameConfig()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {p0, v0}, Lcom/popcap/events/SkuListMgr;->FillSkuList(Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mac="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/popcap/util/NtfUtil;->GetWifiMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  getskuList locaTime= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/popcap/util/NtfUtil;->GetLocalTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/popcap/util/NtfUtil;->SaveLogServer(Ljava/lang/String;)V

    return-void
.end method

.method private IsGetSkuTimeOut()Z
    .locals 5

    .line 52
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 53
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/popcap/events/SkuListMgr;->mLastGetSkuListTime:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 55
    iget-wide v3, p0, Lcom/popcap/events/SkuListMgr;->mGetSkuDisTime:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mac="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/popcap/util/NtfUtil;->GetWifiMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  GetSkuTimeOut  locaTime= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/popcap/util/NtfUtil;->GetDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/popcap/util/NtfUtil;->SaveLogServer(Ljava/lang/String;)V

    .line 60
    invoke-static {v0}, Lcom/popcap/util/NtfUtil;->GetDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 61
    const-string v2, "lstSkuTime"

    invoke-static {v2, v1}, Lcom/popcap/util/NtfUtil;->SaveDatalocal(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-wide v1, p0, Lcom/popcap/events/SkuListMgr;->mGetSkuDisTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-wide/32 v1, 0x5265c00

    .line 64
    iput-wide v1, p0, Lcom/popcap/events/SkuListMgr;->mGetSkuDisTime:J

    .line 66
    :cond_0
    iput-object v0, p0, Lcom/popcap/events/SkuListMgr;->mLastGetSkuListTime:Ljava/util/Date;

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private RestSkuDisTime(J)V
    .locals 0

    .line 73
    iput-wide p1, p0, Lcom/popcap/events/SkuListMgr;->mGetSkuDisTime:J

    return-void
.end method


# virtual methods
.method public FillSkuList(Ljava/lang/String;)V
    .locals 4

    .line 96
    const-string v0, "tml"

    if-nez p1, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 102
    :cond_1
    const-string v1, "none"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 107
    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    const-string p1, "r"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 113
    :cond_3
    const-string p1, "d"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 114
    invoke-static {}, Lcom/popcap/util/PCPLocalGameMgr;->Instance()Lcom/popcap/util/PCPLocalGameMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/popcap/util/PCPLocalGameMgr;->ClearIdMap()V

    .line 115
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 116
    invoke-static {}, Lcom/popcap/util/TimeStrategy;->Instance()Lcom/popcap/util/TimeStrategy;

    move-result-object v1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/popcap/util/TimeStrategy;->LoadServerTimeStrage(Lorg/json/JSONArray;)V

    .line 117
    :cond_4
    const-string v0, "sl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 118
    invoke-static {}, Lcom/popcap/util/PCPLocalGameMgr;->Instance()Lcom/popcap/util/PCPLocalGameMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/util/PCPLocalGameMgr;->GetExistPopcapGame()V

    const/4 v0, 0x0

    .line 119
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v0, v1, :cond_5

    goto :goto_1

    .line 120
    :cond_5
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 121
    const-string v2, "si"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 123
    const-string v3, "pn"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {}, Lcom/popcap/util/PCPLocalGameMgr;->Instance()Lcom/popcap/util/PCPLocalGameMgr;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/popcap/util/PCPLocalGameMgr;->IsPackgeExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 125
    invoke-static {}, Lcom/popcap/util/PCPLocalGameMgr;->Instance()Lcom/popcap/util/PCPLocalGameMgr;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/popcap/util/PCPLocalGameMgr;->AddPackId(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public OnUserStartGameEvent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public SetLastGetSkuListTime(Ljava/lang/String;)V
    .locals 4

    .line 37
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 38
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/popcap/events/SkuListMgr;->mLastGetSkuListTime:Ljava/util/Date;

    .line 39
    invoke-virtual {p1, v1, v2}, Ljava/util/Date;->setTime(J)V

    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 44
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/popcap/events/SkuListMgr;->mLastGetSkuListTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/popcap/events/SkuListMgr;->mLastGetSkuListTime:Ljava/util/Date;

    .line 48
    invoke-virtual {p1, v1, v2}, Ljava/util/Date;->setTime(J)V

    :goto_0
    return-void
.end method

.method public SetSkuDisTime()V
    .locals 2

    .line 34
    invoke-static {}, Lcom/popcap/util/TimeStrategy;->Instance()Lcom/popcap/util/TimeStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/util/TimeStrategy;->GetSkuSkeduTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/popcap/events/SkuListMgr;->RestSkuDisTime(J)V

    return-void
.end method

.method public SetSkuTime(J)V
    .locals 0

    .line 77
    iput-wide p1, p0, Lcom/popcap/events/SkuListMgr;->mGetSkuDisTime:J

    return-void
.end method

.method public Tick()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/popcap/events/SkuListMgr;->IsGetSkuTimeOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-direct {p0}, Lcom/popcap/events/SkuListMgr;->GetServerBaserInfo()V

    .line 29
    invoke-static {}, Lcom/popcap/util/TimeStrategy;->Instance()Lcom/popcap/util/TimeStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/util/TimeStrategy;->GetSkuSkeduTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/popcap/events/SkuListMgr;->RestSkuDisTime(J)V

    :cond_0
    return-void
.end method

.method public UpdateSkuUserOpt(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public UpdateUserOpt()V
    .locals 2

    .line 140
    invoke-static {}, Lcom/popcap/util/TimeStrategy;->Instance()Lcom/popcap/util/TimeStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/util/TimeStrategy;->GetSkuSkeduTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/popcap/events/SkuListMgr;->RestSkuDisTime(J)V

    return-void
.end method
