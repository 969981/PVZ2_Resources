.class public Lgbsdk/common/host/abjb$ab;
.super Ljava/lang/Object;
.source "SsOkHttp3Client.java"

# interfaces
.implements Lcom/bytedance/retrofit2/IRequestInfo;
.implements Lcom/bytedance/retrofit2/client/SsCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abjb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# static fields
.field static iT:Z


# instance fields
.field body:Losdk/okhttp3/ResponseBody;

.field canceled:Z

.field client:Losdk/okhttp3/OkHttpClient;

.field nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

.field nY:Lcom/bytedance/retrofit2/client/Request;

.field nZ:Losdk/okhttp3/Request;

.field oa:Losdk/okhttp3/Response;

.field ob:Losdk/okhttp3/Call;

.field oc:Z

.field volatile od:Lgbsdk/common/host/abjf;

.field retrofitMetrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

.field start:J

.field traceCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/retrofit2/client/Request;)V
    .locals 18

    move-object/from16 v1, p0

    .line 616
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 601
    iput-object v0, v1, Lgbsdk/common/host/abjb$ab;->client:Losdk/okhttp3/OkHttpClient;

    .line 602
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->createHttpRequestInfo()Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    move-result-object v2

    iput-object v2, v1, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    const-wide/16 v2, 0x0

    .line 603
    iput-wide v2, v1, Lgbsdk/common/host/abjb$ab;->start:J

    .line 604
    iput-object v0, v1, Lgbsdk/common/host/abjb$ab;->body:Losdk/okhttp3/ResponseBody;

    .line 605
    iput-object v0, v1, Lgbsdk/common/host/abjb$ab;->traceCode:Ljava/lang/String;

    const/4 v4, 0x0

    .line 610
    iput-boolean v4, v1, Lgbsdk/common/host/abjb$ab;->oc:Z

    .line 611
    iput-object v0, v1, Lgbsdk/common/host/abjb$ab;->retrofitMetrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

    .line 612
    iput-object v0, v1, Lgbsdk/common/host/abjb$ab;->od:Lgbsdk/common/host/abjf;

    .line 613
    iput-boolean v4, v1, Lgbsdk/common/host/abjb$ab;->canceled:Z

    .line 617
    sget-object v5, Lgbsdk/common/host/abjb;->nU:Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;

    invoke-virtual {v5, v4}, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->build(Z)Losdk/okhttp3/OkHttpClient;

    move-result-object v5

    iput-object v5, v1, Lgbsdk/common/host/abjb$ab;->client:Losdk/okhttp3/OkHttpClient;

    .line 618
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/retrofit2/client/Request;->getExtraInfo()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lgbsdk/common/host/abjb;->k(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    .line 619
    iput-object v5, v1, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    .line 620
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 621
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/retrofit2/client/Request;->getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v7

    iput-object v7, v1, Lgbsdk/common/host/abjb$ab;->retrofitMetrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

    if-eqz v7, :cond_0

    .line 623
    iget-object v8, v1, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-wide v9, v7, Lcom/bytedance/retrofit2/RetrofitMetrics;->appLevelRequestStart:J

    iput-wide v9, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->appLevelRequestStart:J

    .line 624
    iget-object v7, v1, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v8, v1, Lgbsdk/common/host/abjb$ab;->retrofitMetrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

    iget-wide v8, v8, Lcom/bytedance/retrofit2/RetrofitMetrics;->beforeAllInterceptors:J

    iput-wide v8, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->beforeAllInterceptors:J

    .line 626
    :cond_0
    new-instance v7, Lgbsdk/common/host/abjf;

    invoke-direct {v7}, Lgbsdk/common/host/abjf;-><init>()V

    iput-object v7, v1, Lgbsdk/common/host/abjb$ab;->od:Lgbsdk/common/host/abjf;

    .line 627
    iget-object v7, v1, Lgbsdk/common/host/abjb$ab;->od:Lgbsdk/common/host/abjf;

    iput-object v6, v7, Lgbsdk/common/host/abjf;->is:Ljava/lang/String;

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v1, Lgbsdk/common/host/abjb$ab;->start:J

    .line 629
    iget-object v9, v1, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iput-wide v7, v9, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestStart:J

    .line 630
    iget-object v7, v1, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    const/4 v8, 0x1

    iput v8, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->httpClientType:I

    .line 631
    iget-object v7, v1, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v7}, Lcom/bytedance/retrofit2/client/Request;->isResponseStreaming()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 632
    iget-object v7, v1, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iput-boolean v8, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->downloadFile:Z

    goto :goto_0

    .line 634
    :cond_1
    iget-object v7, v1, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iput-boolean v4, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->downloadFile:Z

    .line 637
    :goto_0
    :try_start_0
    iget-object v7, v1, Lgbsdk/common/host/abjb$ab;->client:Losdk/okhttp3/OkHttpClient;

    invoke-virtual {v7}, Losdk/okhttp3/OkHttpClient;->newBuilder()Losdk/okhttp3/OkHttpClient$Builder;

    move-result-object v7

    .line 639
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getConnectTimeout()I

    move-result v8

    int-to-long v8, v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Losdk/okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Losdk/okhttp3/OkHttpClient$Builder;

    .line 640
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getIoTimeout()I

    move-result v8

    int-to-long v8, v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Losdk/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Losdk/okhttp3/OkHttpClient$Builder;

    .line 641
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getIoTimeout()I

    move-result v8

    int-to-long v8, v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Losdk/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Losdk/okhttp3/OkHttpClient$Builder;

    .line 642
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/retrofit2/client/Request;->getExtraInfo()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    if-eqz v8, :cond_6

    .line 643
    iget-object v8, v1, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/retrofit2/client/Request;->getExtraInfo()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    iput-object v9, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    .line 644
    iget-object v8, v1, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v8, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    .line 645
    iget-wide v9, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->timeout_connect:J

    cmp-long v11, v9, v2

    if-gtz v11, :cond_2

    iget-wide v9, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->timeout_read:J

    cmp-long v11, v9, v2

    if-gtz v11, :cond_2

    iget-wide v9, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->timeout_write:J

    cmp-long v11, v9, v2

    if-lez v11, :cond_5

    .line 646
    :cond_2
    iget-wide v9, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->timeout_connect:J

    cmp-long v11, v9, v2

    if-lez v11, :cond_3

    .line 647
    iget-wide v9, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->timeout_connect:J

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v9, v10, v11}, Losdk/okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Losdk/okhttp3/OkHttpClient$Builder;

    .line 648
    :cond_3
    iget-wide v9, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->timeout_write:J

    cmp-long v11, v9, v2

    if-lez v11, :cond_4

    .line 649
    iget-wide v9, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->timeout_write:J

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v9, v10, v11}, Losdk/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Losdk/okhttp3/OkHttpClient$Builder;

    .line 650
    :cond_4
    iget-wide v9, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->timeout_read:J

    cmp-long v11, v9, v2

    if-lez v11, :cond_5

    .line 651
    iget-wide v2, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->timeout_read:J

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v2, v3, v9}, Losdk/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Losdk/okhttp3/OkHttpClient$Builder;

    .line 653
    :cond_5
    iget-boolean v2, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->bypass_network_status_check:Z

    iput-boolean v2, v1, Lgbsdk/common/host/abjb$ab;->oc:Z

    .line 655
    iget-boolean v2, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->followRedirectInternal:Z

    if-nez v2, :cond_6

    .line 656
    invoke-virtual {v7, v4}, Losdk/okhttp3/OkHttpClient$Builder;->followRedirects(Z)Losdk/okhttp3/OkHttpClient$Builder;

    .line 661
    :cond_6
    iget-object v2, v1, Lgbsdk/common/host/abjb$ab;->client:Losdk/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Losdk/okhttp3/OkHttpClient;->eventListenerFactory()Losdk/okhttp3/EventListener$Factory;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 662
    iget-object v2, v1, Lgbsdk/common/host/abjb$ab;->client:Losdk/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Losdk/okhttp3/OkHttpClient;->eventListenerFactory()Losdk/okhttp3/EventListener$Factory;

    move-result-object v2

    iget-object v3, v1, Lgbsdk/common/host/abjb$ab;->ob:Losdk/okhttp3/Call;

    invoke-interface {v2, v3}, Losdk/okhttp3/EventListener$Factory;->create(Losdk/okhttp3/Call;)Losdk/okhttp3/EventListener;

    move-result-object v2

    goto :goto_1

    :cond_7
    move-object v2, v0

    .line 664
    :goto_1
    new-instance v3, Lgbsdk/common/host/abij;

    iget-object v4, v1, Lgbsdk/common/host/abjb$ab;->od:Lgbsdk/common/host/abjf;

    invoke-direct {v3, v2, v4}, Lgbsdk/common/host/abij;-><init>(Losdk/okhttp3/EventListener;Lgbsdk/common/host/abjf;)V

    invoke-virtual {v7, v3}, Losdk/okhttp3/OkHttpClient$Builder;->eventListener(Losdk/okhttp3/EventListener;)Losdk/okhttp3/OkHttpClient$Builder;

    .line 665
    invoke-virtual {v7}, Losdk/okhttp3/OkHttpClient$Builder;->build()Losdk/okhttp3/OkHttpClient;

    move-result-object v2

    iput-object v2, v1, Lgbsdk/common/host/abjb$ab;->client:Losdk/okhttp3/OkHttpClient;

    .line 666
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/retrofit2/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lgbsdk/common/host/abjb$ab;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 667
    sget-object v2, Lgbsdk/common/host/abjb;->sContext:Landroid/content/Context;

    iget-object v3, v1, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Request;->getHeaders()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v6, v3}, Lcom/bytedance/frameworks/baselib/network/http/util/BoeUtils;->tryAddOkhttpBoeSuffix(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 668
    invoke-static {v6}, Lcom/bytedance/frameworks/baselib/network/http/util/URIUtils;->safeCreateUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 669
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 670
    iget-object v3, v1, Lgbsdk/common/host/abjb$ab;->od:Lgbsdk/common/host/abjf;

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lgbsdk/common/host/abjf;->nm:Ljava/lang/String;

    .line 671
    invoke-static {}, Lgbsdk/common/host/abik;->bU()Lgbsdk/common/host/abik;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lgbsdk/common/host/abjb$ab;->od:Lgbsdk/common/host/abjf;

    invoke-virtual {v3, v2, v4}, Lgbsdk/common/host/abik;->a(Ljava/lang/String;Lgbsdk/common/host/abjf;)V

    .line 674
    :cond_8
    new-instance v2, Losdk/okhttp3/Request$Builder;

    invoke-direct {v2}, Losdk/okhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v6}, Losdk/okhttp3/Request$Builder;->url(Ljava/lang/String;)Losdk/okhttp3/Request$Builder;

    move-result-object v2

    .line 675
    iget-object v3, v1, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Losdk/okhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 676
    iget-object v3, v1, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Losdk/okhttp3/Request$Builder;->method(Ljava/lang/String;Losdk/okhttp3/RequestBody;)Losdk/okhttp3/Request$Builder;

    move-result-object v0

    goto :goto_2

    .line 678
    :cond_9
    iget-object v0, v1, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    .line 679
    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Request;->getBody()Lcom/bytedance/retrofit2/mime/TypedOutput;

    move-result-object v3

    iget-object v4, v1, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v4}, Lcom/bytedance/retrofit2/client/Request;->getRequestBody()Losdk/okhttp3/RequestBody;

    move-result-object v4

    invoke-static {v3, v4}, Lgbsdk/common/host/abjb$ab;->a(Lcom/bytedance/retrofit2/mime/TypedOutput;Losdk/okhttp3/RequestBody;)Losdk/okhttp3/RequestBody;

    move-result-object v3

    .line 678
    invoke-virtual {v2, v0, v3}, Losdk/okhttp3/Request$Builder;->method(Ljava/lang/String;Losdk/okhttp3/RequestBody;)Losdk/okhttp3/Request$Builder;

    move-result-object v0

    .line 682
    :goto_2
    iget-object v2, v1, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v2}, Lcom/bytedance/retrofit2/client/Request;->getHeaders()Ljava/util/List;

    move-result-object v2

    .line 683
    iget-object v3, v1, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Request;->getBody()Lcom/bytedance/retrofit2/mime/TypedOutput;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 684
    iget-object v3, v1, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Request;->getBody()Lcom/bytedance/retrofit2/mime/TypedOutput;

    move-result-object v3

    invoke-interface {v3}, Lcom/bytedance/retrofit2/mime/TypedOutput;->md5Stub()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    const-string v4, "X-SS-STUB"

    .line 686
    invoke-virtual {v0, v4, v3}, Losdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/Request$Builder;

    .line 689
    :cond_a
    invoke-static {v0, v2}, Lgbsdk/common/host/abjb;->a(Losdk/okhttp3/Request$Builder;Ljava/util/List;)Losdk/okhttp3/Request;

    move-result-object v0

    iput-object v0, v1, Lgbsdk/common/host/abjb$ab;->nZ:Losdk/okhttp3/Request;

    .line 690
    iget-object v2, v1, Lgbsdk/common/host/abjb$ab;->client:Losdk/okhttp3/OkHttpClient;

    invoke-virtual {v2, v0}, Losdk/okhttp3/OkHttpClient;->newCall(Losdk/okhttp3/Request;)Losdk/okhttp3/Call;

    move-result-object v0

    iput-object v0, v1, Lgbsdk/common/host/abjb$ab;->ob:Losdk/okhttp3/Call;

    .line 691
    iget-object v0, v1, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v2, v1, Lgbsdk/common/host/abjb$ab;->nZ:Losdk/okhttp3/Request;

    iget-object v3, v1, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-static {v2, v3}, Lgbsdk/common/host/abjb;->a(Losdk/okhttp3/Request;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->extraInfo:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v8, v6

    .line 694
    iget-object v7, v1, Lgbsdk/common/host/abjb$ab;->nZ:Losdk/okhttp3/Request;

    iget-wide v9, v1, Lgbsdk/common/host/abjb$ab;->start:J

    iget-object v11, v1, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v12, v1, Lgbsdk/common/host/abjb$ab;->traceCode:Ljava/lang/String;

    iget-object v14, v1, Lgbsdk/common/host/abjb$ab;->ob:Losdk/okhttp3/Call;

    iget-object v15, v1, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    iget-object v2, v1, Lgbsdk/common/host/abjb$ab;->retrofitMetrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

    iget-object v3, v1, Lgbsdk/common/host/abjb$ab;->od:Lgbsdk/common/host/abjf;

    move-object v13, v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-static/range {v7 .. v17}, Lgbsdk/common/host/abjb;->a(Losdk/okhttp3/Request;Ljava/lang/String;JLcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Ljava/lang/String;Ljava/lang/Exception;Losdk/okhttp3/Call;Losdk/okhttp3/Response;Lcom/bytedance/retrofit2/RetrofitMetrics;Lgbsdk/common/host/abjf;)V

    .line 696
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_b

    .line 697
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 699
    :cond_b
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private a(Losdk/okhttp3/ResponseBody;Ljava/util/Map;Z)Lcom/bytedance/retrofit2/mime/TypedInput;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Losdk/okhttp3/ResponseBody;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;Z)",
            "Lcom/bytedance/retrofit2/mime/TypedInput;"
        }
    .end annotation

    .line 907
    invoke-virtual {p1}, Losdk/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 910
    :cond_0
    new-instance v0, Lgbsdk/common/host/abjb$ab$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lgbsdk/common/host/abjb$ab$2;-><init>(Lgbsdk/common/host/abjb$ab;Losdk/okhttp3/ResponseBody;Ljava/util/Map;Z)V

    return-object v0
.end method

.method private static a(Lcom/bytedance/retrofit2/mime/TypedOutput;Losdk/okhttp3/RequestBody;)Losdk/okhttp3/RequestBody;
    .locals 1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    const-string p1, "body=null"

    .line 885
    invoke-static {p0, p1}, Losdk/okhttp3/RequestBody;->create(Losdk/okhttp3/MediaType;Ljava/lang/String;)Losdk/okhttp3/RequestBody;

    move-result-object p0

    return-object p0

    .line 887
    :cond_1
    invoke-interface {p0}, Lcom/bytedance/retrofit2/mime/TypedOutput;->mimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Losdk/okhttp3/MediaType;->parse(Ljava/lang/String;)Losdk/okhttp3/MediaType;

    move-result-object p1

    .line 888
    new-instance v0, Lgbsdk/common/host/abjb$ab$1;

    invoke-direct {v0, p1, p0}, Lgbsdk/common/host/abjb$ab$1;-><init>(Losdk/okhttp3/MediaType;Lcom/bytedance/retrofit2/mime/TypedOutput;)V

    return-object v0
.end method

.method private a(Lgbsdk/common/host/abjf;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 999
    new-instance v0, Lgbsdk/common/host/abjh;

    invoke-direct {v0}, Lgbsdk/common/host/abjh;-><init>()V

    const/16 v1, 0x133

    .line 1000
    iput v1, v0, Lgbsdk/common/host/abjh;->np:I

    const/4 v1, 0x1

    .line 1001
    iput-boolean v1, v0, Lgbsdk/common/host/abjh;->nq:Z

    .line 1002
    iput-object p2, v0, Lgbsdk/common/host/abjh;->ne:Ljava/lang/String;

    .line 1003
    iput-object p3, v0, Lgbsdk/common/host/abjh;->mUrl:Ljava/lang/String;

    .line 1004
    iget-object p2, p1, Lgbsdk/common/host/abjf;->nc:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1005
    iget p2, p1, Lgbsdk/common/host/abjf;->nb:I

    add-int/2addr p2, v1

    iput p2, p1, Lgbsdk/common/host/abjf;->nb:I

    .line 1006
    iput-wide p4, p1, Lgbsdk/common/host/abjf;->mJ:J

    .line 1007
    iput-boolean v1, p1, Lgbsdk/common/host/abjf;->ng:Z

    return-void
.end method

.method private static b(Losdk/okhttp3/Headers;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Losdk/okhttp3/Headers;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;"
        }
    .end annotation

    .line 942
    invoke-virtual {p0}, Losdk/okhttp3/Headers;->size()I

    move-result v0

    .line 943
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 945
    invoke-virtual {p0, v2}, Losdk/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "bdturing-verify"

    .line 946
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lgbsdk/common/host/abjb$ab;->iT:Z

    if-eqz v3, :cond_0

    goto :goto_1

    .line 949
    :cond_0
    new-instance v3, Lcom/bytedance/retrofit2/client/Header;

    invoke-virtual {p0, v2}, Losdk/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Losdk/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private bZ()V
    .locals 8

    .line 720
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    invoke-virtual {v0}, Losdk/okhttp3/Response;->headers()Losdk/okhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Losdk/okhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "bdturing-verify"

    .line 721
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 726
    iget-object v3, p0, Lgbsdk/common/host/abjb$ab;->nZ:Losdk/okhttp3/Request;

    if-eqz v3, :cond_1

    const-string v2, "x-tt-bypass-bdturing"

    .line 727
    invoke-virtual {v3, v2}, Losdk/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 729
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "1"

    .line 730
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 734
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 735
    iget-object v4, p0, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    invoke-virtual {v4}, Losdk/okhttp3/Response;->code()I

    move-result v4

    invoke-static {v4, v0}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->shouldRetryRequestFromTuringHeaders(ILjava/util/Map;)Z

    move-result v4

    .line 736
    iget-object v5, p0, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    iput-wide v6, v5, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->turingCallbackDuration:J

    const/4 v2, 0x1

    if-eqz v4, :cond_3

    .line 738
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iput-boolean v2, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->executeTuringCallback:Z

    .line 739
    invoke-direct {p0, v2}, Lgbsdk/common/host/abjb$ab;->t(Z)V

    goto :goto_0

    .line 741
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 742
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iput-boolean v2, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->executeTuringCallback:Z

    .line 743
    sput-boolean v2, Lgbsdk/common/host/abjb$ab;->iT:Z

    .line 746
    :cond_4
    :goto_0
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v1, p0, Lgbsdk/common/host/abjb$ab;->nZ:Losdk/okhttp3/Request;

    invoke-static {v1, v0}, Lgbsdk/common/host/abjb;->a(Losdk/okhttp3/Request;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->extraInfo:Lorg/json/JSONObject;

    :cond_5
    :goto_1
    return-void
.end method

.method private t(Z)V
    .locals 2

    .line 705
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab;->ob:Losdk/okhttp3/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Losdk/okhttp3/Call;->cancel()V

    .line 706
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    invoke-virtual {v0}, Losdk/okhttp3/Response;->body()Losdk/okhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abjb;->a(Losdk/okhttp3/ResponseBody;)V

    if-eqz p1, :cond_1

    .line 709
    iget-object p1, p0, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->bdTuringRetry:Z

    .line 710
    iget-object p1, p0, Lgbsdk/common/host/abjb$ab;->nZ:Losdk/okhttp3/Request;

    invoke-virtual {p1}, Losdk/okhttp3/Request;->newBuilder()Losdk/okhttp3/Request$Builder;

    move-result-object p1

    const-string v0, "x-tt-bdturing-retry"

    const-string v1, "1"

    .line 711
    invoke-virtual {p1, v0, v1}, Losdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Losdk/okhttp3/Request$Builder;->build()Losdk/okhttp3/Request;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abjb$ab;->nZ:Losdk/okhttp3/Request;

    .line 714
    :cond_1
    iget-object p1, p0, Lgbsdk/common/host/abjb$ab;->client:Losdk/okhttp3/OkHttpClient;

    iget-object v0, p0, Lgbsdk/common/host/abjb$ab;->nZ:Losdk/okhttp3/Request;

    invoke-virtual {p1, v0}, Losdk/okhttp3/OkHttpClient;->newCall(Losdk/okhttp3/Request;)Losdk/okhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abjb$ab;->ob:Losdk/okhttp3/Call;

    .line 715
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-interface {p1}, Losdk/okhttp3/Call;->request()Losdk/okhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Losdk/okhttp3/Request;->headers()Losdk/okhttp3/Headers;

    move-result-object p1

    invoke-static {p1}, Lgbsdk/common/host/abjb;->a(Losdk/okhttp3/Headers;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestHeaders:Ljava/lang/String;

    .line 716
    iget-object p1, p0, Lgbsdk/common/host/abjb$ab;->client:Losdk/okhttp3/OkHttpClient;

    iget-object v0, p0, Lgbsdk/common/host/abjb$ab;->ob:Losdk/okhttp3/Call;

    invoke-static {p1, v0}, Lgbsdk/common/host/abjb;->a(Losdk/okhttp3/OkHttpClient;Losdk/okhttp3/Call;)Losdk/okhttp3/Response;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    return-void
.end method

.method private u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 962
    invoke-static {}, Lgbsdk/common/host/abmf;->cv()Lgbsdk/common/host/abmf;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/common/host/abmf;->cw()Z

    move-result v0

    if-nez v0, :cond_2

    .line 963
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 964
    new-instance v2, Lgbsdk/common/host/abma;

    invoke-direct {v2, p1, p2}, Lgbsdk/common/host/abma;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    invoke-static {}, Lgbsdk/common/host/abmf;->cv()Lgbsdk/common/host/abmf;

    move-result-object p2

    invoke-virtual {p2, v2}, Lgbsdk/common/host/abmf;->b(Lgbsdk/common/host/abma;)Lgbsdk/common/host/abmh;

    move-result-object p2

    .line 966
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz p2, :cond_3

    .line 968
    iget-object v5, p0, Lgbsdk/common/host/abjb$ab;->od:Lgbsdk/common/host/abjf;

    iget-object v4, p0, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v4}, Lcom/bytedance/retrofit2/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p2, Lgbsdk/common/host/abmh;->rb:Ljava/lang/String;

    sub-long v8, v2, v0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lgbsdk/common/host/abjb$ab;->a(Lgbsdk/common/host/abjf;Ljava/lang/String;Ljava/lang/String;J)V

    .line 970
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab;->od:Lgbsdk/common/host/abjf;

    iget-object v1, p2, Lgbsdk/common/host/abmh;->ni:Ljava/util/List;

    iput-object v1, v0, Lgbsdk/common/host/abjf;->ni:Ljava/util/List;

    .line 971
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab;->od:Lgbsdk/common/host/abjf;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lgbsdk/common/host/abjf;->nh:Z

    .line 973
    iget-object v0, p2, Lgbsdk/common/host/abmh;->rb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 974
    iget-object v0, p2, Lgbsdk/common/host/abmh;->rb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lgbsdk/common/host/abmh;->rc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 975
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "ERR_TTNET_TRAFFIC_CONTROL_DROP, -555"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 977
    :cond_1
    :goto_0
    iget-object v0, p2, Lgbsdk/common/host/abmh;->rb:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlUtils;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 978
    iget-object p1, p2, Lgbsdk/common/host/abmh;->rb:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p2, "SsOkHttp3Client"

    const-string v0, "fallback to host replace map"

    .line 983
    invoke-static {p2, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 985
    invoke-static {}, Lgbsdk/common/host/abmf;->cv()Lgbsdk/common/host/abmf;

    move-result-object p2

    invoke-virtual {p2, p1}, Lgbsdk/common/host/abmf;->aG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 986
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 987
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {p2}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlUtils;->isValidUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 989
    iget-object p1, p0, Lgbsdk/common/host/abjb$ab;->od:Lgbsdk/common/host/abjf;

    iget-object v4, p0, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v4}, Lcom/bytedance/retrofit2/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v4

    sub-long v6, v2, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lgbsdk/common/host/abjb$ab;->a(Lgbsdk/common/host/abjf;Ljava/lang/String;Ljava/lang/String;J)V

    .line 990
    iget-object p1, p0, Lgbsdk/common/host/abjb$ab;->od:Lgbsdk/common/host/abjf;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lgbsdk/common/host/abjf;->nh:Z

    .line 991
    iget-object p1, p0, Lgbsdk/common/host/abjb$ab;->od:Lgbsdk/common/host/abjf;

    invoke-static {}, Lgbsdk/common/host/abmf;->cv()Lgbsdk/common/host/abmf;

    move-result-object v0

    iget-object v0, v0, Lgbsdk/common/host/abmf;->rH:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    iput v0, p1, Lgbsdk/common/host/abjf;->nj:I

    move-object p1, p2

    :cond_3
    :goto_1
    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 9

    .line 856
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab;->ob:Losdk/okhttp3/Call;

    if-eqz v0, :cond_2

    .line 857
    invoke-interface {v0}, Losdk/okhttp3/Call;->cancel()V

    .line 858
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/client/Request;->isResponseStreaming()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lgbsdk/common/host/abjb$ab;->canceled:Z

    if-nez v0, :cond_1

    .line 859
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestEnd:J

    .line 860
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v0, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v0, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    iget-boolean v0, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->is_need_monitor_in_cancel:Z

    if-eqz v0, :cond_1

    .line 861
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-wide v0, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestEnd:J

    iget-wide v4, p0, Lgbsdk/common/host/abjb$ab;->start:J

    sub-long v2, v0, v4

    iget-object v0, p0, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    .line 862
    invoke-virtual {v0}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lgbsdk/common/host/abjb$ab;->traceCode:Ljava/lang/String;

    iget-object v8, p0, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    .line 861
    invoke-static/range {v2 .. v8}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->monitorApiSample(JJLjava/lang/String;Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V

    :cond_1
    const/4 v0, 0x1

    .line 865
    iput-boolean v0, p0, Lgbsdk/common/host/abjb$ab;->canceled:Z

    :cond_2
    return-void
.end method

.method public execute()Lcom/bytedance/retrofit2/client/Response;
    .locals 15

    .line 751
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 754
    sget-boolean v1, Lgbsdk/common/host/abjb;->nJ:Z

    if-nez v1, :cond_18

    .line 758
    iget-object v1, p0, Lgbsdk/common/host/abjb$ab;->ob:Losdk/okhttp3/Call;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Losdk/okhttp3/Call;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 759
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "request canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lgbsdk/common/host/abjb$ab;->oc:Z

    if-nez v1, :cond_3

    sget-object v1, Lgbsdk/common/host/abjb;->sContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    sget-object v1, Lgbsdk/common/host/abjb;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/common/utility/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 763
    :cond_2
    new-instance v0, Lgbsdk/common/host/abke;

    const-string v1, "network not available"

    invoke-direct {v0, v1}, Lgbsdk/common/host/abke;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 767
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Request;->isResponseStreaming()Z

    move-result v1

    if-nez v1, :cond_4

    .line 769
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getConnectionQualitySamplerHook()Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ConnectionQualitySamplerHook;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 770
    invoke-interface {v1, v0}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ConnectionQualitySamplerHook;->shouldSampling(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 771
    sget-object v1, Lgbsdk/common/host/abhb$ab;->gy:Lgbsdk/common/host/abhb;

    invoke-virtual {v1}, Lgbsdk/common/host/abhb;->aX()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    .line 776
    :goto_2
    :try_start_1
    iget-object v1, p0, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v2, p0, Lgbsdk/common/host/abjb$ab;->ob:Losdk/okhttp3/Call;

    invoke-interface {v2}, Losdk/okhttp3/Call;->request()Losdk/okhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Losdk/okhttp3/Request;->headers()Losdk/okhttp3/Headers;

    move-result-object v2

    invoke-static {v2}, Lgbsdk/common/host/abjb;->a(Losdk/okhttp3/Headers;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestHeaders:Ljava/lang/String;

    .line 777
    iget-object v1, p0, Lgbsdk/common/host/abjb$ab;->client:Losdk/okhttp3/OkHttpClient;

    iget-object v2, p0, Lgbsdk/common/host/abjb$ab;->ob:Losdk/okhttp3/Call;

    invoke-static {v1, v2}, Lgbsdk/common/host/abjb;->a(Losdk/okhttp3/OkHttpClient;Losdk/okhttp3/Call;)Losdk/okhttp3/Response;

    move-result-object v1

    iput-object v1, p0, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    .line 779
    invoke-direct {p0}, Lgbsdk/common/host/abjb$ab;->bZ()V

    .line 781
    iget-object v1, p0, Lgbsdk/common/host/abjb$ab;->od:Lgbsdk/common/host/abjf;

    iget-object v2, p0, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    invoke-virtual {v2}, Losdk/okhttp3/Response;->cacheResponse()Losdk/okhttp3/Response;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, v1, Lgbsdk/common/host/abjf;->mU:Z

    .line 782
    iget-object v1, p0, Lgbsdk/common/host/abjb$ab;->od:Lgbsdk/common/host/abjf;

    iget-object v2, p0, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    invoke-virtual {v2}, Losdk/okhttp3/Response;->networkResponse()Losdk/okhttp3/Response;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, v1, Lgbsdk/common/host/abjf;->mV:Z

    .line 783
    iget-object v1, p0, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->responseBack:J

    .line 784
    iget-object v1, p0, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v2, p0, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    invoke-virtual {v2}, Losdk/okhttp3/Response;->headers()Losdk/okhttp3/Headers;

    move-result-object v2

    invoke-static {v2}, Lgbsdk/common/host/abjb;->a(Losdk/okhttp3/Headers;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->responseHeaders:Ljava/lang/String;

    .line 785
    iget-object v1, p0, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    iget-object v2, p0, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-static {v1, v2}, Lgbsdk/common/host/abjb;->a(Losdk/okhttp3/Response;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgbsdk/common/host/abjb$ab;->traceCode:Ljava/lang/String;

    .line 786
    sget-object v1, Lgbsdk/common/host/abjb;->nV:Lgbsdk/common/host/abin;

    if-eqz v1, :cond_7

    .line 787
    sget-object v1, Lgbsdk/common/host/abjb;->nV:Lgbsdk/common/host/abin;

    iget-object v2, p0, Lgbsdk/common/host/abjb$ab;->nZ:Losdk/okhttp3/Request;

    iget-object v3, p0, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    invoke-interface {v1, v2, v3}, Lgbsdk/common/host/abin;->a(Losdk/okhttp3/Request;Losdk/okhttp3/Response;)V

    .line 790
    :cond_7
    iget-object v1, p0, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    invoke-virtual {v1}, Losdk/okhttp3/Response;->code()I

    move-result v13

    .line 791
    iget-object v1, p0, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Losdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 793
    iget-object v1, p0, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Request;->isResponseStreaming()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "gzip"

    .line 794
    iget-object v2, p0, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    const-string v3, "Content-Encoding"

    invoke-virtual {v2, v3}, Losdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 795
    iget-object v2, p0, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    invoke-virtual {v2}, Losdk/okhttp3/Response;->headers()Losdk/okhttp3/Headers;

    move-result-object v2

    invoke-virtual {v2}, Losdk/okhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v2

    const/16 v3, 0xc8

    if-lt v13, v3, :cond_8

    const/16 v3, 0x12c

    if-lt v13, v3, :cond_9

    .line 796
    :cond_8
    iget-object v3, p0, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-static {v3}, Lgbsdk/common/host/abjb;->a(Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 797
    :cond_9
    iget-object v3, p0, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    invoke-virtual {v3}, Losdk/okhttp3/Response;->body()Losdk/okhttp3/ResponseBody;

    move-result-object v3

    invoke-direct {p0, v3, v2, v1}, Lgbsdk/common/host/abjb$ab;->a(Losdk/okhttp3/ResponseBody;Ljava/util/Map;Z)Lcom/bytedance/retrofit2/mime/TypedInput;

    move-result-object v1

    move-object v6, v1

    goto :goto_5

    .line 799
    :cond_a
    iget-object v3, p0, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    invoke-virtual {v3}, Losdk/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object v8

    .line 800
    iget-object v3, p0, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Request;->getMaxLength()I

    move-result v3

    .line 801
    iget-object v4, p0, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    invoke-virtual {v4}, Losdk/okhttp3/Response;->body()Losdk/okhttp3/ResponseBody;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 803
    invoke-virtual {v9}, Losdk/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v4

    .line 804
    iget-object v7, p0, Lgbsdk/common/host/abjb$ab;->retrofitMetrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-object v5, v14

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Lgbsdk/common/host/abjb;->processHttpErrorResponse(ZLjava/util/Map;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/retrofit2/RetrofitMetrics;)V

    .line 805
    invoke-static {v9}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    .line 807
    :cond_b
    new-instance v1, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;

    invoke-direct {v1, v13, v8}, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 810
    :cond_c
    iget-object v1, p0, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Request;->getMaxLength()I

    move-result v2

    .line 811
    iget-object v3, p0, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    iget-wide v4, p0, Lgbsdk/common/host/abjb$ab;->start:J

    iget-object v6, p0, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v7, p0, Lgbsdk/common/host/abjb$ab;->traceCode:Ljava/lang/String;

    iget-object v8, p0, Lgbsdk/common/host/abjb$ab;->retrofitMetrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

    iget-object v9, p0, Lgbsdk/common/host/abjb$ab;->od:Lgbsdk/common/host/abjf;

    move-object v1, v0

    invoke-static/range {v1 .. v9}, Lgbsdk/common/host/abjb;->a(Ljava/lang/String;ILosdk/okhttp3/Response;JLcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Ljava/lang/String;Lcom/bytedance/retrofit2/RetrofitMetrics;Lgbsdk/common/host/abjf;)[B

    move-result-object v1

    .line 813
    new-instance v2, Lcom/bytedance/retrofit2/mime/TypedByteArray;

    new-array v3, v10, [Ljava/lang/String;

    invoke-direct {v2, v14, v1, v3}, Lcom/bytedance/retrofit2/mime/TypedByteArray;-><init>(Ljava/lang/String;[B[Ljava/lang/String;)V

    move-object v6, v2

    .line 816
    :goto_5
    new-instance v7, Lcom/bytedance/retrofit2/client/Response;

    iget-object v1, p0, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    .line 817
    invoke-virtual {v1}, Losdk/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    invoke-virtual {v1}, Losdk/okhttp3/Response;->headers()Losdk/okhttp3/Headers;

    move-result-object v1

    invoke-static {v1}, Lgbsdk/common/host/abjb$ab;->b(Losdk/okhttp3/Headers;)Ljava/util/List;

    move-result-object v5

    move-object v1, v7

    move-object v2, v0

    move v3, v13

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/retrofit2/client/Response;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/bytedance/retrofit2/mime/TypedInput;)V

    .line 818
    iget-object v1, p0, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-virtual {v7, v1}, Lcom/bytedance/retrofit2/client/Response;->setExtraInfo(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 845
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/client/Request;->isResponseStreaming()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_6

    .line 846
    :cond_d
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab;->body:Losdk/okhttp3/ResponseBody;

    invoke-static {v0}, Lgbsdk/common/host/abjb;->a(Losdk/okhttp3/ResponseBody;)V

    .line 848
    :goto_6
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/client/Request;->isResponseStreaming()Z

    move-result v0

    if-nez v0, :cond_e

    if-eqz v11, :cond_e

    .line 849
    sget-object v0, Lgbsdk/common/host/abhb$ab;->gy:Lgbsdk/common/host/abhb;

    invoke-virtual {v0}, Lgbsdk/common/host/abhb;->aY()V

    :cond_e
    return-object v7

    :catchall_0
    move-exception v0

    move v10, v11

    goto :goto_7

    :catch_0
    move-exception v1

    move-object v13, v1

    move v14, v11

    goto :goto_8

    :catchall_1
    move-exception v0

    :goto_7
    const/4 v12, 0x0

    goto :goto_b

    :catch_1
    move-exception v1

    move-object v13, v1

    const/4 v14, 0x0

    .line 823
    :goto_8
    :try_start_2
    sget-object v1, Lgbsdk/common/host/abjb;->nV:Lgbsdk/common/host/abin;

    if-eqz v1, :cond_f

    .line 824
    sget-object v1, Lgbsdk/common/host/abjb;->nV:Lgbsdk/common/host/abin;

    iget-object v2, p0, Lgbsdk/common/host/abjb$ab;->nZ:Losdk/okhttp3/Request;

    invoke-interface {v1, v2, v13}, Lgbsdk/common/host/abin;->a(Losdk/okhttp3/Request;Ljava/lang/Exception;)V

    .line 827
    :cond_f
    instance-of v1, v13, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;

    if-eqz v1, :cond_11

    .line 828
    move-object v1, v13

    check-cast v1, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;

    .line 829
    invoke-virtual {v1}, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;->getStatusCode()I

    move-result v2

    const/16 v3, 0x130

    if-eq v2, v3, :cond_10

    goto :goto_9

    .line 830
    :cond_10
    throw v1

    .line 833
    :cond_11
    :goto_9
    instance-of v1, v13, Ljava/io/IOException;

    if-eqz v1, :cond_13

    const-string v1, "Canceled"

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_a

    .line 834
    :cond_12
    throw v13

    .line 836
    :cond_13
    :goto_a
    iget-object v1, p0, Lgbsdk/common/host/abjb$ab;->nZ:Losdk/okhttp3/Request;

    iget-wide v3, p0, Lgbsdk/common/host/abjb$ab;->start:J

    iget-object v5, p0, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v6, p0, Lgbsdk/common/host/abjb$ab;->traceCode:Ljava/lang/String;

    iget-object v8, p0, Lgbsdk/common/host/abjb$ab;->ob:Losdk/okhttp3/Call;

    iget-object v9, p0, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    iget-object v10, p0, Lgbsdk/common/host/abjb$ab;->retrofitMetrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

    iget-object v11, p0, Lgbsdk/common/host/abjb$ab;->od:Lgbsdk/common/host/abjf;

    move-object v2, v0

    move-object v7, v13

    invoke-static/range {v1 .. v11}, Lgbsdk/common/host/abjb;->a(Losdk/okhttp3/Request;Ljava/lang/String;JLcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Ljava/lang/String;Ljava/lang/Exception;Losdk/okhttp3/Call;Losdk/okhttp3/Response;Lcom/bytedance/retrofit2/RetrofitMetrics;Lgbsdk/common/host/abjf;)V

    .line 838
    instance-of v0, v13, Ljava/io/IOException;

    if-eqz v0, :cond_14

    .line 839
    check-cast v13, Ljava/io/IOException;

    throw v13

    .line 841
    :cond_14
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    move v10, v14

    .line 845
    :goto_b
    iget-object v1, p0, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Request;->isResponseStreaming()Z

    move-result v1

    if-eqz v1, :cond_15

    if-eqz v12, :cond_16

    .line 846
    :cond_15
    iget-object v1, p0, Lgbsdk/common/host/abjb$ab;->body:Losdk/okhttp3/ResponseBody;

    invoke-static {v1}, Lgbsdk/common/host/abjb;->a(Losdk/okhttp3/ResponseBody;)V

    .line 848
    :cond_16
    iget-object v1, p0, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Request;->isResponseStreaming()Z

    move-result v1

    if-nez v1, :cond_17

    if-eqz v10, :cond_17

    .line 849
    sget-object v1, Lgbsdk/common/host/abhb$ab;->gy:Lgbsdk/common/host/abhb;

    invoke-virtual {v1}, Lgbsdk/common/host/abhb;->aY()V

    :cond_17
    throw v0

    .line 755
    :cond_18
    new-instance v0, Lgbsdk/common/host/abka;

    const-string v1, "request is not allowed using network"

    invoke-direct {v0, v1}, Lgbsdk/common/host/abka;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRequest()Lcom/bytedance/retrofit2/client/Request;
    .locals 1

    .line 871
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab;->nY:Lcom/bytedance/retrofit2/client/Request;

    return-object v0
.end method

.method public getRequestInfo()Ljava/lang/Object;
    .locals 1

    .line 956
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab;->nX:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    return-object v0
.end method

.method public setThrottleNetSpeed(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
