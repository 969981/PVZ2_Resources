.class public Lcom/popcap/events/RewardEvent/SendUserRewardEvents;
.super Ljava/lang/Object;
.source "SendUserRewardEvents.java"

# interfaces
.implements Lcom/popcap/events/IEventTick;


# instance fields
.field private mGetServerSkedulTime:J

.field private mLastGetRewardTime:Ljava/util/Date;

.field private mTargetRewards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/popcap/events/RewardEvent/Reward;",
            ">;"
        }
    .end annotation
.end field

.field private nRwdSkd:I

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
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 315
    iput v0, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->nRwdSkd:I

    const/4 v0, 0x0

    .line 322
    iput-object v0, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->params:Ljava/util/Map;

    .line 323
    iput-object v0, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->mLastGetRewardTime:Ljava/util/Date;

    .line 324
    iput-object v0, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->mTargetRewards:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 325
    iput-wide v0, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->mGetServerSkedulTime:J

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->params:Ljava/util/Map;

    return-void
.end method

.method private CheckGetRewardStrage()V
    .locals 5

    .line 41
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 42
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->mLastGetRewardTime:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 44
    iget-wide v3, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->mGetServerSkedulTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 46
    invoke-direct {p0}, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->GetServerRewardStrageTime()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 49
    const-string v2, "rwdskd"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/popcap/util/NtfUtil;->SaveLocalInt(Ljava/lang/String;I)V

    .line 51
    :cond_0
    invoke-direct {p0, v1}, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->FillServerDate(Ljava/lang/String;)V

    .line 52
    const-string v2, "lstRwdTime"

    invoke-static {v0}, Lcom/popcap/util/NtfUtil;->GetDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/popcap/util/NtfUtil;->SaveDatalocal(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, "rwdData"

    invoke-static {v0, v1}, Lcom/popcap/util/NtfUtil;->SaveDatalocal(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->InitWithDisTime()V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mac="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/popcap/util/NtfUtil;->GetWifiMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  CheckGetRewardStrage  locaTime= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/popcap/util/NtfUtil;->GetLocalTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/popcap/util/NtfUtil;->SaveLogServer(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private CheckSendNtf()V
    .locals 15

    .line 123
    invoke-static {}, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->Instance()Lcom/popcap/events/RewardEvent/SkuRewardsMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->GetTargetRewards()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->mTargetRewards:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 137
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 138
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x5

    .line 139
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 140
    iget-object v4, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->mTargetRewards:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->ResetUserTargetReward()V

    return-void

    .line 140
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/popcap/events/RewardEvent/Reward;

    .line 142
    invoke-static {}, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->Instance()Lcom/popcap/events/RewardEvent/SkuRewardsMgr;

    move-result-object v6

    invoke-virtual {v5}, Lcom/popcap/events/RewardEvent/Reward;->getSkuId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->GetSkuReward(I)Lcom/popcap/events/RewardEvent/SkuReward;

    move-result-object v6

    if-nez v6, :cond_2

    .line 145
    const-string v5, " error skuRwad == null"

    invoke-static {v5}, Lcom/popcap/util/NtfUtil;->SaveLogServer(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {v6}, Lcom/popcap/events/RewardEvent/SkuReward;->getLastOptTime()Ljava/util/Date;

    move-result-object v7

    if-nez v7, :cond_3

    .line 151
    const-string v5, "====skrwd.getLastOptTime()   ===== null"

    invoke-static {v5}, Lcom/popcap/util/NtfUtil;->SaveLogServer(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/popcap/events/RewardEvent/SkuReward;->getLastOptTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 156
    invoke-virtual {v5}, Lcom/popcap/events/RewardEvent/Reward;->getLstSendDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 157
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 158
    invoke-virtual {v5}, Lcom/popcap/events/RewardEvent/Reward;->getDisTime()J

    move-result-wide v10

    cmp-long v7, v7, v10

    if-lez v7, :cond_0

    if-ne v9, v3, :cond_4

    .line 160
    invoke-virtual {v5}, Lcom/popcap/events/RewardEvent/Reward;->getnSend()I

    move-result v7

    if-nez v7, :cond_0

    .line 162
    :cond_4
    new-instance v7, Lcom/popcap/util/PopCapNotificationForPlay;

    .line 163
    invoke-virtual {v5}, Lcom/popcap/events/RewardEvent/Reward;->getTile()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/popcap/events/RewardEvent/Reward;->getContent()Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, -0x1

    const/4 v14, 0x3

    const/4 v9, 0x0

    move-object v8, v7

    .line 162
    invoke-direct/range {v8 .. v14}, Lcom/popcap/util/PopCapNotificationForPlay;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    .line 165
    invoke-virtual {v5}, Lcom/popcap/events/RewardEvent/Reward;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/popcap/util/PopCapNotificationAbstract;->setNtType(I)V

    .line 166
    invoke-virtual {v5}, Lcom/popcap/events/RewardEvent/Reward;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/popcap/util/PopCapNotificationAbstract;->setUrl(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v5}, Lcom/popcap/events/RewardEvent/Reward;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/popcap/util/PopCapNotificationAbstract;->setId(I)V

    .line 168
    invoke-virtual {v5}, Lcom/popcap/events/RewardEvent/Reward;->getSkuId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/popcap/util/PopCapNotificationAbstract;->SetSkuId(I)V

    .line 170
    invoke-static {}, Lcom/popcap/util/NtfUtil;->GetPCPService()Lcom/popcap/util/PopCapDaemonService;

    move-result-object v8

    invoke-static {v8}, Lcom/popcap/util/PopCapNotificationThread;->Instance(Lcom/popcap/util/PopCapDaemonService;)Lcom/popcap/util/PopCapNotificationThread;

    move-result-object v8

    .line 171
    invoke-virtual {v8, v7}, Lcom/popcap/util/PopCapNotificationThread;->PlayNotification(Lcom/popcap/util/PopCapNotificationAbstract;)V

    .line 172
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "lstSendRwdTime"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/popcap/events/RewardEvent/SkuReward;->GetSkuId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/popcap/events/RewardEvent/Reward;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/popcap/util/NtfUtil;->GetDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/popcap/util/NtfUtil;->SaveDatalocal(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/popcap/events/RewardEvent/SkuReward;->GetSkuId()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/popcap/events/RewardEvent/Reward;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/popcap/util/NtfUtil;->SaveLocalInt(Ljava/lang/String;I)V

    .line 174
    invoke-virtual {v5, v7}, Lcom/popcap/events/RewardEvent/Reward;->setnSend(I)V

    .line 175
    invoke-virtual {v5, v0}, Lcom/popcap/events/RewardEvent/Reward;->setLstSendDate(Ljava/util/Date;)V

    goto/16 :goto_0
.end method

.method private FillServerDate(Ljava/lang/String;)V
    .locals 3

    .line 100
    const-string v0, "rwdskd"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101
    const-string p1, "r"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    invoke-static {v0, v1}, Lcom/popcap/util/NtfUtil;->SaveLocalInt(Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 106
    invoke-static {v0, p1}, Lcom/popcap/util/NtfUtil;->SaveLocalInt(Ljava/lang/String;I)V

    .line 107
    const-string p1, "d"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 108
    const-string v2, "rnl"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 109
    invoke-static {}, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->Instance()Lcom/popcap/events/RewardEvent/SkuRewardsMgr;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->AddSkuReward(Lorg/json/JSONArray;)V

    .line 110
    invoke-static {}, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->Instance()Lcom/popcap/events/RewardEvent/SkuRewardsMgr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->SortTimeStrate()V

    .line 111
    invoke-virtual {p0}, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->FillLocaDateSkuRewardLastSendTime()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 114
    invoke-static {v0, v1}, Lcom/popcap/util/NtfUtil;->SaveLocalInt(Ljava/lang/String;I)V

    .line 115
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private GetServerRewardStrageTime()Ljava/lang/String;
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 87
    iget-object v0, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->params:Ljava/util/Map;

    const-string v1, "req"

    const-string v2, "I3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->params:Ljava/util/Map;

    const-string v2, "m"

    invoke-static {}, Lcom/popcap/util/NtfUtil;->GetUUId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->params:Ljava/util/Map;

    const-string v2, "v"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {}, Lcom/popcap/util/PCPLocalGameMgr;->Instance()Lcom/popcap/util/PCPLocalGameMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/util/PCPLocalGameMgr;->GetLocalIdArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->params:Ljava/util/Map;

    const-string v2, "s"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->params:Ljava/util/Map;

    invoke-static {v0}, Lcom/popcap/network/PCPNetWork;->GetNetData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private SetLastSendDate(Lcom/popcap/events/RewardEvent/Reward;)V
    .locals 4

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lstSendRwdTime"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/popcap/events/RewardEvent/Reward;->getSkuId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/popcap/events/RewardEvent/Reward;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/popcap/util/NtfUtil;->GetLocalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get local date = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/popcap/util/NtfUtil;->SaveLogServer(Ljava/lang/String;)V

    .line 255
    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 258
    invoke-virtual {p1, v0}, Lcom/popcap/events/RewardEvent/Reward;->setLstSendDate(Ljava/util/Date;)V

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/popcap/events/RewardEvent/Reward;->getSkuId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/popcap/events/RewardEvent/Reward;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/popcap/util/NtfUtil;->GetDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/popcap/util/NtfUtil;->SaveDatalocal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 262
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 264
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 265
    invoke-virtual {p1, v0}, Lcom/popcap/events/RewardEvent/Reward;->setLstSendDate(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 269
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 270
    invoke-virtual {p1, v0}, Lcom/popcap/events/RewardEvent/Reward;->setLstSendDate(Ljava/util/Date;)V

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/popcap/events/RewardEvent/Reward;->getSkuId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/popcap/events/RewardEvent/Reward;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/popcap/util/NtfUtil;->GetDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/popcap/util/NtfUtil;->SaveDatalocal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public FillLocaDateSkuRewardLastSendTime()V
    .locals 3

    .line 60
    invoke-static {}, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->Instance()Lcom/popcap/events/RewardEvent/SkuRewardsMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->GetSkuRewardList()Ljava/util/ArrayList;

    move-result-object v0

    .line 61
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

    check-cast v1, Lcom/popcap/events/RewardEvent/SkuReward;

    .line 63
    invoke-virtual {v1}, Lcom/popcap/events/RewardEvent/SkuReward;->GetRewards()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/popcap/events/RewardEvent/Reward;

    .line 65
    invoke-direct {p0, v2}, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->SetLastSendDate(Lcom/popcap/events/RewardEvent/Reward;)V

    .line 66
    invoke-virtual {p0, v2}, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->SetRewardSendRecord(Lcom/popcap/events/RewardEvent/Reward;)V

    goto :goto_1
.end method

.method public FillTimeStrageData(Ljava/lang/String;)V
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "######### get local RewardStrageTime = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/popcap/util/NtfUtil;->SaveLogServer(Ljava/lang/String;)V

    .line 184
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-direct {p0, p1}, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->FillServerDate(Ljava/lang/String;)V

    return-void
.end method

.method public InitWithDisTime()V
    .locals 6

    .line 191
    const-string v0, "lstRwdTime"

    invoke-static {v0}, Lcom/popcap/util/NtfUtil;->GetLocalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->SetSkusLastOptDate()V

    .line 193
    invoke-virtual {p0, v0}, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->SetLastGetRewardDate(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->Instance()Lcom/popcap/events/RewardEvent/SkuRewardsMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->GetTargetRewards()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->mTargetRewards:Ljava/util/ArrayList;

    .line 201
    const-string v0, "rwdskd"

    invoke-static {v0}, Lcom/popcap/util/NtfUtil;->GetLocalInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->setnRwdSkd(I)V

    .line 202
    invoke-virtual {p0}, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->getnRwdSkd()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 204
    invoke-static {}, Lcom/popcap/util/TimeStrategy;->Instance()Lcom/popcap/util/TimeStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/util/TimeStrategy;->GetRewardSkudualTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->mGetServerSkedulTime:J

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " g&&&&&  get reward skedual = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->mGetServerSkedulTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/popcap/util/NtfUtil;->SaveLogServer(Ljava/lang/String;)V

    return-void

    .line 208
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 209
    invoke-static {}, Lcom/popcap/util/TimeStrategy;->Instance()Lcom/popcap/util/TimeStrategy;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->mLastGetRewardTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/popcap/util/TimeStrategy;->GetNotficationSkedulTime(J)J

    move-result-wide v0

    const-wide/32 v2, 0x1b77400

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    move-wide v0, v2

    .line 214
    :cond_1
    iput-wide v0, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->mGetServerSkedulTime:J

    return-void
.end method

.method public OnUserStartGameEvent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public ResetUserTargetReward()V
    .locals 1

    .line 219
    invoke-static {}, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->Instance()Lcom/popcap/events/RewardEvent/SkuRewardsMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->GetTargetRewards()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->mTargetRewards:Ljava/util/ArrayList;

    return-void
.end method

.method public SetLastGetRewardDate(Ljava/lang/String;)V
    .locals 2

    .line 277
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->mLastGetRewardTime:Ljava/util/Date;

    const-wide/16 v0, 0x0

    .line 280
    invoke-virtual {p1, v0, v1}, Ljava/util/Date;->setTime(J)V

    return-void

    .line 283
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 285
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->mLastGetRewardTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 287
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 288
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->mLastGetRewardTime:Ljava/util/Date;

    :goto_0
    return-void
.end method

.method public SetRewardSendRecord(Lcom/popcap/events/RewardEvent/Reward;)V
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/popcap/events/RewardEvent/Reward;->getSkuId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/popcap/events/RewardEvent/Reward;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/popcap/util/NtfUtil;->GetLocalInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 76
    invoke-static {v0, v1}, Lcom/popcap/util/NtfUtil;->SaveLocalInt(Ljava/lang/String;I)V

    .line 77
    invoke-virtual {p1, v1}, Lcom/popcap/events/RewardEvent/Reward;->setnSend(I)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p1, v1}, Lcom/popcap/events/RewardEvent/Reward;->setnSend(I)V

    :goto_0
    return-void
.end method

.method public SetSkusLastOptDate()V
    .locals 5

    .line 228
    invoke-static {}, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->Instance()Lcom/popcap/events/RewardEvent/SkuRewardsMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->GetSkuRewardList()Ljava/util/ArrayList;

    move-result-object v0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "******  SetSkusLastOptDate size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/popcap/util/NtfUtil;->SaveLogServer(Ljava/lang/String;)V

    .line 230
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

    check-cast v1, Lcom/popcap/events/RewardEvent/SkuReward;

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ulstOpt"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/popcap/events/RewardEvent/SkuReward;->GetSkuId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/popcap/util/NtfUtil;->GetLocalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 236
    invoke-virtual {v1, v2}, Lcom/popcap/events/RewardEvent/SkuReward;->setLastOptTime(Ljava/util/Date;)V

    goto :goto_0

    .line 239
    :cond_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 241
    :try_start_0
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 242
    invoke-virtual {v1, v2}, Lcom/popcap/events/RewardEvent/SkuReward;->setLastOptTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 244
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 246
    invoke-virtual {v1, v2}, Lcom/popcap/events/RewardEvent/SkuReward;->setLastOptTime(Ljava/util/Date;)V

    goto :goto_0
.end method

.method public Tick()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->CheckGetRewardStrage()V

    .line 37
    invoke-direct {p0}, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->CheckSendNtf()V

    return-void
.end method

.method public UpdateSkuUserOpt(Ljava/lang/String;)V
    .locals 2

    .line 298
    invoke-static {}, Lcom/popcap/util/PCPLocalGameMgr;->Instance()Lcom/popcap/util/PCPLocalGameMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/popcap/util/PCPLocalGameMgr;->GetGameId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pakcName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "not found"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/popcap/util/NtfUtil;->SaveLogServer(Ljava/lang/String;)V

    return-void

    .line 304
    :cond_0
    invoke-static {}, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->Instance()Lcom/popcap/events/RewardEvent/SkuRewardsMgr;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->GetSkuReward(I)Lcom/popcap/events/RewardEvent/SkuReward;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 307
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1}, Lcom/popcap/events/RewardEvent/SkuReward;->setLastOptTime(Ljava/util/Date;)V

    .line 308
    invoke-static {}, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->Instance()Lcom/popcap/events/RewardEvent/SkuRewardsMgr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/popcap/events/RewardEvent/SkuRewardsMgr;->GetTargetRewards()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->mTargetRewards:Ljava/util/ArrayList;

    goto :goto_0

    .line 312
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " pckName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " not found"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/popcap/util/NtfUtil;->SaveLogServer(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public UpdateUserOpt()V
    .locals 0

    return-void
.end method

.method public getnRwdSkd()I
    .locals 1

    .line 317
    iget v0, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->nRwdSkd:I

    return v0
.end method

.method public setnRwdSkd(I)V
    .locals 0

    .line 320
    iput p1, p0, Lcom/popcap/events/RewardEvent/SendUserRewardEvents;->nRwdSkd:I

    return-void
.end method
