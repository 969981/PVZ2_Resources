.class public Lcom/talkweb/twutil/TgaPointUtil;
.super Ljava/lang/Object;
.source "TgaPointUtil.java"


# static fields
.field public static final BEHAVIOR_BIND_PHONE:I = 0x2

.field public static final BEHAVIOR_CHANGE_PHONE:I = 0x3

.field public static final BEHAVIOR_LOCKED:I = 0x7

.field public static final BEHAVIOR_SET_PASSWORD:I = 0x4

.field public static final BEHAVIOR_SWITCH:I = 0x1

.field public static final BEHAVIOR_VERIFY_RESULT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "TgaPointUtil"

.field private static create_time:Ljava/lang/String; = null

.field private static current_time:Ljava/lang/String; = null

.field private static formattedTime:Ljava/lang/String; = null

.field private static mChanelId:Ljava/lang/String; = null

.field private static randomString:Ljava/lang/String; = null

.field private static volatile sApiClient:Lcom/talkweb/network/ApiClient; = null

.field private static secretKey:Ljava/lang/String; = "b065a09a9ac7854578b96615a609eb5f"

.field private static tiemSpace:D

.field private static timestamp:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BuryingPoin(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/network/ApiCallback;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/talkweb/network/ApiCallback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "twOfflinePay.xml"

    const-string v1, "channelId"

    .line 113
    invoke-static {p0, v0, v1}, Lcom/talkweb/twutil/AssetsUtil;->getFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/talkweb/twutil/TgaPointUtil;->mChanelId:Ljava/lang/String;

    const-string v0, "userid"

    .line 115
    invoke-static {v0, p0}, Lcom/talkweb/twutil/SharedPreferencesUtil;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {}, Lcom/talkweb/twutil/TgaPointUtil;->RandomString()V

    .line 117
    invoke-static {}, Lcom/talkweb/twutil/TgaPointUtil;->timeStamp()V

    .line 118
    invoke-static {p0}, Lcom/talkweb/twutil/NetTools;->getNetworkState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {p0}, Lcom/talkweb/twutil/DeviceUtil;->getAppProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-static {p0}, Lcom/talkweb/twutil/DeviceUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/talkweb/twutil/TgaPointUtil;->formattedTime:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "10999"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "|Android|"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/talkweb/twutil/TgaPointUtil;->randomString:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/talkweb/twutil/TgaPointUtil;->randomString:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/talkweb/twutil/TgaPointUtil;->randomString:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/talkweb/twutil/TgaPointUtil;->mChanelId:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "||"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/talkweb/twutil/TgaPointUtil;->secretKey:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/talkweb/twutil/TgaPointUtil;->mChanelId:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/talkweb/twutil/TgaPointUtil;->randomString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v7, Lcom/talkweb/twutil/TgaPointUtil;->tiemSpace:D

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u57cb\u70b9\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TgaPointUtil"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string p1, "key"

    .line 127
    invoke-interface {v9, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "message"

    .line 128
    invoke-interface {v9, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 130
    invoke-static {}, Lcom/talkweb/twutil/TgaPointUtil;->defaultTgaCallback()Lcom/talkweb/network/ApiCallback;

    move-result-object p2

    :cond_0
    move-object v12, p2

    .line 132
    invoke-static {}, Lcom/talkweb/twutil/TgaPointUtil;->getApiClient()Lcom/talkweb/network/ApiClient;

    move-result-object v7

    const/4 v10, 0x0

    const-class v11, Ljava/lang/Object;

    const-string v8, "pvz2h5logs/tologs"

    invoke-virtual/range {v7 .. v12}, Lcom/talkweb/network/ApiClient;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Class;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    return-void
.end method

.method private static RandomString()V
    .locals 6

    .line 239
    sget-object v0, Lcom/talkweb/twutil/TgaPointUtil;->randomString:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0xa

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    const/16 v4, 0x3e

    .line 245
    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

    .line 246
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/talkweb/twutil/TgaPointUtil;->randomString:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public static UserInfoFormTga(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "twOfflinePay.xml"

    const-string v1, "channelId"

    .line 260
    invoke-static {p0, v0, v1}, Lcom/talkweb/twutil/AssetsUtil;->getFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userid"

    .line 261
    invoke-static {v2, p0}, Lcom/talkweb/twutil/SharedPreferencesUtil;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-static {}, Lcom/talkweb/twutil/TgaPointUtil;->timeStamp()V

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 264
    invoke-static {p0}, Lcom/talkweb/twutil/DeviceUtil;->getAppProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 265
    invoke-static {p0}, Lcom/talkweb/twutil/DeviceUtil;->getAppVersionInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "channelSdkVersion"

    .line 266
    invoke-static {p0, v0, v6}, Lcom/talkweb/twutil/AssetsUtil;->getFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/talkweb/twutil/TgaPointUtil;->formattedTime:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "10998"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "|Android|"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "||"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 268
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string p1, "key"

    .line 269
    invoke-interface {v2, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "message"

    .line 270
    invoke-interface {v2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-static {}, Lcom/talkweb/twutil/TgaPointUtil;->getApiClient()Lcom/talkweb/network/ApiClient;

    move-result-object v0

    const-class v4, Ljava/lang/Object;

    invoke-static {}, Lcom/talkweb/twutil/TgaPointUtil;->defaultTgaCallback()Lcom/talkweb/network/ApiCallback;

    move-result-object v5

    const-string v1, "pvz2h5logs/tologs"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/talkweb/network/ApiClient;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Class;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    return-void
.end method

.method private static defaultTgaCallback()Lcom/talkweb/network/ApiCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/talkweb/network/ApiCallback<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/talkweb/twutil/TgaPointUtil$1;

    invoke-direct {v0}, Lcom/talkweb/twutil/TgaPointUtil$1;-><init>()V

    return-object v0
.end method

.method private static getApiClient()Lcom/talkweb/network/ApiClient;
    .locals 4

    .line 62
    sget-object v0, Lcom/talkweb/twutil/TgaPointUtil;->sApiClient:Lcom/talkweb/network/ApiClient;

    if-nez v0, :cond_1

    .line 64
    const-class v1, Lcom/talkweb/twutil/TgaPointUtil;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/talkweb/twutil/TgaPointUtil;->sApiClient:Lcom/talkweb/network/ApiClient;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/talkweb/network/config/NetworkConfig$Builder;

    invoke-direct {v0}, Lcom/talkweb/network/config/NetworkConfig$Builder;-><init>()V

    const-string v2, "https://pvz2androidtga.talkyun.com.cn/"

    .line 68
    invoke-virtual {v0, v2}, Lcom/talkweb/network/config/NetworkConfig$Builder;->baseUrl(Ljava/lang/String;)Lcom/talkweb/network/config/NetworkConfig$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 69
    invoke-virtual {v0, v2}, Lcom/talkweb/network/config/NetworkConfig$Builder;->enableLogging(Z)Lcom/talkweb/network/config/NetworkConfig$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v2}, Lcom/talkweb/network/config/NetworkConfig$Builder;->retryCount(I)Lcom/talkweb/network/config/NetworkConfig$Builder;

    move-result-object v0

    const-string v2, ""

    .line 71
    invoke-virtual {v0, v2}, Lcom/talkweb/network/config/NetworkConfig$Builder;->secret(Ljava/lang/String;)Lcom/talkweb/network/config/NetworkConfig$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/talkweb/network/config/NetworkConfig$Builder;->build()Lcom/talkweb/network/config/NetworkConfig;

    move-result-object v0

    .line 73
    new-instance v2, Lcom/talkweb/network/ApiClient;

    invoke-static {v0}, Lcom/talkweb/network/factory/OkHttpClientFactory;->create(Lcom/talkweb/network/config/NetworkConfig;)Lcom/talkweb/network/factory/NativeHttpEngine;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/talkweb/network/ApiClient;-><init>(Lcom/talkweb/network/factory/NativeHttpEngine;Lcom/talkweb/network/config/NetworkConfig;)V

    .line 74
    sput-object v2, Lcom/talkweb/twutil/TgaPointUtil;->sApiClient:Lcom/talkweb/network/ApiClient;

    move-object v0, v2

    .line 76
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getDataTime()V
    .locals 4

    .line 232
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 233
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/talkweb/twutil/TgaPointUtil;->current_time:Ljava/lang/String;

    .line 234
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 235
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/talkweb/twutil/TgaPointUtil;->create_time:Ljava/lang/String;

    return-void
.end method

.method public static payFlow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 276
    invoke-static {}, Lcom/talkweb/twutil/TgaPointUtil;->getDataTime()V

    .line 277
    invoke-static {p0}, Lcom/talkweb/twutil/DeviceUtil;->getAppProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userid"

    .line 278
    invoke-static {v2, p0}, Lcom/talkweb/twutil/SharedPreferencesUtil;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "twOfflinePay.xml"

    const-string v4, "channelId"

    invoke-static {p0, v1, v4}, Lcom/talkweb/twutil/AssetsUtil;->getFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/talkweb/twutil/TgaPointUtil;->current_time:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "10996"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|Android|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/talkweb/twutil/TgaPointUtil;->current_time:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|||"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u57cb\u70b9\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TgaPointUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "key"

    .line 284
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "message"

    .line 285
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-static {}, Lcom/talkweb/twutil/TgaPointUtil;->getApiClient()Lcom/talkweb/network/ApiClient;

    move-result-object v0

    const-class v2, Ljava/lang/Object;

    invoke-static {}, Lcom/talkweb/twutil/TgaPointUtil;->defaultTgaCallback()Lcom/talkweb/network/ApiCallback;

    move-result-object v3

    const-string v4, "pvz2h5logs/tologs"

    const/4 v5, 0x0

    move-object p0, v0

    move-object p1, v4

    move-object p2, v1

    move-object p3, v5

    move-object p4, v2

    move-object p5, v3

    invoke-virtual/range {p0 .. p5}, Lcom/talkweb/network/ApiClient;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Class;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    return-void
.end method

.method public static reportBindPhone(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 193
    invoke-static {p0, v0, p1}, Lcom/talkweb/twutil/TgaPointUtil;->secondLockFormTga(Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method

.method public static reportChangePhone(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 198
    invoke-static {p0, v0, p1}, Lcom/talkweb/twutil/TgaPointUtil;->secondLockFormTga(Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method

.method public static reportLocked(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x7

    .line 213
    invoke-static {p0, v0, p1}, Lcom/talkweb/twutil/TgaPointUtil;->secondLockFormTga(Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method

.method public static reportSetPassword(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 203
    invoke-static {p0, v0, p1}, Lcom/talkweb/twutil/TgaPointUtil;->secondLockFormTga(Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method

.method public static reportSwitch(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 188
    invoke-static {p0, v0, p1}, Lcom/talkweb/twutil/TgaPointUtil;->secondLockFormTga(Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method

.method public static reportVerifyResult(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 208
    invoke-static {p0, v0, p1}, Lcom/talkweb/twutil/TgaPointUtil;->secondLockFormTga(Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method

.method public static secondLockFormTga(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 10

    .line 159
    invoke-static {}, Lcom/talkweb/twutil/TgaPointUtil;->RandomString()V

    .line 160
    invoke-static {}, Lcom/talkweb/twutil/TgaPointUtil;->timeStamp()V

    .line 163
    invoke-static {}, Lcom/talkweb/twutil/TgaPointUtil;->getDataTime()V

    .line 164
    invoke-static {p0}, Lcom/talkweb/twutil/DeviceUtil;->getAppProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {p0}, Lcom/talkweb/twutil/DeviceUtil;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {p0}, Lcom/talkweb/twutil/SharedPreferencesUtil;->getChannelUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "twOfflinePay.xml"

    const-string v4, "channelId"

    invoke-static {p0, v0, v4}, Lcom/talkweb/twutil/AssetsUtil;->getFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/talkweb/twutil/TgaPointUtil;->mChanelId:Ljava/lang/String;

    const-string v0, "userid"

    .line 168
    invoke-static {v0, p0}, Lcom/talkweb/twutil/SharedPreferencesUtil;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/talkweb/twutil/TgaPointUtil;->current_time:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "10177"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|Android|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/talkweb/twutil/TgaPointUtil;->randomString:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/talkweb/twutil/TgaPointUtil;->mChanelId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/talkweb/twutil/TgaPointUtil;->current_time:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "||"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 178
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string p1, "key"

    .line 179
    invoke-interface {v6, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "message"

    .line 180
    invoke-interface {v6, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {}, Lcom/talkweb/twutil/TgaPointUtil;->getApiClient()Lcom/talkweb/network/ApiClient;

    move-result-object v4

    const/4 v7, 0x0

    const-class v8, Ljava/lang/Object;

    invoke-static {}, Lcom/talkweb/twutil/TgaPointUtil;->defaultTgaCallback()Lcom/talkweb/network/ApiCallback;

    move-result-object v9

    const-string v5, "pvz2h5logs/tologs"

    invoke-virtual/range {v4 .. v9}, Lcom/talkweb/network/ApiClient;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Class;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    return-void
.end method

.method private static timeStamp()V
    .locals 6

    .line 217
    sget-object v0, Lcom/talkweb/twutil/TgaPointUtil;->timestamp:Ljava/lang/Long;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    const-wide/16 v2, 0x3e8

    if-eqz v0, :cond_1

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 223
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 224
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/talkweb/twutil/TgaPointUtil;->formattedTime:Ljava/lang/String;

    .line 225
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Lcom/talkweb/twutil/TgaPointUtil;->timestamp:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-double v1, v1

    sput-wide v1, Lcom/talkweb/twutil/TgaPointUtil;->tiemSpace:D

    .line 226
    sput-object v0, Lcom/talkweb/twutil/TgaPointUtil;->timestamp:Ljava/lang/Long;

    goto :goto_1

    .line 218
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/talkweb/twutil/TgaPointUtil;->timestamp:Ljava/lang/Long;

    .line 219
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 220
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/talkweb/twutil/TgaPointUtil;->formattedTime:Ljava/lang/String;

    :goto_1
    return-void
.end method
