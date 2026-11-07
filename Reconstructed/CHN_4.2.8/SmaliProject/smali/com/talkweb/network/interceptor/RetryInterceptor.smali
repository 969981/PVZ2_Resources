.class public Lcom/talkweb/network/interceptor/RetryInterceptor;
.super Ljava/lang/Object;
.source "RetryInterceptor.java"

# interfaces
.implements Lcom/talkweb/network/internal/NativeInterceptor;


# instance fields
.field private final maxRetries:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/talkweb/network/interceptor/RetryInterceptor;->maxRetries:I

    return-void
.end method


# virtual methods
.method public intercept(Lcom/talkweb/network/internal/NativeInterceptor$Chain;)Lcom/talkweb/network/internal/NativeResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-interface {p1}, Lcom/talkweb/network/internal/NativeInterceptor$Chain;->request()Lcom/talkweb/network/internal/NativeRequest;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move-object v2, v1

    .line 32
    :goto_0
    iget v4, p0, Lcom/talkweb/network/interceptor/RetryInterceptor;->maxRetries:I

    if-gt v3, v4, :cond_2

    .line 34
    :try_start_0
    invoke-interface {p1, v0}, Lcom/talkweb/network/internal/NativeInterceptor$Chain;->proceed(Lcom/talkweb/network/internal/NativeRequest;)Lcom/talkweb/network/internal/NativeResponse;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/talkweb/network/internal/NativeResponse;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v2

    .line 39
    :cond_0
    iget v4, v2, Lcom/talkweb/network/internal/NativeResponse;->code:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x1f4

    if-ge v4, v5, :cond_1

    return-object v2

    :catch_0
    move-exception v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    return-object v2

    .line 49
    :cond_3
    throw v1
.end method
