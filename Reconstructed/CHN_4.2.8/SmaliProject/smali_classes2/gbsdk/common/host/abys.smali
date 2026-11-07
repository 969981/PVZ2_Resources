.class public Lgbsdk/common/host/abys;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile aLC:Lgbsdk/common/host/abys;


# instance fields
.field private final aLD:Losdk/okhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Losdk/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Losdk/okhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    .line 47
    invoke-virtual {v0, v2, v3, v1}, Losdk/okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Losdk/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 48
    invoke-virtual {v0, v2, v3, v1}, Losdk/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Losdk/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 49
    invoke-virtual {v0, v2, v3, v1}, Losdk/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Losdk/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Losdk/okhttp3/OkHttpClient$Builder;->build()Losdk/okhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/common/host/abys;->aLD:Losdk/okhttp3/OkHttpClient;

    return-void
.end method

.method private static a(ILjava/lang/String;I)V
    .locals 3

    .line 260
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 261
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "status_code"

    .line 263
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lgbsdk/common/host/abzx;->s(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "logid"

    .line 264
    invoke-static {p1}, Lgbsdk/common/host/abzx;->s(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "error_code"

    .line 265
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lgbsdk/common/host/abzx;->s(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 267
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 269
    :goto_0
    invoke-static {}, Lgbsdk/common/host/abya;->hF()Lgbsdk/common/host/abya;

    move-result-object p0

    sget-object p1, Lgbsdk/common/host/abya;->b:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lgbsdk/common/host/abya;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    .line 130
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 131
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static hK()Lgbsdk/common/host/abys;
    .locals 2

    .line 55
    sget-object v0, Lgbsdk/common/host/abys;->aLC:Lgbsdk/common/host/abys;

    if-nez v0, :cond_1

    .line 56
    const-class v0, Lgbsdk/common/host/abys;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abys;->aLC:Lgbsdk/common/host/abys;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lgbsdk/common/host/abys;

    invoke-direct {v1}, Lgbsdk/common/host/abys;-><init>()V

    sput-object v1, Lgbsdk/common/host/abys;->aLC:Lgbsdk/common/host/abys;

    .line 60
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 62
    :cond_1
    :goto_0
    sget-object v0, Lgbsdk/common/host/abys;->aLC:Lgbsdk/common/host/abys;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/acbq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lgbsdk/common/host/acbq<",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 66
    invoke-static {p3}, Losdk/okhttp3/MediaType;->parse(Ljava/lang/String;)Losdk/okhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, p2}, Losdk/okhttp3/RequestBody;->create(Losdk/okhttp3/MediaType;Ljava/lang/String;)Losdk/okhttp3/RequestBody;

    move-result-object v1

    .line 67
    new-instance v2, Losdk/okhttp3/Request$Builder;

    invoke-direct {v2}, Losdk/okhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, p1}, Losdk/okhttp3/Request$Builder;->url(Ljava/lang/String;)Losdk/okhttp3/Request$Builder;

    move-result-object v2

    .line 68
    invoke-static {p4}, Lcom/volcengine/zeus/Zeus;->getPlugin(Ljava/lang/String;)Lcom/volcengine/zeus/plugin/Plugin;

    move-result-object v3

    iget-object v3, v3, Lcom/volcengine/zeus/plugin/Plugin;->mAppKey:Ljava/lang/String;

    invoke-static {p4}, Lcom/volcengine/zeus/Zeus;->getPlugin(Ljava/lang/String;)Lcom/volcengine/zeus/plugin/Plugin;

    move-result-object p4

    iget-object p4, p4, Lcom/volcengine/zeus/plugin/Plugin;->mAppSecretKey:Ljava/lang/String;

    invoke-static {v2, p2, v3, p4}, Lgbsdk/common/host/acbz;->a(Losdk/okhttp3/Request$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lgbsdk/common/host/acbw;->a()Ljava/lang/String;

    move-result-object p4

    const-string v3, "Content-Type"

    .line 70
    invoke-virtual {v2, v3, p3}, Losdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/Request$Builder;

    const-string p3, "x-device-id"

    .line 71
    invoke-virtual {v2, p3, p4}, Losdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/Request$Builder;

    const-string p3, "get-svc"

    const-string v3, "1"

    .line 72
    invoke-virtual {v2, p3, v3}, Losdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/Request$Builder;

    const-string p3, "x-sdk-version"

    const-string v3, "0.0.1-beta.4200.106-osdk.21-removeApmCrash"

    .line 73
    invoke-virtual {v2, p3, v3}, Losdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/Request$Builder;

    .line 74
    invoke-static {}, Lcom/volcengine/zeus/GlobalParam;->getInstance()Lcom/volcengine/zeus/GlobalParam;

    move-result-object p3

    invoke-virtual {p3}, Lcom/volcengine/zeus/GlobalParam;->getRequestHeader()Ljava/util/Map;

    move-result-object p3

    .line 75
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 76
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 78
    invoke-virtual {v2, v4, v5}, Losdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/Request$Builder;

    goto :goto_0

    .line 81
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v3, "executePost, url: "

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\ndid: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " sdkVersion: 0.0.1-beta.4200.106-osdk.21-removeApmCrash\nbody: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Zeus/download_zeus"

    invoke-static {p2, p1}, Lcom/volcengine/zeus/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v2, v1}, Losdk/okhttp3/Request$Builder;->post(Losdk/okhttp3/RequestBody;)Losdk/okhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Losdk/okhttp3/Request$Builder;->build()Losdk/okhttp3/Request;

    move-result-object p1

    const/4 p3, 0x0

    .line 88
    :try_start_0
    iget-object p4, p0, Lgbsdk/common/host/abys;->aLD:Losdk/okhttp3/OkHttpClient;

    invoke-virtual {p4, p1}, Losdk/okhttp3/OkHttpClient;->newCall(Losdk/okhttp3/Request;)Losdk/okhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Losdk/okhttp3/Call;->execute()Losdk/okhttp3/Response;

    move-result-object p1

    const-string p4, "X-Tt-Logid"

    .line 89
    invoke-virtual {p1, p4}, Losdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    :try_start_1
    invoke-virtual {p1}, Losdk/okhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Losdk/okhttp3/Response;->body()Losdk/okhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 91
    invoke-virtual {p1}, Losdk/okhttp3/Response;->body()Losdk/okhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Losdk/okhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 94
    sget p1, Lgbsdk/common/host/abya$ab;->d:I

    invoke-static {p1, p4, v2}, Lgbsdk/common/host/abys;->a(ILjava/lang/String;I)V

    move-object v1, p3

    goto :goto_1

    .line 96
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "error_no"

    .line 97
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_3

    .line 102
    sget v2, Lgbsdk/common/host/abya$ab;->e:I

    invoke-static {v2, p4, p1}, Lgbsdk/common/host/abys;->a(ILjava/lang/String;I)V

    .line 105
    :cond_3
    :goto_1
    new-instance p1, Lgbsdk/common/host/acbq;

    invoke-direct {p1, v1, p4}, Lgbsdk/common/host/acbq;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_4
    const-string v1, "Request plugin failed! code = %s, message = %s, logid = %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 107
    invoke-virtual {p1}, Losdk/okhttp3/Response;->code()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Losdk/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {p1}, Losdk/okhttp3/Response;->code()I

    move-result p1

    .line 109
    sget v2, Lgbsdk/common/host/abya$ab;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object p4, v0

    .line 112
    :goto_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Request plugin failed! "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    sget v2, Lgbsdk/common/host/abya$ab;->c:I

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    .line 119
    :goto_3
    invoke-static {p2, v1}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {v2, p4, p1}, Lgbsdk/common/host/abys;->a(ILjava/lang/String;I)V

    .line 121
    new-instance p1, Lgbsdk/common/host/acbq;

    invoke-direct {p1, p3, v0}, Lgbsdk/common/host/acbq;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
