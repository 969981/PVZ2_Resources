.class public final Lcom/bytedance/common/utility/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/common/utility/NetworkUtils$NetworkType;,
        Lcom/bytedance/common/utility/NetworkUtils$CompressType;,
        Lcom/bytedance/common/utility/NetworkUtils$NetworkTypeInterceptor;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final DEBUG_MOBILE:Z = false

.field private static final DEFAULT_CONTENT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field private static final MAX_24G:I = 0x9c4

.field private static final MAX_5G:I = 0x170c

.field private static final MIN_24G:I = 0x960

.field private static final MIN_5G:I = 0x1324

.field private static final NAME_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final NR_STATE:I = 0x3

.field private static final PARAMETER_SEPARATOR:Ljava/lang/String; = "&"

.field private static lastAdjustTime:J

.field private static volatile sInterval:J

.field private static sIsReceiverRegisted:Z

.field private static sNetworkType:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

.field private static sNetworkTypeInterceptor:Lcom/bytedance/common/utility/NetworkUtils$NetworkTypeInterceptor;

.field private static volatile useCheckNetworkFast:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 123
    sget-object v0, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->UNKNOWN:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    sput-object v0, Lcom/bytedance/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    const/4 v0, 0x0

    .line 124
    sput-boolean v0, Lcom/bytedance/common/utility/NetworkUtils;->sIsReceiverRegisted:Z

    const-wide/16 v0, 0x7d0

    .line 276
    sput-wide v0, Lcom/bytedance/common/utility/NetworkUtils;->sInterval:J

    const-wide/16 v0, 0x0

    .line 277
    sput-wide v0, Lcom/bytedance/common/utility/NetworkUtils;->lastAdjustTime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustNetwork(Landroid/content/Context;)V
    .locals 5

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/bytedance/common/utility/NetworkUtils;->lastAdjustTime:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/bytedance/common/utility/NetworkUtils;->sInterval:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 287
    invoke-static {p0}, Lcom/bytedance/common/utility/NetworkUtils;->getNetworkTypeIntern(Landroid/content/Context;)Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    move-result-object p0

    sput-object p0, Lcom/bytedance/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/common/utility/NetworkUtils;->lastAdjustTime:J

    :cond_0
    return-void
.end method

.method private static checkNetworkTypeInit(Landroid/content/Context;)V
    .locals 2

    .line 262
    sget-object v0, Lcom/bytedance/common/utility/NetworkUtils;->sNetworkTypeInterceptor:Lcom/bytedance/common/utility/NetworkUtils$NetworkTypeInterceptor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/common/utility/NetworkUtils$NetworkTypeInterceptor;->getNetworkType()Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    move-result-object v0

    sget-object v1, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->NONE:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    if-eq v0, v1, :cond_0

    .line 263
    sget-object p0, Lcom/bytedance/common/utility/NetworkUtils;->sNetworkTypeInterceptor:Lcom/bytedance/common/utility/NetworkUtils$NetworkTypeInterceptor;

    invoke-interface {p0}, Lcom/bytedance/common/utility/NetworkUtils$NetworkTypeInterceptor;->getNetworkType()Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    move-result-object p0

    sput-object p0, Lcom/bytedance/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    return-void

    .line 266
    :cond_0
    invoke-static {p0}, Lcom/bytedance/common/utility/NetworkUtils;->registerReceiver(Landroid/content/Context;)V

    .line 267
    sget-object v0, Lcom/bytedance/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    sget-object v1, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->UNKNOWN:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    if-ne v0, v1, :cond_1

    .line 268
    invoke-static {p0}, Lcom/bytedance/common/utility/NetworkUtils;->getNetworkTypeIntern(Landroid/content/Context;)Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    move-result-object p0

    sput-object p0, Lcom/bytedance/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    :cond_1
    return-void
.end method

.method private static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p1, "ISO-8859-1"

    .line 574
    :goto_0
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 577
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 559
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/bytedance/common/utility/NetworkUtils;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 560
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 561
    invoke-static {v1, p1}, Lcom/bytedance/common/utility/NetworkUtils;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, ""

    .line 562
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "&"

    .line 563
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 566
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 569
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 183
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 184
    invoke-static {p0}, Lcom/bytedance/common/utility/NetworkUtils;->getMacAddressNew(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 189
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 191
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 193
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMacAddressNew(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    const/4 p0, 0x0

    .line 204
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 205
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 206
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 208
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 209
    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_0

    .line 213
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x1

    if-ge v6, v4, :cond_2

    aget-byte v8, v2, v6

    const-string v9, "%02X:"

    new-array v7, v7, [Ljava/lang/Object;

    .line 215
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 217
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 218
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 220
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "wlan0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v2

    :catch_0
    :cond_4
    return-object p0
.end method

.method public static getNetworkAccessType(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 512
    invoke-static {p0}, Lcom/bytedance/common/utility/NetworkUtils;->getNetworkType(Landroid/content/Context;)Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/common/utility/NetworkUtils;->getNetworkAccessType(Lcom/bytedance/common/utility/NetworkUtils$NetworkType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNetworkAccessType(Lcom/bytedance/common/utility/NetworkUtils$NetworkType;)Ljava/lang/String;
    .locals 1

    .line 518
    sget-object v0, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->WIFI:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    if-ne p0, v0, :cond_0

    const-string p0, "wifi"

    goto :goto_0

    .line 520
    :cond_0
    sget-object v0, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->WIFI_24GHZ:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    if-ne p0, v0, :cond_1

    const-string p0, "wifi24ghz"

    goto :goto_0

    .line 523
    :cond_1
    sget-object v0, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->WIFI_5GHZ:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    if-ne p0, v0, :cond_2

    const-string p0, "wifi5ghz"

    goto :goto_0

    .line 526
    :cond_2
    sget-object v0, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->MOBILE_2G:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    if-ne p0, v0, :cond_3

    const-string p0, "2g"

    goto :goto_0

    .line 528
    :cond_3
    sget-object v0, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->MOBILE_3G:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    if-ne p0, v0, :cond_4

    const-string p0, "3g"

    goto :goto_0

    .line 530
    :cond_4
    sget-object v0, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->MOBILE_3G_H:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    if-ne p0, v0, :cond_5

    const-string p0, "3gh"

    goto :goto_0

    .line 533
    :cond_5
    sget-object v0, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->MOBILE_3G_HP:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    if-ne p0, v0, :cond_6

    const-string p0, "3ghp"

    goto :goto_0

    .line 536
    :cond_6
    sget-object v0, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->MOBILE_4G:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    if-ne p0, v0, :cond_7

    const-string p0, "4g"

    goto :goto_0

    .line 538
    :cond_7
    sget-object v0, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->MOBILE_5G:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    if-ne p0, v0, :cond_8

    const-string p0, "5g"

    goto :goto_0

    .line 540
    :cond_8
    sget-object v0, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->MOBILE:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    if-ne p0, v0, :cond_9

    const-string p0, "mobile"

    goto :goto_0

    :cond_9
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getNetworkAccessTypeFast(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 505
    invoke-static {p0}, Lcom/bytedance/common/utility/NetworkUtils;->getNetworkTypeFast(Landroid/content/Context;)Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/common/utility/NetworkUtils;->getNetworkAccessType(Lcom/bytedance/common/utility/NetworkUtils$NetworkType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNetworkType(Landroid/content/Context;)Lcom/bytedance/common/utility/NetworkUtils$NetworkType;
    .locals 1

    .line 380
    sget-boolean v0, Lcom/bytedance/common/utility/NetworkUtils;->useCheckNetworkFast:Z

    if-eqz v0, :cond_0

    .line 381
    invoke-static {p0}, Lcom/bytedance/common/utility/NetworkUtils;->getNetworkTypeFast(Landroid/content/Context;)Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    move-result-object p0

    return-object p0

    .line 383
    :cond_0
    invoke-static {p0}, Lcom/bytedance/common/utility/NetworkUtils;->getNetworkTypeIntern(Landroid/content/Context;)Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    move-result-object p0

    return-object p0
.end method

.method public static getNetworkTypeDetail(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "unknown"

    :try_start_0
    const-string v1, "connectivity"

    .line 410
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 412
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 413
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 416
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_2

    .line 418
    invoke-static {p0}, Lcom/bytedance/common/utility/NetworkUtils;->isWifi5GHz(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "wifi5g"

    goto :goto_0

    :cond_1
    const-string p0, "wifi"

    :goto_0
    return-object p0

    :cond_2
    if-nez v1, :cond_3

    const-string v1, "phone"

    .line 420
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 422
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 450
    :pswitch_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    goto :goto_1

    :pswitch_1
    const-string p0, "nr"

    return-object p0

    :pswitch_2
    const-string p0, "hspap"

    return-object p0

    :pswitch_3
    const-string p0, "ehrpd"

    return-object p0

    :pswitch_4
    const-string p0, "lte"

    return-object p0

    :pswitch_5
    const-string p0, "evdo_b"

    return-object p0

    :pswitch_6
    const-string p0, "hspa"

    return-object p0

    :pswitch_7
    const-string p0, "hsupa"

    return-object p0

    :pswitch_8
    const-string p0, "hsdpa"

    return-object p0

    :pswitch_9
    const-string p0, "evdo_a"

    return-object p0

    :pswitch_a
    const-string p0, "evdo_0"

    return-object p0

    :pswitch_b
    const-string p0, "cdma"

    return-object p0

    :pswitch_c
    const-string p0, "umts"

    return-object p0

    :pswitch_d
    const-string p0, "edge"

    return-object p0

    :goto_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    const-string p0, "none"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getNetworkTypeFast(Landroid/content/Context;)Lcom/bytedance/common/utility/NetworkUtils$NetworkType;
    .locals 0

    .line 236
    invoke-static {p0}, Lcom/bytedance/common/utility/NetworkUtils;->checkNetworkTypeInit(Landroid/content/Context;)V

    .line 238
    invoke-static {p0}, Lcom/bytedance/common/utility/NetworkUtils;->adjustNetwork(Landroid/content/Context;)V

    .line 239
    sget-object p0, Lcom/bytedance/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    return-object p0
.end method

.method private static getNetworkTypeIntern(Landroid/content/Context;)Lcom/bytedance/common/utility/NetworkUtils$NetworkType;
    .locals 2

    :try_start_0
    const-string v0, "connectivity"

    .line 328
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 330
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 331
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 339
    sget-object p0, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->WIFI:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    return-object p0

    :cond_1
    if-nez v0, :cond_4

    const-string v0, "phone"

    .line 342
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 344
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/16 v0, 0x14

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 365
    sget-object p0, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->MOBILE:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    return-object p0

    .line 361
    :pswitch_0
    sget-object p0, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->MOBILE_4G:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    return-object p0

    .line 363
    :cond_2
    sget-object p0, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->MOBILE_5G:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    return-object p0

    .line 354
    :cond_3
    :pswitch_1
    sget-object p0, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->MOBILE_3G:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    return-object p0

    .line 368
    :cond_4
    sget-object p0, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->MOBILE:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    return-object p0

    .line 332
    :cond_5
    :goto_0
    sget-object p0, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->NONE:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 371
    :catchall_0
    sget-object p0, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->MOBILE:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static is24GHz(I)Z
    .locals 1

    const/16 v0, 0x960

    if-le p0, v0, :cond_0

    const/16 v0, 0x9c4

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static is2G(Landroid/content/Context;)Z
    .locals 1

    .line 140
    invoke-static {p0}, Lcom/bytedance/common/utility/NetworkUtils;->getNetworkType(Landroid/content/Context;)Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    move-result-object p0

    .line 141
    sget-object v0, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->MOBILE:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->MOBILE_2G:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static is2GFast(Landroid/content/Context;)Z
    .locals 0

    .line 243
    invoke-static {p0}, Lcom/bytedance/common/utility/NetworkUtils;->checkNetworkTypeInit(Landroid/content/Context;)V

    .line 244
    invoke-static {p0}, Lcom/bytedance/common/utility/NetworkUtils;->adjustNetwork(Landroid/content/Context;)V

    .line 245
    sget-object p0, Lcom/bytedance/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    invoke-virtual {p0}, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->is2G()Z

    move-result p0

    return p0
.end method

.method public static is5GHz(I)Z
    .locals 1

    const/16 v0, 0x1324

    if-le p0, v0, :cond_0

    const/16 v0, 0x170c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isNRConnected(Landroid/telephony/TelephonyManager;)Z
    .locals 7

    const/4 v0, 0x0

    .line 310
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getServiceState"

    new-array v3, v0, [Ljava/lang/Class;

    .line 311
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 313
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 315
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 316
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getNrStatus"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getNrState"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 317
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v0, [Ljava/lang/Object;

    .line 318
    invoke-virtual {v4, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x3

    if-ne p0, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :catch_0
    move-exception p0

    .line 322
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    .line 172
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 173
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 174
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public static isNetworkAvailableFast(Landroid/content/Context;)Z
    .locals 0

    .line 255
    invoke-static {p0}, Lcom/bytedance/common/utility/NetworkUtils;->checkNetworkTypeInit(Landroid/content/Context;)V

    .line 256
    invoke-static {p0}, Lcom/bytedance/common/utility/NetworkUtils;->adjustNetwork(Landroid/content/Context;)V

    .line 257
    sget-object p0, Lcom/bytedance/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    invoke-virtual {p0}, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    .line 147
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 148
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 149
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    sget-object v1, Lcom/bytedance/common/utility/NetworkUtils;->sNetworkTypeInterceptor:Lcom/bytedance/common/utility/NetworkUtils$NetworkTypeInterceptor;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/bytedance/common/utility/NetworkUtils;->sNetworkTypeInterceptor:Lcom/bytedance/common/utility/NetworkUtils$NetworkTypeInterceptor;

    invoke-interface {v1}, Lcom/bytedance/common/utility/NetworkUtils$NetworkTypeInterceptor;->getNetworkType()Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    move-result-object v1

    sget-object v3, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->NONE:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    if-eq v1, v3, :cond_2

    .line 156
    sget-object p0, Lcom/bytedance/common/utility/NetworkUtils;->sNetworkTypeInterceptor:Lcom/bytedance/common/utility/NetworkUtils$NetworkTypeInterceptor;

    invoke-interface {p0}, Lcom/bytedance/common/utility/NetworkUtils$NetworkTypeInterceptor;->getNetworkType()Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    move-result-object p0

    sget-object v1, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->WIFI:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 158
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p0, :cond_3

    const/4 v0, 0x1

    :catch_0
    :cond_3
    :goto_0
    return v0
.end method

.method public static isWifi5GHz(Landroid/content/Context;)Z
    .locals 3

    .line 462
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 463
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 464
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 465
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p0

    goto :goto_0

    .line 467
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 468
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 469
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 471
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 472
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 473
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 474
    iget p0, v1, Landroid/net/wifi/ScanResult;->frequency:I

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 481
    :goto_0
    invoke-static {p0}, Lcom/bytedance/common/utility/NetworkUtils;->is5GHz(I)Z

    move-result p0

    return p0
.end method

.method public static isWifiFast(Landroid/content/Context;)Z
    .locals 0

    .line 249
    invoke-static {p0}, Lcom/bytedance/common/utility/NetworkUtils;->checkNetworkTypeInit(Landroid/content/Context;)V

    .line 250
    invoke-static {p0}, Lcom/bytedance/common/utility/NetworkUtils;->adjustNetwork(Landroid/content/Context;)V

    .line 251
    sget-object p0, Lcom/bytedance/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    invoke-virtual {p0}, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->isWifi()Z

    move-result p0

    return p0
.end method

.method private static registerReceiver(Landroid/content/Context;)V
    .locals 2

    .line 293
    sget-boolean v0, Lcom/bytedance/common/utility/NetworkUtils;->sIsReceiverRegisted:Z

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 294
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 295
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 296
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 297
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Lcom/bytedance/common/utility/NetworkConnectChangeReceiver;

    invoke-direct {v1}, Lcom/bytedance/common/utility/NetworkConnectChangeReceiver;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p0, 0x1

    .line 299
    sput-boolean p0, Lcom/bytedance/common/utility/NetworkUtils;->sIsReceiverRegisted:Z

    :cond_0
    return-void
.end method

.method public static setAdjustNetworkInterval(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    .line 281
    sput-wide p0, Lcom/bytedance/common/utility/NetworkUtils;->sInterval:J

    :cond_0
    return-void
.end method

.method static setNetworkType(Lcom/bytedance/common/utility/NetworkUtils$NetworkType;)V
    .locals 0

    .line 127
    sput-object p0, Lcom/bytedance/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    return-void
.end method

.method public static setNetworkTypeInterceptor(Lcom/bytedance/common/utility/NetworkUtils$NetworkTypeInterceptor;)V
    .locals 0

    .line 131
    sput-object p0, Lcom/bytedance/common/utility/NetworkUtils;->sNetworkTypeInterceptor:Lcom/bytedance/common/utility/NetworkUtils$NetworkTypeInterceptor;

    return-void
.end method

.method public static setUseCheckNetworkFast(Z)V
    .locals 0

    .line 38
    sput-boolean p0, Lcom/bytedance/common/utility/NetworkUtils;->useCheckNetworkFast:Z

    return-void
.end method
