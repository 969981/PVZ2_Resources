.class public final Losdk/okhttp3/internal/http2/Http2Codec;
.super Ljava/lang/Object;
.source "Http2Codec.java"

# interfaces
.implements Losdk/okhttp3/internal/http/HttpCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Losdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;
    }
.end annotation


# static fields
.field private static final CONNECTION:Losdk/okio/ByteString;

.field private static final ENCODING:Losdk/okio/ByteString;

.field private static final HOST:Losdk/okio/ByteString;

.field private static final HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Losdk/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Losdk/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_ALIVE:Losdk/okio/ByteString;

.field private static final PROXY_CONNECTION:Losdk/okio/ByteString;

.field private static final TE:Losdk/okio/ByteString;

.field private static final TRANSFER_ENCODING:Losdk/okio/ByteString;

.field private static final UPGRADE:Losdk/okio/ByteString;


# instance fields
.field private final chain:Losdk/okhttp3/Interceptor$Chain;

.field private final client:Losdk/okhttp3/OkHttpClient;

.field private final connection:Losdk/okhttp3/internal/http2/Http2Connection;

.field private stream:Losdk/okhttp3/internal/http2/Http2Stream;

.field final streamAllocation:Losdk/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "connection"

    .line 55
    invoke-static {v0}, Losdk/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Losdk/okio/ByteString;

    move-result-object v0

    sput-object v0, Losdk/okhttp3/internal/http2/Http2Codec;->CONNECTION:Losdk/okio/ByteString;

    const-string v0, "host"

    .line 56
    invoke-static {v0}, Losdk/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Losdk/okio/ByteString;

    move-result-object v0

    sput-object v0, Losdk/okhttp3/internal/http2/Http2Codec;->HOST:Losdk/okio/ByteString;

    const-string v0, "keep-alive"

    .line 57
    invoke-static {v0}, Losdk/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Losdk/okio/ByteString;

    move-result-object v0

    sput-object v0, Losdk/okhttp3/internal/http2/Http2Codec;->KEEP_ALIVE:Losdk/okio/ByteString;

    const-string v0, "proxy-connection"

    .line 58
    invoke-static {v0}, Losdk/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Losdk/okio/ByteString;

    move-result-object v0

    sput-object v0, Losdk/okhttp3/internal/http2/Http2Codec;->PROXY_CONNECTION:Losdk/okio/ByteString;

    const-string v0, "transfer-encoding"

    .line 59
    invoke-static {v0}, Losdk/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Losdk/okio/ByteString;

    move-result-object v0

    sput-object v0, Losdk/okhttp3/internal/http2/Http2Codec;->TRANSFER_ENCODING:Losdk/okio/ByteString;

    const-string v0, "te"

    .line 60
    invoke-static {v0}, Losdk/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Losdk/okio/ByteString;

    move-result-object v0

    sput-object v0, Losdk/okhttp3/internal/http2/Http2Codec;->TE:Losdk/okio/ByteString;

    const-string v0, "encoding"

    .line 61
    invoke-static {v0}, Losdk/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Losdk/okio/ByteString;

    move-result-object v0

    sput-object v0, Losdk/okhttp3/internal/http2/Http2Codec;->ENCODING:Losdk/okio/ByteString;

    const-string v0, "upgrade"

    .line 62
    invoke-static {v0}, Losdk/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Losdk/okio/ByteString;

    move-result-object v0

    sput-object v0, Losdk/okhttp3/internal/http2/Http2Codec;->UPGRADE:Losdk/okio/ByteString;

    const/16 v1, 0xc

    new-array v1, v1, [Losdk/okio/ByteString;

    .line 65
    sget-object v2, Losdk/okhttp3/internal/http2/Http2Codec;->CONNECTION:Losdk/okio/ByteString;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Losdk/okhttp3/internal/http2/Http2Codec;->HOST:Losdk/okio/ByteString;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Losdk/okhttp3/internal/http2/Http2Codec;->KEEP_ALIVE:Losdk/okio/ByteString;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Losdk/okhttp3/internal/http2/Http2Codec;->PROXY_CONNECTION:Losdk/okio/ByteString;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Losdk/okhttp3/internal/http2/Http2Codec;->TE:Losdk/okio/ByteString;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Losdk/okhttp3/internal/http2/Http2Codec;->TRANSFER_ENCODING:Losdk/okio/ByteString;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Losdk/okhttp3/internal/http2/Http2Codec;->ENCODING:Losdk/okio/ByteString;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sget-object v0, Losdk/okhttp3/internal/http2/Header;->TARGET_METHOD:Losdk/okio/ByteString;

    const/16 v10, 0x8

    aput-object v0, v1, v10

    sget-object v0, Losdk/okhttp3/internal/http2/Header;->TARGET_PATH:Losdk/okio/ByteString;

    const/16 v11, 0x9

    aput-object v0, v1, v11

    sget-object v0, Losdk/okhttp3/internal/http2/Header;->TARGET_SCHEME:Losdk/okio/ByteString;

    const/16 v11, 0xa

    aput-object v0, v1, v11

    sget-object v0, Losdk/okhttp3/internal/http2/Header;->TARGET_AUTHORITY:Losdk/okio/ByteString;

    const/16 v11, 0xb

    aput-object v0, v1, v11

    invoke-static {v1}, Losdk/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Losdk/okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    new-array v0, v10, [Losdk/okio/ByteString;

    .line 78
    sget-object v1, Losdk/okhttp3/internal/http2/Http2Codec;->CONNECTION:Losdk/okio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Losdk/okhttp3/internal/http2/Http2Codec;->HOST:Losdk/okio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Losdk/okhttp3/internal/http2/Http2Codec;->KEEP_ALIVE:Losdk/okio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Losdk/okhttp3/internal/http2/Http2Codec;->PROXY_CONNECTION:Losdk/okio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Losdk/okhttp3/internal/http2/Http2Codec;->TE:Losdk/okio/ByteString;

    aput-object v1, v0, v7

    sget-object v1, Losdk/okhttp3/internal/http2/Http2Codec;->TRANSFER_ENCODING:Losdk/okio/ByteString;

    aput-object v1, v0, v8

    sget-object v1, Losdk/okhttp3/internal/http2/Http2Codec;->ENCODING:Losdk/okio/ByteString;

    aput-object v1, v0, v9

    sget-object v1, Losdk/okhttp3/internal/http2/Http2Codec;->UPGRADE:Losdk/okio/ByteString;

    aput-object v1, v0, v2

    invoke-static {v0}, Losdk/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Losdk/okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Losdk/okhttp3/OkHttpClient;Losdk/okhttp3/Interceptor$Chain;Losdk/okhttp3/internal/connection/StreamAllocation;Losdk/okhttp3/internal/http2/Http2Connection;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Losdk/okhttp3/internal/http2/Http2Codec;->client:Losdk/okhttp3/OkHttpClient;

    .line 97
    iput-object p2, p0, Losdk/okhttp3/internal/http2/Http2Codec;->chain:Losdk/okhttp3/Interceptor$Chain;

    .line 98
    iput-object p3, p0, Losdk/okhttp3/internal/http2/Http2Codec;->streamAllocation:Losdk/okhttp3/internal/connection/StreamAllocation;

    .line 99
    iput-object p4, p0, Losdk/okhttp3/internal/http2/Http2Codec;->connection:Losdk/okhttp3/internal/http2/Http2Connection;

    return-void
.end method

.method public static http2HeadersList(Losdk/okhttp3/Request;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Losdk/okhttp3/Request;",
            ")",
            "Ljava/util/List<",
            "Losdk/okhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Losdk/okhttp3/Request;->headers()Losdk/okhttp3/Headers;

    move-result-object v0

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Losdk/okhttp3/Headers;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    new-instance v2, Losdk/okhttp3/internal/http2/Header;

    sget-object v3, Losdk/okhttp3/internal/http2/Header;->TARGET_METHOD:Losdk/okio/ByteString;

    invoke-virtual {p0}, Losdk/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Losdk/okhttp3/internal/http2/Header;-><init>(Losdk/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v2, Losdk/okhttp3/internal/http2/Header;

    sget-object v3, Losdk/okhttp3/internal/http2/Header;->TARGET_PATH:Losdk/okio/ByteString;

    invoke-virtual {p0}, Losdk/okhttp3/Request;->url()Losdk/okhttp3/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Losdk/okhttp3/internal/http/RequestLine;->requestPath(Losdk/okhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Losdk/okhttp3/internal/http2/Header;-><init>(Losdk/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    .line 138
    invoke-virtual {p0, v2}, Losdk/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 140
    new-instance v3, Losdk/okhttp3/internal/http2/Header;

    sget-object v4, Losdk/okhttp3/internal/http2/Header;->TARGET_AUTHORITY:Losdk/okio/ByteString;

    invoke-direct {v3, v4, v2}, Losdk/okhttp3/internal/http2/Header;-><init>(Losdk/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    new-instance v2, Losdk/okhttp3/internal/http2/Header;

    sget-object v3, Losdk/okhttp3/internal/http2/Header;->TARGET_SCHEME:Losdk/okio/ByteString;

    invoke-virtual {p0}, Losdk/okhttp3/Request;->url()Losdk/okhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Losdk/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Losdk/okhttp3/internal/http2/Header;-><init>(Losdk/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 144
    invoke-virtual {v0}, Losdk/okhttp3/Headers;->size()I

    move-result v2

    :goto_0
    if-ge p0, v2, :cond_2

    .line 146
    invoke-virtual {v0, p0}, Losdk/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Losdk/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Losdk/okio/ByteString;

    move-result-object v3

    .line 147
    sget-object v4, Losdk/okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 148
    new-instance v4, Losdk/okhttp3/internal/http2/Header;

    invoke-virtual {v0, p0}, Losdk/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Losdk/okhttp3/internal/http2/Header;-><init>(Losdk/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static readHttp2HeadersList(Ljava/util/List;)Losdk/okhttp3/Response$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Losdk/okhttp3/internal/http2/Header;",
            ">;)",
            "Losdk/okhttp3/Response$Builder;"
        }
    .end annotation

    .line 157
    new-instance v0, Losdk/okhttp3/Headers$Builder;

    invoke-direct {v0}, Losdk/okhttp3/Headers$Builder;-><init>()V

    .line 158
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 159
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Losdk/okhttp3/internal/http2/Header;

    if-nez v5, :cond_0

    if-eqz v4, :cond_2

    .line 164
    iget v5, v4, Losdk/okhttp3/internal/http/StatusLine;->code:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    .line 166
    new-instance v0, Losdk/okhttp3/Headers$Builder;

    invoke-direct {v0}, Losdk/okhttp3/Headers$Builder;-><init>()V

    move-object v4, v2

    goto :goto_1

    .line 171
    :cond_0
    iget-object v6, v5, Losdk/okhttp3/internal/http2/Header;->name:Losdk/okio/ByteString;

    .line 172
    iget-object v5, v5, Losdk/okhttp3/internal/http2/Header;->value:Losdk/okio/ByteString;

    invoke-virtual {v5}, Losdk/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v5

    .line 173
    sget-object v7, Losdk/okhttp3/internal/http2/Header;->RESPONSE_STATUS:Losdk/okio/ByteString;

    invoke-virtual {v6, v7}, Losdk/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP/1.1 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Losdk/okhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Losdk/okhttp3/internal/http/StatusLine;

    move-result-object v4

    goto :goto_1

    .line 175
    :cond_1
    sget-object v7, Losdk/okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 176
    sget-object v7, Losdk/okhttp3/internal/Internal;->instance:Losdk/okhttp3/internal/Internal;

    invoke-virtual {v6}, Losdk/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v0, v6, v5}, Losdk/okhttp3/internal/Internal;->addLenient(Losdk/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 181
    new-instance p0, Losdk/okhttp3/Response$Builder;

    invoke-direct {p0}, Losdk/okhttp3/Response$Builder;-><init>()V

    sget-object v1, Losdk/okhttp3/Protocol;->HTTP_2:Losdk/okhttp3/Protocol;

    .line 182
    invoke-virtual {p0, v1}, Losdk/okhttp3/Response$Builder;->protocol(Losdk/okhttp3/Protocol;)Losdk/okhttp3/Response$Builder;

    move-result-object p0

    iget v1, v4, Losdk/okhttp3/internal/http/StatusLine;->code:I

    .line 183
    invoke-virtual {p0, v1}, Losdk/okhttp3/Response$Builder;->code(I)Losdk/okhttp3/Response$Builder;

    move-result-object p0

    iget-object v1, v4, Losdk/okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 184
    invoke-virtual {p0, v1}, Losdk/okhttp3/Response$Builder;->message(Ljava/lang/String;)Losdk/okhttp3/Response$Builder;

    move-result-object p0

    .line 185
    invoke-virtual {v0}, Losdk/okhttp3/Headers$Builder;->build()Losdk/okhttp3/Headers;

    move-result-object v0

    invoke-virtual {p0, v0}, Losdk/okhttp3/Response$Builder;->headers(Losdk/okhttp3/Headers;)Losdk/okhttp3/Response$Builder;

    move-result-object p0

    return-object p0

    .line 179
    :cond_4
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 197
    iget-object v0, p0, Losdk/okhttp3/internal/http2/Http2Codec;->stream:Losdk/okhttp3/internal/http2/Http2Stream;

    if-eqz v0, :cond_0

    sget-object v1, Losdk/okhttp3/internal/http2/ErrorCode;->CANCEL:Losdk/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Losdk/okhttp3/internal/http2/Http2Stream;->closeLater(Losdk/okhttp3/internal/http2/ErrorCode;)V

    :cond_0
    return-void
.end method

.method public createRequestBody(Losdk/okhttp3/Request;J)Losdk/okio/Sink;
    .locals 0

    .line 103
    iget-object p1, p0, Losdk/okhttp3/internal/http2/Http2Codec;->stream:Losdk/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {p1}, Losdk/okhttp3/internal/http2/Http2Stream;->getSink()Losdk/okio/Sink;

    move-result-object p1

    return-object p1
.end method

.method public finishRequest()V
    .locals 1

    .line 121
    iget-object v0, p0, Losdk/okhttp3/internal/http2/Http2Codec;->stream:Losdk/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Losdk/okhttp3/internal/http2/Http2Stream;->getSink()Losdk/okio/Sink;

    move-result-object v0

    invoke-interface {v0}, Losdk/okio/Sink;->close()V

    return-void
.end method

.method public flushRequest()V
    .locals 1

    .line 117
    iget-object v0, p0, Losdk/okhttp3/internal/http2/Http2Codec;->connection:Losdk/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Losdk/okhttp3/internal/http2/Http2Connection;->flush()V

    return-void
.end method

.method public openResponseBody(Losdk/okhttp3/Response;)Losdk/okhttp3/ResponseBody;
    .locals 4

    .line 189
    iget-object v0, p0, Losdk/okhttp3/internal/http2/Http2Codec;->streamAllocation:Losdk/okhttp3/internal/connection/StreamAllocation;

    iget-object v0, v0, Losdk/okhttp3/internal/connection/StreamAllocation;->eventListener:Losdk/okhttp3/EventListener;

    iget-object v1, p0, Losdk/okhttp3/internal/http2/Http2Codec;->streamAllocation:Losdk/okhttp3/internal/connection/StreamAllocation;

    iget-object v1, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->call:Losdk/okhttp3/Call;

    invoke-virtual {v0, v1}, Losdk/okhttp3/EventListener;->responseBodyStart(Losdk/okhttp3/Call;)V

    const-string v0, "Content-Type"

    .line 190
    invoke-virtual {p1, v0}, Losdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {p1}, Losdk/okhttp3/internal/http/HttpHeaders;->contentLength(Losdk/okhttp3/Response;)J

    move-result-wide v1

    .line 192
    new-instance p1, Losdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;

    iget-object v3, p0, Losdk/okhttp3/internal/http2/Http2Codec;->stream:Losdk/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v3}, Losdk/okhttp3/internal/http2/Http2Stream;->getSource()Losdk/okio/Source;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Losdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;-><init>(Losdk/okhttp3/internal/http2/Http2Codec;Losdk/okio/Source;)V

    .line 193
    new-instance v3, Losdk/okhttp3/internal/http/RealResponseBody;

    invoke-static {p1}, Losdk/okio/Okio;->buffer(Losdk/okio/Source;)Losdk/okio/BufferedSource;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Losdk/okhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLosdk/okio/BufferedSource;)V

    return-object v3
.end method

.method public readResponseHeaders(Z)Losdk/okhttp3/Response$Builder;
    .locals 2

    .line 125
    iget-object v0, p0, Losdk/okhttp3/internal/http2/Http2Codec;->stream:Losdk/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Losdk/okhttp3/internal/http2/Http2Stream;->takeResponseHeaders()Ljava/util/List;

    move-result-object v0

    .line 126
    invoke-static {v0}, Losdk/okhttp3/internal/http2/Http2Codec;->readHttp2HeadersList(Ljava/util/List;)Losdk/okhttp3/Response$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 127
    sget-object p1, Losdk/okhttp3/internal/Internal;->instance:Losdk/okhttp3/internal/Internal;

    invoke-virtual {p1, v0}, Losdk/okhttp3/internal/Internal;->code(Losdk/okhttp3/Response$Builder;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public writeRequestHeaders(Losdk/okhttp3/Request;)V
    .locals 3

    .line 107
    iget-object v0, p0, Losdk/okhttp3/internal/http2/Http2Codec;->stream:Losdk/okhttp3/internal/http2/Http2Stream;

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p1}, Losdk/okhttp3/Request;->body()Losdk/okhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 110
    :goto_0
    invoke-static {p1}, Losdk/okhttp3/internal/http2/Http2Codec;->http2HeadersList(Losdk/okhttp3/Request;)Ljava/util/List;

    move-result-object p1

    .line 111
    iget-object v1, p0, Losdk/okhttp3/internal/http2/Http2Codec;->connection:Losdk/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p1, v0}, Losdk/okhttp3/internal/http2/Http2Connection;->newStream(Ljava/util/List;Z)Losdk/okhttp3/internal/http2/Http2Stream;

    move-result-object p1

    iput-object p1, p0, Losdk/okhttp3/internal/http2/Http2Codec;->stream:Losdk/okhttp3/internal/http2/Http2Stream;

    .line 112
    invoke-virtual {p1}, Losdk/okhttp3/internal/http2/Http2Stream;->readTimeout()Losdk/okio/Timeout;

    move-result-object p1

    iget-object v0, p0, Losdk/okhttp3/internal/http2/Http2Codec;->chain:Losdk/okhttp3/Interceptor$Chain;

    invoke-interface {v0}, Losdk/okhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Losdk/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Losdk/okio/Timeout;

    .line 113
    iget-object p1, p0, Losdk/okhttp3/internal/http2/Http2Codec;->stream:Losdk/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {p1}, Losdk/okhttp3/internal/http2/Http2Stream;->writeTimeout()Losdk/okio/Timeout;

    move-result-object p1

    iget-object v0, p0, Losdk/okhttp3/internal/http2/Http2Codec;->chain:Losdk/okhttp3/Interceptor$Chain;

    invoke-interface {v0}, Losdk/okhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Losdk/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Losdk/okio/Timeout;

    return-void
.end method
