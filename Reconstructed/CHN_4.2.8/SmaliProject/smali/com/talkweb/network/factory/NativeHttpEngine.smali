.class public final Lcom/talkweb/network/factory/NativeHttpEngine;
.super Ljava/lang/Object;
.source "NativeHttpEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/talkweb/network/factory/NativeHttpEngine$RealChain;
    }
.end annotation


# instance fields
.field private final config:Lcom/talkweb/network/config/NetworkConfig;

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/talkweb/network/internal/NativeInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/talkweb/network/config/NetworkConfig;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/talkweb/network/config/NetworkConfig;",
            "Ljava/util/List<",
            "Lcom/talkweb/network/internal/NativeInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/talkweb/network/factory/NativeHttpEngine;->config:Lcom/talkweb/network/config/NetworkConfig;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/talkweb/network/factory/NativeHttpEngine;->interceptors:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/talkweb/network/factory/NativeHttpEngine;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/talkweb/network/factory/NativeHttpEngine;->interceptors:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/talkweb/network/factory/NativeHttpEngine;Lcom/talkweb/network/internal/NativeRequest;Lcom/talkweb/network/internal/NativeCall;)Lcom/talkweb/network/internal/NativeResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/talkweb/network/factory/NativeHttpEngine;->doSend(Lcom/talkweb/network/internal/NativeRequest;Lcom/talkweb/network/internal/NativeCall;)Lcom/talkweb/network/internal/NativeResponse;

    move-result-object p0

    return-object p0
.end method

.method private doSend(Lcom/talkweb/network/internal/NativeRequest;Lcom/talkweb/network/internal/NativeCall;)Lcom/talkweb/network/internal/NativeResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-virtual {p2}, Lcom/talkweb/network/internal/NativeCall;->isCanceled()Z

    move-result v0

    const-string v1, "request canceled"

    if-nez v0, :cond_7

    .line 92
    new-instance v0, Ljava/net/URL;

    iget-object v2, p1, Lcom/talkweb/network/internal/NativeRequest;->url:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 93
    invoke-virtual {p2, v0}, Lcom/talkweb/network/internal/NativeCall;->setConnection(Ljava/net/HttpURLConnection;)V

    .line 95
    :try_start_0
    iget-object v2, p1, Lcom/talkweb/network/internal/NativeRequest;->method:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/talkweb/network/factory/NativeHttpEngine;->config:Lcom/talkweb/network/config/NetworkConfig;

    invoke-virtual {v2}, Lcom/talkweb/network/config/NetworkConfig;->getConnectTimeoutMs()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 97
    iget-object v2, p0, Lcom/talkweb/network/factory/NativeHttpEngine;->config:Lcom/talkweb/network/config/NetworkConfig;

    invoke-virtual {v2}, Lcom/talkweb/network/config/NetworkConfig;->getReadTimeoutMs()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x1

    .line 98
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 100
    iget-object v3, p1, Lcom/talkweb/network/internal/NativeRequest;->headers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p1}, Lcom/talkweb/network/internal/NativeRequest;->hasBody()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 105
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v2, "Content-Type"

    .line 106
    iget-object v3, p1, Lcom/talkweb/network/internal/NativeRequest;->contentType:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/talkweb/network/internal/NativeRequest;->contentType:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v3, "application/json; charset=utf-8"

    :goto_1
    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object p1, p1, Lcom/talkweb/network/internal/NativeRequest;->body:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 110
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 111
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 112
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 113
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 110
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v2, :cond_2

    .line 113
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p2

    .line 116
    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 118
    invoke-virtual {p2}, Lcom/talkweb/network/internal/NativeCall;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_6

    .line 122
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 123
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_4
    const-string p2, ""

    :goto_4
    const/16 v1, 0xc8

    if-lt p1, v1, :cond_5

    const/16 v1, 0x12c

    if-ge p1, v1, :cond_5

    .line 124
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 125
    :goto_5
    invoke-static {v1}, Lcom/talkweb/network/factory/NativeHttpEngine;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v0}, Lcom/talkweb/network/factory/NativeHttpEngine;->flattenHeaders(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v2

    .line 128
    new-instance v3, Lcom/talkweb/network/internal/NativeResponse;

    invoke-direct {v3, p1, p2, v2, v1}, Lcom/talkweb/network/internal/NativeResponse;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 130
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v3

    .line 119
    :cond_6
    :try_start_6
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p1

    .line 130
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 131
    throw p1

    .line 89
    :cond_7
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static flattenHeaders(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_2

    .line 153
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

    .line 154
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 155
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 158
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static readStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 p0, 0x400

    :try_start_0
    new-array p0, p0, [C

    .line 141
    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 142
    invoke-virtual {v0, p0, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 137
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 144
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
.end method


# virtual methods
.method public execute(Lcom/talkweb/network/internal/NativeRequest;Lcom/talkweb/network/internal/NativeCall;)Lcom/talkweb/network/internal/NativeResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/talkweb/network/factory/NativeHttpEngine$RealChain;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/talkweb/network/factory/NativeHttpEngine$RealChain;-><init>(Lcom/talkweb/network/factory/NativeHttpEngine;ILcom/talkweb/network/internal/NativeRequest;Lcom/talkweb/network/internal/NativeCall;)V

    invoke-virtual {v0, p1}, Lcom/talkweb/network/factory/NativeHttpEngine$RealChain;->proceed(Lcom/talkweb/network/internal/NativeRequest;)Lcom/talkweb/network/internal/NativeResponse;

    move-result-object p1

    return-object p1
.end method
