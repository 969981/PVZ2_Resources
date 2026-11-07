.class public final Losdk/okhttp3/internal/http2/Http2Connection$Listener$1;
.super Losdk/okhttp3/internal/http2/Http2Connection$Listener;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Losdk/okhttp3/internal/http2/Http2Connection$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 919
    invoke-direct {p0}, Losdk/okhttp3/internal/http2/Http2Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStream(Losdk/okhttp3/internal/http2/Http2Stream;)V
    .locals 1

    .line 921
    sget-object v0, Losdk/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Losdk/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Losdk/okhttp3/internal/http2/Http2Stream;->close(Losdk/okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method
