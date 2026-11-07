.class public Lcom/popcap/util/PopCapNotificationConfigManger;
.super Ljava/lang/Object;
.source "PopCapNotificationConfigManger.java"


# static fields
.field public static final Debug:Ljava/lang/String; = "debug"

.field public static final Debug_DisTime:I = 0xea60

.field public static final Debug_URL:Ljava/lang/String; = "http://testpnserver.popcap.com.cn/index.php?"

.field public static final Debug_Version:I = 0x2

.field public static final Get_RewardStrage_DisTime:J = 0x240c8400L

.field public static final LastGetRewardTime:Ljava/lang/String; = "lstRwdTime"

.field public static final LastSendEveryDayRewarTime:Ljava/lang/String; = "lstEveryDayReward_"

.field public static final LastSendRewardTime:Ljava/lang/String; = "lstSendRwdTime"

.field public static final LastStartTime:Ljava/lang/String; = "lstStartTime_"

.field public static final MaxNotifIndex:Ljava/lang/String; = "maxNtfIndex"

.field public static final MaxWeekIndex:Ljava/lang/String; = "maxWkIndex"

.field public static final NotificationVerion:Ljava/lang/String; = "2"

.field public static final OneDayTime:J = 0x5265c00L

.field public static final PacketName:Ljava/lang/String; = "pckName"

.field public static final Release:Ljava/lang/String; = "release"

.field public static final Release_GetNtfList_DisTime:J = 0x1b77400L

.field public static final Release_GetSkuList_DisTime:J = 0x5265c00L

.field public static final Release_URL:Ljava/lang/String; = "http://pnserver.intelligent.popcap.com.cn/index.php?"

.field public static final Release_Version:I = 0x1

.field public static final RewardData:Ljava/lang/String; = "rwdData"

.field public static final RwdSkdStrage:Ljava/lang/String; = "rwdskd"

.field public static final UserLstOpt:Ljava/lang/String; = "ulstOpt"

.field public static final WeeklyDate:Ljava/lang/String; = "wkDate"

.field private static buffer:[B = null

.field public static final configFileName:Ljava/lang/String; = "PushService"

.field private static final configPathInJar:Ljava/lang/String; = "/assets/notification_config.xml"

.field public static final lastGetNotificatonTime:Ljava/lang/String; = "lstNtfcTime"

.field public static final lastGetSkuListTime:Ljava/lang/String; = "lstSkuTime"

.field private static notificationBuffer:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/popcap/util/PopCapNotificationAbstract;",
            ">;"
        }
    .end annotation
.end field

.field private static serverUrl:Ljava/lang/String; = null

.field public static final skedulTime:Ljava/lang/String; = "skedul"

.field public static final skuList:Ljava/lang/String; = "skus"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x400

    .line 61
    new-array v0, v0, [B

    sput-object v0, Lcom/popcap/util/PopCapNotificationConfigManger;->buffer:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fillNotificationList(Lcom/popcap/util/PopCapDaemonService;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/popcap/util/PopCapDaemonService;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/popcap/util/PopCapNotificationAbstract;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 70
    sput-object v0, Lcom/popcap/util/PopCapNotificationConfigManger;->notificationBuffer:Ljava/util/ArrayList;

    .line 74
    invoke-static {p0}, Lcom/popcap/util/PopCapNotificationConfigManger;->readConfigFromPrivate(Lcom/popcap/util/PopCapDaemonService;)Ljava/lang/String;

    move-result-object p0

    .line 75
    const-string v1, "DEBUG"

    if-eqz p0, :cond_1

    .line 76
    new-instance v2, Lcom/popcap/util/PopCapConfigHandler;

    invoke-direct {v2}, Lcom/popcap/util/PopCapConfigHandler;-><init>()V

    .line 77
    const-string v3, "parseConfigFromPrivate"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {p0, v2}, Lcom/popcap/util/PopCapNotificationConfigManger;->parseXml(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 79
    invoke-virtual {v2}, Lcom/popcap/util/PopCapConfigHandler;->getNotificationList()Ljava/util/ArrayList;

    move-result-object p0

    sput-object p0, Lcom/popcap/util/PopCapNotificationConfigManger;->notificationBuffer:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v2}, Lcom/popcap/util/PopCapConfigHandler;->getServerUrl()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/popcap/util/PopCapNotificationConfigManger;->serverUrl:Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_0
    sput-object v0, Lcom/popcap/util/PopCapNotificationConfigManger;->notificationBuffer:Ljava/util/ArrayList;

    goto :goto_0

    .line 85
    :cond_1
    sput-object v0, Lcom/popcap/util/PopCapNotificationConfigManger;->notificationBuffer:Ljava/util/ArrayList;

    .line 88
    :goto_0
    sget-object p0, Lcom/popcap/util/PopCapNotificationConfigManger;->notificationBuffer:Ljava/util/ArrayList;

    const-string v2, "error in parseConfigFromPrivate"

    if-nez p0, :cond_2

    .line 89
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_2
    sget-object p0, Lcom/popcap/util/PopCapNotificationConfigManger;->notificationBuffer:Ljava/util/ArrayList;

    if-nez p0, :cond_4

    .line 93
    const-string p0, "readConfigFromJar"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {}, Lcom/popcap/util/PopCapNotificationConfigManger;->readConfigFromJar()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 96
    const-string v3, "parseConfigFromJar"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v4, Lcom/popcap/util/PopCapConfigHandler;

    invoke-direct {v4}, Lcom/popcap/util/PopCapConfigHandler;-><init>()V

    .line 98
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {p0, v4}, Lcom/popcap/util/PopCapNotificationConfigManger;->parseXml(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 100
    invoke-virtual {v4}, Lcom/popcap/util/PopCapConfigHandler;->getNotificationList()Ljava/util/ArrayList;

    move-result-object p0

    sput-object p0, Lcom/popcap/util/PopCapNotificationConfigManger;->notificationBuffer:Ljava/util/ArrayList;

    .line 101
    invoke-virtual {v4}, Lcom/popcap/util/PopCapConfigHandler;->getServerUrl()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/popcap/util/PopCapNotificationConfigManger;->serverUrl:Ljava/lang/String;

    goto :goto_1

    .line 103
    :cond_3
    sput-object v0, Lcom/popcap/util/PopCapNotificationConfigManger;->notificationBuffer:Ljava/util/ArrayList;

    .line 108
    :cond_4
    :goto_1
    sget-object p0, Lcom/popcap/util/PopCapNotificationConfigManger;->notificationBuffer:Ljava/util/ArrayList;

    if-nez p0, :cond_5

    .line 109
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_5
    sget-object p0, Lcom/popcap/util/PopCapNotificationConfigManger;->notificationBuffer:Ljava/util/ArrayList;

    return-object p0
.end method

.method private static findNotificationById(Ljava/util/ArrayList;I)Lcom/popcap/util/PopCapNotificationAbstract;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/popcap/util/PopCapNotificationAbstract;",
            ">;I)",
            "Lcom/popcap/util/PopCapNotificationAbstract;"
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    .line 237
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "No such notification id for id : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DEBUG"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 231
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/popcap/util/PopCapNotificationAbstract;

    .line 232
    iget v3, v2, Lcom/popcap/util/PopCapNotificationAbstract;->id:I

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getServerUrl()Ljava/lang/String;
    .locals 1

    .line 207
    sget-object v0, Lcom/popcap/util/PopCapNotificationConfigManger;->serverUrl:Ljava/lang/String;

    return-object v0
.end method

.method private static parseXml(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)Z
    .locals 2

    .line 116
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    .line 117
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 119
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 124
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 126
    invoke-interface {v1, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 127
    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error in parserXml : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DEBUG"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static printNotificationList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/popcap/util/PopCapNotificationAbstract;",
            ">;)V"
        }
    .end annotation

    .line 258
    const-string v0, "DEBUG"

    if-nez p0, :cond_0

    .line 259
    const-string p0, "null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 262
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 263
    const-string v1, "listsize = 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/popcap/util/PopCapNotificationAbstract;

    .line 266
    invoke-virtual {v1}, Lcom/popcap/util/PopCapNotificationAbstract;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static readConfigFromJar()Ljava/lang/String;
    .locals 7

    .line 140
    sget-object v0, Lcom/popcap/util/PopCapNotificationConfigManger;->buffer:[B

    if-nez v0, :cond_0

    const/16 v0, 0x400

    .line 141
    new-array v0, v0, [B

    sput-object v0, Lcom/popcap/util/PopCapNotificationConfigManger;->buffer:[B

    .line 146
    :cond_0
    :try_start_0
    const-class v0, Lcom/popcap/util/PopCapNotificationConfigManger;

    .line 147
    const-string v1, "/assets/notification_config.xml"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 148
    sget-object v1, Lcom/popcap/util/PopCapNotificationConfigManger;->buffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    const-string v2, ""

    :goto_0
    if-gtz v1, :cond_1

    .line 153
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v2

    .line 150
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    sget-object v4, Lcom/popcap/util/PopCapNotificationConfigManger;->buffer:[B

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    invoke-direct {v2, v4, v6, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    sget-object v1, Lcom/popcap/util/PopCapNotificationConfigManger;->buffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 155
    const-string v1, "DEBUG"

    const-string v2, "error in read jar file: /assets/notification_config.xml"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static readConfigFromPrivate(Lcom/popcap/util/PopCapDaemonService;)Ljava/lang/String;
    .locals 6

    .line 164
    sget-object v0, Lcom/popcap/util/PopCapNotificationConfigManger;->buffer:[B

    if-nez v0, :cond_0

    const/16 v0, 0x400

    .line 165
    new-array v0, v0, [B

    sput-object v0, Lcom/popcap/util/PopCapNotificationConfigManger;->buffer:[B

    .line 170
    :cond_0
    :try_start_0
    const-string v0, "PushService"

    invoke-virtual {p0, v0}, Lcom/popcap/util/PopCapDaemonService;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    .line 171
    sget-object v0, Lcom/popcap/util/PopCapNotificationConfigManger;->buffer:[B

    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    const-string v1, ""

    :goto_0
    if-gtz v0, :cond_1

    .line 176
    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    return-object v1

    .line 173
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    sget-object v3, Lcom/popcap/util/PopCapNotificationConfigManger;->buffer:[B

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    sget-object v0, Lcom/popcap/util/PopCapNotificationConfigManger;->buffer:[B

    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 178
    const-string v0, "DEBUG"

    const-string v1, "error in read private file: PushService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static updateNotification(Lcom/popcap/util/PopCapNotificationAbstract;Lcom/popcap/util/PopCapNotificationAbstract;)V
    .locals 0

    .line 243
    iget p0, p0, Lcom/popcap/util/PopCapNotificationAbstract;->type:I

    return-void
.end method

.method public static updateNotificationList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/popcap/util/PopCapNotificationAbstract;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/popcap/util/PopCapNotificationAbstract;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 217
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/popcap/util/PopCapNotificationAbstract;

    .line 218
    iget v1, v0, Lcom/popcap/util/PopCapNotificationAbstract;->id:I

    invoke-static {p0, v1}, Lcom/popcap/util/PopCapNotificationConfigManger;->findNotificationById(Ljava/util/ArrayList;I)Lcom/popcap/util/PopCapNotificationAbstract;

    move-result-object v1

    .line 219
    invoke-static {v1, v0}, Lcom/popcap/util/PopCapNotificationConfigManger;->updateNotification(Lcom/popcap/util/PopCapNotificationAbstract;Lcom/popcap/util/PopCapNotificationAbstract;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static updateStatusToNotificationList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/popcap/util/PopCapNotificationAbstract;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public static writeConfigToPrivateFile(Ljava/lang/String;Lcom/popcap/util/PopCapDaemonService;)V
    .locals 2

    .line 192
    :try_start_0
    const-string v0, "PushService"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/popcap/util/PopCapDaemonService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    .line 194
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 195
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 197
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
