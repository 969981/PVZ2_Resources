.class public Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;
.super Losdk/okhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->applyAndAckSettings(Losdk/okhttp3/internal/http2/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field final synthetic val$peerSettings:Losdk/okhttp3/internal/http2/Settings;


# direct methods
.method varargs constructor <init>(Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Losdk/okhttp3/internal/http2/Settings;)V
    .locals 0

    .line 736
    iput-object p1, p0, Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iput-object p4, p0, Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->val$peerSettings:Losdk/okhttp3/internal/http2/Settings;

    invoke-direct {p0, p2, p3}, Losdk/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 739
    :try_start_0
    iget-object v0, p0, Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v0, v0, Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Losdk/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Losdk/okhttp3/internal/http2/Http2Connection;->writer:Losdk/okhttp3/internal/http2/Http2Writer;

    iget-object v1, p0, Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->val$peerSettings:Losdk/okhttp3/internal/http2/Settings;

    invoke-virtual {v0, v1}, Losdk/okhttp3/internal/http2/Http2Writer;->applyAndAckSettings(Losdk/okhttp3/internal/http2/Settings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 741
    :catch_0
    iget-object v0, p0, Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v0, v0, Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Losdk/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Losdk/okhttp3/internal/http2/Http2Connection;->failConnection()V

    :goto_0
    return-void
.end method
