.class public final Losdk/okhttp3/internal/http/CallServerInterceptor$CountingSink;
.super Losdk/okio/ForwardingSink;
.source "CallServerInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Losdk/okhttp3/internal/http/CallServerInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CountingSink"
.end annotation


# instance fields
.field successfulCount:J


# direct methods
.method constructor <init>(Losdk/okio/Sink;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Losdk/okio/ForwardingSink;-><init>(Losdk/okio/Sink;)V

    return-void
.end method


# virtual methods
.method public write(Losdk/okio/Buffer;J)V
    .locals 2

    .line 149
    invoke-super {p0, p1, p2, p3}, Losdk/okio/ForwardingSink;->write(Losdk/okio/Buffer;J)V

    .line 150
    iget-wide v0, p0, Losdk/okhttp3/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Losdk/okhttp3/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J

    return-void
.end method
