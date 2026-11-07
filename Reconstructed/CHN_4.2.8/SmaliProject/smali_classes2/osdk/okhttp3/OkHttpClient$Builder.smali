.class public final Losdk/okhttp3/OkHttpClient$Builder;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Losdk/okhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field authenticator:Losdk/okhttp3/Authenticator;

.field cache:Losdk/okhttp3/Cache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field certificateChainCleaner:Losdk/okhttp3/internal/tls/CertificateChainCleaner;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field certificatePinner:Losdk/okhttp3/CertificatePinner;

.field connectTimeout:I

.field connectionPool:Losdk/okhttp3/ConnectionPool;

.field connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Losdk/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field cookieJar:Losdk/okhttp3/CookieJar;

.field dispatcher:Losdk/okhttp3/Dispatcher;

.field dns:Losdk/okhttp3/Dns;

.field eventListenerFactory:Losdk/okhttp3/EventListener$Factory;

.field followRedirects:Z

.field followSslRedirects:Z

.field hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Losdk/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field internalCache:Losdk/okhttp3/internal/cache/InternalCache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Losdk/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field pingInterval:I

.field protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Losdk/okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field proxy:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field proxyAuthenticator:Losdk/okhttp3/Authenticator;

.field proxySelector:Ljava/net/ProxySelector;

.field readTimeout:I

.field retryOnConnectionFailure:Z

.field socketFactory:Ljavax/net/SocketFactory;

.field sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field writeTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 476
    new-instance v0, Losdk/okhttp3/Dispatcher;

    invoke-direct {v0}, Losdk/okhttp3/Dispatcher;-><init>()V

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->dispatcher:Losdk/okhttp3/Dispatcher;

    .line 477
    sget-object v0, Losdk/okhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 478
    sget-object v0, Losdk/okhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 479
    sget-object v0, Losdk/okhttp3/EventListener;->NONE:Losdk/okhttp3/EventListener;

    invoke-static {v0}, Losdk/okhttp3/EventListener;->factory(Losdk/okhttp3/EventListener;)Losdk/okhttp3/EventListener$Factory;

    move-result-object v0

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Losdk/okhttp3/EventListener$Factory;

    .line 480
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 481
    sget-object v0, Losdk/okhttp3/CookieJar;->NO_COOKIES:Losdk/okhttp3/CookieJar;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->cookieJar:Losdk/okhttp3/CookieJar;

    .line 482
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 483
    sget-object v0, Losdk/okhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Losdk/okhttp3/internal/tls/OkHostnameVerifier;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 484
    sget-object v0, Losdk/okhttp3/CertificatePinner;->DEFAULT:Losdk/okhttp3/CertificatePinner;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->certificatePinner:Losdk/okhttp3/CertificatePinner;

    .line 485
    sget-object v0, Losdk/okhttp3/Authenticator;->NONE:Losdk/okhttp3/Authenticator;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Losdk/okhttp3/Authenticator;

    .line 486
    sget-object v0, Losdk/okhttp3/Authenticator;->NONE:Losdk/okhttp3/Authenticator;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->authenticator:Losdk/okhttp3/Authenticator;

    .line 487
    new-instance v0, Losdk/okhttp3/ConnectionPool;

    invoke-direct {v0}, Losdk/okhttp3/ConnectionPool;-><init>()V

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->connectionPool:Losdk/okhttp3/ConnectionPool;

    .line 488
    sget-object v0, Losdk/okhttp3/Dns;->SYSTEM:Losdk/okhttp3/Dns;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->dns:Losdk/okhttp3/Dns;

    const/4 v0, 0x1

    .line 489
    iput-boolean v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 490
    iput-boolean v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 491
    iput-boolean v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    const/16 v0, 0x2710

    .line 492
    iput v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 493
    iput v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 494
    iput v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    const/4 v0, 0x0

    .line 495
    iput v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->pingInterval:I

    return-void
.end method

.method constructor <init>(Losdk/okhttp3/OkHttpClient;)V
    .locals 2

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 499
    iget-object v0, p1, Losdk/okhttp3/OkHttpClient;->dispatcher:Losdk/okhttp3/Dispatcher;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->dispatcher:Losdk/okhttp3/Dispatcher;

    .line 500
    iget-object v0, p1, Losdk/okhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 501
    iget-object v0, p1, Losdk/okhttp3/OkHttpClient;->protocols:Ljava/util/List;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 502
    iget-object v0, p1, Losdk/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 503
    iget-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    iget-object v1, p1, Losdk/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 504
    iget-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    iget-object v1, p1, Losdk/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 505
    iget-object v0, p1, Losdk/okhttp3/OkHttpClient;->eventListenerFactory:Losdk/okhttp3/EventListener$Factory;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Losdk/okhttp3/EventListener$Factory;

    .line 506
    iget-object v0, p1, Losdk/okhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 507
    iget-object v0, p1, Losdk/okhttp3/OkHttpClient;->cookieJar:Losdk/okhttp3/CookieJar;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->cookieJar:Losdk/okhttp3/CookieJar;

    .line 508
    iget-object v0, p1, Losdk/okhttp3/OkHttpClient;->internalCache:Losdk/okhttp3/internal/cache/InternalCache;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->internalCache:Losdk/okhttp3/internal/cache/InternalCache;

    .line 509
    iget-object v0, p1, Losdk/okhttp3/OkHttpClient;->cache:Losdk/okhttp3/Cache;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->cache:Losdk/okhttp3/Cache;

    .line 510
    iget-object v0, p1, Losdk/okhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 511
    iget-object v0, p1, Losdk/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 512
    iget-object v0, p1, Losdk/okhttp3/OkHttpClient;->certificateChainCleaner:Losdk/okhttp3/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Losdk/okhttp3/internal/tls/CertificateChainCleaner;

    .line 513
    iget-object v0, p1, Losdk/okhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 514
    iget-object v0, p1, Losdk/okhttp3/OkHttpClient;->certificatePinner:Losdk/okhttp3/CertificatePinner;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->certificatePinner:Losdk/okhttp3/CertificatePinner;

    .line 515
    iget-object v0, p1, Losdk/okhttp3/OkHttpClient;->proxyAuthenticator:Losdk/okhttp3/Authenticator;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Losdk/okhttp3/Authenticator;

    .line 516
    iget-object v0, p1, Losdk/okhttp3/OkHttpClient;->authenticator:Losdk/okhttp3/Authenticator;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->authenticator:Losdk/okhttp3/Authenticator;

    .line 517
    iget-object v0, p1, Losdk/okhttp3/OkHttpClient;->connectionPool:Losdk/okhttp3/ConnectionPool;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->connectionPool:Losdk/okhttp3/ConnectionPool;

    .line 518
    iget-object v0, p1, Losdk/okhttp3/OkHttpClient;->dns:Losdk/okhttp3/Dns;

    iput-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->dns:Losdk/okhttp3/Dns;

    .line 519
    iget-boolean v0, p1, Losdk/okhttp3/OkHttpClient;->followSslRedirects:Z

    iput-boolean v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 520
    iget-boolean v0, p1, Losdk/okhttp3/OkHttpClient;->followRedirects:Z

    iput-boolean v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 521
    iget-boolean v0, p1, Losdk/okhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 522
    iget v0, p1, Losdk/okhttp3/OkHttpClient;->connectTimeout:I

    iput v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 523
    iget v0, p1, Losdk/okhttp3/OkHttpClient;->readTimeout:I

    iput v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 524
    iget v0, p1, Losdk/okhttp3/OkHttpClient;->writeTimeout:I

    iput v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 525
    iget p1, p1, Losdk/okhttp3/OkHttpClient;->pingInterval:I

    iput p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->pingInterval:I

    return-void
.end method


# virtual methods
.method public addInterceptor(Losdk/okhttp3/Interceptor;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 889
    iget-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 888
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "interceptor == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addNetworkInterceptor(Losdk/okhttp3/Interceptor;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 904
    iget-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 903
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "interceptor == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public authenticator(Losdk/okhttp3/Authenticator;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 747
    iput-object p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->authenticator:Losdk/okhttp3/Authenticator;

    return-object p0

    .line 746
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "authenticator == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Losdk/okhttp3/OkHttpClient;
    .locals 1

    .line 935
    new-instance v0, Losdk/okhttp3/OkHttpClient;

    invoke-direct {v0, p0}, Losdk/okhttp3/OkHttpClient;-><init>(Losdk/okhttp3/OkHttpClient$Builder;)V

    return-object v0
.end method

.method public cache(Losdk/okhttp3/Cache;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1    # Losdk/okhttp3/Cache;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 631
    iput-object p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->cache:Losdk/okhttp3/Cache;

    const/4 p1, 0x0

    .line 632
    iput-object p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->internalCache:Losdk/okhttp3/internal/cache/InternalCache;

    return-object p0
.end method

.method public certificatePinner(Losdk/okhttp3/CertificatePinner;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 735
    iput-object p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->certificatePinner:Losdk/okhttp3/CertificatePinner;

    return-object p0

    .line 734
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "certificatePinner == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public connectTimeout(JLjava/util/concurrent/TimeUnit;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 1

    const-string v0, "timeout"

    .line 537
    invoke-static {v0, p1, p2, p3}, Losdk/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    return-object p0
.end method

.method public connectionPool(Losdk/okhttp3/ConnectionPool;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 770
    iput-object p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->connectionPool:Losdk/okhttp3/ConnectionPool;

    return-object p0

    .line 769
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "connectionPool == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public connectionSpecs(Ljava/util/List;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Losdk/okhttp3/ConnectionSpec;",
            ">;)",
            "Losdk/okhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .line 874
    invoke-static {p1}, Losdk/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    return-object p0
.end method

.method public cookieJar(Losdk/okhttp3/CookieJar;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 619
    iput-object p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->cookieJar:Losdk/okhttp3/CookieJar;

    return-object p0

    .line 618
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cookieJar == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispatcher(Losdk/okhttp3/Dispatcher;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 819
    iput-object p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->dispatcher:Losdk/okhttp3/Dispatcher;

    return-object p0

    .line 818
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dispatcher == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dns(Losdk/okhttp3/Dns;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 643
    iput-object p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->dns:Losdk/okhttp3/Dns;

    return-object p0

    .line 642
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "dns == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public eventListener(Losdk/okhttp3/EventListener;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 916
    invoke-static {p1}, Losdk/okhttp3/EventListener;->factory(Losdk/okhttp3/EventListener;)Losdk/okhttp3/EventListener$Factory;

    move-result-object p1

    iput-object p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Losdk/okhttp3/EventListener$Factory;

    return-object p0

    .line 915
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "eventListener == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public eventListenerFactory(Losdk/okhttp3/EventListener$Factory;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 930
    iput-object p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Losdk/okhttp3/EventListener$Factory;

    return-object p0

    .line 928
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "eventListenerFactory == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public followRedirects(Z)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 0

    .line 787
    iput-boolean p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    return-object p0
.end method

.method public followSslRedirects(Z)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 0

    .line 781
    iput-boolean p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    return-object p0
.end method

.method public hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 724
    iput-object p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0

    .line 723
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "hostnameVerifier == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Losdk/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 884
    iget-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public networkInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Losdk/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 899
    iget-object v0, p0, Losdk/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public pingInterval(JLjava/util/concurrent/TimeUnit;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 1

    const-string v0, "interval"

    .line 584
    invoke-static {v0, p1, p2, p3}, Losdk/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->pingInterval:I

    return-object p0
.end method

.method public protocols(Ljava/util/List;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Losdk/okhttp3/Protocol;",
            ">;)",
            "Losdk/okhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .line 852
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 855
    sget-object p1, Losdk/okhttp3/Protocol;->HTTP_1_1:Losdk/okhttp3/Protocol;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 858
    sget-object p1, Losdk/okhttp3/Protocol;->HTTP_1_0:Losdk/okhttp3/Protocol;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 861
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 866
    sget-object p1, Losdk/okhttp3/Protocol;->SPDY_3:Losdk/okhttp3/Protocol;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 869
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    return-object p0

    .line 862
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "protocols must not contain null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 859
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must not contain http/1.0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 856
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public proxy(Ljava/net/Proxy;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 594
    iput-object p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    return-object p0
.end method

.method public proxyAuthenticator(Losdk/okhttp3/Authenticator;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 759
    iput-object p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Losdk/okhttp3/Authenticator;

    return-object p0

    .line 758
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "proxyAuthenticator == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public proxySelector(Ljava/net/ProxySelector;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 0

    .line 607
    iput-object p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    return-object p0
.end method

.method public readTimeout(JLjava/util/concurrent/TimeUnit;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 1

    const-string v0, "timeout"

    .line 552
    invoke-static {v0, p1, p2, p3}, Losdk/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->readTimeout:I

    return-object p0
.end method

.method public retryOnConnectionFailure(Z)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 0

    .line 810
    iput-boolean p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    return-object p0
.end method

.method setInternalCache(Losdk/okhttp3/internal/cache/InternalCache;)V
    .locals 0
    .param p1    # Losdk/okhttp3/internal/cache/InternalCache;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 625
    iput-object p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->internalCache:Losdk/okhttp3/internal/cache/InternalCache;

    const/4 p1, 0x0

    .line 626
    iput-object p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->cache:Losdk/okhttp3/Cache;

    return-void
.end method

.method public socketFactory(Ljavax/net/SocketFactory;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 657
    iput-object p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    return-object p0

    .line 656
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "socketFactory == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 672
    iput-object p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 673
    invoke-static {}, Losdk/okhttp3/internal/platform/Platform;->get()Losdk/okhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0, p1}, Losdk/okhttp3/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/SSLSocketFactory;)Losdk/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object p1

    iput-object p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Losdk/okhttp3/internal/tls/CertificateChainCleaner;

    return-object p0

    .line 671
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sslSocketFactory == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 711
    iput-object p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 712
    invoke-static {p2}, Losdk/okhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Losdk/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object p1

    iput-object p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Losdk/okhttp3/internal/tls/CertificateChainCleaner;

    return-object p0

    .line 710
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "trustManager == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 709
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sslSocketFactory == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeTimeout(JLjava/util/concurrent/TimeUnit;)Losdk/okhttp3/OkHttpClient$Builder;
    .locals 1

    const-string v0, "timeout"

    .line 566
    invoke-static {v0, p1, p2, p3}, Losdk/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Losdk/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    return-object p0
.end method
