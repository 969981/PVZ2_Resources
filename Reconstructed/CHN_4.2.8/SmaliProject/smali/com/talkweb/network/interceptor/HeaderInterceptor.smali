.class public Lcom/talkweb/network/interceptor/HeaderInterceptor;
.super Ljava/lang/Object;
.source "HeaderInterceptor.java"

# interfaces
.implements Lcom/talkweb/network/internal/NativeInterceptor;


# instance fields
.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/talkweb/network/interceptor/HeaderInterceptor;->headers:Ljava/util/Map;

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

    .line 27
    iget-object v0, p0, Lcom/talkweb/network/interceptor/HeaderInterceptor;->headers:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {p1}, Lcom/talkweb/network/internal/NativeInterceptor$Chain;->request()Lcom/talkweb/network/internal/NativeRequest;

    move-result-object v0

    .line 32
    new-instance v4, Ljava/util/HashMap;

    iget-object v1, v0, Lcom/talkweb/network/internal/NativeRequest;->headers:Ljava/util/Map;

    invoke-direct {v4, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 33
    iget-object v1, p0, Lcom/talkweb/network/interceptor/HeaderInterceptor;->headers:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 34
    new-instance v7, Lcom/talkweb/network/internal/NativeRequest;

    iget-object v2, v0, Lcom/talkweb/network/internal/NativeRequest;->method:Ljava/lang/String;

    iget-object v3, v0, Lcom/talkweb/network/internal/NativeRequest;->url:Ljava/lang/String;

    iget-object v5, v0, Lcom/talkweb/network/internal/NativeRequest;->body:Ljava/lang/String;

    iget-object v6, v0, Lcom/talkweb/network/internal/NativeRequest;->contentType:Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/talkweb/network/internal/NativeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-interface {p1, v7}, Lcom/talkweb/network/internal/NativeInterceptor$Chain;->proceed(Lcom/talkweb/network/internal/NativeRequest;)Lcom/talkweb/network/internal/NativeResponse;

    move-result-object p1

    return-object p1

    .line 28
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/talkweb/network/internal/NativeInterceptor$Chain;->request()Lcom/talkweb/network/internal/NativeRequest;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/talkweb/network/internal/NativeInterceptor$Chain;->proceed(Lcom/talkweb/network/internal/NativeRequest;)Lcom/talkweb/network/internal/NativeResponse;

    move-result-object p1

    return-object p1
.end method
