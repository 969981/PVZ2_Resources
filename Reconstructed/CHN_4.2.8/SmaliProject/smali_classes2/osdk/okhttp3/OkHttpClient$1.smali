.class public final Losdk/okhttp3/OkHttpClient$1;
.super Losdk/okhttp3/internal/Internal;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Losdk/okhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Losdk/okhttp3/internal/Internal;-><init>()V

    return-void
.end method


# virtual methods
.method public addLenient(Losdk/okhttp3/Headers$Builder;Ljava/lang/String;)V
    .locals 0

    .line 137
    invoke-virtual {p1, p2}, Losdk/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Losdk/okhttp3/Headers$Builder;

    return-void
.end method

.method public addLenient(Losdk/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 141
    invoke-virtual {p1, p2, p3}, Losdk/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/Headers$Builder;

    return-void
.end method

.method public apply(Losdk/okhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    .line 181
    invoke-virtual {p1, p2, p3}, Losdk/okhttp3/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public code(Losdk/okhttp3/Response$Builder;)I
    .locals 0

    .line 176
    iget p1, p1, Losdk/okhttp3/Response$Builder;->code:I

    return p1
.end method

.method public connectionBecameIdle(Losdk/okhttp3/ConnectionPool;Losdk/okhttp3/internal/connection/RealConnection;)Z
    .locals 0

    .line 150
    invoke-virtual {p1, p2}, Losdk/okhttp3/ConnectionPool;->connectionBecameIdle(Losdk/okhttp3/internal/connection/RealConnection;)Z

    move-result p1

    return p1
.end method

.method public deduplicate(Losdk/okhttp3/ConnectionPool;Losdk/okhttp3/Address;Losdk/okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;
    .locals 0

    .line 164
    invoke-virtual {p1, p2, p3}, Losdk/okhttp3/ConnectionPool;->deduplicate(Losdk/okhttp3/Address;Losdk/okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public equalsNonHost(Losdk/okhttp3/Address;Losdk/okhttp3/Address;)Z
    .locals 0

    .line 159
    invoke-virtual {p1, p2}, Losdk/okhttp3/Address;->equalsNonHost(Losdk/okhttp3/Address;)Z

    move-result p1

    return p1
.end method

.method public get(Losdk/okhttp3/ConnectionPool;Losdk/okhttp3/Address;Losdk/okhttp3/internal/connection/StreamAllocation;Losdk/okhttp3/Route;)Losdk/okhttp3/internal/connection/RealConnection;
    .locals 0

    .line 155
    invoke-virtual {p1, p2, p3, p4}, Losdk/okhttp3/ConnectionPool;->get(Losdk/okhttp3/Address;Losdk/okhttp3/internal/connection/StreamAllocation;Losdk/okhttp3/Route;)Losdk/okhttp3/internal/connection/RealConnection;

    move-result-object p1

    return-object p1
.end method

.method public getHttpUrlChecked(Ljava/lang/String;)Losdk/okhttp3/HttpUrl;
    .locals 0

    .line 186
    invoke-static {p1}, Losdk/okhttp3/HttpUrl;->getChecked(Ljava/lang/String;)Losdk/okhttp3/HttpUrl;

    move-result-object p1

    return-object p1
.end method

.method public newWebSocketCall(Losdk/okhttp3/OkHttpClient;Losdk/okhttp3/Request;)Losdk/okhttp3/Call;
    .locals 1

    const/4 v0, 0x1

    .line 194
    invoke-static {p1, p2, v0}, Losdk/okhttp3/RealCall;->newRealCall(Losdk/okhttp3/OkHttpClient;Losdk/okhttp3/Request;Z)Losdk/okhttp3/RealCall;

    move-result-object p1

    return-object p1
.end method

.method public put(Losdk/okhttp3/ConnectionPool;Losdk/okhttp3/internal/connection/RealConnection;)V
    .locals 0

    .line 168
    invoke-virtual {p1, p2}, Losdk/okhttp3/ConnectionPool;->put(Losdk/okhttp3/internal/connection/RealConnection;)V

    return-void
.end method

.method public routeDatabase(Losdk/okhttp3/ConnectionPool;)Losdk/okhttp3/internal/connection/RouteDatabase;
    .locals 0

    .line 172
    iget-object p1, p1, Losdk/okhttp3/ConnectionPool;->routeDatabase:Losdk/okhttp3/internal/connection/RouteDatabase;

    return-object p1
.end method

.method public setCache(Losdk/okhttp3/OkHttpClient$Builder;Losdk/okhttp3/internal/cache/InternalCache;)V
    .locals 0

    .line 145
    invoke-virtual {p1, p2}, Losdk/okhttp3/OkHttpClient$Builder;->setInternalCache(Losdk/okhttp3/internal/cache/InternalCache;)V

    return-void
.end method

.method public streamAllocation(Losdk/okhttp3/Call;)Losdk/okhttp3/internal/connection/StreamAllocation;
    .locals 0

    .line 190
    check-cast p1, Losdk/okhttp3/RealCall;

    invoke-virtual {p1}, Losdk/okhttp3/RealCall;->streamAllocation()Losdk/okhttp3/internal/connection/StreamAllocation;

    move-result-object p1

    return-object p1
.end method
