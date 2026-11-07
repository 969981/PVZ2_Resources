.class public Lgbsdk/common/host/abji;
.super Ljava/lang/Object;
.source "ConcurrentCronetSsCall.java"

# interfaces
.implements Lcom/bytedance/common/utility/collection/WeakHandler$IHandler;
.implements Lcom/bytedance/retrofit2/IMetricsCollect;
.implements Lcom/bytedance/retrofit2/IRequestInfo;
.implements Lcom/bytedance/retrofit2/client/SsCall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abji$ab;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final gU:I = 0x0

.field private static final iG:I = 0x1

.field private static iI:Z = false

.field private static final iL:I = 0x1

.field private static final iM:Ljava/lang/String; = "x-tt-bp-rs"

.field private static final iN:Ljava/lang/String; = "transaction-id"

.field private static final iO:Ljava/lang/String; = "request canceled"

.field private static final iP:Ljava/lang/String; = "tt-api-source-5xx"

.field private static final iQ:Ljava/lang/String; = "com.ttnet.org.chromium.net.impl.NetworkExceptionImpl"

.field private static iR:Ljava/lang/Class; = null

.field private static iT:Z = false

.field private static final iU:I = -0x3e7

.field private static mHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private volatile iA:Z

.field private volatile iB:Ljava/net/HttpURLConnection;

.field private volatile iC:Ljava/net/HttpURLConnection;

.field private iD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbsdk/common/host/abji$ab;",
            ">;"
        }
    .end annotation
.end field

.field private volatile iE:I

.field private iF:Ljava/util/concurrent/CountDownLatch;

.field private iH:J

.field private iJ:Z

.field private iK:J

.field private iS:Ljava/lang/String;

.field public io:Lcom/bytedance/retrofit2/RetrofitMetrics;

.field private ip:Z

.field private iq:Ljava/lang/String;

.field private ir:Lcom/bytedance/retrofit2/client/Request;

.field private is:Ljava/lang/String;

.field public it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

.field private iu:Ljava/lang/String;

.field private iv:Ljava/lang/String;

.field private iw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ix:Ljava/lang/Object;

.field private volatile iy:Ljava/util/concurrent/atomic/AtomicInteger;

.field private iz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/HttpURLConnection;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mCanceled:Z

.field private mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

.field private mStartTime:J

.field private volatile mThrottleNetSpeed:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    const-class v0, Lgbsdk/common/host/abji;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abji;->TAG:Ljava/lang/String;

    .line 91
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Concurrent-Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/abji;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    .line 114
    sput-boolean v0, Lgbsdk/common/host/abji;->iT:Z

    :try_start_0
    const-string v0, "com.ttnet.org.chromium.net.impl.NetworkExceptionImpl"

    .line 119
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abji;->iR:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 123
    :goto_0
    sget-object v0, Lgbsdk/common/host/abji;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/retrofit2/client/Request;Lgbsdk/common/host/abjk$ab;)V
    .locals 10

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lgbsdk/common/host/abji;->mThrottleNetSpeed:J

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lgbsdk/common/host/abji;->ip:Z

    .line 52
    iput-boolean v0, p0, Lgbsdk/common/host/abji;->mCanceled:Z

    .line 56
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->createHttpRequestInfo()Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    move-result-object v1

    iput-object v1, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lgbsdk/common/host/abji;->iw:Ljava/util/List;

    .line 65
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lgbsdk/common/host/abji;->ix:Ljava/lang/Object;

    .line 68
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lgbsdk/common/host/abji;->iy:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lgbsdk/common/host/abji;->iz:Ljava/util/List;

    .line 73
    iput-boolean v0, p0, Lgbsdk/common/host/abji;->iA:Z

    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    .line 78
    iput-object v1, p0, Lgbsdk/common/host/abji;->iC:Ljava/net/HttpURLConnection;

    .line 81
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lgbsdk/common/host/abji;->iD:Ljava/util/List;

    .line 83
    iput v0, p0, Lgbsdk/common/host/abji;->iE:I

    .line 86
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lgbsdk/common/host/abji;->iF:Ljava/util/concurrent/CountDownLatch;

    .line 92
    new-instance v1, Lcom/bytedance/common/utility/collection/WeakHandler;

    sget-object v3, Lgbsdk/common/host/abji;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3, p0}, Lcom/bytedance/common/utility/collection/WeakHandler;-><init>(Landroid/os/Looper;Lcom/bytedance/common/utility/collection/WeakHandler$IHandler;)V

    iput-object v1, p0, Lgbsdk/common/host/abji;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    .line 167
    sget-object v1, Lgbsdk/common/host/abji;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iput-object p1, p0, Lgbsdk/common/host/abji;->ir:Lcom/bytedance/retrofit2/client/Request;

    .line 169
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v1

    iput-object v1, p0, Lgbsdk/common/host/abji;->io:Lcom/bytedance/retrofit2/RetrofitMetrics;

    .line 170
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgbsdk/common/host/abji;->is:Ljava/lang/String;

    .line 172
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 178
    iget-object v5, p2, Lgbsdk/common/host/abjk$ab;->jv:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 179
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 180
    iget-object v9, p0, Lgbsdk/common/host/abji;->is:Ljava/lang/String;

    invoke-virtual {v9, v4, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 181
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "concurrent="

    .line 182
    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 183
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&concurrent="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_0
    if-lez v7, :cond_1

    const-string v9, "is_retry="

    .line 186
    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 187
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&is_retry=1"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 191
    iget-object v9, p0, Lgbsdk/common/host/abji;->iw:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgbsdk/common/host/abji;->iu:Ljava/lang/String;

    .line 196
    iget-object v1, p2, Lgbsdk/common/host/abjk$ab;->iv:Ljava/lang/String;

    iput-object v1, p0, Lgbsdk/common/host/abji;->iv:Ljava/lang/String;

    .line 197
    iget v1, p2, Lgbsdk/common/host/abjk$ab;->jF:I

    int-to-long v3, v1

    iput-wide v3, p0, Lgbsdk/common/host/abji;->iH:J

    .line 198
    iget-boolean v1, p2, Lgbsdk/common/host/abjk$ab;->iI:Z

    sput-boolean v1, Lgbsdk/common/host/abji;->iI:Z

    .line 199
    iget-boolean p2, p2, Lgbsdk/common/host/abjk$ab;->iJ:Z

    iput-boolean p2, p0, Lgbsdk/common/host/abji;->iJ:Z

    .line 200
    invoke-direct {p0, p1}, Lgbsdk/common/host/abji;->a(Lcom/bytedance/retrofit2/client/Request;)V

    .line 201
    sget-object p2, Lgbsdk/common/host/abji;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request max wait time milliseconds: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lgbsdk/common/host/abji;->iK:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", connect interval milliseconds: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lgbsdk/common/host/abji;->iH:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object p2, p0, Lgbsdk/common/host/abji;->io:Lcom/bytedance/retrofit2/RetrofitMetrics;

    if-eqz p2, :cond_3

    .line 206
    iget-object v1, p0, Lgbsdk/common/host/abji;->iu:Ljava/lang/String;

    iput-object v1, p2, Lcom/bytedance/retrofit2/RetrofitMetrics;->transactionId:Ljava/lang/String;

    .line 207
    iget-object p2, p0, Lgbsdk/common/host/abji;->io:Lcom/bytedance/retrofit2/RetrofitMetrics;

    iput-boolean v2, p2, Lcom/bytedance/retrofit2/RetrofitMetrics;->isConcurrent:Z

    .line 208
    iget-object p2, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v1, p0, Lgbsdk/common/host/abji;->io:Lcom/bytedance/retrofit2/RetrofitMetrics;

    iget-wide v3, v1, Lcom/bytedance/retrofit2/RetrofitMetrics;->appLevelRequestStart:J

    iput-wide v3, p2, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->appLevelRequestStart:J

    .line 209
    iget-object p2, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v1, p0, Lgbsdk/common/host/abji;->io:Lcom/bytedance/retrofit2/RetrofitMetrics;

    iget-wide v3, v1, Lcom/bytedance/retrofit2/RetrofitMetrics;->beforeAllInterceptors:J

    iput-wide v3, p2, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->beforeAllInterceptors:J

    .line 211
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lgbsdk/common/host/abji;->mStartTime:J

    .line 212
    iget-object p2, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iput-wide v3, p2, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestStart:J

    .line 213
    iget-object p2, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iput v0, p2, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->httpClientType:I

    .line 214
    iget-object p2, p0, Lgbsdk/common/host/abji;->ir:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {p2}, Lcom/bytedance/retrofit2/client/Request;->isResponseStreaming()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 215
    iget-object p2, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iput-boolean v2, p2, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->downloadFile:Z

    goto :goto_1

    .line 217
    :cond_4
    iget-object p2, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iput-boolean v0, p2, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->downloadFile:Z

    .line 220
    :goto_1
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getExtraInfo()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    if-eqz p2, :cond_5

    .line 221
    iget-object p2, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getExtraInfo()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    iput-object p1, p2, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    .line 222
    iget-object p1, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object p1, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    iget-boolean p1, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->bypass_network_status_check:Z

    iput-boolean p1, p0, Lgbsdk/common/host/abji;->ip:Z

    :cond_5
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)Lcom/bytedance/retrofit2/mime/TypedInput;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 727
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    if-nez v1, :cond_1

    .line 728
    invoke-virtual {p0}, Lgbsdk/common/host/abji;->cancel()V

    return-object v0

    .line 731
    :cond_1
    new-instance v0, Lgbsdk/common/host/abji$1;

    invoke-direct {v0, p0, p1}, Lgbsdk/common/host/abji$1;-><init>(Lgbsdk/common/host/abji;Ljava/net/HttpURLConnection;)V

    return-object v0
.end method

.method private a(Ljava/lang/Exception;Ljava/lang/String;Ljava/net/HttpURLConnection;Z)Ljava/io/IOException;
    .locals 9

    .line 645
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request canceled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    check-cast p1, Ljava/io/IOException;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 651
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.ttnet.org.chromium.net.impl.NetworkExceptionImpl"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 652
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.ttnet.org.chromium.net.impl.QuicExceptionImpl"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 653
    :cond_1
    invoke-static {p3}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getCronetInternalErrorCode(Ljava/net/HttpURLConnection;)I

    move-result v0

    .line 656
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 657
    iget-object p2, p0, Lgbsdk/common/host/abji;->is:Ljava/lang/String;

    :cond_3
    move-object v1, p2

    if-eqz p4, :cond_4

    .line 661
    iget-wide v2, p0, Lgbsdk/common/host/abji;->mStartTime:J

    iget-object v4, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v5, p0, Lgbsdk/common/host/abji;->iq:Ljava/lang/String;

    iget-object v8, p0, Lgbsdk/common/host/abji;->io:Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-object v6, p1

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->processException(Ljava/lang/String;JLcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Ljava/lang/String;Ljava/lang/Exception;Ljava/net/HttpURLConnection;Lcom/bytedance/retrofit2/RetrofitMetrics;)V

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    .line 664
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 669
    :cond_5
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 671
    :try_start_0
    iget-boolean p3, p0, Lgbsdk/common/host/abji;->ip:Z

    invoke-static {p3, p2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->checkNetworkAvailable(ZLjava/lang/String;)V
    :try_end_0
    .catch Lgbsdk/common/host/abke; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    new-instance p2, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/CronetIOException;

    iget-object p3, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object p4, p0, Lgbsdk/common/host/abji;->iq:Ljava/lang/String;

    invoke-direct {p2, p1, p3, p4, v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/CronetIOException;-><init>(Ljava/lang/Exception;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Ljava/lang/String;I)V

    return-object p2

    :catch_0
    move-exception p1

    return-object p1
.end method

.method private a(Lcom/bytedance/retrofit2/client/Request;)V
    .locals 5

    .line 232
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getConnectTimeout()I

    move-result v0

    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getIoTimeout()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lgbsdk/common/host/abji;->iK:J

    .line 233
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getExtraInfo()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getExtraInfo()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    .line 235
    iget-wide v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->protect_timeout:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 236
    iget-wide v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->protect_timeout:J

    iput-wide v0, p0, Lgbsdk/common/host/abji;->iK:J

    goto :goto_0

    .line 237
    :cond_0
    iget-wide v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->timeout_connect:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-wide v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->timeout_read:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 238
    iget-wide v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->timeout_connect:J

    iget-wide v2, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->timeout_read:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lgbsdk/common/host/abji;->iK:J

    .line 242
    :cond_1
    :goto_0
    iget-wide v0, p0, Lgbsdk/common/host/abji;->iK:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lgbsdk/common/host/abji;->iK:J

    return-void
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/16 v0, 0x12c

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-lt p0, v2, :cond_0

    if-ge p0, v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    const-string v2, "1"

    .line 276
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    if-lt p0, v0, :cond_2

    const/16 p1, 0x258

    if-ge p0, p1, :cond_2

    .line 277
    sget-boolean p1, Lgbsdk/common/host/abji;->iI:Z

    if-nez p1, :cond_2

    return v1

    .line 279
    :cond_2
    invoke-static {}, Lgbsdk/common/host/abjk;->bE()Lgbsdk/common/host/abjk;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lgbsdk/common/host/abjk;->e(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private bA()V
    .locals 2

    .line 423
    iget-object v0, p0, Lgbsdk/common/host/abji;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/collection/WeakHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lgbsdk/common/host/abji;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/collection/WeakHandler;->removeMessages(I)V

    .line 426
    invoke-direct {p0}, Lgbsdk/common/host/abji;->by()V

    :cond_0
    return-void
.end method

.method private bB()V
    .locals 7

    .line 447
    iget-object v0, p0, Lgbsdk/common/host/abji;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/collection/WeakHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 448
    iget-object v0, p0, Lgbsdk/common/host/abji;->ix:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_0
    iget-boolean v1, p0, Lgbsdk/common/host/abji;->iA:Z

    if-eqz v1, :cond_0

    .line 450
    monitor-exit v0

    return-void

    .line 453
    :cond_0
    iget-object v1, p0, Lgbsdk/common/host/abji;->iz:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1

    .line 455
    iget-object v3, p0, Lgbsdk/common/host/abji;->iD:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgbsdk/common/host/abji$ab;

    .line 456
    iget v5, v4, Lgbsdk/common/host/abji$ab;->mId:I

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lgbsdk/common/host/abji$ab;->iY:J

    const/16 v3, -0x3e7

    .line 458
    iput v3, v4, Lgbsdk/common/host/abji$ab;->iZ:I

    .line 459
    new-instance v3, Ljava/io/IOException;

    const-string v5, "cleanupMessagesAndPendingConnections"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v3, v4, Lgbsdk/common/host/abji$ab;->ja:Ljava/io/IOException;

    .line 464
    :cond_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 465
    iget-object v3, p0, Lgbsdk/common/host/abji;->iz:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 469
    :cond_4
    iget-object v1, p0, Lgbsdk/common/host/abji;->io:Lcom/bytedance/retrofit2/RetrofitMetrics;

    invoke-direct {p0}, Lgbsdk/common/host/abji;->bC()Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v1, Lcom/bytedance/retrofit2/RetrofitMetrics;->concurrentRequest:Lorg/json/JSONObject;

    const/4 v1, 0x1

    .line 470
    iput-boolean v1, p0, Lgbsdk/common/host/abji;->iA:Z

    .line 471
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private bC()Lorg/json/JSONObject;
    .locals 6

    .line 514
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "concurrent"

    .line 516
    iget-object v2, p0, Lgbsdk/common/host/abji;->iD:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "duration"

    .line 517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lgbsdk/common/host/abji;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 518
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 519
    iget-object v2, p0, Lgbsdk/common/host/abji;->iD:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgbsdk/common/host/abji$ab;

    .line 520
    invoke-virtual {v3}, Lgbsdk/common/host/abji$ab;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "tasks"

    .line 522
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 524
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method private synthetic bD()V
    .locals 14

    .line 290
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 294
    :try_start_0
    iget-object v3, p0, Lgbsdk/common/host/abji;->ix:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 295
    :try_start_1
    iget-object v4, p0, Lgbsdk/common/host/abji;->iy:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget-object v5, p0, Lgbsdk/common/host/abji;->iw:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    iget-object v4, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    if-nez v4, :cond_6

    iget-object v4, p0, Lgbsdk/common/host/abji;->iF:Ljava/util/concurrent/CountDownLatch;

    .line 296
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_6

    iget-boolean v4, p0, Lgbsdk/common/host/abji;->mCanceled:Z

    if-eqz v4, :cond_0

    goto/16 :goto_5

    .line 300
    :cond_0
    iget-object v4, p0, Lgbsdk/common/host/abji;->iw:Ljava/util/List;

    iget-object v5, p0, Lgbsdk/common/host/abji;->iy:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 301
    :try_start_2
    sget-object v5, Lgbsdk/common/host/abji;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ConstructURLConnection and execute index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lgbsdk/common/host/abji;->iy:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 302
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 301
    invoke-static {v5, v6}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v5, p0, Lgbsdk/common/host/abji;->ir:Lcom/bytedance/retrofit2/client/Request;

    iget-object v6, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-wide v7, p0, Lgbsdk/common/host/abji;->mThrottleNetSpeed:J

    invoke-static {v4, v5, v6, v7, v8}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->constructURLConnection(Ljava/lang/String;Lcom/bytedance/retrofit2/client/Request;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;J)Ljava/net/HttpURLConnection;

    move-result-object v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 305
    :try_start_3
    iget-boolean v5, p0, Lgbsdk/common/host/abji;->iJ:Z

    if-eqz v5, :cond_1

    const-string v5, "x-tt-bp-rs"

    const-string v6, "1"

    .line 306
    invoke-virtual {v12, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v5, "transaction-id"

    .line 307
    iget-object v6, p0, Lgbsdk/common/host/abji;->iu:Ljava/lang/String;

    invoke-virtual {v12, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v5, p0, Lgbsdk/common/host/abji;->iy:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 309
    iget-object v5, p0, Lgbsdk/common/host/abji;->iz:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    new-instance v13, Lgbsdk/common/host/abji$ab;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v13, v5}, Lgbsdk/common/host/abji$ab;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 311
    :try_start_4
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iput v2, v13, Lgbsdk/common/host/abji$ab;->mId:I

    .line 312
    iget-object v2, p0, Lgbsdk/common/host/abji;->iD:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 316
    :try_start_5
    iget-object v2, p0, Lgbsdk/common/host/abji;->ir:Lcom/bytedance/retrofit2/client/Request;

    invoke-static {v2, v12}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->processExecute(Lcom/bytedance/retrofit2/client/Request;Ljava/net/HttpURLConnection;)I

    move-result v2

    .line 317
    iput v2, v13, Lgbsdk/common/host/abji$ab;->mResponseCode:I

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v13, Lgbsdk/common/host/abji$ab;->iY:J

    const-string v3, "tt-api-source-5xx"

    .line 321
    invoke-virtual {v12, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 322
    iget-object v5, p0, Lgbsdk/common/host/abji;->iv:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Lgbsdk/common/host/abji;->b(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 323
    iget-object v2, p0, Lgbsdk/common/host/abji;->ix:Ljava/lang/Object;

    monitor-enter v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 324
    :try_start_6
    iget-object v3, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    if-nez v3, :cond_2

    .line 326
    iput-object v12, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    .line 327
    iput-object v4, p0, Lgbsdk/common/host/abji;->is:Ljava/lang/String;

    .line 328
    sget-object v3, Lgbsdk/common/host/abji;->TAG:Ljava/lang/String;

    const-string v5, "Find winner connection countdown."

    invoke-static {v3, v5}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v3, p0, Lgbsdk/common/host/abji;->iF:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :cond_2
    if-eqz v12, :cond_3

    .line 331
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 332
    iget-object v3, p0, Lgbsdk/common/host/abji;->iz:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 334
    :cond_3
    :goto_0
    monitor-exit v2

    goto/16 :goto_9

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v3

    .line 336
    :cond_4
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 338
    :try_start_8
    iget-object v5, p0, Lgbsdk/common/host/abji;->ir:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v5}, Lcom/bytedance/retrofit2/client/Request;->getMaxLength()I

    move-result v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 341
    :try_start_9
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_1
    move-object v8, v5

    goto :goto_2

    .line 343
    :catch_0
    :try_start_a
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    goto :goto_1

    :goto_2
    const-string v5, "Content-Type"

    .line 345
    invoke-static {v12, v5}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getHeaderValueIgnoreCase(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x0

    .line 346
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    iget-object v11, p0, Lgbsdk/common/host/abji;->io:Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-object v10, v4

    invoke-static/range {v5 .. v11}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->processHttpErrorResponse(ZLjava/util/Map;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/retrofit2/RetrofitMetrics;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v5

    .line 349
    :try_start_b
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 350
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_5

    const-string v3, ""

    :cond_5
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  exception = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 353
    :goto_3
    new-instance v5, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;

    invoke-direct {v5, v2, v3}, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    :catch_1
    move-exception v2

    goto :goto_8

    :catchall_2
    move-exception v5

    goto :goto_4

    :catchall_3
    move-exception v5

    move-object v13, v2

    :goto_4
    move-object v2, v12

    goto :goto_6

    :catchall_4
    move-exception v5

    move-object v13, v2

    goto :goto_6

    .line 297
    :cond_6
    :goto_5
    :try_start_c
    iget-object v4, p0, Lgbsdk/common/host/abji;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    invoke-virtual {v4, v2}, Lcom/bytedance/common/utility/collection/WeakHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 298
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    return-void

    :catchall_5
    move-exception v5

    move-object v4, v2

    move-object v13, v4

    .line 313
    :goto_6
    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :try_start_e
    throw v5
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    :catch_2
    move-exception v3

    move-object v12, v2

    goto :goto_7

    :catchall_6
    move-exception v5

    goto :goto_6

    :catch_3
    move-exception v3

    move-object v4, v2

    move-object v12, v4

    move-object v13, v12

    :goto_7
    move-object v2, v3

    .line 356
    :goto_8
    iget-object v3, p0, Lgbsdk/common/host/abji;->ix:Ljava/lang/Object;

    monitor-enter v3

    const/4 v5, -0x1

    .line 359
    :try_start_f
    sget-object v6, Lgbsdk/common/host/abji;->iR:Ljava/lang/Class;

    if-eqz v6, :cond_7

    sget-object v6, Lgbsdk/common/host/abji;->iR:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 360
    invoke-static {v2}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v6

    const-string v7, "getCronetInternalErrorCode"

    invoke-virtual {v6, v7}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/common/utility/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 361
    sget-object v6, Lgbsdk/common/host/abji;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cronet error code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 367
    :catchall_7
    :cond_7
    :try_start_10
    iget-object v6, p0, Lgbsdk/common/host/abji;->iC:Ljava/net/HttpURLConnection;

    if-nez v6, :cond_8

    .line 368
    iput-object v12, p0, Lgbsdk/common/host/abji;->iC:Ljava/net/HttpURLConnection;

    :cond_8
    if-eqz v12, :cond_a

    .line 372
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v13, :cond_9

    const/4 v6, 0x0

    .line 374
    invoke-direct {p0, v2, v4, v12, v6}, Lgbsdk/common/host/abji;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/net/HttpURLConnection;Z)Ljava/io/IOException;

    move-result-object v2

    iput-object v2, v13, Lgbsdk/common/host/abji$ab;->ja:Ljava/io/IOException;

    .line 375
    iput v5, v13, Lgbsdk/common/host/abji$ab;->iZ:I

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v13, Lgbsdk/common/host/abji$ab;->iY:J

    .line 378
    :cond_9
    iget-object v2, p0, Lgbsdk/common/host/abji;->iz:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 382
    :cond_a
    iget v2, p0, Lgbsdk/common/host/abji;->iE:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgbsdk/common/host/abji;->iE:I

    iget-object v4, p0, Lgbsdk/common/host/abji;->iw:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_b

    .line 383
    sget-object v0, Lgbsdk/common/host/abji;->TAG:Ljava/lang/String;

    const-string v1, "Try all urls failed countdown."

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lgbsdk/common/host/abji;->iF:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 385
    monitor-exit v3

    return-void

    .line 389
    :cond_b
    invoke-static {}, Lgbsdk/common/host/abjk;->bE()Lgbsdk/common/host/abjk;

    move-result-object v2

    iget-object v4, p0, Lgbsdk/common/host/abji;->iv:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lgbsdk/common/host/abjk;->e(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 390
    sget-object v0, Lgbsdk/common/host/abji;->TAG:Ljava/lang/String;

    const-string v1, "inBlockErrorCode countdown."

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lgbsdk/common/host/abji;->iF:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 392
    monitor-exit v3

    return-void

    .line 396
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    iget-wide v0, p0, Lgbsdk/common/host/abji;->iH:J

    cmp-long v2, v4, v0

    if-gez v2, :cond_d

    .line 397
    invoke-direct {p0}, Lgbsdk/common/host/abji;->bz()V

    .line 399
    :cond_d
    monitor-exit v3

    :goto_9
    return-void

    :catchall_8
    move-exception v0

    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    throw v0
.end method

.method private by()V
    .locals 7

    .line 288
    new-instance v6, Lgbsdk/common/host/abgv;

    sget-object v2, Lgbsdk/common/host/abju$ab;->gS:Lgbsdk/common/host/abju$ab;

    new-instance v4, Lgbsdk/common/host/-$$Lambda$abji$NFU2dSy6WOQhQXHQDFfWBCZvLi4;

    invoke-direct {v4, p0}, Lgbsdk/common/host/-$$Lambda$abji$NFU2dSy6WOQhQXHQDFfWBCZvLi4;-><init>(Lgbsdk/common/host/abji;)V

    iget-object v0, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-boolean v5, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->downloadFile:Z

    const-string v1, "Concurrent-Call"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lgbsdk/common/host/abgv;-><init>(Ljava/lang/String;Lgbsdk/common/host/abju$ab;ILjava/lang/Runnable;Z)V

    .line 405
    invoke-static {}, Lgbsdk/common/host/abjr;->bq()Lgbsdk/common/host/abjr;

    move-result-object v0

    invoke-virtual {v0, v6}, Lgbsdk/common/host/abjr;->b(Lgbsdk/common/host/abjv;)V

    .line 406
    iget-wide v0, p0, Lgbsdk/common/host/abji;->iH:J

    invoke-direct {p0, v0, v1}, Lgbsdk/common/host/abji;->p(J)V

    return-void
.end method

.method private bz()V
    .locals 2

    .line 413
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 414
    iput v1, v0, Landroid/os/Message;->what:I

    .line 415
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 416
    iget-object v1, p0, Lgbsdk/common/host/abji;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    invoke-virtual {v1, v0}, Lcom/bytedance/common/utility/collection/WeakHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static synthetic lambda$NFU2dSy6WOQhQXHQDFfWBCZvLi4(Lgbsdk/common/host/abji;)V
    .locals 0

    invoke-direct {p0}, Lgbsdk/common/host/abji;->bD()V

    return-void
.end method

.method private p(Z)I
    .locals 9

    .line 475
    iget-object v0, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 476
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abji;->ir:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    .line 479
    :try_start_0
    iget-object v2, p0, Lgbsdk/common/host/abji;->ir:Lcom/bytedance/retrofit2/client/Request;

    iget-object v3, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-wide v4, p0, Lgbsdk/common/host/abji;->mThrottleNetSpeed:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->constructURLConnection(Ljava/lang/String;Lcom/bytedance/retrofit2/client/Request;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;J)Ljava/net/HttpURLConnection;

    move-result-object v2

    iput-object v2, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_1

    .line 481
    iget-object p1, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iput-boolean v0, p1, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->bdTuringRetry:Z

    .line 482
    iget-object p1, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    const-string v2, "x-tt-bdturing-retry"

    const-string v3, "1"

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :cond_1
    iget-object p1, p0, Lgbsdk/common/host/abji;->ir:Lcom/bytedance/retrofit2/client/Request;

    iget-object v0, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    invoke-static {p1, v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->processExecute(Lcom/bytedance/retrofit2/client/Request;Ljava/net/HttpURLConnection;)I

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 486
    iget-wide v2, p0, Lgbsdk/common/host/abji;->mStartTime:J

    iget-object v4, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v5, p0, Lgbsdk/common/host/abji;->iq:Ljava/lang/String;

    iget-object v7, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    iget-object v8, p0, Lgbsdk/common/host/abji;->io:Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-object v6, p1

    invoke-static/range {v1 .. v8}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->processException(Ljava/lang/String;JLcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Ljava/lang/String;Ljava/lang/Exception;Ljava/net/HttpURLConnection;Lcom/bytedance/retrofit2/RetrofitMetrics;)V

    .line 488
    iput-boolean v0, p0, Lgbsdk/common/host/abji;->mCanceled:Z

    .line 489
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_2

    .line 490
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 492
    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private p(J)V
    .locals 2

    .line 436
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 437
    iput v1, v0, Landroid/os/Message;->what:I

    .line 438
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 439
    iget-object v1, p0, Lgbsdk/common/host/abji;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/bytedance/common/utility/collection/WeakHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private q(I)I
    .locals 2

    .line 501
    iget-object v0, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-static {v0, v1, p1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->shouldRetryRequestFromTuringHeader(Ljava/net/HttpURLConnection;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 504
    invoke-direct {p0, v1}, Lgbsdk/common/host/abji;->p(Z)I

    move-result p1

    return p1

    .line 507
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-boolean v0, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->executeTuringCallback:Z

    if-eqz v0, :cond_1

    .line 508
    sput-boolean v1, Lgbsdk/common/host/abji;->iT:Z

    :cond_1
    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 22

    move-object/from16 v1, p0

    .line 680
    sget-object v0, Lgbsdk/common/host/abji;->TAG:Ljava/lang/String;

    const-string v2, "cancel countdown."

    invoke-static {v0, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v2, v1, Lgbsdk/common/host/abji;->ix:Ljava/lang/Object;

    monitor-enter v2

    .line 682
    :try_start_0
    iget-object v0, v1, Lgbsdk/common/host/abji;->iF:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 683
    invoke-direct/range {p0 .. p0}, Lgbsdk/common/host/abji;->bB()V

    .line 685
    iget-object v0, v1, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_2

    .line 686
    iget-object v0, v1, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 687
    iget-object v0, v1, Lgbsdk/common/host/abji;->ir:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/client/Request;->isResponseStreaming()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Lgbsdk/common/host/abji;->mCanceled:Z

    if-nez v0, :cond_2

    .line 688
    invoke-virtual/range {p0 .. p0}, Lgbsdk/common/host/abji;->doCollect()V

    .line 689
    iget-object v0, v1, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v3, v1, Lgbsdk/common/host/abji;->iS:Ljava/lang/String;

    invoke-static {v3}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getContentBaseType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->contentType:Ljava/lang/String;

    .line 690
    iget-object v0, v1, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestEnd:J

    .line 691
    iget-object v0, v1, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v0, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v0, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    iget-boolean v0, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->is_need_monitor_in_cancel:Z

    if-eqz v0, :cond_1

    .line 692
    :cond_0
    iget-object v0, v1, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-wide v3, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestEnd:J

    iget-wide v5, v1, Lgbsdk/common/host/abji;->mStartTime:J

    sub-long v7, v3, v5

    iget-wide v9, v1, Lgbsdk/common/host/abji;->mStartTime:J

    iget-object v0, v1, Lgbsdk/common/host/abji;->ir:Lcom/bytedance/retrofit2/client/Request;

    .line 693
    invoke-virtual {v0}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lgbsdk/common/host/abji;->iq:Ljava/lang/String;

    iget-object v13, v1, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    .line 692
    invoke-static/range {v7 .. v13}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->monitorApiSample(JJLjava/lang/String;Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V

    .line 695
    :cond_1
    invoke-static {}, Lgbsdk/common/host/abkf;->bH()Lgbsdk/common/host/abkf;

    move-result-object v14

    iget-object v0, v1, Lgbsdk/common/host/abji;->ir:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v1, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-wide v3, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->sentByteCount:J

    iget-object v0, v1, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-wide v5, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->receivedByteCount:J

    iget-object v0, v1, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v0, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->contentType:Ljava/lang/String;

    iget-object v7, v1, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v7, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestLog:Ljava/lang/String;

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move-object/from16 v20, v0

    move-object/from16 v21, v7

    invoke-virtual/range {v14 .. v21}, Lgbsdk/common/host/abkf;->a(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    .line 700
    iput-boolean v0, v1, Lgbsdk/common/host/abji;->mCanceled:Z

    .line 701
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doCollect()V
    .locals 3

    .line 764
    iget-object v0, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v2, p0, Lgbsdk/common/host/abji;->io:Lcom/bytedance/retrofit2/RetrofitMetrics;

    invoke-static {v0, v1, v2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getRequestMetrics(Ljava/net/HttpURLConnection;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Lcom/bytedance/retrofit2/RetrofitMetrics;)V

    return-void
.end method

.method public execute()Lcom/bytedance/retrofit2/client/Response;
    .locals 13

    .line 532
    iget-object v0, p0, Lgbsdk/common/host/abji;->io:Lcom/bytedance/retrofit2/RetrofitMetrics;

    if-eqz v0, :cond_0

    .line 533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->callExecuteStartTime:J

    .line 536
    :cond_0
    iget-boolean v0, p0, Lgbsdk/common/host/abji;->mCanceled:Z

    if-nez v0, :cond_d

    .line 540
    sget-object v0, Lgbsdk/common/host/abji;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Execute url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgbsdk/common/host/abji;->is:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-boolean v0, p0, Lgbsdk/common/host/abji;->ip:Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->checkNetworkAvailable(ZLjava/lang/String;)V

    .line 544
    invoke-direct {p0}, Lgbsdk/common/host/abji;->by()V

    const/4 v0, 0x1

    .line 547
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/abji;->iF:Ljava/util/concurrent/CountDownLatch;

    iget-wide v2, p0, Lgbsdk/common/host/abji;->iK:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 548
    iget-object v1, p0, Lgbsdk/common/host/abji;->iF:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 549
    iget-object v1, p0, Lgbsdk/common/host/abji;->ix:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 550
    :try_start_1
    iget-boolean v2, p0, Lgbsdk/common/host/abji;->mCanceled:Z

    if-nez v2, :cond_b

    .line 554
    iget-object v2, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 555
    invoke-static {}, Lgbsdk/common/host/abjk;->bE()Lgbsdk/common/host/abjk;

    move-result-object v2

    iget-object v4, p0, Lgbsdk/common/host/abji;->iv:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lgbsdk/common/host/abjk;->a(Ljava/lang/String;Z)V

    .line 558
    iget-object v2, p0, Lgbsdk/common/host/abji;->iD:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lgbsdk/common/host/abji;->iD:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbsdk/common/host/abji$ab;

    iget-object v2, v2, Lgbsdk/common/host/abji$ab;->ja:Ljava/io/IOException;

    if-eqz v2, :cond_1

    .line 559
    iget-object v2, p0, Lgbsdk/common/host/abji;->iD:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbsdk/common/host/abji$ab;

    iget-object v2, v2, Lgbsdk/common/host/abji$ab;->ja:Ljava/io/IOException;

    throw v2

    .line 564
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v4, "All urls have been tried and timed out by max wait time."

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 565
    iget-object v4, p0, Lgbsdk/common/host/abji;->is:Ljava/lang/String;

    iget-object v5, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v2, v4, v5, v3}, Lgbsdk/common/host/abji;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/net/HttpURLConnection;Z)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 568
    :cond_2
    iget-object v2, p0, Lgbsdk/common/host/abji;->iz:Ljava/util/List;

    iget-object v4, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 570
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 580
    invoke-direct {p0}, Lgbsdk/common/host/abji;->bB()V

    .line 585
    :try_start_2
    invoke-static {}, Lgbsdk/common/host/abjk;->bE()Lgbsdk/common/host/abjk;

    move-result-object v1

    iget-object v2, p0, Lgbsdk/common/host/abji;->iv:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lgbsdk/common/host/abjk;->a(Ljava/lang/String;Z)V

    .line 586
    iget-object v1, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 588
    invoke-direct {p0, v1}, Lgbsdk/common/host/abji;->q(I)I

    move-result v1

    .line 590
    iget-object v2, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->responseBack:J

    .line 591
    iget-object v2, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    const/4 v4, -0x1

    iput v4, v2, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->recycleCount:I

    .line 593
    iget-object v2, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    iget-object v4, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-static {v2, v4, v1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->processAfterExecute(Ljava/net/HttpURLConnection;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lgbsdk/common/host/abji;->iq:Ljava/lang/String;

    .line 594
    iget-object v2, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    const-string v4, "Content-Type"

    invoke-static {v2, v4}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getHeaderValueIgnoreCase(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lgbsdk/common/host/abji;->iS:Ljava/lang/String;

    .line 596
    iget-object v2, p0, Lgbsdk/common/host/abji;->ir:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v2}, Lcom/bytedance/retrofit2/client/Request;->isResponseStreaming()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_3

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_4

    .line 597
    :cond_3
    iget-object v2, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-static {v2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->isForceHandleResponse(Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 598
    :cond_4
    iget-object v2, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v2}, Lgbsdk/common/host/abji;->a(Ljava/net/HttpURLConnection;)Lcom/bytedance/retrofit2/mime/TypedInput;

    move-result-object v2

    move-object v9, v2

    goto/16 :goto_3

    .line 600
    :cond_5
    iget-object v2, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 602
    :try_start_3
    iget-object v4, p0, Lgbsdk/common/host/abji;->ir:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v4}, Lcom/bytedance/retrofit2/client/Request;->getMaxLength()I

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 605
    :try_start_4
    iget-object v4, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    move-object v8, v4

    goto :goto_1

    .line 607
    :catch_0
    :try_start_5
    iget-object v4, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    .line 609
    iget-object v4, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    iget-object v9, p0, Lgbsdk/common/host/abji;->iS:Ljava/lang/String;

    iget-object v10, p0, Lgbsdk/common/host/abji;->is:Ljava/lang/String;

    iget-object v11, p0, Lgbsdk/common/host/abji;->io:Lcom/bytedance/retrofit2/RetrofitMetrics;

    invoke-static/range {v5 .. v11}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->processHttpErrorResponse(ZLjava/util/Map;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/retrofit2/RetrofitMetrics;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    .line 612
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 613
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reason = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_6

    const-string v2, ""

    :cond_6
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  exception = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 616
    :goto_2
    iget-object v4, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 617
    new-instance v4, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;

    invoke-direct {v4, v1, v2}, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 620
    :cond_7
    iget-object v2, p0, Lgbsdk/common/host/abji;->ir:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v2}, Lcom/bytedance/retrofit2/client/Request;->getMaxLength()I

    move-result v5

    .line 621
    iget-object v2, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v4, p0, Lgbsdk/common/host/abji;->iS:Ljava/lang/String;

    invoke-static {v4}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getContentBaseType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->contentType:Ljava/lang/String;

    .line 622
    iget-object v4, p0, Lgbsdk/common/host/abji;->is:Ljava/lang/String;

    iget-object v6, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    iget-wide v7, p0, Lgbsdk/common/host/abji;->mStartTime:J

    iget-object v9, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v10, p0, Lgbsdk/common/host/abji;->iq:Ljava/lang/String;

    iget-object v12, p0, Lgbsdk/common/host/abji;->io:Lcom/bytedance/retrofit2/RetrofitMetrics;

    move v11, v1

    invoke-static/range {v4 .. v12}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->processResponse(Ljava/lang/String;ILjava/net/HttpURLConnection;JLcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Ljava/lang/String;ILcom/bytedance/retrofit2/RetrofitMetrics;)[B

    move-result-object v2

    .line 624
    new-instance v4, Lcom/bytedance/retrofit2/mime/TypedByteArray;

    iget-object v5, p0, Lgbsdk/common/host/abji;->iS:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/String;

    invoke-direct {v4, v5, v2, v6}, Lcom/bytedance/retrofit2/mime/TypedByteArray;-><init>(Ljava/lang/String;[B[Ljava/lang/String;)V

    move-object v9, v4

    .line 627
    :goto_3
    new-instance v2, Lcom/bytedance/retrofit2/client/Response;

    iget-object v5, p0, Lgbsdk/common/host/abji;->is:Ljava/lang/String;

    iget-object v4, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    sget-boolean v6, Lgbsdk/common/host/abji;->iT:Z

    .line 628
    invoke-static {v4, v6}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->createHeaders(Ljava/net/HttpURLConnection;Z)Ljava/util/List;

    move-result-object v8

    move-object v4, v2

    move v6, v1

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/retrofit2/client/Response;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/bytedance/retrofit2/mime/TypedInput;)V

    .line 629
    iget-object v1, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-virtual {v2, v1}, Lcom/bytedance/retrofit2/client/Response;->setExtraInfo(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 637
    iget-object v0, p0, Lgbsdk/common/host/abji;->ir:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/client/Request;->isResponseStreaming()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    .line 638
    :cond_8
    iget-object v0, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->processFinally(Ljava/net/HttpURLConnection;)V

    :goto_4
    return-object v2

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v1

    .line 634
    :try_start_7
    iget-object v2, p0, Lgbsdk/common/host/abji;->is:Ljava/lang/String;

    iget-object v3, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v1, v2, v3, v0}, Lgbsdk/common/host/abji;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/net/HttpURLConnection;Z)Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v1

    move-object v0, v1

    const/4 v3, 0x1

    .line 637
    :goto_5
    iget-object v1, p0, Lgbsdk/common/host/abji;->ir:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Request;->isResponseStreaming()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v3, :cond_a

    .line 638
    :cond_9
    iget-object v1, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    invoke-static {v1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->processFinally(Ljava/net/HttpURLConnection;)V

    :cond_a
    throw v0

    .line 551
    :cond_b
    :try_start_8
    new-instance v2, Ljava/io/IOException;

    const-string v3, "request canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_3
    move-exception v2

    .line 570
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :catch_2
    move-exception v1

    .line 572
    invoke-direct {p0}, Lgbsdk/common/host/abji;->bB()V

    .line 573
    iget-object v2, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    if-nez v2, :cond_c

    iget-object v2, p0, Lgbsdk/common/host/abji;->iC:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_c

    .line 574
    iget-object v2, p0, Lgbsdk/common/host/abji;->is:Ljava/lang/String;

    iget-object v3, p0, Lgbsdk/common/host/abji;->iC:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v1, v2, v3, v0}, Lgbsdk/common/host/abji;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/net/HttpURLConnection;Z)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 576
    :cond_c
    iget-object v2, p0, Lgbsdk/common/host/abji;->is:Ljava/lang/String;

    iget-object v3, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v1, v2, v3, v0}, Lgbsdk/common/host/abji;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/net/HttpURLConnection;Z)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 537
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "request canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRequest()Lcom/bytedance/retrofit2/client/Request;
    .locals 1

    .line 721
    iget-object v0, p0, Lgbsdk/common/host/abji;->ir:Lcom/bytedance/retrofit2/client/Request;

    return-object v0
.end method

.method public getRequestInfo()Ljava/lang/Object;
    .locals 1

    .line 769
    iget-object v0, p0, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    return-object v0
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 253
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lgbsdk/common/host/abji;

    if-nez v0, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 263
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lgbsdk/common/host/abji;

    .line 264
    invoke-direct {p1}, Lgbsdk/common/host/abji;->bA()V

    goto :goto_0

    .line 259
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lgbsdk/common/host/abji;

    .line 260
    invoke-direct {p1}, Lgbsdk/common/host/abji;->by()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 270
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setThrottleNetSpeed(J)Z
    .locals 6

    .line 706
    iput-wide p1, p0, Lgbsdk/common/host/abji;->mThrottleNetSpeed:J

    .line 707
    iget-object v0, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 709
    :try_start_0
    iget-object v2, p0, Lgbsdk/common/host/abji;->iB:Ljava/net/HttpURLConnection;

    invoke-static {v2}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v2

    const-string v3, "setThrottleNetSpeed"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 712
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0

    :cond_0
    :goto_0
    return v1
.end method
