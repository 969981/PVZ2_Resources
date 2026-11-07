.class public interface abstract Lcom/talkweb/network/internal/NativeInterceptor;
.super Ljava/lang/Object;
.source "NativeInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/talkweb/network/internal/NativeInterceptor$Chain;
    }
.end annotation


# virtual methods
.method public abstract intercept(Lcom/talkweb/network/internal/NativeInterceptor$Chain;)Lcom/talkweb/network/internal/NativeResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
