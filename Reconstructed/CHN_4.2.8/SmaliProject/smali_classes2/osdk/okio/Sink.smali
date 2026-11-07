.class public interface abstract Losdk/okio/Sink;
.super Ljava/lang/Object;
.source "Sink.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract flush()V
.end method

.method public abstract timeout()Losdk/okio/Timeout;
.end method

.method public abstract write(Losdk/okio/Buffer;J)V
.end method
