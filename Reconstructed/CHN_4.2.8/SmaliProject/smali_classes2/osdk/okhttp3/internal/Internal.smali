.class public abstract Losdk/okhttp3/internal/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# static fields
.field public static instance:Losdk/okhttp3/internal/Internal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeInstanceForTests()V
    .locals 1

    .line 45
    new-instance v0, Losdk/okhttp3/OkHttpClient;

    invoke-direct {v0}, Losdk/okhttp3/OkHttpClient;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addLenient(Losdk/okhttp3/Headers$Builder;Ljava/lang/String;)V
.end method

.method public abstract addLenient(Losdk/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract apply(Losdk/okhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract code(Losdk/okhttp3/Response$Builder;)I
.end method

.method public abstract connectionBecameIdle(Losdk/okhttp3/ConnectionPool;Losdk/okhttp3/internal/connection/RealConnection;)Z
.end method

.method public abstract deduplicate(Losdk/okhttp3/ConnectionPool;Losdk/okhttp3/Address;Losdk/okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;
.end method

.method public abstract equalsNonHost(Losdk/okhttp3/Address;Losdk/okhttp3/Address;)Z
.end method

.method public abstract get(Losdk/okhttp3/ConnectionPool;Losdk/okhttp3/Address;Losdk/okhttp3/internal/connection/StreamAllocation;Losdk/okhttp3/Route;)Losdk/okhttp3/internal/connection/RealConnection;
.end method

.method public abstract getHttpUrlChecked(Ljava/lang/String;)Losdk/okhttp3/HttpUrl;
.end method

.method public abstract newWebSocketCall(Losdk/okhttp3/OkHttpClient;Losdk/okhttp3/Request;)Losdk/okhttp3/Call;
.end method

.method public abstract put(Losdk/okhttp3/ConnectionPool;Losdk/okhttp3/internal/connection/RealConnection;)V
.end method

.method public abstract routeDatabase(Losdk/okhttp3/ConnectionPool;)Losdk/okhttp3/internal/connection/RouteDatabase;
.end method

.method public abstract setCache(Losdk/okhttp3/OkHttpClient$Builder;Losdk/okhttp3/internal/cache/InternalCache;)V
.end method

.method public abstract streamAllocation(Losdk/okhttp3/Call;)Losdk/okhttp3/internal/connection/StreamAllocation;
.end method
