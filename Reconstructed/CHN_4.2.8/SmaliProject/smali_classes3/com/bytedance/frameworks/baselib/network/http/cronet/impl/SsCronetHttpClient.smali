.class public Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;
.super Ljava/lang/Object;
.source "SsCronetHttpClient.java"

# interfaces
.implements Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient$ICronetBootFailureChecker;
.implements Lgbsdk/common/host/abjt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ad;,
        Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ab;,
        Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ac;
    }
.end annotation


# static fields
.field private static final CHUNK_SIZE:I = 0x1000

.field private static final CONCURRENT_NO_RETRY_SWITCH:Ljava/lang/String; = "no_retry=1"

.field private static final CRONET_CLIENT_CLASS:Ljava/lang/String; = "org.chromium.CronetClient"

.field private static final CRONET_INPUTSTREAM_BUFF_SIZE_MAX:I = 0x1400000

.field private static final CRONET_INPUTSTREAM_BUFF_SIZE_MIN:I = 0x2000

.field private static final INTERNET_DISCONNECTED:Ljava/lang/String; = "net::ERR_INTERNET_DISCONNECTED"

.field private static final KEY_CRONET_INPUTSTREAM_BUFF_SIZE:Ljava/lang/String; = "cronet_inputstream_buff_size"

.field private static final KEY_REQUEST_LOG:Ljava/lang/String; = "request_log"

.field public static final TAG:Ljava/lang/String;

.field private static volatile sBypassOfflineCheckEnabled:Z

.field private static sContext:Landroid/content/Context;

.field private static sCronetBootFailureChecker:Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ab;

.field private static sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

.field private static sCronetHttpDnsConfig:Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ac;

.field private static volatile sCronetInputstreamBuffSize:I

.field private static sCronetTncInfoGet:Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ad;

.field private static sCustomCronetClientClass:Ljava/lang/String;

.field private static volatile sInstance:Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 57
    sput-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCustomCronetClientClass:Ljava/lang/String;

    const/4 v0, 0x0

    .line 67
    sput-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sInstance:Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    const/4 v0, 0x0

    .line 68
    sput-boolean v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sBypassOfflineCheckEnabled:Z

    .line 69
    sput v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetInputstreamBuffSize:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sContext:Landroid/content/Context;

    return-void
.end method

.method private checkCronetClientCreated()V
    .locals 2

    .line 316
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v0, :cond_0

    return-void

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CronetEngine has not been initialized."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNetworkAvailable(ZLjava/lang/String;)V
    .locals 2

    .line 1017
    sget-boolean v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sBypassOfflineCheckEnabled:Z

    const-string v1, "network not available"

    if-nez v0, :cond_1

    if-nez p0, :cond_1

    sget-object p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sContext:Landroid/content/Context;

    if-eqz p0, :cond_1

    .line 1018
    invoke-static {p0}, Lcom/bytedance/common/utility/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1019
    :cond_0
    new-instance p0, Lgbsdk/common/host/abke;

    invoke-direct {p0, v1}, Lgbsdk/common/host/abke;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1022
    :cond_1
    :goto_0
    sget-boolean p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sBypassOfflineCheckEnabled:Z

    if-eqz p0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "net::ERR_INTERNET_DISCONNECTED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    .line 1023
    :cond_2
    new-instance p0, Lgbsdk/common/host/abke;

    invoke-direct {p0, v1}, Lgbsdk/common/host/abke;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public static constructURLConnection(Ljava/lang/String;Lcom/bytedance/retrofit2/client/Request;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;J)Ljava/net/HttpURLConnection;
    .locals 14

    move-object/from16 v1, p2

    .line 564
    invoke-static {p1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->tryNecessaryInit(Lcom/bytedance/retrofit2/client/Request;)V

    .line 565
    invoke-static {p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 575
    sget v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetInputstreamBuffSize:I

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->isCronetInputStreamSizeValid(I)Z

    move-result v0

    const-string v3, "setInputStreamBufferSize"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 577
    :try_start_0
    invoke-static {v2}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    new-array v7, v4, [Ljava/lang/Object;

    .line 579
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getCronetInputstreamBuffSize()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    .line 578
    invoke-virtual {v0, v3, v6, v7}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 582
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 587
    :cond_0
    :goto_0
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 589
    iget-object v0, v1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    instance-of v0, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_8

    .line 590
    iget-object v8, v1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    .line 591
    iget-wide v9, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->timeout_connect:J

    cmp-long v0, v9, v6

    if-lez v0, :cond_1

    .line 592
    iget-wide v9, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->timeout_connect:J

    long-to-int v0, v9

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 593
    :cond_1
    iget-wide v9, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->timeout_read:J

    cmp-long v0, v9, v6

    if-lez v0, :cond_2

    .line 594
    iget-wide v9, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->timeout_read:J

    long-to-int v0, v9

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 596
    :cond_2
    iget-wide v9, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->protect_timeout:J

    cmp-long v0, v9, v6

    if-lez v0, :cond_4

    .line 598
    :try_start_1
    invoke-static {v2}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const-string v9, "setRequestTimeout"

    new-array v10, v4, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v5

    new-array v11, v4, [Ljava/lang/Object;

    iget-wide v12, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->protect_timeout:J

    long-to-int v13, v12

    .line 599
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-virtual {v0, v9, v10, v11}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    .line 600
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 601
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 603
    iget-wide v9, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->socket_connect_timeout:J

    cmp-long v0, v9, v6

    if-gtz v0, :cond_3

    iget-wide v9, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->socket_read_timeout:J

    cmp-long v0, v9, v6

    if-gtz v0, :cond_3

    iget-wide v9, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->socket_write_timeout:J

    cmp-long v0, v9, v6

    if-lez v0, :cond_4

    .line 605
    :cond_3
    invoke-static {v2}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const-string v9, "setSocketConnectTimeout"

    new-array v10, v4, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v5

    new-array v11, v4, [Ljava/lang/Object;

    iget-wide v12, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->socket_connect_timeout:J

    long-to-int v13, v12

    .line 607
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    .line 606
    invoke-virtual {v0, v9, v10, v11}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    .line 608
    invoke-static {v2}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const-string v9, "setSocketReadTimeout"

    new-array v10, v4, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v5

    new-array v11, v4, [Ljava/lang/Object;

    iget-wide v12, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->socket_read_timeout:J

    long-to-int v13, v12

    .line 609
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-virtual {v0, v9, v10, v11}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    .line 610
    invoke-static {v2}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const-string v9, "setSocketWriteTimeout"

    new-array v10, v4, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v5

    new-array v11, v4, [Ljava/lang/Object;

    iget-wide v12, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->socket_write_timeout:J

    long-to-int v13, v12

    .line 611
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-virtual {v0, v9, v10, v11}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 615
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 627
    :cond_4
    :goto_1
    sget v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetInputstreamBuffSize:I

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->isCronetInputStreamSizeValid(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->input_stream_buffer_size:I

    .line 628
    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->isCronetInputStreamSizeValid(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 630
    :try_start_2
    invoke-static {v2}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    new-array v9, v4, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    new-array v10, v4, [Ljava/lang/Object;

    iget v11, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->input_stream_buffer_size:I

    .line 632
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    .line 631
    invoke-virtual {v0, v3, v9, v10}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 635
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 639
    :cond_5
    :goto_2
    iget v0, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->request_flag:I

    if-lez v0, :cond_6

    .line 641
    :try_start_3
    invoke-static {v2}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const-string v3, "setRequestFlag"

    new-array v9, v4, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    new-array v10, v4, [Ljava/lang/Object;

    iget v11, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->request_flag:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-virtual {v0, v3, v9, v10}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    .line 644
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 648
    :cond_6
    :goto_3
    iget-wide v9, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->throttle_net_speed:J

    cmp-long v0, v9, v6

    if-lez v0, :cond_7

    cmp-long v0, p3, v6

    if-nez v0, :cond_7

    .line 649
    iget-wide v9, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->throttle_net_speed:J

    goto :goto_4

    :cond_7
    move-wide/from16 v9, p3

    .line 652
    :goto_4
    iget-boolean v0, v8, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->followRedirectInternal:Z

    if-nez v0, :cond_9

    .line 653
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    goto :goto_5

    :cond_8
    move-wide/from16 v9, p3

    .line 658
    :cond_9
    :goto_5
    :try_start_4
    invoke-static {v2}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const-string v3, "setRequestPriority"

    new-array v8, v4, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v8, v5

    new-array v11, v4, [Ljava/lang/Object;

    .line 659
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getRequestPriorityLevel()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-virtual {v0, v3, v8, v11}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v0

    .line 662
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    cmp-long v0, v9, v6

    if-lez v0, :cond_a

    .line 667
    :try_start_5
    invoke-static {v2}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const-string v3, "setThrottleNetSpeed"

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v0, v3, v6, v4}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    .line 670
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_7
    move-object v3, p1

    .line 675
    invoke-static {v2, p1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->prepareRequest(Ljava/net/HttpURLConnection;Lcom/bytedance/retrofit2/client/Request;)V

    .line 676
    invoke-static {v2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->createExtraInfo(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->extraInfo:Lorg/json/JSONObject;

    return-object v2
.end method

.method protected static createExtraInfo(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;
    .locals 3

    .line 986
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 991
    :cond_0
    :try_start_0
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetTncInfoGet:Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ad;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetTncInfoGet:Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ad;

    invoke-interface {v1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ad;->getABTest()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const-string v2, "ab_test"

    .line 993
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v1, "hc"

    const-string v2, "SsCronetHttpClient"

    .line 995
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 996
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v1, :cond_3

    const-string v1, "hcv"

    .line 997
    sget-object v2, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    invoke-interface {v2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;->getCronetVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v1, "ua"

    const-string v2, "User-Agent"

    .line 999
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1002
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method public static createHeaders(Ljava/net/HttpURLConnection;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1126
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1127
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1128
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v3, "bdturing-verify"

    .line 1129
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    goto :goto_0

    .line 1132
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1133
    new-instance v4, Lcom/bytedance/retrofit2/client/Header;

    invoke-direct {v4, v2, v3}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private static getAllHeaderFieldsString(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 934
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 935
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 938
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 939
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez v2, :cond_3

    goto :goto_0

    .line 943
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 944
    invoke-static {v3}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 947
    :cond_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 948
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    .line 952
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 954
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 955
    invoke-static {v6}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_1

    :cond_6
    if-nez v5, :cond_7

    .line 959
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    const-string v7, "; "

    .line 961
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 965
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 966
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 968
    :cond_9
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_a
    :goto_3
    return-object v0

    :catchall_0
    move-exception p0

    .line 971
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static getContentBaseType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 1112
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1113
    new-instance v1, Lgbsdk/common/host/abkx;

    invoke-direct {v1, p0}, Lgbsdk/common/host/abkx;-><init>(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {v1}, Lgbsdk/common/host/abkx;->cA()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lgbsdk/common/host/abkr; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1117
    invoke-virtual {p0}, Lgbsdk/common/host/abkr;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1165
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getCronetClient()Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;
    .locals 1

    .line 1169
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    return-object v0
.end method

.method protected static getCronetInputstreamBuffSize()I
    .locals 1

    .line 1012
    sget v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetInputstreamBuffSize:I

    return v0
.end method

.method public static getCronetInternalErrorCode(Ljava/net/HttpURLConnection;)I
    .locals 1

    .line 1181
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    invoke-interface {v0, p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;->getCronetInternalErrorCode(Ljava/net/HttpURLConnection;)I

    move-result p0

    return p0
.end method

.method public static getHeaderValueIgnoreCase(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    .line 746
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 749
    :cond_0
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 750
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 751
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getHostAddress(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 450
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string v1, "\\|"

    .line 454
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 455
    array-length v1, p0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    .line 456
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 457
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHostAddress remoteIp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_2
    aget-object p0, p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 463
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method private static getRequestInfo(Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V
    .locals 3

    .line 430
    invoke-static {p0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRequestInfo remoteIp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_1
    iput-object p0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->remoteIp:Ljava/lang/String;

    .line 437
    iget-object v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    if-eqz v0, :cond_2

    .line 438
    iget-object p1, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    iput-object p0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->remoteIp:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method public static getRequestMetrics(Ljava/net/HttpURLConnection;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Lcom/bytedance/retrofit2/RetrofitMetrics;)V
    .locals 7

    const-string v0, ""

    if-nez p1, :cond_0

    return-void

    .line 481
    :cond_0
    :try_start_0
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v1, :cond_1

    .line 482
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 483
    sget-object v2, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    invoke-interface {v2, p0, v1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;->getRequestMetrics(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 484
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "remote_ip"

    .line 485
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-class v2, Ljava/lang/String;

    invoke-static {p0, v2, v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->remoteIp:Ljava/lang/String;

    const-string p0, "dns_time"

    .line 486
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-class v2, Ljava/lang/Long;

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p0, v2, v5}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->dnsTime:J

    const-string p0, "connect_time"

    .line 487
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-class v2, Ljava/lang/Long;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p0, v2, v5}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->connectTime:J

    const-string p0, "ssl_time"

    .line 488
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-class v2, Ljava/lang/Long;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p0, v2, v5}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->sslTime:J

    const-string p0, "send_time"

    .line 489
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-class v2, Ljava/lang/Long;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p0, v2, v5}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->sendTime:J

    const-string p0, "push_time"

    .line 490
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-class v2, Ljava/lang/Long;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p0, v2, v5}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->pushTime:J

    const-string p0, "receive_time"

    .line 491
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-class v2, Ljava/lang/Long;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p0, v2, v5}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->receiveTime:J

    const-string p0, "socket_reused"

    .line 493
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-class v2, Ljava/lang/Boolean;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p0, v2, v5}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->isSocketReused:Z

    const-string p0, "ttfb"

    .line 494
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-class v2, Ljava/lang/Long;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p0, v2, v5}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->ttfbMs:J

    const-string p0, "total_time"

    .line 495
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-class v2, Ljava/lang/Long;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p0, v2, v5}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->totalTime:J

    const-string p0, "send_byte_count"

    .line 497
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-class v2, Ljava/lang/Long;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p0, v2, v5}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->sentByteCount:J

    const-string p0, "received_byte_count"

    .line 499
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-class v2, Ljava/lang/Long;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p0, v2, v5}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->receivedByteCount:J

    const-string p0, "request_log"

    .line 500
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-class v2, Ljava/lang/String;

    invoke-static {p0, v2, v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestLog:Ljava/lang/String;

    const-string p0, "retry_attempts"

    .line 502
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-class v2, Ljava/lang/Long;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p0, v2, v5}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->retryAttempts:J

    const-string p0, "request_headers"

    .line 504
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-class v2, Ljava/lang/String;

    invoke-static {p0, v2, v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestHeaders:Ljava/lang/String;

    const-string p0, "response_headers"

    .line 506
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-class v2, Ljava/lang/String;

    invoke-static {p0, v2, v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->responseHeaders:Ljava/lang/String;

    const-string p0, "post_task_start"

    .line 508
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-class v0, Ljava/lang/Long;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->nativePostTaskStartTime:J

    const-string p0, "request_start"

    .line 510
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-class v0, Ljava/lang/Long;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->nativeRequestStartTime:J

    const-string p0, "wait_ctx"

    .line 512
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-class v0, Ljava/lang/Long;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->nativeWaitContext:J

    :cond_1
    if-eqz p2, :cond_4

    .line 517
    iget p0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->fallbackReason:I

    iput p0, p2, Lcom/bytedance/retrofit2/RetrofitMetrics;->fallbackReason:I

    .line 518
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/bytedance/retrofit2/RetrofitMetrics;->executeCallEndTime:J

    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/bytedance/retrofit2/RetrofitMetrics;->retrofitLogReportTime:J

    const-string p0, "4.1.79.36-gsdk"

    .line 520
    iput-object p0, p2, Lcom/bytedance/retrofit2/RetrofitMetrics;->ttnetVersion:Ljava/lang/String;

    .line 521
    iget-object p0, p2, Lcom/bytedance/retrofit2/RetrofitMetrics;->extra:Ljava/util/Map;

    const-string v0, "sentByteCount"

    iget-wide v1, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->sentByteCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget-object p0, p2, Lcom/bytedance/retrofit2/RetrofitMetrics;->extra:Ljava/util/Map;

    const-string v0, "receivedByteCount"

    iget-wide v1, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->receivedByteCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iget-object p0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->extraInfo:Lorg/json/JSONObject;

    .line 524
    iget-boolean v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->executeTuringCallback:Z

    if-eqz v0, :cond_2

    const-string v0, "turing_callback"

    .line 525
    iget-wide v1, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->turingCallbackDuration:J

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 526
    :cond_2
    iget-boolean p1, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->bdTuringRetry:Z

    if-eqz p1, :cond_3

    const-string p1, "turing_retry"

    const-string v0, "1"

    .line 527
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string p1, "retrofit"

    .line 528
    invoke-virtual {p2}, Lcom/bytedance/retrofit2/RetrofitMetrics;->getRetrofitLog()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 532
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method private static getValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 469
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public static inst(Landroid/content/Context;)Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;
    .locals 2

    .line 111
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sInstance:Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    if-nez v0, :cond_1

    .line 112
    const-class v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    monitor-enter v0

    .line 113
    :try_start_0
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sInstance:Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    invoke-direct {v1, p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sInstance:Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    .line 115
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->tryResolveImpl()V

    .line 117
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 119
    :cond_1
    :goto_0
    sget-object p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sInstance:Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    return-object p0
.end method

.method protected static isCronetInputStreamSizeValid(I)Z
    .locals 1

    const/16 v0, 0x2000

    if-lt p0, v0, :cond_0

    const/high16 v0, 0x1400000

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isForceHandleResponse(Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    iget-boolean p0, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->force_handle_response:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$processResponse$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 818
    :try_start_0
    invoke-static/range {p0 .. p7}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->notifyStoreRegionUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 820
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static notifyStoreRegionUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 345
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v0, :cond_0

    .line 349
    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const/16 v1, 0x8

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-class v3, Ljava/lang/String;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-class v3, Ljava/lang/String;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    const-class v3, Ljava/lang/String;

    const/4 v9, 0x5

    aput-object v3, v2, v9

    const-class v3, Ljava/lang/String;

    const/4 v10, 0x6

    aput-object v3, v2, v10

    const-class v3, Ljava/lang/String;

    const/4 v11, 0x7

    aput-object v3, v2, v11

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p1, v1, v5

    aput-object p2, v1, v6

    aput-object p3, v1, v7

    aput-object p4, v1, v8

    aput-object p5, v1, v9

    aput-object p6, v1, v10

    aput-object p7, v1, v11

    const-string v3, "notifyStoreRegionUpdated"

    .line 350
    invoke-virtual {v0, v3, v2, v1}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->get()Ljava/lang/Object;

    return-void

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CronetEngine has not been initialized."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static onConfigUpdate(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "cronet_inputstream_buff_size"

    const/4 v1, 0x0

    .line 128
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetInputstreamBuffSize:I

    return-void
.end method

.method public static onSaveConfigToSP(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .line 146
    sget v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetInputstreamBuffSize:I

    const-string v1, "cronet_inputstream_buff_size"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static onServerConfigUpdate(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "cronet_inputstream_buff_size"

    const/4 v1, 0x0

    .line 137
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetInputstreamBuffSize:I

    return-void
.end method

.method protected static openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 8

    .line 537
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->tryResolveImpl()V

    .line 539
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v0, :cond_1

    .line 540
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sInstance:Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    invoke-interface {v0, v1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;->setCronetBootFailureChecker(Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient$ICronetBootFailureChecker;)V

    .line 541
    sget-object v2, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    sget-object v3, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sContext:Landroid/content/Context;

    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetHttpDnsConfig:Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ac;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v5, 0x0

    goto :goto_0

    .line 542
    :cond_0
    invoke-interface {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ac;->isCronetHttpDnsOpen()Z

    move-result v0

    move v5, v0

    .line 543
    :goto_0
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getUserAgent()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lgbsdk/common/host/abko;

    invoke-direct {v7}, Lgbsdk/common/host/abko;-><init>()V

    move-object v4, p0

    .line 541
    invoke-interface/range {v2 .. v7}, Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;->openConnection(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/util/concurrent/Executor;)Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 547
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getConnectTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 548
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getIoTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-object p0

    .line 545
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CronetClient is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static prepareRequest(Ljava/net/HttpURLConnection;Lcom/bytedance/retrofit2/client/Request;)V
    .locals 6

    .line 684
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 685
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 691
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "User-Agent"

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/retrofit2/client/Header;

    .line 692
    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 695
    :cond_1
    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    .line 698
    :cond_2
    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-nez v2, :cond_5

    .line 701
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    .line 702
    invoke-static {v1}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 703
    sget-object v2, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v2, :cond_4

    .line 704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cronet/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    invoke-interface {v1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;->getCronetVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 706
    :cond_4
    invoke-virtual {p0, v4, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    :cond_5
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getBody()Lcom/bytedance/retrofit2/mime/TypedOutput;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 711
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 712
    invoke-interface {p1}, Lcom/bytedance/retrofit2/mime/TypedOutput;->mimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-interface {p1}, Lcom/bytedance/retrofit2/mime/TypedOutput;->md5Stub()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "X-SS-STUB"

    .line 715
    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :cond_6
    invoke-interface {p1}, Lcom/bytedance/retrofit2/mime/TypedOutput;->length()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_7

    long-to-int p1, v0

    .line 719
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 720
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const/16 p1, 0x1000

    .line 722
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public static processAfterExecute(Ljava/net/HttpURLConnection;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "x-net-info.remoteaddr"

    .line 760
    invoke-static {p0, v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getHeaderValueIgnoreCase(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 761
    invoke-static {v0, p1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getRequestInfo(Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V

    if-eqz p1, :cond_1

    .line 762
    iget-object v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    if-eqz v0, :cond_1

    .line 763
    iget-object p1, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    iput p2, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->status:I

    :cond_1
    const-string p1, "X-TT-LOGID"

    .line 765
    invoke-static {p0, p1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getHeaderValueIgnoreCase(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static processException(Ljava/lang/String;JLcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Ljava/lang/String;Ljava/lang/Exception;Ljava/net/HttpURLConnection;Lcom/bytedance/retrofit2/RetrofitMetrics;)V
    .locals 11

    move-object v5, p0

    move-object v9, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    if-eqz v5, :cond_5

    if-eqz v8, :cond_5

    if-nez v9, :cond_0

    goto :goto_1

    .line 900
    :cond_0
    :try_start_0
    iget-object v0, v9, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->extraInfo:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 901
    invoke-static/range {p6 .. p6}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->createExtraInfo(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v9, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->extraInfo:Lorg/json/JSONObject;

    .line 903
    :cond_1
    iget-object v0, v9, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->extraInfo:Lorg/json/JSONObject;

    const-string v1, "ex"

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 904
    invoke-static/range {p6 .. p6}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getAllHeaderFieldsString(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 905
    invoke-static {v0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 906
    iget-object v1, v9, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->extraInfo:Lorg/json/JSONObject;

    const-string v2, "response-headers"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 910
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 912
    :cond_2
    :goto_0
    iget-object v0, v9, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->remoteIp:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 913
    invoke-static/range {p5 .. p5}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getHostAddress(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 914
    invoke-static {v0, p3}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getRequestInfo(Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V

    .line 916
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v1, v0, p1

    .line 917
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v9, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestEnd:J

    move-object/from16 v3, p7

    .line 918
    invoke-static {v10, p3, v3}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getRequestMetrics(Ljava/net/HttpURLConnection;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Lcom/bytedance/retrofit2/RetrofitMetrics;)V

    .line 919
    invoke-static {p0, v8, v1, v2, p3}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->handleApiError(Ljava/lang/String;Ljava/lang/Throwable;JLcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V

    move-wide v3, p1

    move-object v5, p0

    move-object v6, p4

    move-object v7, p3

    move-object/from16 v8, p5

    .line 920
    invoke-static/range {v1 .. v8}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->monitorApiError(JJLjava/lang/String;Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Ljava/lang/Throwable;)V

    .line 921
    iget-boolean v0, v9, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->downloadFile:Z

    if-eqz v0, :cond_4

    .line 922
    iget-object v0, v9, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->hasReportStreamingApiAll:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_4
    if-eqz v10, :cond_5

    .line 925
    invoke-virtual/range {p6 .. p6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    :goto_1
    return-void
.end method

.method public static processExecute(Lcom/bytedance/retrofit2/client/Request;Ljava/net/HttpURLConnection;)I
    .locals 3

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 731
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/retrofit2/client/Request;->getBody()Lcom/bytedance/retrofit2/mime/TypedOutput;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 733
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/retrofit2/mime/TypedOutput;->writeTo(Ljava/io/OutputStream;)V

    .line 737
    :cond_1
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->newCookieBlockPositionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/retrofit2/client/Request;->getExtraInfo()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->interceptCookie(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 738
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->tryCookieManagerInit()Landroid/webkit/CookieManager;

    .line 739
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newCookieBlockPositionEnabled true:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :cond_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static processFinally(Ljava/net/HttpURLConnection;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 981
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-void
.end method

.method public static processHttpErrorResponse(ZLjava/util/Map;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/retrofit2/RetrofitMetrics;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;I",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/bytedance/retrofit2/RetrofitMetrics;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v7, 0x0

    :try_start_0
    aput v7, v0, v7

    move v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, v0

    move-object v6, p6

    .line 867
    invoke-static/range {v1 .. v6}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->readResponse(ZLjava/util/Map;ILjava/io/InputStream;[ILcom/bytedance/retrofit2/RetrofitMetrics;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 869
    invoke-static {p3}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    .line 871
    aget p1, v0, v7

    new-array p2, p1, [B

    if-eqz p0, :cond_1

    .line 872
    aget p3, v0, v7

    if-lez p3, :cond_1

    .line 873
    aget p3, v0, v7

    invoke-static {p0, v7, p2, v7, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    if-lez p1, :cond_5

    .line 875
    invoke-static {p4}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 877
    :try_start_1
    new-instance p0, Lgbsdk/common/host/abkx;

    invoke-direct {p0, p4}, Lgbsdk/common/host/abkx;-><init>(Ljava/lang/String;)V

    const-string p1, "text"

    .line 878
    iget-object p3, p0, Lgbsdk/common/host/abkx;->sc:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "application/json"

    .line 879
    invoke-virtual {p0}, Lgbsdk/common/host/abkx;->cA()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_2
    const-string p1, "charset"

    .line 880
    invoke-virtual {p0, p1}, Lgbsdk/common/host/abkx;->aL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 881
    invoke-static {p0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, "utf-8"

    .line 884
    :cond_3
    sget-object p1, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " response body = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p2, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for url = "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p5, :cond_4

    const-string p5, ""

    :cond_4
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 889
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_0
    return-void

    :catchall_1
    move-exception p0

    .line 869
    invoke-static {p3}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static processResponse(Ljava/lang/String;ILjava/net/HttpURLConnection;JLcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Ljava/lang/String;ILcom/bytedance/retrofit2/RetrofitMetrics;)[B
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p2

    move-object/from16 v7, p5

    move/from16 v10, p7

    move-object/from16 v11, p8

    const/4 v12, 0x0

    if-nez v9, :cond_0

    new-array v0, v12, [B

    return-object v0

    :cond_0
    const-string v0, "Content-Encoding"

    .line 774
    invoke-static {v9, v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getHeaderValueIgnoreCase(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 775
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v1, :cond_1

    invoke-interface {v1, v9}, Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;->isCronetHttpURLConnection(Ljava/net/HttpURLConnection;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    move v13, v0

    :goto_0
    const-string v0, "Content-Type"

    .line 779
    invoke-static {v9, v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getHeaderValueIgnoreCase(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v0, 0xc8

    if-eq v10, v0, :cond_6

    .line 780
    invoke-static/range {p5 .. p5}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->isForceHandleResponse(Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_5

    :cond_2
    const/16 v0, 0x130

    if-ne v10, v0, :cond_3

    .line 829
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->completeReadResponse:J

    .line 830
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v1, v0, p3

    .line 831
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestEnd:J

    .line 832
    invoke-static {v9, v7, v11}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getRequestMetrics(Ljava/net/HttpURLConnection;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Lcom/bytedance/retrofit2/RetrofitMetrics;)V

    .line 833
    invoke-static {p0, v1, v2, v7}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->handleApiOk(Ljava/lang/String;JLcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V

    move-wide/from16 v3, p3

    move-object v5, p0

    move-object/from16 v6, p6

    move-object/from16 v7, p5

    .line 834
    invoke-static/range {v1 .. v7}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->monitorApiSample(JJLjava/lang/String;Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V

    .line 836
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v12

    .line 839
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    move-object v4, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 841
    :catch_0
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    .line 843
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    move v1, v13

    move/from16 v3, p1

    move-object v5, v14

    move-object v6, p0

    move-object/from16 v7, p8

    invoke-static/range {v1 .. v7}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->processHttpErrorResponse(ZLjava/util/Map;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/retrofit2/RetrofitMetrics;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 846
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v12, :cond_4

    const-string v12, ""

    :cond_4
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_4
    if-eqz v9, :cond_5

    .line 851
    invoke-virtual/range {p2 .. p2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 853
    :cond_5
    new-instance v0, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;

    invoke-direct {v0, v10, v12}, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 783
    :cond_6
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->completeReadResponse:J

    .line 785
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_6
    move-object v10, v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 787
    invoke-static/range {p5 .. p5}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->isForceHandleResponse(Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 788
    invoke-virtual/range {p2 .. p2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_6

    :goto_7
    const/4 v0, 0x1

    new-array v0, v0, [I

    :try_start_3
    aput v12, v0, v12

    .line 796
    invoke-virtual/range {p2 .. p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    move v1, v13

    move/from16 v3, p1

    move-object v4, v10

    move-object v5, v0

    move-object/from16 v6, p8

    invoke-static/range {v1 .. v6}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->readResponse(ZLjava/util/Map;ILjava/io/InputStream;[ILcom/bytedance/retrofit2/RetrofitMetrics;)[B

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 798
    invoke-static {v10}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    .line 800
    aget v2, v0, v12

    new-array v10, v2, [B

    if-eqz v1, :cond_7

    .line 801
    aget v3, v0, v12

    if-lez v3, :cond_7

    .line 802
    aget v0, v0, v12

    invoke-static {v1, v12, v10, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 804
    :cond_7
    invoke-static {v14}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->testIsSSBinary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 806
    invoke-static {v10, v2}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->decodeSSBinary([BI)V

    .line 808
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v1, v0, p3

    .line 809
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestEnd:J

    .line 810
    invoke-static {v9, v7, v11}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getRequestMetrics(Ljava/net/HttpURLConnection;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Lcom/bytedance/retrofit2/RetrofitMetrics;)V

    .line 811
    invoke-static {p0, v1, v2, v7}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->handleApiOk(Ljava/lang/String;JLcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V

    move-wide/from16 v3, p3

    move-object v5, p0

    move-object/from16 v6, p6

    move-object/from16 v7, p5

    .line 812
    invoke-static/range {v1 .. v7}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->monitorApiSample(JJLjava/lang/String;Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V

    .line 814
    :try_start_4
    invoke-static {}, Lgbsdk/common/host/abkj;->cD()Lgbsdk/common/host/abkj;

    move-result-object v0

    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/-$$Lambda$SsCronetHttpClient$BO95nFiJNcbIwOmDb37vD33yvzs;->INSTANCE:Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/-$$Lambda$SsCronetHttpClient$BO95nFiJNcbIwOmDb37vD33yvzs;

    invoke-virtual {v0, v9, v10, v1}, Lgbsdk/common/host/abkj;->a(Ljava/net/HttpURLConnection;[BLgbsdk/common/host/abkj$ab;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    return-object v10

    :catchall_2
    move-exception v0

    .line 798
    invoke-static {v10}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    throw v0

    .line 790
    :cond_9
    throw v1
.end method

.method public static setBypassOfflineCheck(Z)V
    .locals 0

    .line 1028
    sput-boolean p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sBypassOfflineCheckEnabled:Z

    return-void
.end method

.method public static setCronetBootFailureChecker(Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ab;)V
    .locals 0

    .line 87
    sput-object p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetBootFailureChecker:Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ab;

    return-void
.end method

.method public static setCronetHttpDnsConfig(Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ac;)V
    .locals 0

    .line 93
    sput-object p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetHttpDnsConfig:Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ac;

    return-void
.end method

.method public static setCronetTncInfoGet(Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ad;)V
    .locals 0

    .line 103
    sput-object p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetTncInfoGet:Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ad;

    return-void
.end method

.method public static setCustomCronetClientClass(Ljava/lang/String;)V
    .locals 0

    .line 107
    sput-object p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCustomCronetClientClass:Ljava/lang/String;

    return-void
.end method

.method public static shouldRetryRequestFromTuringHeader(Ljava/net/HttpURLConnection;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;I)Z
    .locals 5

    .line 1141
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "bdturing-verify"

    .line 1142
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "x-tt-bypass-bdturing"

    .line 1146
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1147
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "1"

    .line 1148
    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    .line 1152
    :cond_1
    new-instance p0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {p0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 1153
    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1154
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1155
    invoke-static {p2, p0}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->shouldRetryRequestFromTuringHeaders(ILjava/util/Map;)Z

    move-result p2

    .line 1156
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    iput-wide v3, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->turingCallbackDuration:J

    .line 1158
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    .line 1159
    iput-boolean p0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->executeTuringCallback:Z

    :cond_2
    return p2

    :cond_3
    :goto_0
    return v1
.end method

.method private static tryNecessaryInit(Lcom/bytedance/retrofit2/client/Request;)V
    .locals 3

    .line 1173
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->tryApiProcessHookInit()V

    .line 1174
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->newCookieBlockPositionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/retrofit2/client/Request;->getExtraInfo()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->interceptCookie(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1175
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->tryCookieManagerInit()Landroid/webkit/CookieManager;

    .line 1176
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newCookieBlockPositionEnabled false:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static tryResolveImpl()V
    .locals 4

    .line 156
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-nez v0, :cond_1

    .line 158
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCustomCronetClientClass:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCustomCronetClientClass:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "org.chromium.CronetClient"

    .line 161
    :goto_0
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryResolveImpl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 165
    instance-of v1, v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v1, :cond_1

    .line 166
    check-cast v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    sput-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 169
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load CronetClient exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addClientOpaqueData([Ljava/lang/String;[B[B)V
    .locals 9

    .line 203
    const-class v0, [B

    :try_start_0
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    invoke-static {v1}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v1

    const-string v2, "addClientOpaqueData"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, [Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v8, 0x3

    aput-object v0, v4, v8

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sContext:Landroid/content/Context;

    aput-object v3, v0, v6

    aput-object p1, v0, v7

    aput-object p2, v0, v5

    aput-object p3, v0, v8

    .line 207
    invoke-virtual {v1, v2, v4, v0}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 211
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public clearClientOpaqueData()V
    .locals 6

    .line 217
    :try_start_0
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const-string v1, "clearClientOpaqueData"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sContext:Landroid/content/Context;

    aput-object v4, v2, v5

    .line 221
    invoke-virtual {v0, v1, v3, v2}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public dnsLookup(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 243
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v0, :cond_0

    .line 247
    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "dnsLookup"

    .line 248
    invoke-virtual {v0, p1, v2, v1}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Lcom/bytedance/common/utility/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 244
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "CronetEngine has not been initialized."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public enableTTBizHttpDns(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 10

    .line 1097
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v0, :cond_0

    .line 1101
    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-class v3, Ljava/lang/String;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    const-class v3, Ljava/lang/String;

    const/4 v9, 0x5

    aput-object v3, v2, v9

    new-array v1, v1, [Ljava/lang/Object;

    .line 1105
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    aput-object p2, v1, v5

    aput-object p3, v1, v6

    aput-object p4, v1, v7

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v8

    aput-object p6, v1, v9

    const-string v3, "enableTTBizHttpDns"

    .line 1102
    invoke-virtual {v0, v3, v2, v1}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    .line 1106
    invoke-virtual {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->get()Ljava/lang/Object;

    return-void

    .line 1098
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CronetEngine has not been initialized."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCronetVersion()Ljava/lang/String;
    .locals 2

    .line 397
    invoke-direct {p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->checkCronetClientCreated()V

    .line 399
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const-string v1, "getCronetVersion"

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEffectiveConnectionType()I
    .locals 2

    .line 327
    invoke-direct {p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->checkCronetClientCreated()V

    .line 328
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const-string v1, "getEffectiveConnectionType"

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEffectiveHttpRttMs()I
    .locals 2

    .line 1064
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v0, :cond_0

    .line 1068
    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const-string v1, "getEffectiveHttpRttMs"

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1065
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CronetEngine has not been initialized."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEffectiveRxThroughputKbps()I
    .locals 2

    .line 1080
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v0, :cond_0

    .line 1084
    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const-string v1, "getEffectiveRxThroughputKbps"

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1081
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CronetEngine has not been initialized."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEffectiveTransportRttMs()I
    .locals 2

    .line 1072
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v0, :cond_0

    .line 1076
    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const-string v1, "getEffectiveTransportRttMs"

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1073
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CronetEngine has not been initialized."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGroupRttEstimates()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lgbsdk/common/host/abkg;",
            ">;"
        }
    .end annotation

    .line 380
    invoke-direct {p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->checkCronetClientCreated()V

    .line 381
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 382
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    invoke-static {v1}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v1

    const-string v2, "getGroupRTTEstimates"

    invoke-virtual {v1, v2}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/common/utility/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 383
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 384
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    array-length v3, v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 387
    new-instance v3, Lgbsdk/common/host/abkg;

    invoke-direct {v3}, Lgbsdk/common/host/abkg;-><init>()V

    .line 388
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/4 v5, 0x0

    aget v4, v4, v5

    iput v4, v3, Lgbsdk/common/host/abkg;->jG:I

    .line 389
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/4 v5, 0x1

    aget v4, v4, v5

    iput v4, v3, Lgbsdk/common/host/abkg;->jH:I

    const/4 v4, -0x1

    .line 390
    iput v4, v3, Lgbsdk/common/host/abkg;->jI:I

    .line 391
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 385
    :cond_0
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    const-string v1, "getGroupRttEstimates returns wrong format"

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public getMappingRequestState(Ljava/lang/String;)V
    .locals 5

    .line 322
    invoke-direct {p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->checkCronetClientCreated()V

    .line 323
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "getMappingRequestState"

    invoke-virtual {v0, p1, v2, v1}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/common/utility/reflect/Reflect;->get()Ljava/lang/Object;

    return-void
.end method

.method public getNetworkQuality()Lgbsdk/common/host/abkg;
    .locals 3

    .line 362
    invoke-direct {p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->checkCronetClientCreated()V

    .line 363
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const-string v1, "getNetworkQuality"

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 364
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 367
    new-instance v1, Lgbsdk/common/host/abkg;

    invoke-direct {v1}, Lgbsdk/common/host/abkg;-><init>()V

    const/4 v2, 0x0

    .line 368
    aget v2, v0, v2

    iput v2, v1, Lgbsdk/common/host/abkg;->jG:I

    const/4 v2, 0x1

    .line 369
    aget v2, v0, v2

    iput v2, v1, Lgbsdk/common/host/abkg;->jH:I

    const/4 v2, 0x2

    .line 370
    aget v0, v0, v2

    iput v0, v1, Lgbsdk/common/host/abkg;->jI:I

    return-object v1

    .line 365
    :cond_0
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    const-string v1, "getNetworkQuality returns wrong format"

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNetworkQualityLevel()I
    .locals 2

    .line 1056
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v0, :cond_0

    .line 1060
    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const-string v1, "getNetworkQualityLevel"

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1057
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CronetEngine has not been initialized."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPacketLossRateMetrics(I)Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/PacketLossMetrics;
    .locals 5

    .line 375
    invoke-direct {p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->checkCronetClientCreated()V

    .line 376
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "getPacketLossRateMetrics"

    invoke-virtual {v0, p1, v2, v1}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/common/utility/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/PacketLossMetrics;

    return-object p1
.end method

.method public isCronetBootFailureExpected()Z
    .locals 1

    .line 73
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetBootFailureChecker:Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ab;->isCronetBootFailureExpected()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public newSsCall(Lcom/bytedance/retrofit2/client/Request;)Lcom/bytedance/retrofit2/client/SsCall;
    .locals 6

    .line 409
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 410
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;->inst()Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;->filterQuery(Lcom/bytedance/retrofit2/client/Request;)Lcom/bytedance/retrofit2/client/Request;

    move-result-object v2

    .line 411
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 412
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    iput-wide v4, v3, Lcom/bytedance/retrofit2/RetrofitMetrics;->queryFilterDuration:J

    :cond_0
    if-eqz v2, :cond_1

    move-object p1, v2

    .line 419
    :cond_1
    invoke-static {}, Lgbsdk/common/host/abjk;->bE()Lgbsdk/common/host/abjk;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/common/host/abjk;->bF()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 420
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no_retry=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 421
    invoke-static {}, Lgbsdk/common/host/abjk;->bE()Lgbsdk/common/host/abjk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abjk;->b(Lcom/bytedance/retrofit2/client/Request;)Lgbsdk/common/host/abjk$ab;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 422
    iget-object v1, v0, Lgbsdk/common/host/abjk$ab;->jv:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lgbsdk/common/host/abjk$ab;->jv:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 423
    new-instance v1, Lgbsdk/common/host/abji;

    invoke-direct {v1, p1, v0}, Lgbsdk/common/host/abji;-><init>(Lcom/bytedance/retrofit2/client/Request;Lgbsdk/common/host/abjk$ab;)V

    return-object v1

    .line 426
    :cond_2
    new-instance v0, Lgbsdk/common/host/abjl;

    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    invoke-direct {v0, p1, v1}, Lgbsdk/common/host/abjl;-><init>(Lcom/bytedance/retrofit2/client/Request;Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;)V

    return-object v0
.end method

.method public notifySwitchToMultiNetwork(Z)Z
    .locals 5

    .line 1040
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v0, :cond_0

    .line 1044
    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "notifySwitchToMultiNetwork"

    invoke-virtual {v0, p1, v2, v1}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/common/utility/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 1041
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "CronetEngine has not been initialized."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifyTNCConfigUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 334
    invoke-direct {p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->checkCronetClientCreated()V

    .line 335
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-class v3, Ljava/lang/String;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-class v3, Ljava/lang/String;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    const-class v3, Ljava/lang/String;

    const/4 v9, 0x5

    aput-object v3, v2, v9

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    aput-object p3, v1, v6

    aput-object p4, v1, v7

    aput-object p5, v1, v8

    aput-object p6, v1, v9

    const-string v3, "notifyTNCConfigUpdated"

    .line 336
    invoke-virtual {v0, v3, v2, v1}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->get()Ljava/lang/Object;

    return-void
.end method

.method public preconnectUrl(Ljava/lang/String;)V
    .locals 5

    .line 274
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v0, :cond_0

    .line 278
    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "preconnectUrl"

    invoke-virtual {v0, p1, v2, v1}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/common/utility/reflect/Reflect;->get()Ljava/lang/Object;

    return-void

    .line 275
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "CronetEngine has not been initialized."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeClientOpaqueData(Ljava/lang/String;)V
    .locals 7

    .line 230
    :try_start_0
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const-string v1, "removeClientOpaqueData"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sContext:Landroid/content/Context;

    aput-object v4, v2, v5

    aput-object p1, v2, v6

    .line 234
    invoke-virtual {v0, v1, v3, v2}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 238
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public reportNetDiagnosisUserLog(Ljava/lang/String;)V
    .locals 5

    .line 1088
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v0, :cond_0

    .line 1092
    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "reportNetDiagnosisUserLog"

    invoke-virtual {v0, p1, v2, v1}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    return-void

    .line 1089
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "CronetEngine has not been initialized."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAlogFuncAddr(J)V
    .locals 5

    .line 1032
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v0, :cond_0

    .line 1036
    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "setAlogFuncAddr"

    invoke-virtual {v0, p1, v2, v1}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    return-void

    .line 1033
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "CronetEngine has not been initialized."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCronetEngine(ZZZZZ)V
    .locals 10

    .line 180
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->tryResolveImpl()V

    .line 181
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0, p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;->setCronetBootFailureChecker(Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient$ICronetBootFailureChecker;)V

    .line 183
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    sget-object v2, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sContext:Landroid/content/Context;

    .line 184
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getUserAgent()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lgbsdk/common/host/abko;

    invoke-direct {v8}, Lgbsdk/common/host/abko;-><init>()V

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v9, p5

    .line 183
    invoke-interface/range {v1 .. v9}, Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;->setCronetEngine(Landroid/content/Context;ZZZZLjava/lang/String;Ljava/util/concurrent/Executor;Z)V

    :cond_0
    return-void
.end method

.method public setHostResolverRules(Ljava/lang/String;)V
    .locals 5

    .line 403
    invoke-direct {p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->checkCronetClientCreated()V

    .line 404
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "setHostResolverRules"

    invoke-virtual {v0, p1, v2, v1}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    return-void
.end method

.method public setHttpDnsForTesting(ZZZ)V
    .locals 0

    return-void
.end method

.method public setProxy(Ljava/lang/String;)V
    .locals 5

    .line 357
    invoke-direct {p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->checkCronetClientCreated()V

    .line 358
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "setProxy"

    invoke-virtual {v0, p1, v2, v1}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/common/utility/reflect/Reflect;->get()Ljava/lang/Object;

    return-void
.end method

.method public triggerGetDomain(Z)V
    .locals 7

    .line 190
    :try_start_0
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const-string v1, "triggerGetDomain"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sContext:Landroid/content/Context;

    aput-object v4, v2, v5

    .line 194
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v3, v2}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public triggerSwitchingToCellular()V
    .locals 2

    .line 1048
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v0, :cond_0

    .line 1052
    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const-string v1, "triggerSwitchingToCellular"

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->get()Ljava/lang/Object;

    return-void

    .line 1049
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CronetEngine has not been initialized."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tryStartNetDetect([Ljava/lang/String;II)V
    .locals 7

    .line 282
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v0, :cond_0

    .line 286
    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 287
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    const-string p1, "tryStartNetDetect"

    invoke-virtual {v0, p1, v2, v1}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object p1

    .line 288
    invoke-virtual {p1}, Lcom/bytedance/common/utility/reflect/Reflect;->get()Ljava/lang/Object;

    return-void

    .line 283
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "CronetEngine has not been initialized."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ttDnsResolve(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .line 292
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v0, :cond_0

    .line 296
    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 297
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    aput-object p3, v1, v6

    const-string p1, "ttDnsResolve"

    invoke-virtual {v0, p1, v2, v1}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object p1

    .line 298
    invoke-virtual {p1}, Lcom/bytedance/common/utility/reflect/Reflect;->get()Ljava/lang/Object;

    return-void

    .line 293
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "CronetEngine has not been initialized."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ttUrlDispatch(Ljava/lang/String;)Lgbsdk/common/host/abki;
    .locals 6

    .line 253
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->sCronetClient:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    if-eqz v0, :cond_1

    .line 258
    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const-string v5, "ttUrlDispatch"

    invoke-virtual {v0, v5, v2, v3}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 259
    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    aget-object v2, v0, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    :try_start_0
    new-instance v2, Ljava/net/URL;

    aget-object v3, v0, v4

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    new-instance v2, Lgbsdk/common/host/abki;

    aget-object v3, v0, v4

    aget-object v1, v0, v1

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-direct {v2, p1, v3, v1, v0}, Lgbsdk/common/host/abki;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_0
    move-exception p1

    .line 266
    throw p1

    .line 260
    :cond_0
    new-instance p1, Ljava/util/UnknownFormatConversionException;

    const-string v0, "ttUrlDispatch returns wrong format"

    invoke-direct {p1, v0}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 254
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "CronetEngine has not been initialized."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
