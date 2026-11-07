.class public Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;
.super Losdk/okhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->settings(ZLosdk/okhttp3/internal/http2/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;


# direct methods
.method varargs constructor <init>(Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 719
    iput-object p1, p0, Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->this$1:Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    invoke-direct {p0, p2, p3}, Losdk/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 721
    iget-object v0, p0, Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->this$1:Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v0, v0, Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Losdk/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Losdk/okhttp3/internal/http2/Http2Connection;->listener:Losdk/okhttp3/internal/http2/Http2Connection$Listener;

    iget-object v1, p0, Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->this$1:Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v1, v1, Losdk/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Losdk/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, v1}, Losdk/okhttp3/internal/http2/Http2Connection$Listener;->onSettings(Losdk/okhttp3/internal/http2/Http2Connection;)V

    return-void
.end method
