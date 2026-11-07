.class public Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;
.super Losdk/okhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->headers(ZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field final synthetic val$newStream:Losdk/okhttp3/internal/http2/Http2Stream;


# direct methods
.method varargs constructor <init>(Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Losdk/okhttp3/internal/http2/Http2Stream;)V
    .locals 0

    .line 667
    iput-object p1, p0, Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->this$1:Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iput-object p4, p0, Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->val$newStream:Losdk/okhttp3/internal/http2/Http2Stream;

    invoke-direct {p0, p2, p3}, Losdk/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .line 670
    :try_start_0
    iget-object v0, p0, Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->this$1:Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v0, v0, Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Losdk/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Losdk/okhttp3/internal/http2/Http2Connection;->listener:Losdk/okhttp3/internal/http2/Http2Connection$Listener;

    iget-object v1, p0, Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->val$newStream:Losdk/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0, v1}, Losdk/okhttp3/internal/http2/Http2Connection$Listener;->onStream(Losdk/okhttp3/internal/http2/Http2Stream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 672
    invoke-static {}, Losdk/okhttp3/internal/platform/Platform;->get()Losdk/okhttp3/internal/platform/Platform;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Http2Connection.Listener failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->this$1:Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v4, v4, Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Losdk/okhttp3/internal/http2/Http2Connection;

    iget-object v4, v4, Losdk/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Losdk/okhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 674
    :try_start_1
    iget-object v0, p0, Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->val$newStream:Losdk/okhttp3/internal/http2/Http2Stream;

    sget-object v1, Losdk/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Losdk/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Losdk/okhttp3/internal/http2/Http2Stream;->close(Losdk/okhttp3/internal/http2/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method
