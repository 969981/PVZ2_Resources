.class public Lgbsdk/common/host/abjl;
.super Ljava/lang/Object;
.source "CronetSsCall.java"

# interfaces
.implements Lcom/bytedance/retrofit2/IMetricsCollect;
.implements Lcom/bytedance/retrofit2/IRequestInfo;
.implements Lcom/bytedance/retrofit2/client/SsCall;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static iT:Z

.field private static sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;


# instance fields
.field private iS:Ljava/lang/String;

.field io:Lcom/bytedance/retrofit2/RetrofitMetrics;

.field ip:Z

.field iq:Ljava/lang/String;

.field ir:Lcom/bytedance/retrofit2/client/Request;

.field it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

.field jb:Ljava/net/HttpURLConnection;

.field mCanceled:Z

.field mStartTime:J

.field private volatile mThrottleNetSpeed:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lgbsdk/common/host/abjl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abjl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/retrofit2/client/Request;Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;)V
    .locals 12

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->createHttpRequestInfo()Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lgbsdk/common/host/abjl;->iq:Ljava/lang/String;

    const/4 v1, 0x0

    .line 31
    iput-boolean v1, p0, Lgbsdk/common/host/abjl;->mCanceled:Z

    .line 32
    iput-boolean v1, p0, Lgbsdk/common/host/abjl;->ip:Z

    const-wide/16 v2, 0x0

    .line 34
    iput-wide v2, p0, Lgbsdk/common/host/abjl;->mThrottleNetSpeed:J

    .line 42
    iput-object p1, p0, Lgbsdk/common/host/abjl;->ir:Lcom/bytedance/retrofit2/client/Request;

    .line 43
    sput-object p2, Lgbsdk/common/host/abjl;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    .line 44
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 45
    iput-object v0, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    .line 46
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object p2

    iput-object p2, p0, Lgbsdk/common/host/abjl;->io:Lcom/bytedance/retrofit2/RetrofitMetrics;

    if-eqz p2, :cond_0

    .line 48
    iget-object v0, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-wide v2, p2, Lcom/bytedance/retrofit2/RetrofitMetrics;->appLevelRequestStart:J

    iput-wide v2, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->appLevelRequestStart:J

    .line 49
    iget-object p2, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v0, p0, Lgbsdk/common/host/abjl;->io:Lcom/bytedance/retrofit2/RetrofitMetrics;

    iget-wide v2, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->beforeAllInterceptors:J

    iput-wide v2, p2, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->beforeAllInterceptors:J

    .line 51
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lgbsdk/common/host/abjl;->mStartTime:J

    .line 52
    iget-object p2, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iput-wide v2, p2, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestStart:J

    .line 53
    iget-object p2, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iput v1, p2, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->httpClientType:I

    .line 54
    iget-object p2, p0, Lgbsdk/common/host/abjl;->ir:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {p2}, Lcom/bytedance/retrofit2/client/Request;->isResponseStreaming()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 55
    iget-object p2, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iput-boolean v0, p2, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->downloadFile:Z

    goto :goto_0

    .line 57
    :cond_1
    iget-object p2, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iput-boolean v1, p2, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->downloadFile:Z

    .line 60
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getExtraInfo()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    if-eqz p2, :cond_2

    .line 61
    iget-object p2, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getExtraInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    iput-object v1, p2, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    .line 62
    iget-object p2, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object p2, p2, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    iget-boolean p2, p2, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->bypass_network_status_check:Z

    iput-boolean p2, p0, Lgbsdk/common/host/abjl;->ip:Z

    .line 66
    :cond_2
    :try_start_0
    iget-object p2, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-wide v1, p0, Lgbsdk/common/host/abjl;->mThrottleNetSpeed:J

    invoke-static {v4, p1, p2, v1, v2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->constructURLConnection(Ljava/lang/String;Lcom/bytedance/retrofit2/client/Request;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;J)Ljava/net/HttpURLConnection;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 69
    iget-wide v5, p0, Lgbsdk/common/host/abjl;->mStartTime:J

    iget-object v7, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v8, p0, Lgbsdk/common/host/abjl;->iq:Ljava/lang/String;

    iget-object v10, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    iget-object v11, p0, Lgbsdk/common/host/abjl;->io:Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-object v9, p1

    invoke-static/range {v4 .. v11}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->processException(Ljava/lang/String;JLcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Ljava/lang/String;Ljava/lang/Exception;Ljava/net/HttpURLConnection;Lcom/bytedance/retrofit2/RetrofitMetrics;)V

    .line 71
    iput-boolean v0, p0, Lgbsdk/common/host/abjl;->mCanceled:Z

    .line 72
    instance-of p2, p1, Ljava/io/IOException;

    if-eqz p2, :cond_3

    .line 73
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 75
    :cond_3
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private a(Ljava/net/HttpURLConnection;Z)Lcom/bytedance/retrofit2/mime/TypedInput;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 279
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    if-nez v1, :cond_1

    .line 280
    invoke-virtual {p0}, Lgbsdk/common/host/abjl;->cancel()V

    return-object v0

    .line 283
    :cond_1
    new-instance v0, Lgbsdk/common/host/abjl$1;

    invoke-direct {v0, p0, p1, p2}, Lgbsdk/common/host/abjl$1;-><init>(Lgbsdk/common/host/abjl;Ljava/net/HttpURLConnection;Z)V

    return-object v0
.end method

.method private p(Z)I
    .locals 9

    .line 81
    iget-object v0, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 82
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abjl;->ir:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    .line 84
    :try_start_0
    iget-object v2, p0, Lgbsdk/common/host/abjl;->ir:Lcom/bytedance/retrofit2/client/Request;

    iget-object v3, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-wide v4, p0, Lgbsdk/common/host/abjl;->mThrottleNetSpeed:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->constructURLConnection(Ljava/lang/String;Lcom/bytedance/retrofit2/client/Request;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;J)Ljava/net/HttpURLConnection;

    move-result-object v2

    iput-object v2, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_1

    .line 86
    iget-object p1, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iput-boolean v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->bdTuringRetry:Z

    .line 87
    iget-object p1, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    const-string v2, "x-tt-bdturing-retry"

    const-string v3, "1"

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_1
    iget-object p1, p0, Lgbsdk/common/host/abjl;->ir:Lcom/bytedance/retrofit2/client/Request;

    iget-object v0, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    invoke-static {p1, v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->processExecute(Lcom/bytedance/retrofit2/client/Request;Ljava/net/HttpURLConnection;)I

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 91
    iget-wide v2, p0, Lgbsdk/common/host/abjl;->mStartTime:J

    iget-object v4, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v5, p0, Lgbsdk/common/host/abjl;->iq:Ljava/lang/String;

    iget-object v7, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    iget-object v8, p0, Lgbsdk/common/host/abjl;->io:Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-object v6, p1

    invoke-static/range {v1 .. v8}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->processException(Ljava/lang/String;JLcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Ljava/lang/String;Ljava/lang/Exception;Ljava/net/HttpURLConnection;Lcom/bytedance/retrofit2/RetrofitMetrics;)V

    .line 93
    iput-boolean v0, p0, Lgbsdk/common/host/abjl;->mCanceled:Z

    .line 94
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_2

    .line 95
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 97
    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private q(I)I
    .locals 2

    .line 106
    iget-object v0, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-static {v0, v1, p1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->shouldRetryRequestFromTuringHeader(Ljava/net/HttpURLConnection;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0, v1}, Lgbsdk/common/host/abjl;->p(Z)I

    move-result p1

    return p1

    .line 112
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-boolean v0, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->executeTuringCallback:Z

    if-eqz v0, :cond_1

    .line 113
    sput-boolean v1, Lgbsdk/common/host/abjl;->iT:Z

    :cond_1
    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 18

    move-object/from16 v0, p0

    .line 239
    iget-object v1, v0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_3

    .line 240
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 241
    iget-object v1, v0, Lgbsdk/common/host/abjl;->ir:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Request;->isResponseStreaming()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lgbsdk/common/host/abjl;->mCanceled:Z

    if-nez v1, :cond_2

    .line 242
    invoke-virtual/range {p0 .. p0}, Lgbsdk/common/host/abjl;->doCollect()V

    .line 243
    iget-object v1, v0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v2, v0, Lgbsdk/common/host/abjl;->iS:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getContentBaseType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->contentType:Ljava/lang/String;

    .line 244
    iget-object v1, v0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestEnd:J

    .line 245
    iget-object v1, v0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v1, v1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v1, v1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    iget-boolean v1, v1, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->is_need_monitor_in_cancel:Z

    if-eqz v1, :cond_1

    .line 246
    :cond_0
    iget-object v1, v0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-wide v1, v1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestEnd:J

    iget-wide v5, v0, Lgbsdk/common/host/abjl;->mStartTime:J

    sub-long v3, v1, v5

    iget-object v1, v0, Lgbsdk/common/host/abjl;->ir:Lcom/bytedance/retrofit2/client/Request;

    .line 247
    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lgbsdk/common/host/abjl;->iq:Ljava/lang/String;

    iget-object v9, v0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    .line 246
    invoke-static/range {v3 .. v9}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->monitorApiSample(JJLjava/lang/String;Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V

    .line 249
    :cond_1
    invoke-static {}, Lgbsdk/common/host/abkf;->bH()Lgbsdk/common/host/abkf;

    move-result-object v10

    iget-object v1, v0, Lgbsdk/common/host/abjl;->ir:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v11

    iget-object v1, v0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-wide v12, v1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->sentByteCount:J

    iget-object v1, v0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-wide v14, v1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->receivedByteCount:J

    iget-object v1, v0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v1, v1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->contentType:Ljava/lang/String;

    iget-object v2, v0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v2, v2, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestLog:Ljava/lang/String;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-virtual/range {v10 .. v17}, Lgbsdk/common/host/abkf;->a(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x1

    .line 252
    iput-boolean v1, v0, Lgbsdk/common/host/abjl;->mCanceled:Z

    :cond_3
    return-void
.end method

.method public doCollect()V
    .locals 3

    .line 317
    iget-object v0, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v2, p0, Lgbsdk/common/host/abjl;->io:Lcom/bytedance/retrofit2/RetrofitMetrics;

    invoke-static {v0, v1, v2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getRequestMetrics(Ljava/net/HttpURLConnection;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Lcom/bytedance/retrofit2/RetrofitMetrics;)V

    return-void
.end method

.method public execute()Lcom/bytedance/retrofit2/client/Response;
    .locals 15

    .line 120
    iget-object v0, p0, Lgbsdk/common/host/abjl;->io:Lcom/bytedance/retrofit2/RetrofitMetrics;

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->callExecuteStartTime:J

    .line 124
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abjl;->ir:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 128
    iget-boolean v1, p0, Lgbsdk/common/host/abjl;->mCanceled:Z

    const-string v10, "request canceled"

    if-nez v1, :cond_14

    .line 132
    iget-boolean v1, p0, Lgbsdk/common/host/abjl;->ip:Z

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->checkNetworkAvailable(ZLjava/lang/String;)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 135
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/abjl;->ir:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Request;->isResponseStreaming()Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getConnectionQualitySamplerHook()Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ConnectionQualitySamplerHook;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 138
    invoke-interface {v1, v0}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ConnectionQualitySamplerHook;->shouldSampling(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    sget-object v1, Lgbsdk/common/host/abhb$ab;->gy:Lgbsdk/common/host/abhb;

    invoke-virtual {v1}, Lgbsdk/common/host/abhb;->aX()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v13, 0x1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    .line 144
    :goto_0
    :try_start_1
    iget-object v1, p0, Lgbsdk/common/host/abjl;->ir:Lcom/bytedance/retrofit2/client/Request;

    iget-object v2, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    invoke-static {v1, v2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->processExecute(Lcom/bytedance/retrofit2/client/Request;Ljava/net/HttpURLConnection;)I

    move-result v1

    .line 146
    invoke-direct {p0, v1}, Lgbsdk/common/host/abjl;->q(I)I

    move-result v14

    .line 147
    iget-object v1, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->responseBack:J

    .line 148
    iget-object v1, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    const/4 v2, -0x1

    iput v2, v1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->recycleCount:I

    .line 149
    iget-object v1, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-static {v1, v2, v14}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->processAfterExecute(Ljava/net/HttpURLConnection;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgbsdk/common/host/abjl;->iq:Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Type"

    invoke-static {v1, v2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getHeaderValueIgnoreCase(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgbsdk/common/host/abjl;->iS:Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lgbsdk/common/host/abjl;->ir:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Request;->isResponseStreaming()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 154
    iget-object v1, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Encoding"

    invoke-static {v1, v2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getHeaderValueIgnoreCase(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gzip"

    .line 156
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 159
    sget-object v2, Lgbsdk/common/host/abjl;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v2, :cond_2

    sget-object v2, Lgbsdk/common/host/abjl;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    iget-object v3, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    invoke-interface {v2, v3}, Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;->isCronetHttpURLConnection(Ljava/net/HttpURLConnection;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    const/16 v2, 0xc8

    if-lt v14, v2, :cond_3

    const/16 v2, 0x12c

    if-lt v14, v2, :cond_4

    .line 162
    :cond_3
    iget-object v2, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-static {v2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->isForceHandleResponse(Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 163
    :cond_4
    iget-object v2, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v2, v1}, Lgbsdk/common/host/abjl;->a(Ljava/net/HttpURLConnection;Z)Lcom/bytedance/retrofit2/mime/TypedInput;

    move-result-object v1

    move-object v6, v1

    goto/16 :goto_4

    .line 165
    :cond_5
    iget-object v2, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    :try_start_2
    iget-object v2, p0, Lgbsdk/common/host/abjl;->ir:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v2}, Lcom/bytedance/retrofit2/client/Request;->getMaxLength()I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    :try_start_3
    iget-object v2, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    move-object v4, v2

    goto :goto_2

    .line 172
    :catch_0
    :try_start_4
    iget-object v2, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_1

    .line 174
    :goto_2
    iget-object v2, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    iget-object v5, p0, Lgbsdk/common/host/abjl;->iS:Ljava/lang/String;

    iget-object v7, p0, Lgbsdk/common/host/abjl;->io:Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->processHttpErrorResponse(ZLjava/util/Map;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/retrofit2/RetrofitMetrics;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 177
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v8, :cond_6

    const-string v8, ""

    :cond_6
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 181
    :goto_3
    iget-object v1, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 182
    new-instance v1, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;

    invoke-direct {v1, v14, v8}, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 185
    :cond_7
    iget-object v1, p0, Lgbsdk/common/host/abjl;->ir:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Request;->getMaxLength()I

    move-result v2

    .line 186
    iget-object v1, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v3, p0, Lgbsdk/common/host/abjl;->iS:Ljava/lang/String;

    invoke-static {v3}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getContentBaseType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->contentType:Ljava/lang/String;

    .line 187
    iget-object v3, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    iget-wide v4, p0, Lgbsdk/common/host/abjl;->mStartTime:J

    iget-object v6, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v7, p0, Lgbsdk/common/host/abjl;->iq:Ljava/lang/String;

    iget-object v9, p0, Lgbsdk/common/host/abjl;->io:Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-object v1, v0

    move v8, v14

    invoke-static/range {v1 .. v9}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->processResponse(Ljava/lang/String;ILjava/net/HttpURLConnection;JLcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Ljava/lang/String;ILcom/bytedance/retrofit2/RetrofitMetrics;)[B

    move-result-object v1

    .line 189
    new-instance v2, Lcom/bytedance/retrofit2/mime/TypedByteArray;

    iget-object v3, p0, Lgbsdk/common/host/abjl;->iS:Ljava/lang/String;

    new-array v4, v12, [Ljava/lang/String;

    invoke-direct {v2, v3, v1, v4}, Lcom/bytedance/retrofit2/mime/TypedByteArray;-><init>(Ljava/lang/String;[B[Ljava/lang/String;)V

    move-object v6, v2

    .line 192
    :goto_4
    new-instance v7, Lcom/bytedance/retrofit2/client/Response;

    iget-object v1, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    sget-boolean v2, Lgbsdk/common/host/abjl;->iT:Z

    .line 193
    invoke-static {v1, v2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->createHeaders(Ljava/net/HttpURLConnection;Z)Ljava/util/List;

    move-result-object v5

    move-object v1, v7

    move-object v2, v0

    move v3, v14

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/retrofit2/client/Response;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/bytedance/retrofit2/mime/TypedInput;)V

    .line 194
    iget-object v1, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-virtual {v7, v1}, Lcom/bytedance/retrofit2/client/Response;->setExtraInfo(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 228
    iget-object v0, p0, Lgbsdk/common/host/abjl;->ir:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/client/Request;->isResponseStreaming()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    .line 229
    :cond_8
    iget-object v0, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->processFinally(Ljava/net/HttpURLConnection;)V

    .line 231
    :goto_5
    iget-object v0, p0, Lgbsdk/common/host/abjl;->ir:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/client/Request;->isResponseStreaming()Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz v13, :cond_9

    .line 232
    sget-object v0, Lgbsdk/common/host/abhb$ab;->gy:Lgbsdk/common/host/abhb;

    invoke-virtual {v0}, Lgbsdk/common/host/abhb;->aY()V

    :cond_9
    return-object v7

    :catchall_1
    move-exception v0

    move v12, v13

    goto :goto_6

    :catch_1
    move-exception v1

    move-object v9, v1

    goto :goto_7

    :catchall_2
    move-exception v0

    :goto_6
    const/4 v11, 0x0

    goto/16 :goto_a

    :catch_2
    move-exception v1

    move-object v9, v1

    const/4 v13, 0x0

    .line 199
    :goto_7
    :try_start_6
    instance-of v1, v9, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;

    if-eqz v1, :cond_b

    .line 200
    move-object v1, v9

    check-cast v1, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;

    .line 201
    invoke-virtual {v1}, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;->getStatusCode()I

    move-result v2

    const/16 v3, 0x130

    if-eq v2, v3, :cond_a

    goto :goto_8

    .line 202
    :cond_a
    throw v1

    .line 205
    :cond_b
    :goto_8
    instance-of v1, v9, Ljava/io/IOException;

    if-eqz v1, :cond_d

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_9

    .line 206
    :cond_c
    throw v9

    :cond_d
    :goto_9
    const-string v1, "com.ttnet.org.chromium.net.urlconnection.TTRequestCanceledException"

    .line 210
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 211
    invoke-virtual {p0}, Lgbsdk/common/host/abjl;->doCollect()V

    .line 212
    iget-object v1, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    invoke-static {v1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getCronetInternalErrorCode(Ljava/net/HttpURLConnection;)I

    move-result v12

    :cond_e
    const-string v1, "com.ttnet.org.chromium.net.impl.NetworkExceptionImpl"

    .line 215
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "com.ttnet.org.chromium.net.impl.QuicExceptionImpl"

    .line 216
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 217
    :cond_f
    iget-object v1, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    invoke-static {v1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getCronetInternalErrorCode(Ljava/net/HttpURLConnection;)I

    move-result v12

    .line 220
    :cond_10
    iget-wide v2, p0, Lgbsdk/common/host/abjl;->mStartTime:J

    iget-object v4, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v5, p0, Lgbsdk/common/host/abjl;->iq:Ljava/lang/String;

    iget-object v7, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    iget-object v8, p0, Lgbsdk/common/host/abjl;->io:Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-object v1, v0

    move-object v6, v9

    invoke-static/range {v1 .. v8}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->processException(Ljava/lang/String;JLcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Ljava/lang/String;Ljava/lang/Exception;Ljava/net/HttpURLConnection;Lcom/bytedance/retrofit2/RetrofitMetrics;)V

    .line 223
    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 224
    iget-boolean v1, p0, Lgbsdk/common/host/abjl;->ip:Z

    invoke-static {v1, v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->checkNetworkAvailable(ZLjava/lang/String;)V

    .line 225
    new-instance v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/CronetIOException;

    iget-object v1, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v2, p0, Lgbsdk/common/host/abjl;->iq:Ljava/lang/String;

    invoke-direct {v0, v9, v1, v2, v12}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/CronetIOException;-><init>(Ljava/lang/Exception;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Ljava/lang/String;I)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    move v12, v13

    .line 228
    :goto_a
    iget-object v1, p0, Lgbsdk/common/host/abjl;->ir:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Request;->isResponseStreaming()Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz v11, :cond_12

    .line 229
    :cond_11
    iget-object v1, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    invoke-static {v1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->processFinally(Ljava/net/HttpURLConnection;)V

    .line 231
    :cond_12
    iget-object v1, p0, Lgbsdk/common/host/abjl;->ir:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Request;->isResponseStreaming()Z

    move-result v1

    if-nez v1, :cond_13

    if-eqz v12, :cond_13

    .line 232
    sget-object v1, Lgbsdk/common/host/abhb$ab;->gy:Lgbsdk/common/host/abhb;

    invoke-virtual {v1}, Lgbsdk/common/host/abhb;->aY()V

    :cond_13
    throw v0

    .line 129
    :cond_14
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRequest()Lcom/bytedance/retrofit2/client/Request;
    .locals 1

    .line 273
    iget-object v0, p0, Lgbsdk/common/host/abjl;->ir:Lcom/bytedance/retrofit2/client/Request;

    return-object v0
.end method

.method public getRequestInfo()Ljava/lang/Object;
    .locals 1

    .line 322
    iget-object v0, p0, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    return-object v0
.end method

.method public setThrottleNetSpeed(J)Z
    .locals 6

    .line 258
    iput-wide p1, p0, Lgbsdk/common/host/abjl;->mThrottleNetSpeed:J

    .line 259
    iget-object v0, p0, Lgbsdk/common/host/abjl;->jb:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 261
    :try_start_0
    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const-string v3, "setThrottleNetSpeed"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-virtual {v0, v3, v4, v5}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 264
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v2

    :cond_0
    :goto_0
    return v1
.end method
