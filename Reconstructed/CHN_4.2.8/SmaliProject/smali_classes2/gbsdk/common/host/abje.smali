.class public Lgbsdk/common/host/abje;
.super Ljava/lang/Object;
.source "OkHttp3SecurityFactorInterceptor.java"

# interfaces
.implements Losdk/okhttp3/Interceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Losdk/okhttp3/Interceptor$Chain;)Losdk/okhttp3/Response;
    .locals 5

    .line 16
    invoke-interface {p1}, Losdk/okhttp3/Interceptor$Chain;->request()Losdk/okhttp3/Request;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Losdk/okhttp3/Request;->url()Losdk/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Losdk/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Losdk/okhttp3/Request;->headers()Losdk/okhttp3/Headers;

    move-result-object v2

    invoke-virtual {v2}, Losdk/okhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->tryAddSecurityFactor(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    .line 21
    invoke-interface {p1, v0}, Losdk/okhttp3/Interceptor$Chain;->proceed(Losdk/okhttp3/Request;)Losdk/okhttp3/Response;

    move-result-object p1

    return-object p1

    .line 26
    :cond_0
    new-instance v2, Losdk/okhttp3/Request$Builder;

    invoke-direct {v2}, Losdk/okhttp3/Request$Builder;-><init>()V

    .line 27
    invoke-virtual {v0}, Losdk/okhttp3/Request;->url()Losdk/okhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v2, v3}, Losdk/okhttp3/Request$Builder;->url(Losdk/okhttp3/HttpUrl;)Losdk/okhttp3/Request$Builder;

    .line 28
    invoke-virtual {v0}, Losdk/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Losdk/okhttp3/Request;->body()Losdk/okhttp3/RequestBody;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Losdk/okhttp3/Request$Builder;->method(Ljava/lang/String;Losdk/okhttp3/RequestBody;)Losdk/okhttp3/Request$Builder;

    .line 29
    invoke-virtual {v0}, Losdk/okhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Losdk/okhttp3/Request$Builder;->tag(Ljava/lang/Object;)Losdk/okhttp3/Request$Builder;

    .line 30
    invoke-virtual {v0}, Losdk/okhttp3/Request;->headers()Losdk/okhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Losdk/okhttp3/Headers;->newBuilder()Losdk/okhttp3/Headers$Builder;

    move-result-object v0

    .line 31
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Losdk/okhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/Headers$Builder;

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0}, Losdk/okhttp3/Headers$Builder;->build()Losdk/okhttp3/Headers;

    move-result-object v0

    invoke-virtual {v2, v0}, Losdk/okhttp3/Request$Builder;->headers(Losdk/okhttp3/Headers;)Losdk/okhttp3/Request$Builder;

    .line 35
    invoke-virtual {v2}, Losdk/okhttp3/Request$Builder;->build()Losdk/okhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Losdk/okhttp3/Interceptor$Chain;->proceed(Losdk/okhttp3/Request;)Losdk/okhttp3/Response;

    move-result-object p1

    return-object p1
.end method
