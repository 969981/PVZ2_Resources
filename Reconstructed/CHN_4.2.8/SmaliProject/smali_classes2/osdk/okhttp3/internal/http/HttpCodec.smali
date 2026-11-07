.class public interface abstract Losdk/okhttp3/internal/http/HttpCodec;
.super Ljava/lang/Object;
.source "HttpCodec.java"


# static fields
.field public static final DISCARD_STREAM_TIMEOUT_MILLIS:I = 0x64


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract createRequestBody(Losdk/okhttp3/Request;J)Losdk/okio/Sink;
.end method

.method public abstract finishRequest()V
.end method

.method public abstract flushRequest()V
.end method

.method public abstract openResponseBody(Losdk/okhttp3/Response;)Losdk/okhttp3/ResponseBody;
.end method

.method public abstract readResponseHeaders(Z)Losdk/okhttp3/Response$Builder;
.end method

.method public abstract writeRequestHeaders(Losdk/okhttp3/Request;)V
.end method
