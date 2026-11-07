.class public final Losdk/okio/Okio$3;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Losdk/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Losdk/okio/Okio;->blackhole()Losdk/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public timeout()Losdk/okio/Timeout;
    .locals 1

    .line 208
    sget-object v0, Losdk/okio/Timeout;->NONE:Losdk/okio/Timeout;

    return-object v0
.end method

.method public write(Losdk/okio/Buffer;J)V
    .locals 0

    .line 201
    invoke-virtual {p1, p2, p3}, Losdk/okio/Buffer;->skip(J)V

    return-void
.end method
