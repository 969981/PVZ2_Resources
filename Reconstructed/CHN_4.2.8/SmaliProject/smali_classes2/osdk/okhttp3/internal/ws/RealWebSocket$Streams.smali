.class public abstract Losdk/okhttp3/internal/ws/RealWebSocket$Streams;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Losdk/okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Streams"
.end annotation


# instance fields
.field public final client:Z

.field public final sink:Losdk/okio/BufferedSink;

.field public final source:Losdk/okio/BufferedSource;


# direct methods
.method public constructor <init>(ZLosdk/okio/BufferedSource;Losdk/okio/BufferedSink;)V
    .locals 0

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    iput-boolean p1, p0, Losdk/okhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    .line 605
    iput-object p2, p0, Losdk/okhttp3/internal/ws/RealWebSocket$Streams;->source:Losdk/okio/BufferedSource;

    .line 606
    iput-object p3, p0, Losdk/okhttp3/internal/ws/RealWebSocket$Streams;->sink:Losdk/okio/BufferedSink;

    return-void
.end method
