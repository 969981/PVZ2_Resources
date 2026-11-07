.class public Losdk/okhttp3/internal/connection/RealConnection$1;
.super Losdk/okhttp3/internal/ws/RealWebSocket$Streams;
.source "RealConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Losdk/okhttp3/internal/connection/RealConnection;->newWebSocketStreams(Losdk/okhttp3/internal/connection/StreamAllocation;)Losdk/okhttp3/internal/ws/RealWebSocket$Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Losdk/okhttp3/internal/connection/RealConnection;

.field final synthetic val$streamAllocation:Losdk/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method constructor <init>(Losdk/okhttp3/internal/connection/RealConnection;ZLosdk/okio/BufferedSource;Losdk/okio/BufferedSink;Losdk/okhttp3/internal/connection/StreamAllocation;)V
    .locals 0

    .line 499
    iput-object p1, p0, Losdk/okhttp3/internal/connection/RealConnection$1;->this$0:Losdk/okhttp3/internal/connection/RealConnection;

    iput-object p5, p0, Losdk/okhttp3/internal/connection/RealConnection$1;->val$streamAllocation:Losdk/okhttp3/internal/connection/StreamAllocation;

    invoke-direct {p0, p2, p3, p4}, Losdk/okhttp3/internal/ws/RealWebSocket$Streams;-><init>(ZLosdk/okio/BufferedSource;Losdk/okio/BufferedSink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    .line 501
    iget-object v0, p0, Losdk/okhttp3/internal/connection/RealConnection$1;->val$streamAllocation:Losdk/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Losdk/okhttp3/internal/connection/StreamAllocation;->codec()Losdk/okhttp3/internal/http/HttpCodec;

    move-result-object v2

    const/4 v1, 0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Losdk/okhttp3/internal/connection/StreamAllocation;->streamFinished(ZLosdk/okhttp3/internal/http/HttpCodec;JLjava/io/IOException;)V

    return-void
.end method
