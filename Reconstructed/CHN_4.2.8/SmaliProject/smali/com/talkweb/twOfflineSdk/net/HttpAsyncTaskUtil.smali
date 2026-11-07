.class public Lcom/talkweb/twOfflineSdk/net/HttpAsyncTaskUtil;
.super Ljava/lang/Object;
.source "HttpAsyncTaskUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doRequest(ILjava/lang/String;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V
    .locals 4

    .line 18
    :try_start_0
    new-instance v0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;

    invoke-direct {v0, p1, p2}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;-><init>(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V

    .line 19
    sget-object p1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p1, v1, :cond_0

    new-array p1, v3, [Ljava/lang/Integer;

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-virtual {v0, p1}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 23
    :cond_0
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v3, [Ljava/lang/Integer;

    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 23
    invoke-virtual {v0, p1, v1}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 28
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doRequest failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 29
    invoke-interface {p2, p0}, Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;->responseData(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static doRequest(ILjava/util/HashMap;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;",
            ")V"
        }
    .end annotation

    .line 36
    :try_start_0
    new-instance v0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;

    invoke-direct {v0, p1, p2}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;-><init>(Ljava/util/HashMap;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V

    .line 37
    sget-object p1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p1, v1, :cond_0

    new-array p1, v3, [Ljava/lang/Integer;

    .line 39
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-virtual {v0, p1}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 41
    :cond_0
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v3, [Ljava/lang/Integer;

    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 41
    invoke-virtual {v0, p1, v1}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doRequest failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 47
    invoke-interface {p2, p0}, Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;->responseData(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
