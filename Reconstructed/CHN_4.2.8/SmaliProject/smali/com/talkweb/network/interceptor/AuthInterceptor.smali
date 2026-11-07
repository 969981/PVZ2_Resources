.class public Lcom/talkweb/network/interceptor/AuthInterceptor;
.super Ljava/lang/Object;
.source "AuthInterceptor.java"

# interfaces
.implements Lcom/talkweb/network/internal/NativeInterceptor;


# instance fields
.field private final tokenProvider:Lcom/talkweb/network/config/NetworkConfig$TokenProvider;


# direct methods
.method public constructor <init>(Lcom/talkweb/network/config/NetworkConfig$TokenProvider;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/talkweb/network/interceptor/AuthInterceptor;->tokenProvider:Lcom/talkweb/network/config/NetworkConfig$TokenProvider;

    return-void
.end method


# virtual methods
.method public intercept(Lcom/talkweb/network/internal/NativeInterceptor$Chain;)Lcom/talkweb/network/internal/NativeResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/talkweb/network/interceptor/AuthInterceptor;->tokenProvider:Lcom/talkweb/network/config/NetworkConfig$TokenProvider;

    if-nez v0, :cond_0

    .line 32
    invoke-interface {p1}, Lcom/talkweb/network/internal/NativeInterceptor$Chain;->request()Lcom/talkweb/network/internal/NativeRequest;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/talkweb/network/internal/NativeInterceptor$Chain;->proceed(Lcom/talkweb/network/internal/NativeRequest;)Lcom/talkweb/network/internal/NativeResponse;

    move-result-object p1

    return-object p1

    .line 34
    :cond_0
    invoke-interface {v0}, Lcom/talkweb/network/config/NetworkConfig$TokenProvider;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {p1}, Lcom/talkweb/network/internal/NativeInterceptor$Chain;->request()Lcom/talkweb/network/internal/NativeRequest;

    move-result-object v1

    .line 40
    new-instance v5, Ljava/util/HashMap;

    iget-object v2, v1, Lcom/talkweb/network/internal/NativeRequest;->headers:Ljava/util/Map;

    invoke-direct {v5, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Authorization"

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v0, Lcom/talkweb/network/internal/NativeRequest;

    iget-object v3, v1, Lcom/talkweb/network/internal/NativeRequest;->method:Ljava/lang/String;

    iget-object v4, v1, Lcom/talkweb/network/internal/NativeRequest;->url:Ljava/lang/String;

    iget-object v6, v1, Lcom/talkweb/network/internal/NativeRequest;->body:Ljava/lang/String;

    iget-object v7, v1, Lcom/talkweb/network/internal/NativeRequest;->contentType:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/talkweb/network/internal/NativeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-interface {p1, v0}, Lcom/talkweb/network/internal/NativeInterceptor$Chain;->proceed(Lcom/talkweb/network/internal/NativeRequest;)Lcom/talkweb/network/internal/NativeResponse;

    move-result-object p1

    return-object p1

    .line 36
    :cond_2
    :goto_0
    invoke-interface {p1}, Lcom/talkweb/network/internal/NativeInterceptor$Chain;->request()Lcom/talkweb/network/internal/NativeRequest;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/talkweb/network/internal/NativeInterceptor$Chain;->proceed(Lcom/talkweb/network/internal/NativeRequest;)Lcom/talkweb/network/internal/NativeResponse;

    move-result-object p1

    return-object p1
.end method
