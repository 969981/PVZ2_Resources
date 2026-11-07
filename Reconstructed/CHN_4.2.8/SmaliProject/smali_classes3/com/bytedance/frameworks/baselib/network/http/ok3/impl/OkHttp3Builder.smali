.class public Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;
.super Ljava/lang/Object;
.source "OkHttp3Builder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder$IOkHttpClientBuilderHook;
    }
.end annotation


# static fields
.field private static final FRAMED_APPLYED:I = 0x4

.field private static final FRAMED_NO_ALL:I = 0x3

.field private static final FRAMED_NO_H2:I = 0x2

.field private static final FRAMED_NO_SPDY:I = 0x1

.field public static final TAG:Ljava/lang/String; = "OkHttp3Builder"

.field private static sDisableFramedTransport:I

.field private static sOkHttpClientBuilderHook:Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder$IOkHttpClientBuilderHook;


# instance fields
.field private mOk3TncBridge:Lgbsdk/common/host/abin;

.field private mOkClient:Losdk/okhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDisableFramedTransport(Losdk/okhttp3/OkHttpClient;)Losdk/okhttp3/OkHttpClient;
    .locals 2

    .line 68
    sget v0, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->sDisableFramedTransport:I

    if-lez v0, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p0}, Losdk/okhttp3/OkHttpClient;->newBuilder()Losdk/okhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 70
    invoke-static {p0}, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->setProtocols(Losdk/okhttp3/OkHttpClient$Builder;)V

    .line 71
    invoke-virtual {p0}, Losdk/okhttp3/OkHttpClient$Builder;->build()Losdk/okhttp3/OkHttpClient;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static disableFramedTransport(I)V
    .locals 1

    if-lez p0, :cond_0

    .line 61
    sget v0, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->sDisableFramedTransport:I

    if-nez v0, :cond_0

    .line 62
    sput p0, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->sDisableFramedTransport:I

    :cond_0
    return-void
.end method

.method private static enableTls12OnPreLollipop(Losdk/okhttp3/OkHttpClient$Builder;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 4

    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    :try_start_0
    const-string v0, "TLSv1.2"

    .line 190
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 191
    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 192
    new-instance v1, Lgbsdk/common/host/abiy;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {v1, v0}, Lgbsdk/common/host/abiy;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {p0, v1}, Losdk/okhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Losdk/okhttp3/OkHttpClient$Builder;

    .line 194
    new-instance v0, Losdk/okhttp3/ConnectionSpec$Builder;

    sget-object v1, Losdk/okhttp3/ConnectionSpec;->MODERN_TLS:Losdk/okhttp3/ConnectionSpec;

    invoke-direct {v0, v1}, Losdk/okhttp3/ConnectionSpec$Builder;-><init>(Losdk/okhttp3/ConnectionSpec;)V

    const/4 v1, 0x1

    new-array v1, v1, [Losdk/okhttp3/TlsVersion;

    const/4 v2, 0x0

    sget-object v3, Losdk/okhttp3/TlsVersion;->TLS_1_2:Losdk/okhttp3/TlsVersion;

    aput-object v3, v1, v2

    .line 195
    invoke-virtual {v0, v1}, Losdk/okhttp3/ConnectionSpec$Builder;->tlsVersions([Losdk/okhttp3/TlsVersion;)Losdk/okhttp3/ConnectionSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Losdk/okhttp3/ConnectionSpec$Builder;->build()Losdk/okhttp3/ConnectionSpec;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Losdk/okhttp3/ConnectionSpec;->COMPATIBLE_TLS:Losdk/okhttp3/ConnectionSpec;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Losdk/okhttp3/ConnectionSpec;->CLEARTEXT:Losdk/okhttp3/ConnectionSpec;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p0, v1}, Losdk/okhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Losdk/okhttp3/OkHttpClient$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OkHttpTLSCompat"

    const-string v2, "Error while setting TLS 1.2"

    .line 204
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object p0
.end method

.method public static setOkHttpClientBuilderHook(Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder$IOkHttpClientBuilderHook;)V
    .locals 0

    .line 40
    sput-object p0, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->sOkHttpClientBuilderHook:Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder$IOkHttpClientBuilderHook;

    return-void
.end method

.method private static setProtocols(Losdk/okhttp3/OkHttpClient$Builder;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    sget v1, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->sDisableFramedTransport:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 91
    sget-object v1, Losdk/okhttp3/Protocol;->HTTP_2:Losdk/okhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v1, Losdk/okhttp3/Protocol;->SPDY_3:Losdk/okhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_1
    sget-object v1, Losdk/okhttp3/Protocol;->SPDY_3:Losdk/okhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_2
    sget-object v1, Losdk/okhttp3/Protocol;->HTTP_2:Losdk/okhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    const/4 v1, 0x4

    .line 95
    sput v1, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->sDisableFramedTransport:I

    .line 96
    sget-object v1, Losdk/okhttp3/Protocol;->HTTP_1_1:Losdk/okhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Losdk/okhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Losdk/okhttp3/OkHttpClient$Builder;

    return-void
.end method


# virtual methods
.method public build()Losdk/okhttp3/OkHttpClient;
    .locals 1

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p0, v0}, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->build(Z)Losdk/okhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public build(Z)Losdk/okhttp3/OkHttpClient;
    .locals 6

    if-eqz p1, :cond_0

    .line 107
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->tryNecessaryInit()Landroid/webkit/CookieManager;

    .line 109
    :cond_0
    const-class p1, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;

    monitor-enter p1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->mOkClient:Losdk/okhttp3/OkHttpClient;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->mOkClient:Losdk/okhttp3/OkHttpClient;

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->checkDisableFramedTransport(Losdk/okhttp3/OkHttpClient;)Losdk/okhttp3/OkHttpClient;

    .line 112
    iget-object v0, p0, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->mOkClient:Losdk/okhttp3/OkHttpClient;

    monitor-exit p1

    return-object v0

    .line 114
    :cond_1
    new-instance v0, Losdk/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Losdk/okhttp3/OkHttpClient$Builder;-><init>()V

    .line 115
    sget v1, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->sDisableFramedTransport:I

    if-lez v1, :cond_2

    sget v1, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->sDisableFramedTransport:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 116
    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->setProtocols(Losdk/okhttp3/OkHttpClient$Builder;)V

    .line 120
    :cond_2
    new-instance v1, Losdk/okhttp3/ConnectionPool;

    const/16 v2, 0xf

    const-wide/32 v3, 0x2bf20

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v2, v3, v4, v5}, Losdk/okhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0, v1}, Losdk/okhttp3/OkHttpClient$Builder;->connectionPool(Losdk/okhttp3/ConnectionPool;)Losdk/okhttp3/OkHttpClient$Builder;

    .line 121
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v2, v3, v1}, Losdk/okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Losdk/okhttp3/OkHttpClient$Builder;

    .line 122
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Losdk/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Losdk/okhttp3/OkHttpClient$Builder;

    .line 123
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Losdk/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Losdk/okhttp3/OkHttpClient$Builder;

    .line 124
    new-instance v1, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder$1;

    invoke-direct {v1, p0}, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder$1;-><init>(Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;)V

    invoke-virtual {v0, v1}, Losdk/okhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Losdk/okhttp3/Interceptor;)Losdk/okhttp3/OkHttpClient$Builder;

    .line 172
    invoke-static {}, Lgbsdk/common/host/abik;->bU()Lgbsdk/common/host/abik;

    move-result-object v1

    invoke-virtual {v0, v1}, Losdk/okhttp3/OkHttpClient$Builder;->dns(Losdk/okhttp3/Dns;)Losdk/okhttp3/OkHttpClient$Builder;

    .line 173
    sget-object v1, Losdk/okhttp3/CookieJar;->NO_COOKIES:Losdk/okhttp3/CookieJar;

    invoke-virtual {v0, v1}, Losdk/okhttp3/OkHttpClient$Builder;->cookieJar(Losdk/okhttp3/CookieJar;)Losdk/okhttp3/OkHttpClient$Builder;

    .line 174
    new-instance v1, Lgbsdk/common/host/abih;

    invoke-direct {v1}, Lgbsdk/common/host/abih;-><init>()V

    invoke-virtual {v0, v1}, Losdk/okhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Losdk/okhttp3/Interceptor;)Losdk/okhttp3/OkHttpClient$Builder;

    .line 175
    new-instance v1, Lgbsdk/common/host/abje;

    invoke-direct {v1}, Lgbsdk/common/host/abje;-><init>()V

    invoke-virtual {v0, v1}, Losdk/okhttp3/OkHttpClient$Builder;->addInterceptor(Losdk/okhttp3/Interceptor;)Losdk/okhttp3/OkHttpClient$Builder;

    .line 176
    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->enableTls12OnPreLollipop(Losdk/okhttp3/OkHttpClient$Builder;)Losdk/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 178
    invoke-virtual {v0, v1}, Losdk/okhttp3/OkHttpClient$Builder;->followRedirects(Z)Losdk/okhttp3/OkHttpClient$Builder;

    .line 179
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->sOkHttpClientBuilderHook:Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder$IOkHttpClientBuilderHook;

    if-eqz v1, :cond_3

    .line 180
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->sOkHttpClientBuilderHook:Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder$IOkHttpClientBuilderHook;

    invoke-interface {v1, v0}, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder$IOkHttpClientBuilderHook;->addBuilderConfig(Losdk/okhttp3/OkHttpClient$Builder;)V

    .line 182
    :cond_3
    invoke-virtual {v0}, Losdk/okhttp3/OkHttpClient$Builder;->build()Losdk/okhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->mOkClient:Losdk/okhttp3/OkHttpClient;

    .line 183
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOk3TncBridge(Lgbsdk/common/host/abin;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->mOk3TncBridge:Lgbsdk/common/host/abin;

    return-void
.end method
