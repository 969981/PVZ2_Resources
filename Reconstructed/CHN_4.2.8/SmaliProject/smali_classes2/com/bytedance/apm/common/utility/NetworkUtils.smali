.class public final Lcom/bytedance/apm/common/utility/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;,
        Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkTypeInterceptor;
    }
.end annotation


# static fields
.field static final DEBUG_MOBILE:Z = false

.field private static final DEFAULT_CONTENT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field private static final NAME_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final PARAMETER_SEPARATOR:Ljava/lang/String; = "&"

.field private static final PHONE_INTERNAL:J = 0xea60L

.field private static volatile enableTelephony:Z = true

.field private static volatile lastAdjustTime:J = 0x0L

.field private static volatile lastPhoneTime:J = 0x0L

.field private static final sInterval:J = 0x7d0L

.field private static sNetworkType:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

.field private static sNetworkTypeInterceptor:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkTypeInterceptor;

.field private static volatile telephonyAccessInterval:J

.field private static volatile useCheckNetworkFast:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    sget-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->UNKNOWN:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    sput-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    const-wide/16 v0, 0x0

    .line 123
    sput-wide v0, Lcom/bytedance/apm/common/utility/NetworkUtils;->lastAdjustTime:J

    .line 125
    sput-wide v0, Lcom/bytedance/apm/common/utility/NetworkUtils;->lastPhoneTime:J

    const-wide/32 v0, 0xea60

    .line 126
    sput-wide v0, Lcom/bytedance/apm/common/utility/NetworkUtils;->telephonyAccessInterval:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustNetwork(Landroid/content/Context;)V
    .locals 5

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/bytedance/apm/common/utility/NetworkUtils;->lastAdjustTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 130
    invoke-static {p0}, Lcom/bytedance/apm/common/utility/NetworkUtils;->getNetworkTypeIntern(Landroid/content/Context;)Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    move-result-object p0

    sput-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/apm/common/utility/NetworkUtils;->lastAdjustTime:J

    :cond_0
    return-void
.end method

.method private static checkNetworkTypeInit(Landroid/content/Context;)V
    .locals 2

    .line 109
    sget-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils;->sNetworkTypeInterceptor:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkTypeInterceptor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkTypeInterceptor;->getNetworkType()Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    move-result-object v0

    sget-object v1, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->NONE:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    if-eq v0, v1, :cond_0

    .line 110
    sget-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils;->sNetworkTypeInterceptor:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkTypeInterceptor;

    invoke-interface {p0}, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkTypeInterceptor;->getNetworkType()Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    move-result-object p0

    sput-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    return-void

    .line 113
    :cond_0
    sget-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    sget-object v1, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->UNKNOWN:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    if-ne v0, v1, :cond_1

    .line 114
    invoke-static {p0}, Lcom/bytedance/apm/common/utility/NetworkUtils;->getNetworkTypeIntern(Landroid/content/Context;)Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    move-result-object p0

    sput-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    :cond_1
    return-void
.end method

.method public static enableTelephony(Z)V
    .locals 0

    .line 303
    sput-boolean p0, Lcom/bytedance/apm/common/utility/NetworkUtils;->enableTelephony:Z

    return-void
.end method

.method private static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p1, "ISO-8859-1"

    .line 278
    :goto_0
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 281
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

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 263
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/bytedance/apm/common/utility/NetworkUtils;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 264
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 265
    invoke-static {v1, p1}, Lcom/bytedance/apm/common/utility/NetworkUtils;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, ""

    .line 266
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "&"

    .line 267
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 270
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 273
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNetworkAccessType(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 216
    invoke-static {p0}, Lcom/bytedance/apm/common/utility/NetworkUtils;->getNetworkType(Landroid/content/Context;)Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/apm/common/utility/NetworkUtils;->getNetworkAccessType(Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNetworkAccessType(Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;)Ljava/lang/String;
    .locals 1

    .line 222
    sget-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->WIFI:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    if-ne p0, v0, :cond_0

    const-string p0, "wifi"

    goto :goto_0

    .line 224
    :cond_0
    sget-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->WIFI_24GHZ:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    if-ne p0, v0, :cond_1

    const-string p0, "wifi24ghz"

    goto :goto_0

    .line 227
    :cond_1
    sget-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->WIFI_5GHZ:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    if-ne p0, v0, :cond_2

    const-string p0, "wifi5ghz"

    goto :goto_0

    .line 230
    :cond_2
    sget-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE_2G:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    if-ne p0, v0, :cond_3

    const-string p0, "2g"

    goto :goto_0

    .line 232
    :cond_3
    sget-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE_3G:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    if-ne p0, v0, :cond_4

    const-string p0, "3g"

    goto :goto_0

    .line 234
    :cond_4
    sget-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE_3G_H:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    if-ne p0, v0, :cond_5

    const-string p0, "3gh"

    goto :goto_0

    .line 237
    :cond_5
    sget-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE_3G_HP:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    if-ne p0, v0, :cond_6

    const-string p0, "3ghp"

    goto :goto_0

    .line 240
    :cond_6
    sget-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE_4G:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    if-ne p0, v0, :cond_7

    const-string p0, "4g"

    goto :goto_0

    .line 242
    :cond_7
    sget-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE_5G:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    if-ne p0, v0, :cond_8

    const-string p0, "5g"

    goto :goto_0

    .line 244
    :cond_8
    sget-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    if-ne p0, v0, :cond_9

    const-string p0, "mobile"

    goto :goto_0

    :cond_9
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getNetworkType(Landroid/content/Context;)Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;
    .locals 1

    .line 205
    sget-boolean v0, Lcom/bytedance/apm/common/utility/NetworkUtils;->useCheckNetworkFast:Z

    if-eqz v0, :cond_0

    .line 206
    invoke-static {p0}, Lcom/bytedance/apm/common/utility/NetworkUtils;->getNetworkTypeFast(Landroid/content/Context;)Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    move-result-object p0

    return-object p0

    .line 208
    :cond_0
    invoke-static {p0}, Lcom/bytedance/apm/common/utility/NetworkUtils;->getNetworkTypeIntern(Landroid/content/Context;)Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    move-result-object p0

    return-object p0
.end method

.method public static getNetworkTypeFast(Landroid/content/Context;)Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;
    .locals 0

    .line 95
    invoke-static {p0}, Lcom/bytedance/apm/common/utility/NetworkUtils;->checkNetworkTypeInit(Landroid/content/Context;)V

    .line 97
    invoke-static {p0}, Lcom/bytedance/apm/common/utility/NetworkUtils;->adjustNetwork(Landroid/content/Context;)V

    .line 98
    sget-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    return-object p0
.end method

.method private static getNetworkTypeIntern(Landroid/content/Context;)Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;
    .locals 5

    :try_start_0
    const-string v0, "connectivity"

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 139
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 140
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 143
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 148
    sget-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->WIFI:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    return-object p0

    :cond_1
    if-nez v0, :cond_6

    .line 151
    sget-boolean v0, Lcom/bytedance/apm/common/utility/NetworkUtils;->enableTelephony:Z

    if-nez v0, :cond_2

    .line 152
    sget-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    return-object p0

    .line 154
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/bytedance/apm/common/utility/NetworkUtils;->lastPhoneTime:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/bytedance/apm/common/utility/NetworkUtils;->telephonyAccessInterval:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    .line 155
    sget-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    sget-object v1, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->NONE:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    sget-object v1, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->UNKNOWN:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    sget-object v1, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->WIFI:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    if-eq v0, v1, :cond_3

    .line 156
    sget-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    return-object p0

    .line 159
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/apm/common/utility/NetworkUtils;->lastPhoneTime:J

    const-string v0, "phone"

    .line 160
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 162
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/16 v0, 0x14

    if-eq p0, v0, :cond_4

    const/4 v0, 0x5

    if-eq p0, v0, :cond_5

    const/4 v0, 0x6

    if-eq p0, v0, :cond_5

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 187
    sget-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    sput-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    .line 188
    sget-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    return-object p0

    .line 180
    :pswitch_0
    sget-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE_4G:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    sput-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    .line 181
    sget-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE_4G:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    return-object p0

    .line 184
    :cond_4
    sget-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE_5G:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    sput-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    .line 185
    sget-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE_5G:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    return-object p0

    .line 172
    :cond_5
    :pswitch_1
    sget-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE_3G:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    sput-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    .line 173
    sget-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE_3G:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    return-object p0

    .line 191
    :cond_6
    sget-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    sput-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    .line 192
    sget-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    return-object p0

    .line 141
    :cond_7
    :goto_0
    sget-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->NONE:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 195
    :catchall_0
    sget-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    sput-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    .line 196
    sget-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

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

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    .line 81
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 82
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 83
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

    .line 102
    invoke-static {p0}, Lcom/bytedance/apm/common/utility/NetworkUtils;->checkNetworkTypeInit(Landroid/content/Context;)V

    .line 103
    invoke-static {p0}, Lcom/bytedance/apm/common/utility/NetworkUtils;->adjustNetwork(Landroid/content/Context;)V

    .line 104
    sget-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    invoke-virtual {p0}, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public static isTelephonyEnable()Z
    .locals 1

    .line 307
    sget-boolean v0, Lcom/bytedance/apm/common/utility/NetworkUtils;->enableTelephony:Z

    return v0
.end method

.method static setNetworkType(Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;)V
    .locals 0

    .line 69
    sput-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils;->sNetworkType:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    return-void
.end method

.method public static setNetworkTypeInterceptor(Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkTypeInterceptor;)V
    .locals 0

    .line 73
    sput-object p0, Lcom/bytedance/apm/common/utility/NetworkUtils;->sNetworkTypeInterceptor:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkTypeInterceptor;

    return-void
.end method

.method public static setTelephonyAccessInternal(J)V
    .locals 0

    .line 299
    sput-wide p0, Lcom/bytedance/apm/common/utility/NetworkUtils;->telephonyAccessInterval:J

    return-void
.end method

.method public static setupSSLFactory(Ljava/net/HttpURLConnection;)V
    .locals 2

    .line 286
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "TLS"

    .line 290
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 291
    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 292
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v1, Lcom/bytedance/apm/common/utility/TLSSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bytedance/apm/common/utility/TLSSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
