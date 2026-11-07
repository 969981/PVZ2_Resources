.class public Losdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;
.super Losdk/okio/ForwardingSource;
.source "Http2Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Losdk/okhttp3/internal/http2/Http2Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StreamFinishingSource"
.end annotation


# instance fields
.field bytesRead:J

.field completed:Z

.field final synthetic this$0:Losdk/okhttp3/internal/http2/Http2Codec;


# direct methods
.method constructor <init>(Losdk/okhttp3/internal/http2/Http2Codec;Losdk/okio/Source;)V
    .locals 0

    .line 204
    iput-object p1, p0, Losdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Losdk/okhttp3/internal/http2/Http2Codec;

    .line 205
    invoke-direct {p0, p2}, Losdk/okio/ForwardingSource;-><init>(Losdk/okio/Source;)V

    const/4 p1, 0x0

    .line 201
    iput-boolean p1, p0, Losdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->completed:Z

    const-wide/16 p1, 0x0

    .line 202
    iput-wide p1, p0, Losdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J

    return-void
.end method

.method private endOfInput(Ljava/io/IOException;)V
    .locals 7

    .line 227
    iget-boolean v0, p0, Losdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->completed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Losdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->completed:Z

    .line 229
    iget-object v0, p0, Losdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Losdk/okhttp3/internal/http2/Http2Codec;

    iget-object v1, v0, Losdk/okhttp3/internal/http2/Http2Codec;->streamAllocation:Losdk/okhttp3/internal/connection/StreamAllocation;

    const/4 v2, 0x0

    iget-object v3, p0, Losdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Losdk/okhttp3/internal/http2/Http2Codec;

    iget-wide v4, p0, Losdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Losdk/okhttp3/internal/connection/StreamAllocation;->streamFinished(ZLosdk/okhttp3/internal/http/HttpCodec;JLjava/io/IOException;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 222
    invoke-super {p0}, Losdk/okio/ForwardingSource;->close()V

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, v0}, Losdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->endOfInput(Ljava/io/IOException;)V

    return-void
.end method

.method public read(Losdk/okio/Buffer;J)J
    .locals 2

    .line 210
    :try_start_0
    invoke-virtual {p0}, Losdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->delegate()Losdk/okio/Source;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Losdk/okio/Source;->read(Losdk/okio/Buffer;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    .line 212
    iget-wide v0, p0, Losdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Losdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide p1

    :catch_0
    move-exception p1

    .line 216
    invoke-direct {p0, p1}, Losdk/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->endOfInput(Ljava/io/IOException;)V

    .line 217
    throw p1
.end method
