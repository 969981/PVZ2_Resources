.class public Lcom/popcap/notifications/WeekNtfMgr;
.super Lcom/popcap/notifications/NtfMgr;
.source "WeekNtfMgr.java"

# interfaces
.implements Lcom/popcap/events/IEventTick;


# static fields
.field public static mWeekNtfMgr:Lcom/popcap/notifications/WeekNtfMgr;


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

.field private mWeekDate:Ljava/util/Date;

.field private maxWeeklyIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Lcom/popcap/notifications/NtfMgr;-><init>()V

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/popcap/notifications/WeekNtfMgr;->mWeekDate:Ljava/util/Date;

    const-wide/16 v1, 0x0

    .line 147
    iput-wide v1, p0, Lcom/popcap/notifications/WeekNtfMgr;->maxWeeklyIndex:J

    .line 148
    iput-object v0, p0, Lcom/popcap/notifications/WeekNtfMgr;->_notificationList:Ljava/util/ArrayList;

    .line 35
    sput-object p0, Lcom/popcap/notifications/WeekNtfMgr;->mWeekNtfMgr:Lcom/popcap/notifications/WeekNtfMgr;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/popcap/notifications/WeekNtfMgr;->_notificationList:Ljava/util/ArrayList;

    return-void
.end method

.method private ClearNotificationList()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/popcap/notifications/WeekNtfMgr;->_notificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static Instance()Lcom/popcap/notifications/WeekNtfMgr;
    .locals 1

    .line 27
    sget-object v0, Lcom/popcap/notifications/WeekNtfMgr;->mWeekNtfMgr:Lcom/popcap/notifications/WeekNtfMgr;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/popcap/notifications/WeekNtfMgr;

    invoke-direct {v0}, Lcom/popcap/notifications/WeekNtfMgr;-><init>()V

    sput-object v0, Lcom/popcap/notifications/WeekNtfMgr;->mWeekNtfMgr:Lcom/popcap/notifications/WeekNtfMgr;

    .line 31
    :cond_0
    sget-object v0, Lcom/popcap/notifications/WeekNtfMgr;->mWeekNtfMgr:Lcom/popcap/notifications/WeekNtfMgr;

    return-object v0
.end method

.method private OperByDate()V
    .locals 5

    .line 93
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 94
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 95
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x5

    .line 96
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 97
    iget-object v4, p0, Lcom/popcap/notifications/WeekNtfMgr;->mWeekDate:Ljava/util/Date;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 98
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v3, v1, :cond_0

    const-wide/16 v1, 0x0

    .line 100
    iput-wide v1, p0, Lcom/popcap/notifications/WeekNtfMgr;->maxWeeklyIndex:J

    .line 101
    invoke-static {v0}, Lcom/popcap/util/NtfUtil;->GetDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 102
    iput-object v0, p0, Lcom/popcap/notifications/WeekNtfMgr;->mWeekDate:Ljava/util/Date;

    .line 103
    const-string v0, "wkDate"

    invoke-static {v0, v1}, Lcom/popcap/util/NtfUtil;->SaveDatalocal(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/popcap/util/NtfUtil;->GetWifiMac()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " today is pass"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/popcap/util/NtfUtil;->SaveLogServer(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private sendNotificationList()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/popcap/notifications/WeekNtfMgr;->_notificationList:Ljava/util/ArrayList;

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

    .line 83
    invoke-static {}, Lcom/popcap/util/NtfUtil;->GetPCPService()Lcom/popcap/util/PopCapDaemonService;

    move-result-object v2

    invoke-static {v2}, Lcom/popcap/util/PopCapNotificationThread;->Instance(Lcom/popcap/util/PopCapDaemonService;)Lcom/popcap/util/PopCapNotificationThread;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/popcap/util/PopCapNotificationThread;->PlayNotification(Lcom/popcap/util/PopCapNotificationAbstract;)V

    goto :goto_0
.end method


# virtual methods
.method public FillData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public FillData(Lorg/json/JSONArray;)V
    .locals 10

    .line 51
    invoke-direct {p0}, Lcom/popcap/notifications/WeekNtfMgr;->ClearNotificationList()V

    const/4 v0, 0x0

    .line 53
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/popcap/notifications/WeekNtfMgr;->sendNotificationList()V

    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 55
    new-instance v9, Lcom/popcap/util/PopCapNotificationForPlay;

    .line 56
    const-string v2, "i"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "c"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    const/4 v8, 0x3

    const/4 v3, 0x1

    move-object v2, v9

    .line 55
    invoke-direct/range {v2 .. v8}, Lcom/popcap/util/PopCapNotificationForPlay;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    .line 59
    const-string v2, "s"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/popcap/util/PopCapNotificationForPlay;->SetSkuId(I)V

    .line 61
    const-string v2, "t"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/popcap/util/PopCapNotificationForPlay;->setNtType(I)V

    .line 63
    const-string v2, "u"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/popcap/util/PopCapNotificationForPlay;->setUrl(Ljava/lang/String;)V

    .line 64
    const-string v2, "p"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    .line 66
    iget-wide v4, p0, Lcom/popcap/notifications/WeekNtfMgr;->maxWeeklyIndex:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 68
    const-string v6, "maxWkIndex"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/popcap/util/NtfUtil;->SaveDatalocal(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iput-wide v2, p0, Lcom/popcap/notifications/WeekNtfMgr;->maxWeeklyIndex:J

    .line 71
    :cond_1
    invoke-virtual {v9, v1}, Lcom/popcap/util/PopCapNotificationForPlay;->setId(I)V

    .line 72
    iget-object v1, p0, Lcom/popcap/notifications/WeekNtfMgr;->_notificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public GetMaxWeeklyIndex()J
    .locals 2

    .line 88
    invoke-direct {p0}, Lcom/popcap/notifications/WeekNtfMgr;->OperByDate()V

    .line 89
    iget-wide v0, p0, Lcom/popcap/notifications/WeekNtfMgr;->maxWeeklyIndex:J

    return-wide v0
.end method

.method public OnUserStartGameEvent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public SetMaxWkIndex(Ljava/lang/String;)V
    .locals 5

    .line 132
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 134
    iput-wide v1, p0, Lcom/popcap/notifications/WeekNtfMgr;->maxWeeklyIndex:J

    return-void

    .line 139
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v3, p1

    iput-wide v3, p0, Lcom/popcap/notifications/WeekNtfMgr;->maxWeeklyIndex:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 142
    iput-wide v1, p0, Lcom/popcap/notifications/WeekNtfMgr;->maxWeeklyIndex:J

    .line 143
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public SetWeekDate(Ljava/lang/String;)V
    .locals 2

    .line 115
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/popcap/notifications/WeekNtfMgr;->mWeekDate:Ljava/util/Date;

    .line 117
    invoke-static {p1}, Lcom/popcap/util/NtfUtil;->GetDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 118
    const-string v0, "wkDate"

    invoke-static {v0, p1}, Lcom/popcap/util/NtfUtil;->SaveDatalocal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 121
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 122
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 121
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 124
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/popcap/notifications/WeekNtfMgr;->mWeekDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/popcap/notifications/WeekNtfMgr;->mWeekDate:Ljava/util/Date;

    :goto_0
    return-void
.end method

.method public Tick()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/popcap/notifications/WeekNtfMgr;->OperByDate()V

    return-void
.end method

.method public UpdateSkuUserOpt(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public UpdateUserOpt()V
    .locals 0

    return-void
.end method
