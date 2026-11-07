.class public Lcom/popcap/notifications/GLobaleNtfMgr;
.super Lcom/popcap/notifications/NtfMgr;
.source "GLobaleNtfMgr.java"

# interfaces
.implements Lcom/popcap/events/IEventTick;


# instance fields
.field private _notificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/popcap/util/PopCapNotificationAbstract;",
            ">;"
        }
    .end annotation
.end field

.field private intKey:I

.field private mGetNtfDisTime:J

.field private mLastGetNtfcTime:Ljava/util/Date;

.field private maxNotfIndex:I

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

    .line 29
    invoke-direct {p0}, Lcom/popcap/notifications/NtfMgr;-><init>()V

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->params:Ljava/util/Map;

    const/4 v1, 0x0

    .line 254
    iput v1, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->intKey:I

    .line 255
    iput v1, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->maxNotfIndex:I

    const-wide/16 v1, 0x0

    .line 256
    iput-wide v1, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->mGetNtfDisTime:J

    .line 257
    iput-object v0, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->_notificationList:Ljava/util/ArrayList;

    .line 258
    iput-object v0, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->mLastGetNtfcTime:Ljava/util/Date;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->_notificationList:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->params:Ljava/util/Map;

    return-void
.end method

.method private ClearNotificationList()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->_notificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private GetNotiReqParams()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 227
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 228
    iget-object v1, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->params:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 229
    iget-object v1, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->params:Ljava/util/Map;

    const-string v2, "req"

    const-string v3, "I1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v1, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->params:Ljava/util/Map;

    const-string v2, "m"

    invoke-static {}, Lcom/popcap/util/NtfUtil;->GetUUId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v1, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->params:Ljava/util/Map;

    const-string v2, "v"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->params:Ljava/util/Map;

    iget v1, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->maxNotfIndex:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "l"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->params:Ljava/util/Map;

    invoke-static {}, Lcom/popcap/notifications/WeekNtfMgr;->Instance()Lcom/popcap/notifications/WeekNtfMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/popcap/notifications/WeekNtfMgr;->GetMaxWeeklyIndex()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "w"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->params:Ljava/util/Map;

    const-string v1, "e"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-static {}, Lcom/popcap/util/PCPLocalGameMgr;->Instance()Lcom/popcap/util/PCPLocalGameMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/util/PCPLocalGameMgr;->GetLocalIdArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->params:Ljava/util/Map;

    const-string v2, "s"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->params:Ljava/util/Map;

    const-string v1, "c"

    const-string v2, "[]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->params:Ljava/util/Map;

    return-object v0
.end method

.method private GetNotificationList()Ljava/lang/String;
    .locals 2

    .line 217
    invoke-direct {p0}, Lcom/popcap/notifications/GLobaleNtfMgr;->GetNotiReqParams()Ljava/util/Map;

    move-result-object v0

    .line 218
    invoke-static {v0}, Lcom/popcap/network/PCPNetWork;->GetNetData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 220
    const-string v1, "skedul"

    invoke-static {v1, v0}, Lcom/popcap/util/NtfUtil;->SaveDatalocal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private GetServerNotificatonList()V
    .locals 2

    .line 177
    invoke-direct {p0}, Lcom/popcap/notifications/GLobaleNtfMgr;->GetNotificationList()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {p0, v0}, Lcom/popcap/notifications/GLobaleNtfMgr;->FillData(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/popcap/notifications/GLobaleNtfMgr;->SetSkedulDisTime()V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mac="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/popcap/util/NtfUtil;->GetWifiMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  getnotificationlist  locaTime= "

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

.method private IsGetNotificationTimeOut()Z
    .locals 6

    .line 157
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 158
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->mLastGetNtfcTime:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IsGetNotificationTimeOut = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dis = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->mGetNtfDisTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "++++++++"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-wide v3, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->mGetNtfDisTime:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-nez v1, :cond_0

    const-wide/32 v1, 0x1b77400

    .line 164
    invoke-virtual {p0, v1, v2}, Lcom/popcap/notifications/GLobaleNtfMgr;->SetNtfDisTime(J)V

    .line 167
    :cond_0
    iput-object v0, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->mLastGetNtfcTime:Ljava/util/Date;

    .line 168
    invoke-static {v0}, Lcom/popcap/util/NtfUtil;->GetDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string v1, "lstNtfcTime"

    invoke-static {v1, v0}, Lcom/popcap/util/NtfUtil;->SaveDatalocal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private SaveNotificationList(Lorg/json/JSONArray;)I
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    .line 77
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 79
    new-instance v10, Lcom/popcap/util/PopCapNotificationForPlay;

    .line 80
    const-string v3, "i"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "c"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, -0x1

    const/4 v9, 0x3

    const/4 v4, 0x0

    move-object v3, v10

    .line 79
    invoke-direct/range {v3 .. v9}, Lcom/popcap/util/PopCapNotificationForPlay;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    .line 83
    const-string v3, "s"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/popcap/util/PopCapNotificationForPlay;->SetSkuId(I)V

    .line 85
    const-string v3, "t"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/popcap/util/PopCapNotificationForPlay;->setNtType(I)V

    .line 87
    const-string v3, "u"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/popcap/util/PopCapNotificationForPlay;->setUrl(Ljava/lang/String;)V

    .line 88
    const-string v3, "p"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v2, v1, :cond_1

    move v1, v2

    .line 92
    :cond_1
    invoke-virtual {v10, v2}, Lcom/popcap/util/PopCapNotificationForPlay;->setId(I)V

    .line 93
    iget-object v2, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->_notificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return v1
.end method

.method private sendNotificationList()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->_notificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/popcap/util/PopCapNotificationAbstract;

    .line 127
    invoke-static {}, Lcom/popcap/util/NtfUtil;->GetPCPService()Lcom/popcap/util/PopCapDaemonService;

    move-result-object v2

    invoke-static {v2}, Lcom/popcap/util/PopCapNotificationThread;->Instance(Lcom/popcap/util/PopCapDaemonService;)Lcom/popcap/util/PopCapNotificationThread;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/popcap/util/PopCapNotificationThread;->PlayNotification(Lcom/popcap/util/PopCapNotificationAbstract;)V

    goto :goto_0
.end method


# virtual methods
.method public FillData(Ljava/lang/String;)V
    .locals 4

    .line 37
    const-string v0, "tml"

    const-string v1, "wnl"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/popcap/notifications/GLobaleNtfMgr;->ClearNotificationList()V

    .line 43
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    const-string p1, "r"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 49
    :cond_1
    const-string p1, "d"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 50
    iget v2, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->intKey:I

    const/16 v3, 0x80

    if-le v2, v3, :cond_2

    const/4 v2, 0x0

    .line 51
    iput v2, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->intKey:I

    .line 52
    :cond_2
    const-string v2, "nl"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 53
    invoke-direct {p0, v2}, Lcom/popcap/notifications/GLobaleNtfMgr;->SaveNotificationList(Lorg/json/JSONArray;)I

    move-result v2

    .line 54
    iget v3, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->maxNotfIndex:I

    if-ge v3, v2, :cond_3

    .line 56
    iput v2, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->maxNotfIndex:I

    .line 57
    const-string v3, "maxNtfIndex"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/popcap/util/NtfUtil;->SaveDatalocal(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 61
    invoke-static {}, Lcom/popcap/notifications/WeekNtfMgr;->Instance()Lcom/popcap/notifications/WeekNtfMgr;

    move-result-object v2

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/popcap/notifications/WeekNtfMgr;->FillData(Lorg/json/JSONArray;)V

    .line 63
    :cond_4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 64
    invoke-static {}, Lcom/popcap/util/TimeStrategy;->Instance()Lcom/popcap/util/TimeStrategy;

    move-result-object v1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/popcap/util/TimeStrategy;->LoadServerTimeStrage(Lorg/json/JSONArray;)V

    .line 65
    :cond_5
    invoke-direct {p0}, Lcom/popcap/notifications/GLobaleNtfMgr;->sendNotificationList()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public OnUserStartGameEvent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public SetLastGetNtfcTime(Ljava/lang/String;)V
    .locals 4

    .line 139
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 140
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->mLastGetNtfcTime:Ljava/util/Date;

    .line 141
    invoke-virtual {p1, v1, v2}, Ljava/util/Date;->setTime(J)V

    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 145
    const-string v3, "yyyy-MM-dd HH:mm:ss"

    .line 144
    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 147
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->mLastGetNtfcTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->mLastGetNtfcTime:Ljava/util/Date;

    .line 151
    invoke-virtual {p1, v1, v2}, Ljava/util/Date;->setTime(J)V

    :goto_0
    return-void
.end method

.method public SetMaxNotIndex(Ljava/lang/String;)V
    .locals 2

    .line 111
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 113
    iput v1, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->maxNotfIndex:I

    return-void

    .line 118
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->maxNotfIndex:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 121
    iput v1, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->maxNotfIndex:I

    .line 122
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public SetNtfDisTime(J)V
    .locals 0

    .line 136
    iput-wide p1, p0, Lcom/popcap/notifications/GLobaleNtfMgr;->mGetNtfDisTime:J

    return-void
.end method

.method public SetSkedulDisTime()V
    .locals 5

    .line 184
    invoke-static {}, Lcom/popcap/util/NtfUtil;->GetUserlastOpt()Ljava/lang/String;

    move-result-object v0

    .line 186
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 187
    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    .line 188
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 189
    invoke-virtual {p0, v3, v4}, Lcom/popcap/notifications/GLobaleNtfMgr;->SetNtfDisTime(J)V

    .line 191
    invoke-static {}, Lcom/popcap/util/PCPLocalGameMgr;->Instance()Lcom/popcap/util/PCPLocalGameMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/util/PCPLocalGameMgr;->GetSkuIdList()Ljava/util/ArrayList;

    .line 192
    invoke-static {}, Lcom/popcap/util/NtfUtil;->SaveUserLastOpt()V

    return-void

    .line 196
    :cond_0
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 200
    invoke-virtual {p0, v3, v4}, Lcom/popcap/notifications/GLobaleNtfMgr;->SetNtfDisTime(J)V

    .line 202
    :goto_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 204
    invoke-static {}, Lcom/popcap/util/TimeStrategy;->Instance()Lcom/popcap/util/TimeStrategy;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/popcap/util/TimeStrategy;->GetNotficationSkedulTime(J)J

    move-result-wide v0

    const-wide/32 v2, 0x1b77400

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    move-wide v0, v2

    .line 209
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/popcap/notifications/GLobaleNtfMgr;->SetNtfDisTime(J)V

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mac="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/popcap/util/NtfUtil;->GetWifiMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SetSkedulDisTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {v0}, Lcom/popcap/util/NtfUtil;->SaveLogServer(Ljava/lang/String;)V

    return-void
.end method

.method public Tick()V
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/popcap/notifications/GLobaleNtfMgr;->IsGetNotificationTimeOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/popcap/notifications/GLobaleNtfMgr;->GetServerNotificatonList()V

    :cond_0
    return-void
.end method

.method public UpdateSkuUserOpt(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public UpdateUserOpt()V
    .locals 5

    .line 245
    invoke-static {}, Lcom/popcap/util/TimeStrategy;->Instance()Lcom/popcap/util/TimeStrategy;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/popcap/util/TimeStrategy;->GetNotficationSkedulTime(J)J

    move-result-wide v0

    const-wide/32 v2, 0x1b77400

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 250
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/popcap/notifications/GLobaleNtfMgr;->SetNtfDisTime(J)V

    return-void
.end method
