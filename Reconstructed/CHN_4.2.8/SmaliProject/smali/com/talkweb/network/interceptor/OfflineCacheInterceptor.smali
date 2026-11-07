.class public Lcom/talkweb/network/interceptor/OfflineCacheInterceptor;
.super Ljava/lang/Object;
.source "OfflineCacheInterceptor.java"

# interfaces
.implements Lcom/talkweb/network/internal/NativeInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/talkweb/network/internal/NativeInterceptor$Chain;)Lcom/talkweb/network/internal/NativeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-interface {p1}, Lcom/talkweb/network/internal/NativeInterceptor$Chain;->request()Lcom/talkweb/network/internal/NativeRequest;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/talkweb/network/internal/NativeInterceptor$Chain;->proceed(Lcom/talkweb/network/internal/NativeRequest;)Lcom/talkweb/network/internal/NativeResponse;

    move-result-object p1

    return-object p1
.end method
