.class public Lcom/talkweb/twgame/Param/UploadLogs;
.super Ljava/lang/Object;
.source "UploadLogs.java"


# static fields
.field public static final EVENTTYPE_CLICK:Ljava/lang/String; = "2"

.field public static final EVENTTYPE_CLOSE:Ljava/lang/String; = "5"

.field public static final EVENTTYPE_REQUEST:Ljava/lang/String; = "3"

.field public static final EVENTTYPE_SHOW:Ljava/lang/String; = "1"

.field public static final EVENTTYPE_VEDIO_WATCHED:Ljava/lang/String; = "4"

.field public static TW_AD_LOGS:Ljava/lang/String; = "Tw_AdAggreg_Logs"

.field public static TW_LOGS_JSON:Ljava/lang/String; = "Tw_AdAggregLogs_Json"

.field public static mAdLogsVo:Lcom/talkweb/twgame/bean/AggregationLogsVo;

.field public static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdLogsVo(Landroid/content/Context;)Lcom/talkweb/twgame/bean/AggregationLogsVo;
    .locals 2

    .line 151
    invoke-static {}, Lcom/talkweb/twgame/Param/UploadLogs;->getInstance()Lcom/talkweb/twgame/bean/AggregationLogsVo;

    move-result-object v0

    sput-object v0, Lcom/talkweb/twgame/Param/UploadLogs;->mAdLogsVo:Lcom/talkweb/twgame/bean/AggregationLogsVo;

    .line 152
    sget-object v0, Lcom/talkweb/twgame/Param/UploadLogs;->mAdLogsVo:Lcom/talkweb/twgame/bean/AggregationLogsVo;

    sget-object v1, Lcom/talkweb/twgame/Param/GameConstant;->SdkVerno:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->setSdkverno(Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/talkweb/twgame/Param/UploadLogs;->mAdLogsVo:Lcom/talkweb/twgame/bean/AggregationLogsVo;

    sget-object v1, Lcom/talkweb/twgame/Param/GameConstant;->Type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->setType(Ljava/lang/String;)V

    .line 154
    sget-object v0, Lcom/talkweb/twgame/Param/UploadLogs;->mAdLogsVo:Lcom/talkweb/twgame/bean/AggregationLogsVo;

    sget-object v1, Lcom/talkweb/twgame/Param/GameConstant;->TId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->setTid(Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/talkweb/twgame/Param/UploadLogs;->mAdLogsVo:Lcom/talkweb/twgame/bean/AggregationLogsVo;

    sget-object v1, Lcom/talkweb/twgame/Param/GameConstant;->AppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->setAppid(Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/talkweb/twgame/Param/UploadLogs;->mAdLogsVo:Lcom/talkweb/twgame/bean/AggregationLogsVo;

    sget-object v1, Lcom/talkweb/twgame/Param/GameConstant;->CId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->setCid(Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/talkweb/twgame/Param/UploadLogs;->mAdLogsVo:Lcom/talkweb/twgame/bean/AggregationLogsVo;

    sget-object v1, Lcom/talkweb/twgame/Param/GameConstant;->AreaCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->setAreacode(Ljava/lang/String;)V

    .line 158
    sget-object v0, Lcom/talkweb/twgame/Param/UploadLogs;->mAdLogsVo:Lcom/talkweb/twgame/bean/AggregationLogsVo;

    sget-object v1, Lcom/talkweb/twgame/Param/GameConstant;->Mobileoper:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->setMobileoper(Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/talkweb/twgame/Param/UploadLogs;->mAdLogsVo:Lcom/talkweb/twgame/bean/AggregationLogsVo;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/talkweb/twgame/tools/Tools;->getAndroidId(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->setIccid(Ljava/lang/String;)V

    .line 161
    sget-object v0, Lcom/talkweb/twgame/Param/UploadLogs;->mAdLogsVo:Lcom/talkweb/twgame/bean/AggregationLogsVo;

    invoke-static {p0}, Lcom/talkweb/twgame/tools/Tools;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->setImei(Ljava/lang/String;)V

    .line 162
    sget-object p0, Lcom/talkweb/twgame/Param/UploadLogs;->mAdLogsVo:Lcom/talkweb/twgame/bean/AggregationLogsVo;

    return-object p0
.end method

.method public static getInstance()Lcom/talkweb/twgame/bean/AggregationLogsVo;
    .locals 1

    .line 61
    sget-object v0, Lcom/talkweb/twgame/Param/UploadLogs;->mAdLogsVo:Lcom/talkweb/twgame/bean/AggregationLogsVo;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/talkweb/twgame/bean/AggregationLogsVo;

    invoke-direct {v0}, Lcom/talkweb/twgame/bean/AggregationLogsVo;-><init>()V

    sput-object v0, Lcom/talkweb/twgame/Param/UploadLogs;->mAdLogsVo:Lcom/talkweb/twgame/bean/AggregationLogsVo;

    .line 64
    :cond_0
    sget-object v0, Lcom/talkweb/twgame/Param/UploadLogs;->mAdLogsVo:Lcom/talkweb/twgame/bean/AggregationLogsVo;

    return-object v0
.end method

.method public static removeLogs(Landroid/content/Context;)V
    .locals 2

    .line 187
    sget-object v0, Lcom/talkweb/twgame/Param/UploadLogs;->TW_AD_LOGS:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 190
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 192
    sget-object v0, Lcom/talkweb/twgame/Param/UploadLogs;->TW_LOGS_JSON:Ljava/lang/String;

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 194
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string p0, "\u6e05\u7a7a\u672c\u5730\u4fdd\u5b58\u7684\u5931\u8d25\u65e5\u5fd7!"

    .line 195
    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static saveLogs(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 171
    sget-object v0, Lcom/talkweb/twgame/Param/UploadLogs;->TW_AD_LOGS:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 174
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 176
    sget-object v0, Lcom/talkweb/twgame/Param/UploadLogs;->TW_LOGS_JSON:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string p0, "\u4fdd\u5b58\u5931\u8d25\u65e5\u5fd7\u5728\u672c\u5730!"

    .line 179
    invoke-static {p0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static uploadLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 74
    sput-object p0, Lcom/talkweb/twgame/Param/UploadLogs;->mContext:Landroid/content/Context;

    .line 75
    sget-object v0, Lcom/talkweb/twgame/Param/UploadLogs;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/talkweb/twgame/Param/UploadLogs;->getAdLogsVo(Landroid/content/Context;)Lcom/talkweb/twgame/bean/AggregationLogsVo;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/talkweb/twgame/Param/GameConstant;->TId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->setRowno(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, p1}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->setDspid(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, p3}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->setAdpid(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, p2}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->setEventtype(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/talkweb/twgame/tools/Tools;->getTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->setLogtime(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, p4}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->setDsp_pid(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, p5}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->setBid(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, p6}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->setUserId(Ljava/lang/String;)V

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "https://gapi.hrgame.com.cn/api/apiv1/adShowLogReport"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "?userId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&bid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->getBid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&type="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&tid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->getTid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&appid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->getAppid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&cid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->getCid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&areacode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->getAreacode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&mobileoper="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->getMobileoper()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&imei="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->getImei()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&iccid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->getIccid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&rowno="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->getRowno()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&dspid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->getDspid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&adpid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->getAdpid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&eventtype="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->getEventtype()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&logtime="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->getLogtime()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&dsp_pid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/talkweb/twgame/bean/AggregationLogsVo;->getDsp_pid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&game_version="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/talkweb/twgame/tools/Tools;->getVerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u65e5\u5fd7\u4e0a\u4f20url:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 97
    new-instance p1, Lcom/talkweb/twgame/Param/UploadLogs$1;

    invoke-direct {p1}, Lcom/talkweb/twgame/Param/UploadLogs$1;-><init>()V

    const/16 p2, 0xa

    invoke-static {p2, p0, p1}, Lcom/talkweb/twgame/net/HttpAsyncTaskUtil;->doRequest(ILjava/lang/String;Lcom/talkweb/twgame/net/HttpTaskCallback;)V

    return-void
.end method
