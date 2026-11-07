.class public Lgbsdk/common/host/abjb;
.super Ljava/lang/Object;
.source "SsOkHttp3Client.java"

# interfaces
.implements Lgbsdk/common/host/abjt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abjb$ab;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SsOkHttp3Client"

.field public static final nA:I = 0x2

.field public static final nB:I = 0x3

.field public static final nC:I = 0x4

.field public static final nD:I = 0x5

.field public static final nE:I = 0x6

.field public static final nF:I = 0x7

.field public static final nG:I = 0x8

.field public static final nH:I = 0x9

.field private static volatile nI:Lgbsdk/common/host/abjb; = null

.field public static volatile nJ:Z = false

.field public static volatile nK:I = -0x1

.field public static volatile nL:Ljava/lang/String; = ""

.field private static final nM:Ljava/lang/Object;

.field private static final nN:I = 0x0

.field private static nO:I = 0x0

.field private static volatile nP:Ljava/lang/String; = null

.field public static volatile nQ:I = 0x0

.field public static volatile nR:Ljava/lang/String; = null

.field public static volatile nS:[Ljava/lang/String; = null

.field public static volatile nT:[Ljava/lang/String; = null

.field public static nU:Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder; = null

.field public static nV:Lgbsdk/common/host/abin; = null

.field public static final nx:Ljava/lang/String; = "tt-ok/3.10.0.2"

.field public static final ny:I = 0x0

.field public static final nz:I = 0x1

.field public static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lgbsdk/common/host/abjb;->nM:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 91
    sput v0, Lgbsdk/common/host/abjb;->nO:I

    const-string v1, ""

    .line 92
    sput-object v1, Lgbsdk/common/host/abjb;->nP:Ljava/lang/String;

    .line 95
    sput v0, Lgbsdk/common/host/abjb;->nQ:I

    const/4 v0, 0x0

    .line 96
    sput-object v0, Lgbsdk/common/host/abjb;->nR:Ljava/lang/String;

    .line 97
    sput-object v0, Lgbsdk/common/host/abjb;->nS:[Ljava/lang/String;

    .line 98
    sput-object v0, Lgbsdk/common/host/abjb;->nT:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lgbsdk/common/host/abjb;->sContext:Landroid/content/Context;

    .line 118
    new-instance p1, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;

    invoke-direct {p1}, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;-><init>()V

    sput-object p1, Lgbsdk/common/host/abjb;->nU:Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;

    .line 119
    invoke-static {}, Lgbsdk/common/host/abmf;->cv()Lgbsdk/common/host/abmf;

    move-result-object p1

    sget-object v0, Lgbsdk/common/host/abjb;->sContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lgbsdk/common/host/abmf;->M(Landroid/content/Context;)V

    .line 120
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object p1

    new-instance v0, Lgbsdk/common/host/abjb$1;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abjb$1;-><init>(Lgbsdk/common/host/abjb;)V

    invoke-virtual {p1, v0}, Lgbsdk/common/host/ablz;->a(Lgbsdk/common/host/abls;)V

    return-void
.end method

.method public static I(Landroid/content/Context;)Lgbsdk/common/host/abjb;
    .locals 2

    .line 101
    sget-object v0, Lgbsdk/common/host/abjb;->nI:Lgbsdk/common/host/abjb;

    if-nez v0, :cond_1

    .line 102
    const-class v0, Lgbsdk/common/host/abjb;

    monitor-enter v0

    .line 103
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abjb;->nI:Lgbsdk/common/host/abjb;

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Lgbsdk/common/host/abjb;

    invoke-direct {v1, p0}, Lgbsdk/common/host/abjb;-><init>(Landroid/content/Context;)V

    sput-object v1, Lgbsdk/common/host/abjb;->nI:Lgbsdk/common/host/abjb;

    .line 106
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 108
    :cond_1
    :goto_0
    sget-object p0, Lgbsdk/common/host/abjb;->nI:Lgbsdk/common/host/abjb;

    return-object p0
.end method

.method private static J(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 235
    sget-object p0, Lgbsdk/common/host/abjb;->nP:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 236
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    sget-object v0, Lgbsdk/common/host/abjb;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    .line 238
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    sget-object v0, Lgbsdk/common/host/abjb;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abjb;->K(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (Linux; U; Android "

    .line 240
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; "

    .line 242
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 246
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 247
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_0
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 252
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "; Build/"

    .line 253
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, ";"

    .line 257
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "tt-ok/3.10.0.2"

    .line 258
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    .line 259
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lgbsdk/common/host/abjb;->nP:Ljava/lang/String;

    .line 262
    :cond_2
    sget-object p0, Lgbsdk/common/host/abjb;->nP:Ljava/lang/String;

    return-object p0
.end method

.method private static K(Landroid/content/Context;)I
    .locals 3

    .line 266
    sget-object v0, Lgbsdk/common/host/abjb;->nM:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_0
    sget v1, Lgbsdk/common/host/abjb;->nO:I

    if-nez v1, :cond_0

    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 271
    :try_start_1
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 272
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput p0, Lgbsdk/common/host/abjb;->nO:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    :catch_0
    :cond_0
    :try_start_2
    sget p0, Lgbsdk/common/host/abjb;->nO:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 278
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static a(Losdk/okhttp3/Headers;)Ljava/lang/String;
    .locals 4

    .line 1033
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1034
    invoke-virtual {p0}, Losdk/okhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object p0

    .line 1035
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1036
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1037
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1038
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_0

    .line 1041
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1042
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 1045
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1047
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method private static a(Losdk/okhttp3/Response;)Ljava/lang/String;
    .locals 9

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 478
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Losdk/okhttp3/Response;->headers()Losdk/okhttp3/Headers;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 482
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 483
    invoke-virtual {p0}, Losdk/okhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 484
    invoke-static {v3}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 487
    :cond_3
    invoke-virtual {p0, v3}, Losdk/okhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 488
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 492
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    .line 494
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 495
    invoke-static {v7}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_1

    :cond_5
    if-nez v6, :cond_6

    .line 499
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const-string v8, "; "

    .line 501
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 505
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 506
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 508
    :cond_8
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 511
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static a(Losdk/okhttp3/Response;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "x-net-info.remoteaddr"

    .line 294
    invoke-virtual {p0, v0}, Losdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {v0, p1}, Lgbsdk/common/host/abjb;->getRequestInfo(Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V

    if-eqz p1, :cond_1

    .line 296
    iget-object v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    if-eqz v0, :cond_1

    .line 297
    iget-object p1, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    invoke-virtual {p0}, Losdk/okhttp3/Response;->code()I

    move-result v0

    iput v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->status:I

    :cond_1
    const-string p1, "X-TT-LOGID"

    .line 299
    invoke-virtual {p0, p1}, Losdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Losdk/okhttp3/Request;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)Lorg/json/JSONObject;
    .locals 3

    .line 524
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "hc"

    const-string v2, "SsOkHttp3Client"

    .line 529
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "hcv"

    const-string v2, "tt-ok/3.10.0.2"

    .line 530
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ua"

    const-string v2, "User-Agent"

    .line 531
    invoke-virtual {p0, v2}, Losdk/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 532
    iget-boolean p0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->executeTuringCallback:Z

    if-eqz p0, :cond_1

    const-string p0, "turing_callback"

    .line 533
    iget-wide v1, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->turingCallbackDuration:J

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 534
    :cond_1
    iget-boolean p0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->bdTuringRetry:Z

    if-eqz p0, :cond_2

    const-string p0, "turing_retry"

    const-string p1, "1"

    .line 535
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 571
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static a(Losdk/okhttp3/Request$Builder;Ljava/util/List;)Losdk/okhttp3/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Losdk/okhttp3/Request$Builder;",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;)",
            "Losdk/okhttp3/Request;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    .line 201
    invoke-virtual {p0, v0, v1}, Losdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/Request$Builder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "User-Agent"

    if-eqz p1, :cond_4

    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/retrofit2/client/Header;

    .line 205
    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    .line 212
    :cond_3
    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Losdk/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/Request$Builder;

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    .line 217
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getUserAgent()Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-static {p1}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "tt-ok/3.10.0.2"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 220
    invoke-virtual {p0, v2, p1}, Losdk/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/Request$Builder;

    goto :goto_1

    :cond_5
    move v1, v0

    :goto_1
    if-nez v1, :cond_6

    .line 226
    sget-object p1, Lgbsdk/common/host/abjb;->sContext:Landroid/content/Context;

    invoke-static {p1}, Lgbsdk/common/host/abjb;->J(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 228
    invoke-virtual {p0, v2, p1}, Losdk/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/Request$Builder;

    .line 231
    :cond_6
    invoke-virtual {p0}, Losdk/okhttp3/Request$Builder;->build()Losdk/okhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public static a(Losdk/okhttp3/OkHttpClient;Losdk/okhttp3/Call;)Losdk/okhttp3/Response;
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    invoke-interface {p1}, Losdk/okhttp3/Call;->execute()Losdk/okhttp3/Response;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1053
    sput p0, Lgbsdk/common/host/abjb;->nQ:I

    .line 1054
    sput-object p1, Lgbsdk/common/host/abjb;->nR:Ljava/lang/String;

    .line 1055
    sput-object p2, Lgbsdk/common/host/abjb;->nT:[Ljava/lang/String;

    .line 1056
    sput-object p3, Lgbsdk/common/host/abjb;->nS:[Ljava/lang/String;

    return-void
.end method

.method private static a(Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Lcom/bytedance/retrofit2/RetrofitMetrics;Lgbsdk/common/host/abjf;)V
    .locals 2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 384
    :cond_0
    iget v0, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->fallbackReason:I

    iput v0, p1, Lcom/bytedance/retrofit2/RetrofitMetrics;->fallbackReason:I

    .line 385
    iget-object v0, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->fallbackMessage:Ljava/lang/String;

    iput-object v0, p1, Lcom/bytedance/retrofit2/RetrofitMetrics;->fallbackMessage:Ljava/lang/String;

    .line 386
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bytedance/retrofit2/RetrofitMetrics;->executeCallEndTime:J

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bytedance/retrofit2/RetrofitMetrics;->retrofitLogReportTime:J

    const-string v0, "4.1.79.36-gsdk"

    .line 388
    iput-object v0, p1, Lcom/bytedance/retrofit2/RetrofitMetrics;->ttnetVersion:Ljava/lang/String;

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->extraInfo:Lorg/json/JSONObject;

    const-string v1, "retrofit"

    .line 391
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/RetrofitMetrics;->getRetrofitLog()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 393
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-nez p2, :cond_1

    return-void

    .line 399
    :cond_1
    sget-object p1, Lgbsdk/common/host/abjb;->sContext:Landroid/content/Context;

    invoke-virtual {p2, p0, p1}, Lgbsdk/common/host/abjf;->a(Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Landroid/content/Context;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static a(Losdk/okhttp3/Request;Ljava/lang/String;JLcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Ljava/lang/String;Ljava/lang/Exception;Losdk/okhttp3/Call;Losdk/okhttp3/Response;Lcom/bytedance/retrofit2/RetrofitMetrics;Lgbsdk/common/host/abjf;)V
    .locals 9

    move-object v5, p1

    move-object v7, p4

    move-object v8, p6

    if-eqz v5, :cond_4

    if-nez v8, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz v7, :cond_1

    .line 445
    :try_start_0
    iget-object v0, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->extraInfo:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    move-object v0, p0

    .line 446
    invoke-static {p0, p4}, Lgbsdk/common/host/abjb;->a(Losdk/okhttp3/Request;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->extraInfo:Lorg/json/JSONObject;

    .line 448
    :cond_1
    iget-object v0, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->extraInfo:Lorg/json/JSONObject;

    const-string v1, "ex"

    invoke-virtual {p6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 449
    invoke-static/range {p8 .. p8}, Lgbsdk/common/host/abjb;->a(Losdk/okhttp3/Response;)Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-static {v0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 451
    iget-object v1, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->extraInfo:Lorg/json/JSONObject;

    const-string v2, "response-headers"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 455
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    .line 457
    iget-object v0, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->remoteIp:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 458
    invoke-static {p6}, Lgbsdk/common/host/abjb;->getHostAddress(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-static {v0, p4}, Lgbsdk/common/host/abjb;->getRequestInfo(Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V

    .line 461
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v1, v0, p2

    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestEnd:J

    .line 463
    sget v0, Lgbsdk/common/host/abjb;->nK:I

    iput v0, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->fallbackReason:I

    .line 464
    sget-object v0, Lgbsdk/common/host/abjb;->nL:Ljava/lang/String;

    iput-object v0, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->fallbackMessage:Ljava/lang/String;

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    .line 465
    invoke-static {p4, v3, v4}, Lgbsdk/common/host/abjb;->a(Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Lcom/bytedance/retrofit2/RetrofitMetrics;Lgbsdk/common/host/abjf;)V

    .line 466
    invoke-static {p1, p6, v1, v2, p4}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->handleApiError(Ljava/lang/String;Ljava/lang/Throwable;JLcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V

    move-wide v3, p2

    move-object v5, p1

    move-object v6, p5

    move-object v7, p4

    move-object v8, p6

    .line 467
    invoke-static/range {v1 .. v8}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->monitorApiError(JJLjava/lang/String;Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Ljava/lang/Throwable;)V

    if-eqz p7, :cond_4

    .line 469
    invoke-interface/range {p7 .. p7}, Losdk/okhttp3/Call;->cancel()V

    :cond_4
    :goto_1
    return-void
.end method

.method public static a(Losdk/okhttp3/ResponseBody;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 520
    :cond_0
    invoke-static {p0}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    return-void
.end method

.method public static a(Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    iget-boolean p0, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->force_handle_response:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;ILosdk/okhttp3/Response;JLcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Ljava/lang/String;Lcom/bytedance/retrofit2/RetrofitMetrics;Lgbsdk/common/host/abjf;)[B
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    move-object/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    const/4 v11, 0x0

    if-nez v8, :cond_0

    new-array v0, v11, [B

    return-object v0

    .line 315
    :cond_0
    invoke-virtual/range {p2 .. p2}, Losdk/okhttp3/Response;->code()I

    move-result v12

    .line 316
    invoke-virtual/range {p2 .. p2}, Losdk/okhttp3/Response;->body()Losdk/okhttp3/ResponseBody;

    move-result-object v13

    .line 318
    invoke-virtual/range {p2 .. p2}, Losdk/okhttp3/Response;->headers()Losdk/okhttp3/Headers;

    move-result-object v1

    invoke-virtual {v1}, Losdk/okhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v14

    const-string v1, "Content-Encoding"

    .line 319
    invoke-virtual {v8, v1}, Losdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gzip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const-string v1, "Content-Type"

    .line 320
    invoke-virtual {v8, v1}, Losdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 321
    sget v1, Lgbsdk/common/host/abjb;->nK:I

    iput v1, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->fallbackReason:I

    .line 322
    sget-object v1, Lgbsdk/common/host/abjb;->nL:Ljava/lang/String;

    iput-object v1, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->fallbackMessage:Ljava/lang/String;

    const/16 v1, 0xc8

    if-eq v12, v1, :cond_4

    .line 324
    invoke-static/range {p5 .. p5}, Lgbsdk/common/host/abjb;->a(Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x130

    if-ne v12, v1, :cond_2

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->completeReadResponse:J

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, p3

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestEnd:J

    .line 363
    invoke-static {v7, v9, v10}, Lgbsdk/common/host/abjb;->a(Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Lcom/bytedance/retrofit2/RetrofitMetrics;Lgbsdk/common/host/abjf;)V

    .line 364
    invoke-static {v0, v1, v2, v7}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->handleApiOk(Ljava/lang/String;JLcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V

    move-wide/from16 v3, p3

    move-object/from16 v5, p0

    move-object/from16 v6, p6

    move-object/from16 v7, p5

    .line 365
    invoke-static/range {v1 .. v7}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->monitorApiSample(JJLjava/lang/String;Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V

    .line 367
    :cond_2
    invoke-virtual/range {p2 .. p2}, Losdk/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object v8

    if-eqz v13, :cond_3

    .line 369
    invoke-virtual {v13}, Losdk/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v4

    move v1, v15

    move-object v2, v14

    move/from16 v3, p1

    move-object/from16 v5, v16

    move-object/from16 v6, p0

    move-object/from16 v7, p7

    .line 370
    invoke-static/range {v1 .. v7}, Lgbsdk/common/host/abjb;->processHttpErrorResponse(ZLjava/util/Map;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/retrofit2/RetrofitMetrics;)V

    .line 371
    invoke-static {v13}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    .line 373
    :cond_3
    new-instance v0, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;

    invoke-direct {v0, v12, v8}, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-eqz v13, :cond_7

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->completeReadResponse:J

    .line 329
    invoke-virtual {v13}, Losdk/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v12

    const/4 v1, 0x1

    new-array v13, v1, [I

    :try_start_0
    aput v11, v13, v11

    move v1, v15

    move-object v2, v14

    move/from16 v3, p1

    move-object v4, v12

    move-object v5, v13

    move-object/from16 v6, p7

    .line 334
    invoke-static/range {v1 .. v6}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->readResponse(ZLjava/util/Map;ILjava/io/InputStream;[ILcom/bytedance/retrofit2/RetrofitMetrics;)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 336
    invoke-static {v12}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    .line 338
    aget v2, v13, v11

    new-array v12, v2, [B

    if-eqz v1, :cond_5

    .line 339
    aget v3, v13, v11

    if-lez v3, :cond_5

    .line 340
    aget v3, v13, v11

    invoke-static {v1, v11, v12, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    :cond_5
    invoke-static/range {v16 .. v16}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->testIsSSBinary(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 344
    invoke-static {v12, v2}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->decodeSSBinary([BI)V

    .line 346
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, p3

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestEnd:J

    .line 348
    invoke-static {v7, v9, v10}, Lgbsdk/common/host/abjb;->a(Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Lcom/bytedance/retrofit2/RetrofitMetrics;Lgbsdk/common/host/abjf;)V

    .line 350
    :try_start_1
    invoke-static {}, Lgbsdk/common/host/abkj;->cD()Lgbsdk/common/host/abkj;

    move-result-object v3

    invoke-virtual {v3, v8, v0, v12}, Lgbsdk/common/host/abkj;->a(Losdk/okhttp3/Response;Ljava/lang/String;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    :catchall_0
    invoke-static {v0, v1, v2, v7}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->handleApiOk(Ljava/lang/String;JLcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V

    move-wide/from16 v3, p3

    move-object/from16 v5, p0

    move-object/from16 v6, p6

    move-object/from16 v7, p5

    .line 355
    invoke-static/range {v1 .. v7}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->monitorApiSample(JJLjava/lang/String;Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V

    return-object v12

    :catchall_1
    move-exception v0

    .line 336
    invoke-static {v12}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    throw v0

    :cond_7
    new-array v0, v11, [B

    return-object v0
.end method

.method private static getHostAddress(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 180
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\|"

    .line 181
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 182
    array-length v1, p0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 183
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "SsOkHttp3Client"

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHostAddress remoteIp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_1
    aget-object p0, p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 190
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method private static getRequestInfo(Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V
    .locals 3

    .line 160
    invoke-static {p0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SsOkHttp3Client"

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRequestInfo remoteIp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_1
    iput-object p0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->remoteIp:Ljava/lang/String;

    .line 167
    iget-object v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    if-eqz v0, :cond_2

    .line 168
    iget-object p1, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    iput-object p0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->remoteIp:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method public static k(Ljava/lang/Object;)V
    .locals 0

    .line 1060
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->tryApiProcessHookInit()V

    .line 1061
    invoke-static {p0}, Lgbsdk/common/host/abjb;->l(Ljava/lang/Object;)V

    return-void
.end method

.method private static l(Ljava/lang/Object;)V
    .locals 0

    .line 1065
    invoke-static {p0}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->interceptCookie(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1066
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->tryCookieManagerInit()Landroid/webkit/CookieManager;

    :cond_0
    return-void
.end method

.method public static processHttpErrorResponse(ZLjava/util/Map;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/retrofit2/RetrofitMetrics;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;I",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/bytedance/retrofit2/RetrofitMetrics;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v7, 0x0

    :try_start_0
    aput v7, v0, v7

    move v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, v0

    move-object v6, p6

    .line 412
    invoke-static/range {v1 .. v6}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->readResponse(ZLjava/util/Map;ILjava/io/InputStream;[ILcom/bytedance/retrofit2/RetrofitMetrics;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 414
    invoke-static {p3}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    .line 416
    aget p1, v0, v7

    new-array p2, p1, [B

    if-eqz p0, :cond_1

    .line 417
    aget p3, v0, v7

    if-lez p3, :cond_1

    .line 418
    aget p3, v0, v7

    invoke-static {p0, v7, p2, v7, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    if-lez p1, :cond_4

    .line 420
    invoke-static {p4}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 422
    :try_start_1
    new-instance p0, Lgbsdk/common/host/abkx;

    invoke-direct {p0, p4}, Lgbsdk/common/host/abkx;-><init>(Ljava/lang/String;)V

    const-string p1, "text"

    .line 423
    iget-object p3, p0, Lgbsdk/common/host/abkx;->sc:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "application/json"

    .line 424
    invoke-virtual {p0}, Lgbsdk/common/host/abkx;->cA()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    const-string p1, "charset"

    .line 425
    invoke-virtual {p0, p1}, Lgbsdk/common/host/abkx;->aL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 426
    invoke-static {p0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, "utf-8"

    :cond_3
    const-string p1, "SsOkHttp3Client"

    .line 429
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " response body = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p2, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for url = "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 433
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_0
    return-void

    :catchall_1
    move-exception p0

    .line 414
    invoke-static {p3}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method public bV()Losdk/okhttp3/OkHttpClient;
    .locals 1

    const/4 v0, 0x1

    .line 149
    invoke-virtual {p0, v0}, Lgbsdk/common/host/abjb;->s(Z)Losdk/okhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public newSsCall(Lcom/bytedance/retrofit2/client/Request;)Lcom/bytedance/retrofit2/client/SsCall;
    .locals 6

    .line 579
    :try_start_0
    invoke-static {}, Lgbsdk/common/host/abkj;->cD()Lgbsdk/common/host/abkj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abkj;->f(Lcom/bytedance/retrofit2/client/Request;)Lcom/bytedance/retrofit2/client/Request;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0

    :catchall_0
    nop

    .line 587
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 588
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;->inst()Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;->filterQuery(Lcom/bytedance/retrofit2/client/Request;)Lcom/bytedance/retrofit2/client/Request;

    move-result-object v2

    .line 589
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 590
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    iput-wide v4, v3, Lcom/bytedance/retrofit2/RetrofitMetrics;->queryFilterDuration:J

    :cond_1
    if-eqz v2, :cond_2

    move-object p1, v2

    .line 597
    :cond_2
    new-instance v0, Lgbsdk/common/host/abjb$ab;

    invoke-direct {v0, p1}, Lgbsdk/common/host/abjb$ab;-><init>(Lcom/bytedance/retrofit2/client/Request;)V

    return-object v0
.end method

.method public s(Z)Losdk/okhttp3/OkHttpClient;
    .locals 1

    .line 153
    sget-object v0, Lgbsdk/common/host/abjb;->nU:Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p1}, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->build(Z)Losdk/okhttp3/OkHttpClient;

    move-result-object p1

    return-object p1

    .line 154
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SsOkHttp3Client is not init !!!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOk3TncBridge(Lgbsdk/common/host/abin;)V
    .locals 0

    .line 1012
    sput-object p1, Lgbsdk/common/host/abjb;->nV:Lgbsdk/common/host/abin;

    return-void
.end method
