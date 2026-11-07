.class public final Losdk/okhttp3/RealCall$AsyncCall;
.super Losdk/okhttp3/internal/NamedRunnable;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Losdk/okhttp3/RealCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AsyncCall"
.end annotation


# instance fields
.field private final responseCallback:Losdk/okhttp3/Callback;

.field final synthetic this$0:Losdk/okhttp3/RealCall;


# direct methods
.method constructor <init>(Losdk/okhttp3/RealCall;Losdk/okhttp3/Callback;)V
    .locals 2

    .line 127
    iput-object p1, p0, Losdk/okhttp3/RealCall$AsyncCall;->this$0:Losdk/okhttp3/RealCall;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 128
    invoke-virtual {p1}, Losdk/okhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Losdk/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iput-object p2, p0, Losdk/okhttp3/RealCall$AsyncCall;->responseCallback:Losdk/okhttp3/Callback;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 147
    :try_start_0
    iget-object v2, p0, Losdk/okhttp3/RealCall$AsyncCall;->this$0:Losdk/okhttp3/RealCall;

    invoke-virtual {v2}, Losdk/okhttp3/RealCall;->getResponseWithInterceptorChain()Losdk/okhttp3/Response;

    move-result-object v2

    .line 148
    iget-object v3, p0, Losdk/okhttp3/RealCall$AsyncCall;->this$0:Losdk/okhttp3/RealCall;

    iget-object v3, v3, Losdk/okhttp3/RealCall;->retryAndFollowUpInterceptor:Losdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v3}, Losdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 150
    :try_start_1
    iget-object v1, p0, Losdk/okhttp3/RealCall$AsyncCall;->responseCallback:Losdk/okhttp3/Callback;

    iget-object v2, p0, Losdk/okhttp3/RealCall$AsyncCall;->this$0:Losdk/okhttp3/RealCall;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Losdk/okhttp3/Callback;->onFailure(Losdk/okhttp3/Call;Ljava/io/IOException;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v1, p0, Losdk/okhttp3/RealCall$AsyncCall;->responseCallback:Losdk/okhttp3/Callback;

    iget-object v3, p0, Losdk/okhttp3/RealCall$AsyncCall;->this$0:Losdk/okhttp3/RealCall;

    invoke-interface {v1, v3, v2}, Losdk/okhttp3/Callback;->onResponse(Losdk/okhttp3/Call;Losdk/okhttp3/Response;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :goto_0
    iget-object v0, p0, Losdk/okhttp3/RealCall$AsyncCall;->this$0:Losdk/okhttp3/RealCall;

    iget-object v0, v0, Losdk/okhttp3/RealCall;->client:Losdk/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Losdk/okhttp3/OkHttpClient;->dispatcher()Losdk/okhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Losdk/okhttp3/Dispatcher;->finished(Losdk/okhttp3/RealCall$AsyncCall;)V

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    .line 157
    :goto_1
    :try_start_2
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_1

    .line 158
    check-cast v1, Ljava/io/IOException;

    goto :goto_2

    .line 160
    :cond_1
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v2

    :goto_2
    if-eqz v0, :cond_2

    .line 164
    invoke-static {}, Losdk/okhttp3/internal/platform/Platform;->get()Losdk/okhttp3/internal/platform/Platform;

    move-result-object v0

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Losdk/okhttp3/RealCall$AsyncCall;->this$0:Losdk/okhttp3/RealCall;

    invoke-virtual {v4}, Losdk/okhttp3/RealCall;->toLoggableString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Losdk/okhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v0, p0, Losdk/okhttp3/RealCall$AsyncCall;->this$0:Losdk/okhttp3/RealCall;

    iget-object v0, v0, Losdk/okhttp3/RealCall;->eventListener:Losdk/okhttp3/EventListener;

    iget-object v2, p0, Losdk/okhttp3/RealCall$AsyncCall;->this$0:Losdk/okhttp3/RealCall;

    invoke-virtual {v0, v2, v1}, Losdk/okhttp3/EventListener;->callFailed(Losdk/okhttp3/Call;Ljava/io/IOException;)V

    .line 167
    iget-object v0, p0, Losdk/okhttp3/RealCall$AsyncCall;->responseCallback:Losdk/okhttp3/Callback;

    iget-object v2, p0, Losdk/okhttp3/RealCall$AsyncCall;->this$0:Losdk/okhttp3/RealCall;

    invoke-interface {v0, v2, v1}, Losdk/okhttp3/Callback;->onFailure(Losdk/okhttp3/Call;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :goto_3
    return-void

    :catchall_2
    move-exception v0

    .line 170
    iget-object v1, p0, Losdk/okhttp3/RealCall$AsyncCall;->this$0:Losdk/okhttp3/RealCall;

    iget-object v1, v1, Losdk/okhttp3/RealCall;->client:Losdk/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Losdk/okhttp3/OkHttpClient;->dispatcher()Losdk/okhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Losdk/okhttp3/Dispatcher;->finished(Losdk/okhttp3/RealCall$AsyncCall;)V

    throw v0
.end method

.method get()Losdk/okhttp3/RealCall;
    .locals 1

    .line 141
    iget-object v0, p0, Losdk/okhttp3/RealCall$AsyncCall;->this$0:Losdk/okhttp3/RealCall;

    return-object v0
.end method

.method host()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Losdk/okhttp3/RealCall$AsyncCall;->this$0:Losdk/okhttp3/RealCall;

    iget-object v0, v0, Losdk/okhttp3/RealCall;->originalRequest:Losdk/okhttp3/Request;

    invoke-virtual {v0}, Losdk/okhttp3/Request;->url()Losdk/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Losdk/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method request()Losdk/okhttp3/Request;
    .locals 1

    .line 137
    iget-object v0, p0, Losdk/okhttp3/RealCall$AsyncCall;->this$0:Losdk/okhttp3/RealCall;

    iget-object v0, v0, Losdk/okhttp3/RealCall;->originalRequest:Losdk/okhttp3/Request;

    return-object v0
.end method
