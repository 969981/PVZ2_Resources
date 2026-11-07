.class public interface abstract Lcom/talkweb/network/internal/NativeInterceptor$Chain;
.super Ljava/lang/Object;
.source "NativeInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/talkweb/network/internal/NativeInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Chain"
.end annotation


# virtual methods
.method public abstract proceed(Lcom/talkweb/network/internal/NativeRequest;)Lcom/talkweb/network/internal/NativeResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract request()Lcom/talkweb/network/internal/NativeRequest;
.end method
