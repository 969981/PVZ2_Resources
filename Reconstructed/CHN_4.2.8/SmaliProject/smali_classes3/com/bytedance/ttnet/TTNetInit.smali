.class public Lcom/bytedance/ttnet/TTNetInit;
.super Ljava/lang/Object;
.source "TTNetInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttnet/TTNetInit$ENV;
    }
.end annotation


# static fields
.field public static final DOMAIN_BOE_HTTPS_KEY:Ljava/lang/String; = "boe_https"

.field public static final DOMAIN_BOE_KEY:Ljava/lang/String; = "boe"

.field public static final DOMAIN_HTTPDNS_KEY:Ljava/lang/String; = "httpdns"

.field public static final DOMAIN_NETLOG_KEY:Ljava/lang/String; = "netlog"

.field private static final INIT_TIMEOUT_VALUE:I = 0x5

.field private static volatile env:Lcom/bytedance/ttnet/TTNetInit$ENV; = null

.field private static volatile sApiHttpInterceptEnabled:Z = false

.field private static volatile sClientIPString:Ljava/lang/String; = null

.field private static volatile sCookieLogReportEnabled:Z = false

.field private static sCookieManagerInitStartTime:J = 0x0L

.field public static sCronetProvider:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider; = null

.field private static volatile sDelayTime:I = 0xa

.field public static sGetDomainRegionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sITTNetDepend:Lcom/bytedance/ttnet/ITTNetDepend;

.field private static volatile sLatchInitCompleted:Ljava/util/concurrent/CountDownLatch;

.field public static sLifeCycleMonitor:Lgbsdk/common/host/abhd;

.field private static volatile sListenAppStateIndependently:Z

.field private static volatile sMainThreadInitCookieEnabled:Z

.field private static volatile sNotifiedColdStartFinsish:Z

.field private static volatile sPublicIPv4List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sPublicIPv6List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/bytedance/ttnet/TTNetInit;->sLatchInitCompleted:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 73
    sput-boolean v0, Lcom/bytedance/ttnet/TTNetInit;->sApiHttpInterceptEnabled:Z

    .line 74
    sput-boolean v0, Lcom/bytedance/ttnet/TTNetInit;->sCookieLogReportEnabled:Z

    .line 75
    sput-boolean v0, Lcom/bytedance/ttnet/TTNetInit;->sListenAppStateIndependently:Z

    .line 79
    sput-boolean v1, Lcom/bytedance/ttnet/TTNetInit;->sMainThreadInitCookieEnabled:Z

    .line 90
    new-instance v1, Lgbsdk/common/host/abhd;

    invoke-direct {v1}, Lgbsdk/common/host/abhd;-><init>()V

    sput-object v1, Lcom/bytedance/ttnet/TTNetInit;->sLifeCycleMonitor:Lgbsdk/common/host/abhd;

    .line 92
    invoke-static {}, Lcom/bytedance/ttnet/TTALog;->init()V

    .line 100
    sget-object v1, Lcom/bytedance/ttnet/TTNetInit$ENV;->RELEASE:Lcom/bytedance/ttnet/TTNetInit$ENV;

    sput-object v1, Lcom/bytedance/ttnet/TTNetInit;->env:Lcom/bytedance/ttnet/TTNetInit$ENV;

    .line 393
    sput-boolean v0, Lcom/bytedance/ttnet/TTNetInit;->sNotifiedColdStartFinsish:Z

    const-string v0, ""

    .line 402
    sput-object v0, Lcom/bytedance/ttnet/TTNetInit;->sClientIPString:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 496
    sput-wide v0, Lcom/bytedance/ttnet/TTNetInit;->sCookieManagerInitStartTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CookieInitFailedReport(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "init"

    .line 550
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "failed"

    .line 552
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "exception"

    .line 553
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 555
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 557
    :goto_0
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object p1

    const-string v2, "TTNET-COOKIE"

    invoke-interface {p1, p0, v2, v0, v1}, Lcom/bytedance/ttnet/ITTNetDepend;->mobOnEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static TTDnsResolve(Ljava/lang/String;I)Lgbsdk/common/host/abvu;
    .locals 1

    .line 822
    invoke-static {}, Lgbsdk/common/host/abvy;->hp()Lgbsdk/common/host/abvy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lgbsdk/common/host/abvy;->TTDnsResolve(Ljava/lang/String;I)Lgbsdk/common/host/abvu;

    move-result-object p0

    return-object p0
.end method

.method public static addClientOpaqueData(Landroid/content/Context;[Ljava/lang/String;[B[B)V
    .locals 0

    .line 624
    invoke-static {p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->inst(Landroid/content/Context;)Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->addClientOpaqueData([Ljava/lang/String;[B[B)V

    return-void
.end method

.method public static apiHttpInterceptEnabled()Z
    .locals 1

    .line 898
    sget-boolean v0, Lcom/bytedance/ttnet/TTNetInit;->sApiHttpInterceptEnabled:Z

    return v0
.end method

.method public static clearClientOpaqueData(Landroid/content/Context;)V
    .locals 0

    .line 631
    invoke-static {p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->inst(Landroid/content/Context;)Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->clearClientOpaqueData()V

    return-void
.end method

.method public static cookieLogReportEnabled()Z
    .locals 1

    .line 218
    sget-boolean v0, Lcom/bytedance/ttnet/TTNetInit;->sCookieLogReportEnabled:Z

    return v0
.end method

.method private static countDownInitCompletedLatch()V
    .locals 5

    .line 231
    :try_start_0
    sget-object v0, Lcom/bytedance/ttnet/TTNetInit;->sLatchInitCompleted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 232
    sget-object v0, Lcom/bytedance/ttnet/TTNetInit;->sLatchInitCompleted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static dnsLookup(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 671
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->inst(Landroid/content/Context;)Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->dnsLookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static doCommand(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static enableApiHttpIntercept(Z)V
    .locals 0

    .line 894
    sput-boolean p0, Lcom/bytedance/ttnet/TTNetInit;->sApiHttpInterceptEnabled:Z

    return-void
.end method

.method public static enableCookieLogReport(Z)V
    .locals 0

    .line 214
    sput-boolean p0, Lcom/bytedance/ttnet/TTNetInit;->sCookieLogReportEnabled:Z

    return-void
.end method

.method public static enableTTBizHttpDns(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8

    if-eqz p0, :cond_1

    .line 920
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 925
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getCronetHttpClient()Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    move-result-object v1

    if-eqz v1, :cond_2

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 927
    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->enableTTBizHttpDns(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 930
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static feedBackCronetInitFailedLog(ILjava/lang/String;)V
    .locals 2

    .line 733
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "fallback"

    .line 735
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "exception"

    .line 736
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "model"

    .line 737
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, ""

    .line 739
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge p1, v1, :cond_0

    .line 740
    sget-object p0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    goto :goto_0

    .line 742
    :cond_0
    sget-object p1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 743
    array-length v1, p1

    if-lez v1, :cond_1

    .line 744
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    const-string p1, "abis"

    .line 747
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 748
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object p0

    const-string p1, "cronet_failed"

    invoke-interface {p0, p1, v0}, Lcom/bytedance/ttnet/ITTNetDepend;->monitorLogSend(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static forceInitCronetKernel()V
    .locals 7

    .line 759
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->inst()Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;

    move-result-object v0

    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;->il:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    iput-object v1, v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->mode:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    .line 760
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->inst(Landroid/content/Context;)Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    move-result-object v1

    .line 762
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/ttnet/config/AppConfig;->getInstance(Landroid/content/Context;)Lcom/bytedance/ttnet/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ttnet/config/AppConfig;->isCronetHttpDnsOpen()Z

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 761
    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->setCronetEngine(ZZZZZ)V

    return-void
.end method

.method public static getALogFuncAddr()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 882
    invoke-static {}, Lcom/bytedance/ttnet/TTALog;->getALogFuncAddr()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getClientIpString()Ljava/lang/String;
    .locals 1

    .line 417
    sget-object v0, Lcom/bytedance/ttnet/TTNetInit;->sClientIPString:Ljava/lang/String;

    return-object v0
.end method

.method private static getCronetHttpClient()Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;
    .locals 7

    .line 908
    invoke-static {}, Lcom/bytedance/ttnet/HttpClient;->isCronetClientEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->inst(Landroid/content/Context;)Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 911
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/ttnet/config/AppConfig;->getInstance(Landroid/content/Context;)Lcom/bytedance/ttnet/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ttnet/config/AppConfig;->isCronetHttpDnsOpen()Z

    move-result v5

    const/4 v6, 0x0

    move-object v1, v0

    .line 910
    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->setCronetEngine(ZZZZZ)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCronetProvider()Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;
    .locals 1

    .line 188
    sget-object v0, Lcom/bytedance/ttnet/TTNetInit;->sCronetProvider:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;

    return-object v0
.end method

.method public static getEffectiveConnectionType()I
    .locals 1

    .line 936
    :try_start_0
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->inst(Landroid/content/Context;)Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getEffectiveConnectionType()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 938
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnv()Lcom/bytedance/ttnet/TTNetInit$ENV;
    .locals 1

    .line 103
    sget-object v0, Lcom/bytedance/ttnet/TTNetInit;->env:Lcom/bytedance/ttnet/TTNetInit$ENV;

    return-object v0
.end method

.method public static getGetDomainConfigByRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 199
    sget-object v0, Lcom/bytedance/ttnet/TTNetInit;->sGetDomainRegionMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/bytedance/ttnet/TTNetInit;->sCronetProvider:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;

    if-eqz v0, :cond_1

    .line 200
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    sget-object v0, Lcom/bytedance/ttnet/TTNetInit;->sGetDomainRegionMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getGroupRttEstimates()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lgbsdk/common/host/abkg;",
            ">;"
        }
    .end annotation

    .line 703
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->inst(Landroid/content/Context;)Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getGroupRttEstimates()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getInitCompletedLatch()V
    .locals 4

    .line 223
    :try_start_0
    sget-object v0, Lcom/bytedance/ttnet/TTNetInit;->sLatchInitCompleted:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 225
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getListenAppStateIndependently()Z
    .locals 1

    .line 134
    sget-boolean v0, Lcom/bytedance/ttnet/TTNetInit;->sListenAppStateIndependently:Z

    return v0
.end method

.method public static getMappingRequestState(Ljava/lang/String;)V
    .locals 1

    .line 843
    :try_start_0
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->inst(Landroid/content/Context;)Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getMappingRequestState(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 845
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getNetworkQuality()Lgbsdk/common/host/abkg;
    .locals 1

    .line 681
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->inst(Landroid/content/Context;)Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getNetworkQuality()Lgbsdk/common/host/abkg;

    move-result-object v0

    return-object v0
.end method

.method public static getPacketLossRateMetrics(I)Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/PacketLossMetrics;
    .locals 1

    .line 693
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->inst(Landroid/content/Context;)Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getPacketLossRateMetrics(I)Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/PacketLossMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static getPublicIPv4List()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 434
    sget-object v0, Lcom/bytedance/ttnet/TTNetInit;->sPublicIPv4List:Ljava/util/List;

    return-object v0
.end method

.method public static getPublicIPv6List()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 443
    sget-object v0, Lcom/bytedance/ttnet/TTNetInit;->sPublicIPv6List:Ljava/util/List;

    return-object v0
.end method

.method public static getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;
    .locals 2

    .line 172
    sget-object v0, Lcom/bytedance/ttnet/TTNetInit;->sITTNetDepend:Lcom/bytedance/ttnet/ITTNetDepend;

    if-eqz v0, :cond_0

    return-object v0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sITTNetDepend is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static injectOkhttp3HttpDnsDepend()V
    .locals 6

    .line 162
    sget-object v0, Lcom/bytedance/ttnet/TTNetInit;->sITTNetDepend:Lcom/bytedance/ttnet/ITTNetDepend;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lgbsdk/common/host/abto;

    if-eqz v2, :cond_0

    .line 163
    check-cast v0, Lgbsdk/common/host/abto;

    invoke-virtual {v0}, Lgbsdk/common/host/abto;->bW()[Ljava/lang/String;

    move-result-object v1

    .line 164
    sget-object v0, Lcom/bytedance/ttnet/TTNetInit;->sITTNetDepend:Lcom/bytedance/ttnet/ITTNetDepend;

    check-cast v0, Lgbsdk/common/host/abto;

    invoke-virtual {v0}, Lgbsdk/common/host/abto;->gH()[Ljava/lang/String;

    move-result-object v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 166
    :goto_0
    sget-object v2, Lcom/bytedance/ttnet/TTNetInit;->sITTNetDepend:Lcom/bytedance/ttnet/ITTNetDepend;

    invoke-interface {v2}, Lcom/bytedance/ttnet/ITTNetDepend;->getAppId()I

    move-result v2

    sget-object v3, Lcom/bytedance/ttnet/TTNetInit;->sITTNetDepend:Lcom/bytedance/ttnet/ITTNetDepend;

    .line 167
    invoke-interface {v3}, Lcom/bytedance/ttnet/ITTNetDepend;->getTTNetServiceDomainMap()Ljava/util/Map;

    move-result-object v3

    const-string v4, "httpdns"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 166
    invoke-static {v2, v3, v1, v0}, Lgbsdk/common/host/abjb;->a(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static isPrivateApiAccessEnabled()Z
    .locals 1

    .line 944
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ttnet/ITTNetDepend;->isPrivateApiAccessEnabled()Z

    move-result v0

    return v0
.end method

.method public static monitorLogSend(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 902
    sget-object v0, Lcom/bytedance/ttnet/TTNetInit;->sITTNetDepend:Lcom/bytedance/ttnet/ITTNetDepend;

    if-eqz v0, :cond_0

    .line 903
    invoke-interface {v0, p0, p1}, Lcom/bytedance/ttnet/ITTNetDepend;->monitorLogSend(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public static notifyColdStartFinish()V
    .locals 1

    .line 396
    sget-object v0, Lcom/bytedance/ttnet/TTNetInit;->sITTNetDepend:Lcom/bytedance/ttnet/ITTNetDepend;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/bytedance/ttnet/TTNetInit;->sNotifiedColdStartFinsish:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 397
    sput-boolean v0, Lcom/bytedance/ttnet/TTNetInit;->sNotifiedColdStartFinsish:Z

    .line 398
    sget-object v0, Lcom/bytedance/ttnet/TTNetInit;->sITTNetDepend:Lcom/bytedance/ttnet/ITTNetDepend;

    invoke-interface {v0}, Lcom/bytedance/ttnet/ITTNetDepend;->onColdStartFinish()V

    :cond_0
    return-void
.end method

.method public static onActivityResume(Landroid/app/Activity;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 579
    :cond_0
    new-instance v0, Lcom/bytedance/ttnet/TTNetInit$7;

    const-string v1, "Network-AsyncResume"

    invoke-direct {v0, v1, p0}, Lcom/bytedance/ttnet/TTNetInit$7;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    .line 584
    invoke-virtual {v0}, Lcom/bytedance/ttnet/TTNetInit$7;->start()V

    return-void
.end method

.method public static onClientIPChanged(Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 406
    sput-object p0, Lcom/bytedance/ttnet/TTNetInit;->sClientIPString:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static onPublicIPsChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 424
    sput-object p0, Lcom/bytedance/ttnet/TTNetInit;->sPublicIPv4List:Ljava/util/List;

    .line 425
    sput-object p1, Lcom/bytedance/ttnet/TTNetInit;->sPublicIPv6List:Ljava/util/List;

    return-void
.end method

.method public static preInitCronetKernel()V
    .locals 5

    .line 710
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->inst()Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;

    move-result-object v0

    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;->ik:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    iput-object v1, v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->mode:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    const/4 v0, -0x1

    .line 713
    :try_start_0
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getCronetHttpClient()Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    move-result-object v1

    if-nez v1, :cond_0

    .line 715
    sget v0, Lgbsdk/common/host/abjb;->nK:I

    const-string v1, ""

    .line 716
    invoke-static {v0, v1}, Lcom/bytedance/ttnet/TTNetInit;->feedBackCronetInitFailedLog(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 719
    instance-of v2, v1, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_1

    const/4 v0, 0x3

    .line 722
    :cond_1
    invoke-static {v1}, Lgbsdk/common/host/abwk;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 724
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x400

    if-le v3, v4, :cond_2

    const/4 v3, 0x0

    .line 725
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 727
    :cond_2
    invoke-static {v0, v2}, Lcom/bytedance/ttnet/TTNetInit;->feedBackCronetInitFailedLog(ILjava/lang/String;)V

    .line 728
    throw v1
.end method

.method public static preconnectUrl(Ljava/lang/String;)V
    .locals 1

    .line 975
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 976
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->inst(Landroid/content/Context;)Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->preconnectUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 978
    throw p0
.end method

.method public static removeClientOpaqueData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 638
    invoke-static {p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->inst(Landroid/content/Context;)Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->removeClientOpaqueData(Ljava/lang/String;)V

    return-void
.end method

.method public static setALogFuncAddr(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static setBypassOfflineCheck(Z)V
    .locals 0

    .line 865
    invoke-static {p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->setBypassOfflineCheck(Z)V

    return-void
.end method

.method public static setCookieHandler(Landroid/content/Context;)V
    .locals 9

    .line 452
    :try_start_0
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 453
    instance-of v0, v0, Lgbsdk/common/host/abiq;

    if-eqz v0, :cond_0

    .line 454
    invoke-static {v1}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->setCookieMgrInited(Z)V

    return-void

    .line 457
    :cond_0
    sget-wide v2, Lcom/bytedance/ttnet/TTNetInit;->sCookieManagerInitStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 458
    invoke-static {v1}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->setCookieMgrInited(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 464
    :try_start_1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    .line 466
    :try_start_2
    sput v3, Lcom/bytedance/ttnet/TTNetInit;->sDelayTime:I

    .line 467
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/bytedance/ttnet/TTNetInit;->CookieInitFailedReport(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :goto_1
    new-instance v0, Lgbsdk/common/host/abiq;

    sget v5, Lcom/bytedance/ttnet/TTNetInit;->sDelayTime:I

    .line 470
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/ttnet/ITTNetDepend;->getCookieFlushPathList()Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Lcom/bytedance/ttnet/TTNetInit$5;

    invoke-direct {v8, p0}, Lcom/bytedance/ttnet/TTNetInit$5;-><init>(Landroid/content/Context;)V

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lgbsdk/common/host/abiq;-><init>(Landroid/content/Context;ILandroid/webkit/CookieManager;Ljava/util/ArrayList;Lgbsdk/common/host/abiq$ab;)V

    .line 469
    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 478
    invoke-static {v1}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->setCookieMgrInited(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 480
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/bytedance/ttnet/TTNetInit;->CookieInitFailedReport(Landroid/content/Context;Ljava/lang/String;)V

    .line 482
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static setCronetDepend(Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 183
    sput-object p0, Lcom/bytedance/ttnet/TTNetInit;->sCronetProvider:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;

    .line 184
    invoke-static {p0}, Lgbsdk/common/host/abwt;->a(Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;)V

    return-void

    .line 180
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cronetDepend is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setDelayTime(I)V
    .locals 0

    .line 856
    sput p0, Lcom/bytedance/ttnet/TTNetInit;->sDelayTime:I

    return-void
.end method

.method public static setEnableURLDispatcher(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static setEnv(Lcom/bytedance/ttnet/TTNetInit$ENV;)V
    .locals 0

    .line 107
    sput-object p0, Lcom/bytedance/ttnet/TTNetInit;->env:Lcom/bytedance/ttnet/TTNetInit$ENV;

    return-void
.end method

.method public static setFirstRequestWaitTime(J)V
    .locals 0

    return-void
.end method

.method public static setGetDomainRegionMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 195
    sput-object p0, Lcom/bytedance/ttnet/TTNetInit;->sGetDomainRegionMap:Ljava/util/Map;

    return-void

    .line 193
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "getDomainRegionMap is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setHostResolverRulesForTesting(Ljava/lang/String;)V
    .locals 1

    .line 785
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getCronetHttpClient()Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {v0, p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->setHostResolverRules(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setHttpDnsForTesting(ZZZ)V
    .locals 0

    return-void
.end method

.method public static setListenAppStateIndependently(Z)V
    .locals 0

    .line 125
    sput-boolean p0, Lcom/bytedance/ttnet/TTNetInit;->sListenAppStateIndependently:Z

    return-void
.end method

.method public static setMainThreadInitCookieEnabled(Z)V
    .locals 0

    .line 499
    sput-boolean p0, Lcom/bytedance/ttnet/TTNetInit;->sMainThreadInitCookieEnabled:Z

    return-void
.end method

.method public static setProcessFlag(I)V
    .locals 0

    .line 991
    invoke-static {p0}, Lgbsdk/common/host/able;->setProcessFlag(I)V

    return-void
.end method

.method public static setProxy(Ljava/lang/String;)V
    .locals 1

    .line 658
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->inst(Landroid/content/Context;)Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->setProxy(Ljava/lang/String;)V

    return-void
.end method

.method public static setTTNetDepend(Lcom/bytedance/ttnet/ITTNetDepend;)V
    .locals 3

    .line 144
    sput-object p0, Lcom/bytedance/ttnet/TTNetInit;->sITTNetDepend:Lcom/bytedance/ttnet/ITTNetDepend;

    .line 147
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/ttnet/ITTNetDepend;->getTTNetServiceDomainMap()Ljava/util/Map;

    move-result-object p0

    const-string v0, "httpdns"

    .line 148
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "netlog"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "boe"

    .line 149
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "boe_https"

    if-eqz v1, :cond_0

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/util/BoeUtils;->setBoeSuffix(Ljava/lang/String;)V

    .line 155
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/bytedance/frameworks/baselib/network/http/util/BoeUtils;->setBoeHttpsSuffix(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->injectOkhttp3HttpDnsDepend()V

    return-void

    :cond_1
    const/4 p0, 0x0

    .line 150
    sput-object p0, Lcom/bytedance/ttnet/TTNetInit;->sITTNetDepend:Lcom/bytedance/ttnet/ITTNetDepend;

    .line 151
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must set HttpDns, NetLog and BOE service domain, please refer to TTNet access documents."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static trigerGetDomain(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 613
    invoke-static {p0, v0}, Lcom/bytedance/ttnet/TTNetInit;->triggerGetDomain(Landroid/content/Context;Z)V

    return-void
.end method

.method public static triggerGetDomain(Landroid/content/Context;Z)V
    .locals 0

    .line 603
    invoke-static {p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->inst(Landroid/content/Context;)Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->triggerGetDomain(Z)V

    return-void
.end method

.method public static tryInitCookieManager(Landroid/content/Context;ZZ)V
    .locals 4

    .line 506
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/ttnet/TTNetInit;->sCookieManagerInitStartTime:J

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 509
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 510
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 511
    invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 512
    invoke-static {p0}, Lcom/bytedance/ttnet/TTNetInit;->setCookieHandler(Landroid/content/Context;)V

    .line 513
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Process"

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CookieManager = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 517
    :cond_0
    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->setCookieMgrInited(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 521
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 522
    invoke-static {p0}, Lgbsdk/common/host/able;->N(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 525
    sget-boolean v1, Lcom/bytedance/ttnet/TTNetInit;->sMainThreadInitCookieEnabled:Z

    if-eqz v1, :cond_1

    .line 526
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/bytedance/ttnet/TTNetInit$6;

    invoke-direct {v2, p0, p1, p2}, Lcom/bytedance/ttnet/TTNetInit$6;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 533
    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v1, "error"

    .line 535
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 537
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 539
    :goto_0
    sget-object v1, Lcom/bytedance/ttnet/TTNetInit;->sITTNetDepend:Lcom/bytedance/ttnet/ITTNetDepend;

    if-eqz v1, :cond_2

    const-string v2, "async_init_cookie_manager_fail"

    .line 540
    invoke-interface {v1, v2, p1}, Lcom/bytedance/ttnet/ITTNetDepend;->monitorLogSend(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 542
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bytedance/ttnet/TTNetInit;->CookieInitFailedReport(Landroid/content/Context;Ljava/lang/String;)V

    .line 546
    :cond_3
    :goto_1
    invoke-static {}, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->gO()Lcom/bytedance/ttnet/clientkey/ClientKeyManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->F(Z)V

    return-void
.end method

.method public static varargs tryInitTTNet(Landroid/content/Context;Landroid/app/Application;Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiProcessHook;Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$MonitorProcessHook;Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CommandListener;Z[Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Application;",
            "Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiProcessHook<",
            "Lcom/bytedance/ttnet/http/HttpRequestInfo;",
            ">;",
            "Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$MonitorProcessHook<",
            "Lcom/bytedance/ttnet/http/HttpRequestInfo;",
            ">;",
            "Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CommandListener;",
            "Z[Z)V"
        }
    .end annotation

    .line 255
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->inst()Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->initTTNetStartTime:J

    if-eqz p0, :cond_a

    .line 259
    invoke-static {}, Lgbsdk/common/host/abti;->gX()V

    .line 260
    invoke-static {p0}, Lgbsdk/common/host/abwb;->aJ(Landroid/content/Context;)V

    .line 261
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->getLogLevel()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/retrofit2/RetrofitLogger;->setLogLevel(I)V

    .line 262
    invoke-static {p2}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->setApiProcessHook(Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiProcessHook;)V

    .line 263
    invoke-static {}, Lcom/bytedance/ttnet/http/HttpRequestInfo;->injectCreate()V

    .line 266
    invoke-static {}, Lcom/bytedance/keva/KevaBuilder;->getInstance()Lcom/bytedance/keva/KevaBuilder;

    move-result-object p2

    .line 267
    invoke-virtual {p2, p0}, Lcom/bytedance/keva/KevaBuilder;->setContext(Landroid/content/Context;)Lcom/bytedance/keva/KevaBuilder;

    const/4 p2, 0x0

    if-eqz p6, :cond_0

    .line 269
    array-length v0, p6

    if-lez v0, :cond_0

    aget-boolean p6, p6, p2

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    .line 270
    :goto_0
    invoke-static {p0}, Lgbsdk/common/host/able;->N(Landroid/content/Context;)Z

    move-result v0

    .line 271
    invoke-static {p0}, Lgbsdk/common/host/abtf;->aI(Landroid/content/Context;)Lgbsdk/common/host/abtf;

    if-eqz v0, :cond_1

    .line 273
    new-instance v1, Lcom/bytedance/ttnet/TTNetInit$1;

    const-string v2, "NetWork-AsyncInit"

    invoke-direct {v1, v2, p0, p5}, Lcom/bytedance/ttnet/TTNetInit$1;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 284
    invoke-virtual {v1}, Lcom/bytedance/ttnet/TTNetInit$1;->start()V

    .line 286
    :cond_1
    invoke-static {}, Lgbsdk/common/host/abwt;->hw()Lgbsdk/common/host/abwt;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lgbsdk/common/host/abwt;->d(Landroid/content/Context;Z)V

    .line 287
    invoke-static {}, Lgbsdk/common/host/abmf;->cv()Lgbsdk/common/host/abmf;

    move-result-object v1

    iput-object p0, v1, Lgbsdk/common/host/abmf;->mContext:Landroid/content/Context;

    .line 292
    invoke-static {p0}, Lcom/bytedance/ttnet/config/AppConfig;->getInstance(Landroid/content/Context;)Lcom/bytedance/ttnet/config/AppConfig;

    .line 295
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->inst()Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->initMSSdkFromTTNet(Landroid/content/Context;)V

    .line 297
    invoke-static {p0}, Lgbsdk/common/host/able;->isMessageProcess(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_3

    if-eqz p6, :cond_3

    .line 298
    :cond_2
    new-instance p6, Lcom/bytedance/ttnet/TTNetInit$2;

    const-string v1, "NetWork-AsyncInit-other"

    invoke-direct {p6, v1, p0, p5}, Lcom/bytedance/ttnet/TTNetInit$2;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 306
    invoke-virtual {p6}, Lcom/bytedance/ttnet/TTNetInit$2;->start()V

    :cond_3
    if-nez v0, :cond_4

    .line 310
    invoke-static {p0}, Lgbsdk/common/host/able;->O(Landroid/content/Context;)Z

    move-result p5

    if-eqz p5, :cond_5

    .line 311
    :cond_4
    invoke-static {p3}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->setMonitorProcessHook(Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$MonitorProcessHook;)V

    .line 317
    :cond_5
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->countDownInitCompletedLatch()V

    if-nez v0, :cond_6

    .line 319
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->inst()Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;

    move-result-object p0

    iput-boolean p2, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->isMainProcess:Z

    .line 320
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->inst()Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->initTTNetEndTime:J

    return-void

    .line 323
    :cond_6
    invoke-static {p4}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->setCommandListener(Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CommandListener;)V

    .line 324
    sget-object p2, Lgbsdk/common/host/abwq;->aKr:Lgbsdk/common/host/abwq$ac;

    if-nez p2, :cond_7

    .line 325
    new-instance p2, Lcom/bytedance/ttnet/TTNetInit$3;

    invoke-direct {p2, p0}, Lcom/bytedance/ttnet/TTNetInit$3;-><init>(Landroid/content/Context;)V

    sput-object p2, Lgbsdk/common/host/abwq;->aKr:Lgbsdk/common/host/abwq$ac;

    .line 351
    :cond_7
    sget-object p0, Lcom/bytedance/ttnet/TTNetInit;->sLifeCycleMonitor:Lgbsdk/common/host/abhd;

    invoke-static {}, Lgbsdk/common/host/abnv;->cO()Lgbsdk/common/host/abnv;

    move-result-object p2

    invoke-virtual {p0, p2}, Lgbsdk/common/host/abhd;->a(Lgbsdk/common/host/abhd$ab;)V

    if-eqz p1, :cond_8

    .line 353
    sget-object p0, Lcom/bytedance/ttnet/TTNetInit;->sLifeCycleMonitor:Lgbsdk/common/host/abhd;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 354
    new-instance p0, Lcom/bytedance/ttnet/TTNetInit$4;

    invoke-direct {p0}, Lcom/bytedance/ttnet/TTNetInit$4;-><init>()V

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 386
    :cond_8
    invoke-static {}, Lcom/bytedance/ttnet/HttpClient;->isCronetClientEnable()Z

    move-result p0

    if-nez p0, :cond_9

    const-string p0, "TTNetInit"

    const-string p1, "cronet disable"

    .line 387
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->notifyColdStartFinish()V

    .line 390
    :cond_9
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->inst()Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->initTTNetEndTime:J

    return-void

    .line 257
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "tryInitTTNet context is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static trySetDefaultUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 493
    invoke-static {p0}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->setDefaultUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method public static tryStartTTNetDetect([Ljava/lang/String;II)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 801
    array-length v1, p0

    if-lez v1, :cond_1

    if-lez p1, :cond_1

    const/16 v1, 0xb4

    if-gt p1, v1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    .line 806
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->inst(Landroid/content/Context;)Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->tryStartNetDetect([Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 809
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public static ttUrlDispatch(Ljava/lang/String;)Lgbsdk/common/host/abki;
    .locals 1

    .line 958
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 959
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->inst(Landroid/content/Context;)Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->ttUrlDispatch(Ljava/lang/String;)Lgbsdk/common/host/abki;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 961
    throw p0
.end method

.method public static urlDispatchEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static useCustomizedCookieStoreName()V
    .locals 0

    .line 593
    invoke-static {}, Lgbsdk/common/host/abiv;->useCustomizedCookieStoreName()V

    return-void
.end method
