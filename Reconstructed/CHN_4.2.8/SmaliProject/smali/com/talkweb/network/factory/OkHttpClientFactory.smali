.class public final Lcom/talkweb/network/factory/OkHttpClientFactory;
.super Ljava/lang/Object;
.source "OkHttpClientFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/talkweb/network/config/NetworkConfig;)Lcom/talkweb/network/factory/NativeHttpEngine;
    .locals 3

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/talkweb/network/config/NetworkConfig;->getRetryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 37
    new-instance v1, Lcom/talkweb/network/interceptor/RetryInterceptor;

    invoke-virtual {p0}, Lcom/talkweb/network/config/NetworkConfig;->getRetryCount()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/talkweb/network/interceptor/RetryInterceptor;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    new-instance v1, Lcom/talkweb/network/interceptor/AuthInterceptor;

    invoke-virtual {p0}, Lcom/talkweb/network/config/NetworkConfig;->getTokenProvider()Lcom/talkweb/network/config/NetworkConfig$TokenProvider;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/talkweb/network/interceptor/AuthInterceptor;-><init>(Lcom/talkweb/network/config/NetworkConfig$TokenProvider;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {p0}, Lcom/talkweb/network/config/NetworkConfig;->getDefaultHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/talkweb/network/config/NetworkConfig;->getDefaultHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 43
    new-instance v1, Lcom/talkweb/network/interceptor/HeaderInterceptor;

    invoke-virtual {p0}, Lcom/talkweb/network/config/NetworkConfig;->getDefaultHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/talkweb/network/interceptor/HeaderInterceptor;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_1
    new-instance v1, Lcom/talkweb/network/interceptor/SignInterceptor;

    invoke-virtual {p0}, Lcom/talkweb/network/config/NetworkConfig;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/talkweb/network/interceptor/SignInterceptor;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {p0}, Lcom/talkweb/network/config/NetworkConfig;->getCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 49
    new-instance v1, Lcom/talkweb/network/interceptor/OfflineCacheInterceptor;

    invoke-direct {v1}, Lcom/talkweb/network/interceptor/OfflineCacheInterceptor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lcom/talkweb/network/interceptor/CacheInterceptor;

    invoke-direct {v1}, Lcom/talkweb/network/interceptor/CacheInterceptor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/talkweb/network/config/NetworkConfig;->isEnableLogging()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    new-instance v1, Lcom/talkweb/network/interceptor/LoggingInterceptor;

    invoke-direct {v1}, Lcom/talkweb/network/interceptor/LoggingInterceptor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_3
    new-instance v1, Lcom/talkweb/network/factory/NativeHttpEngine;

    invoke-direct {v1, p0, v0}, Lcom/talkweb/network/factory/NativeHttpEngine;-><init>(Lcom/talkweb/network/config/NetworkConfig;Ljava/util/List;)V

    return-object v1
.end method

.method public static parseBaseUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    .line 63
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
