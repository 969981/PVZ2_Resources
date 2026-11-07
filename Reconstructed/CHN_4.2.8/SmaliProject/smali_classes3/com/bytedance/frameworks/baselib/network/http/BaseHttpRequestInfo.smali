.class public Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;
.super Ljava/lang/Object;
.source "BaseHttpRequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo$ab;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final HTTP_CLIENT_TYPE_CRONET:I = 0x0

.field public static final HTTP_CLIENT_TYPE_OK3:I = 0x1

.field public static final KEY_ABTEST:Ljava/lang/String; = "ab_test"

.field public static final KEY_COOKIE:Ljava/lang/String; = "cookie"

.field public static final KEY_EXCEPTION:Ljava/lang/String; = "ex"

.field public static final KEY_HIT:Ljava/lang/String; = "hit"

.field public static final KEY_HTTP_CLIENT:Ljava/lang/String; = "hc"

.field public static final KEY_HTTP_CLIENT_VERSION:Ljava/lang/String; = "hcv"

.field public static final KEY_USER_AGENT:Ljava/lang/String; = "ua"

.field private static sCreate:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo$ab;


# instance fields
.field public appLevelRequestStart:J

.field public bdTuringRetry:Z

.field public beforeAllInterceptors:J

.field public completeReadResponse:J

.field public connectTime:J

.field public contentType:Ljava/lang/String;

.field public dnsTime:J

.field public downloadFile:Z

.field public executeTuringCallback:Z

.field public extraInfo:Lorg/json/JSONObject;

.field public fallbackMessage:Ljava/lang/String;

.field public fallbackReason:I

.field public volatile hasReportStreamingApiAll:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public httpClientType:I

.field public isSocketReused:Z

.field public nativePostTaskStartTime:J

.field public nativeRequestStartTime:J

.field public nativeWaitContext:J

.field public pushTime:J

.field public receiveTime:J

.field public receivedByteCount:J

.field public recycleCount:I

.field public remoteIp:Ljava/lang/String;

.field public reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public requestEnd:J

.field public requestHeaders:Ljava/lang/String;

.field public requestLog:Ljava/lang/String;

.field public requestStart:J

.field public responseBack:J

.field public responseHeaders:Ljava/lang/String;

.field public retryAttempts:J

.field public sendTime:J

.field public sentByteCount:J

.field public sslTime:J

.field public totalTime:J

.field public ttfbMs:J

.field public turingCallbackDuration:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo$1;

    invoke-direct {v0}, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo$1;-><init>()V

    sput-object v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->sCreate:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo$ab;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->httpClientType:I

    .line 57
    iput v0, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->fallbackReason:I

    const-string v0, ""

    .line 58
    iput-object v0, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->fallbackMessage:Ljava/lang/String;

    const/4 v1, 0x0

    .line 64
    iput-boolean v1, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->downloadFile:Z

    .line 76
    iput-boolean v1, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->executeTuringCallback:Z

    const-wide/16 v2, -0x1

    .line 77
    iput-wide v2, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->turingCallbackDuration:J

    .line 78
    iput-boolean v1, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->bdTuringRetry:Z

    .line 81
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->hasReportStreamingApiAll:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    iput-object v0, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->contentType:Ljava/lang/String;

    return-void
.end method

.method public static createHttpRequestInfo()Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;
    .locals 1

    .line 115
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->sCreate:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo$ab;

    invoke-interface {v0}, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo$ab;->bt()Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getABTestInfo(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 98
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ","

    .line 100
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 101
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 102
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 103
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "hit"

    .line 107
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object p0
.end method

.method public static setCreate(Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo$ab;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 93
    sput-object p0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->sCreate:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo$ab;

    :cond_0
    return-void
.end method
