.class public Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;
.super Ljava/lang/Object;
.source "NetworkParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$AddSecurityFactorProcessCallback;,
        Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$addResponseHeadersCallback;,
        Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$StreamProcessor;,
        Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CdnConnectionQualitySamplerHook;,
        Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ConnectionQualitySamplerHook;,
        Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$AppCookieStore;,
        Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CookieShareInterceptor;,
        Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiRequestInterceptor;,
        Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$OldMonitorProcessHook;,
        Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$MonitorProcessHook;,
        Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiProcessHook;,
        Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CommandListener;
    }
.end annotation


# static fields
.field public static final BDTURING_VERIFY_HEADER:Ljava/lang/String; = "bdturing-verify"

.field public static final BYPASS_BDTURING_HEADER_KEY:Ljava/lang/String; = "x-tt-bypass-bdturing"

.field public static final CONNECT_TIMEOUT:I = 0x3a98

.field public static final IO_TIMEOUT:I = 0x3a98

.field public static final PNAME_REMOTE_ADDRESS:Ljava/lang/String; = "x-net-info.remoteaddr"

.field private static final WAIT_COOKIE_INIT_TIME:I = 0x1388

.field private static volatile sAddResponseHeadersCallback:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$addResponseHeadersCallback;

.field private static sAddSecurityFactorProcessCallback:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$AddSecurityFactorProcessCallback;

.field private static sApiInterceptor:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiRequestInterceptor;

.field private static sApiProcessHook:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiProcessHook;

.field private static sAppCookieStore:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$AppCookieStore;

.field private static sCdnConnectionQualitySamplerHook:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CdnConnectionQualitySamplerHook;

.field private static sCommandListener:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CommandListener;

.field private static sConnectionQualitySamplerHook:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ConnectionQualitySamplerHook;

.field private static sCookieInitedCountDown:Ljava/util/concurrent/CountDownLatch;

.field private static final sCookieLock:Ljava/lang/Object;

.field private static volatile sCookieMgrInited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sCookieShareInterceptor:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CookieShareInterceptor;

.field private static sEnableMainThreadCheck:Z

.field private static sMonitorProcessHook:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$MonitorProcessHook;

.field private static volatile sNewCookieBlockPositionEnabled:Z

.field private static sOldMonitorProcessHook:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$OldMonitorProcessHook;

.field private static sStreamProcessor:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$StreamProcessor;

.field private static volatile sUseDnsMapping:I

.field private static sUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 280
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sCookieMgrInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 281
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sCookieLock:Ljava/lang/Object;

    .line 294
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sCookieInitedCountDown:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, -0x1

    .line 350
    sput v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sUseDnsMapping:I

    .line 490
    sput-boolean v1, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sNewCookieBlockPositionEnabled:Z

    .line 510
    sput-boolean v1, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sEnableMainThreadCheck:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCommonParams(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 414
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sApiProcessHook:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiProcessHook;

    if-eqz v0, :cond_0

    .line 415
    invoke-interface {v0, p0, p1}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiProcessHook;->addCommonParams(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static cookieInitedCountDown()V
    .locals 5

    .line 297
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sCookieInitedCountDown:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 298
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sCookieInitedCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public static filterUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 393
    invoke-static {p0, v0}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->filterUrl(Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static filterUrl(Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;)Ljava/lang/String;
    .locals 1

    .line 397
    invoke-static {p0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 399
    :cond_0
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sApiInterceptor:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiRequestInterceptor;

    if-eqz v0, :cond_1

    .line 400
    invoke-interface {v0, p0, p1}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiRequestInterceptor;->filterUrl(Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getApiRequestInterceptor()Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiRequestInterceptor;
    .locals 1

    .line 369
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sApiInterceptor:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiRequestInterceptor;

    return-object v0
.end method

.method public static getAppCookieStore()Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$AppCookieStore;
    .locals 1

    .line 389
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sAppCookieStore:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$AppCookieStore;

    return-object v0
.end method

.method public static getCdnConnectionQualitySamplerHook()Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CdnConnectionQualitySamplerHook;
    .locals 1

    .line 134
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sCdnConnectionQualitySamplerHook:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CdnConnectionQualitySamplerHook;

    return-object v0
.end method

.method public static getCommandListener()Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CommandListener;
    .locals 1

    .line 204
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sCommandListener:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CommandListener;

    return-object v0
.end method

.method public static getCommonParamsByLevel(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 422
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sApiProcessHook:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiProcessHook;

    if-eqz v0, :cond_0

    .line 423
    invoke-interface {v0, p0}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiProcessHook;->getCommonParamsByLevel(I)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getConnectTimeout()I
    .locals 1

    const/16 v0, 0x3a98

    return v0
.end method

.method public static getConnectionQualitySamplerHook()Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ConnectionQualitySamplerHook;
    .locals 1

    .line 119
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sConnectionQualitySamplerHook:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ConnectionQualitySamplerHook;

    return-object v0
.end method

.method public static getCookieShareInterceptor()Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CookieShareInterceptor;
    .locals 1

    .line 379
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sCookieShareInterceptor:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CookieShareInterceptor;

    return-object v0
.end method

.method public static getEnableMainThreadCheck()Z
    .locals 1

    .line 517
    sget-boolean v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sEnableMainThreadCheck:Z

    return v0
.end method

.method public static getIoTimeout()I
    .locals 1

    const/16 v0, 0x3a98

    return v0
.end method

.method public static getStreamProcessor()Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$StreamProcessor;
    .locals 1

    .line 152
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sStreamProcessor:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$StreamProcessor;

    return-object v0
.end method

.method public static getUseDnsMapping()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 359
    sget v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sUseDnsMapping:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    .line 170
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static handleApiError(Ljava/lang/String;Ljava/lang/Throwable;JLcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V
    .locals 7

    .line 229
    invoke-static {p0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sApiProcessHook:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiProcessHook;

    .line 232
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sOldMonitorProcessHook:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$OldMonitorProcessHook;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 233
    invoke-interface {v0}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$OldMonitorProcessHook;->getOldmonitorSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    .line 234
    invoke-interface/range {v1 .. v6}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiProcessHook;->handleApiError(Ljava/lang/String;Ljava/lang/Throwable;JLcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static handleApiOk(Ljava/lang/String;JLcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V
    .locals 5

    .line 260
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sApiProcessHook:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiProcessHook;

    .line 261
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sOldMonitorProcessHook:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$OldMonitorProcessHook;

    .line 262
    invoke-static {p0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 263
    invoke-interface {v1}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$OldMonitorProcessHook;->getOldmonitorSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiProcessHook;->handleApiOk(Ljava/lang/String;JLcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V

    :cond_0
    return-void
.end method

.method public static interceptCookie(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 501
    instance-of v0, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    iget-boolean p0, p0, Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;->bypassCookie:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static monitorApiError(JJLjava/lang/String;Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Ljava/lang/Throwable;)V
    .locals 9

    move-object v7, p6

    .line 240
    invoke-static {p4}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p7, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sMonitorProcessHook:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$MonitorProcessHook;

    if-eqz v0, :cond_2

    .line 249
    iget-boolean v1, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->downloadFile:Z

    if-eqz v1, :cond_1

    .line 250
    iget-object v1, v7, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->hasReportStreamingApiAll:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 252
    invoke-interface/range {v0 .. v8}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$MonitorProcessHook;->monitorApiError(JJLjava/lang/String;Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static monitorApiHttp(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 405
    invoke-static {p0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sApiInterceptor:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiRequestInterceptor;

    if-eqz v0, :cond_1

    .line 409
    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiRequestInterceptor;->monitorApiHttp(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static monitorApiSample(JJLjava/lang/String;Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V
    .locals 8

    .line 270
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sMonitorProcessHook:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$MonitorProcessHook;

    .line 271
    invoke-static {p4}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-lez v3, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v1, p6, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->downloadFile:Z

    if-eqz v1, :cond_0

    iget-object v1, p6, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->hasReportStreamingApiAll:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 272
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 273
    :cond_0
    iget-boolean v1, p6, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->downloadFile:Z

    if-eqz v1, :cond_1

    .line 274
    iget-object v1, p6, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->hasReportStreamingApiAll:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 276
    invoke-interface/range {v0 .. v7}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$MonitorProcessHook;->monitorApiOk(JJLjava/lang/String;Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)V

    :cond_2
    return-void
.end method

.method public static newCookieBlockPositionEnabled()Z
    .locals 1

    .line 497
    sget-boolean v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sNewCookieBlockPositionEnabled:Z

    return v0
.end method

.method public static onCallToResponseCallback(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 456
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sAddResponseHeadersCallback:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$addResponseHeadersCallback;

    if-eqz v0, :cond_0

    .line 457
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sAddResponseHeadersCallback:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$addResponseHeadersCallback;

    invoke-interface {v0, p0}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$addResponseHeadersCallback;->onCallToRetryRequestByTuringHeader(Ljava/util/Map;)Z

    move-result v0

    const-string v1, "bdturing-verify"

    .line 458
    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static putCommonParams(Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 438
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sApiProcessHook:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiProcessHook;

    if-eqz v0, :cond_0

    .line 439
    invoke-interface {v0, p0, p1}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiProcessHook;->putCommonParams(Ljava/util/Map;Z)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized setAddResponseHeadersCallback(Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$addResponseHeadersCallback;)V
    .locals 1

    const-class v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;

    monitor-enter v0

    .line 452
    :try_start_0
    sput-object p0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sAddResponseHeadersCallback:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$addResponseHeadersCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setAddSecurityFactorProcessCallback(Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$AddSecurityFactorProcessCallback;)V
    .locals 0

    .line 478
    sput-object p0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sAddSecurityFactorProcessCallback:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$AddSecurityFactorProcessCallback;

    return-void
.end method

.method public static setApiProcessHook(Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiProcessHook;)V
    .locals 0

    .line 210
    sput-object p0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sApiProcessHook:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiProcessHook;

    return-void
.end method

.method public static setApiRequestInterceptor(Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiRequestInterceptor;)V
    .locals 0

    .line 365
    sput-object p0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sApiInterceptor:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiRequestInterceptor;

    return-void
.end method

.method public static setAppCookieStore(Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$AppCookieStore;)V
    .locals 0

    .line 385
    sput-object p0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sAppCookieStore:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$AppCookieStore;

    return-void
.end method

.method public static setCdnConnectionQualitySamplerHook(Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CdnConnectionQualitySamplerHook;)V
    .locals 0

    .line 130
    sput-object p0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sCdnConnectionQualitySamplerHook:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CdnConnectionQualitySamplerHook;

    return-void
.end method

.method public static setCommandListener(Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CommandListener;)V
    .locals 0

    .line 200
    sput-object p0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sCommandListener:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CommandListener;

    return-void
.end method

.method public static setConnectionQualitySamplerHook(Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ConnectionQualitySamplerHook;)V
    .locals 0

    .line 115
    sput-object p0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sConnectionQualitySamplerHook:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ConnectionQualitySamplerHook;

    return-void
.end method

.method public static setCookieMgrInited(Z)V
    .locals 1

    .line 284
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sCookieMgrInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-ne v0, p0, :cond_0

    return-void

    .line 287
    :cond_0
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sCookieMgrInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 288
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->cookieInitedCountDown()V

    if-nez p0, :cond_1

    .line 290
    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object p0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sCookieInitedCountDown:Ljava/util/concurrent/CountDownLatch;

    :cond_1
    return-void
.end method

.method public static setCookieShareInterceptor(Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CookieShareInterceptor;)V
    .locals 0

    .line 375
    sput-object p0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sCookieShareInterceptor:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CookieShareInterceptor;

    return-void
.end method

.method public static setDefaultUserAgent(Ljava/lang/String;)V
    .locals 6

    if-eqz p0, :cond_3

    .line 177
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 178
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 179
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 183
    aget-char v4, v0, v2

    const/16 v5, 0x20

    if-lt v4, v5, :cond_0

    aget-char v4, v0, v2

    const/16 v5, 0x7e

    if-le v4, v5, :cond_1

    :cond_0
    const/16 v3, 0x3f

    .line 184
    aput-char v3, v0, v2

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 189
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    .line 194
    :catch_0
    :cond_3
    sput-object p0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sUserAgent:Ljava/lang/String;

    return-void
.end method

.method public static setDynamicTimeOutEnable(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static setEnableMainThreadCheck(Z)V
    .locals 0

    .line 513
    sput-boolean p0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sEnableMainThreadCheck:Z

    return-void
.end method

.method public static setMonitorProcessHook(Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$MonitorProcessHook;)V
    .locals 0

    .line 216
    sput-object p0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sMonitorProcessHook:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$MonitorProcessHook;

    return-void
.end method

.method public static setNewCookieBlockPositionEnabled(Z)V
    .locals 0

    .line 493
    sput-boolean p0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sNewCookieBlockPositionEnabled:Z

    return-void
.end method

.method public static setOldMonitorProcessHook(Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$OldMonitorProcessHook;)V
    .locals 0

    .line 222
    sput-object p0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sOldMonitorProcessHook:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$OldMonitorProcessHook;

    return-void
.end method

.method public static setStreamProcessor(Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$StreamProcessor;)V
    .locals 0

    .line 148
    sput-object p0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sStreamProcessor:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$StreamProcessor;

    return-void
.end method

.method public static setUseDnsMapping(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 354
    sput p0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sUseDnsMapping:I

    return-void
.end method

.method public static shouldRetryRequestFromTuringHeaders(ILjava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_1

    .line 466
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    invoke-static {p1}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->onCallToResponseCallback(Ljava/util/Map;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs tryAddRequestVertifyParams(Ljava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 430
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sApiProcessHook:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiProcessHook;

    if-eqz v0, :cond_0

    .line 431
    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiProcessHook;->addRequestVertifyParams(Ljava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static tryAddSecurityFactor(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 482
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sAddSecurityFactorProcessCallback:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$AddSecurityFactorProcessCallback;

    if-eqz v0, :cond_0

    .line 484
    invoke-interface {v0, p0, p1}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$AddSecurityFactorProcessCallback;->onCallToAddSecurityFactor(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static tryApiProcessHookInit()V
    .locals 1

    .line 313
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sApiProcessHook:Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiProcessHook;

    if-eqz v0, :cond_0

    .line 315
    invoke-interface {v0}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiProcessHook;->onTryInit()V

    :cond_0
    return-void
.end method

.method public static tryCookieManagerInit()Landroid/webkit/CookieManager;
    .locals 7

    .line 322
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sCookieLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_0
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sCookieMgrInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 325
    :try_start_1
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sCookieInitedCountDown:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_0

    .line 327
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sCookieInitedCountDown:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x1388

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 328
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sCookieInitedCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    .line 329
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sCookieInitedCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 335
    :catch_0
    :cond_0
    :try_start_2
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->sCookieMgrInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 337
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x0

    .line 340
    :try_start_3
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v1

    if-nez v1, :cond_2

    .line 342
    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    :cond_2
    return-object v0

    :catchall_1
    move-exception v1

    .line 337
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public static tryNecessaryInit()Landroid/webkit/CookieManager;
    .locals 1

    const-string v0, ""

    .line 303
    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->tryNecessaryInit(Ljava/lang/String;)Landroid/webkit/CookieManager;

    move-result-object v0

    return-object v0
.end method

.method public static tryNecessaryInit(Ljava/lang/String;)Landroid/webkit/CookieManager;
    .locals 0

    .line 307
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->tryApiProcessHookInit()V

    .line 308
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->tryCookieManagerInit()Landroid/webkit/CookieManager;

    move-result-object p0

    return-object p0
.end method
