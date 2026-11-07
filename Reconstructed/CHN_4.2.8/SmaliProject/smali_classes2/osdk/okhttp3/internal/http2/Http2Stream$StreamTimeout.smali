.class public Losdk/okhttp3/internal/http2/Http2Stream$StreamTimeout;
.super Losdk/okio/AsyncTimeout;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Losdk/okhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StreamTimeout"
.end annotation


# instance fields
.field final synthetic this$0:Losdk/okhttp3/internal/http2/Http2Stream;


# direct methods
.method constructor <init>(Losdk/okhttp3/internal/http2/Http2Stream;)V
    .locals 0

    .line 587
    iput-object p1, p0, Losdk/okhttp3/internal/http2/Http2Stream$StreamTimeout;->this$0:Losdk/okhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Losdk/okio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method public exitAndThrowIfTimedOut()V
    .locals 1

    .line 601
    invoke-virtual {p0}, Losdk/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Losdk/okhttp3/internal/http2/Http2Stream$StreamTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 593
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 595
    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public timedOut()V
    .locals 2

    .line 589
    iget-object v0, p0, Losdk/okhttp3/internal/http2/Http2Stream$StreamTimeout;->this$0:Losdk/okhttp3/internal/http2/Http2Stream;

    sget-object v1, Losdk/okhttp3/internal/http2/ErrorCode;->CANCEL:Losdk/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Losdk/okhttp3/internal/http2/Http2Stream;->closeLater(Losdk/okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method
