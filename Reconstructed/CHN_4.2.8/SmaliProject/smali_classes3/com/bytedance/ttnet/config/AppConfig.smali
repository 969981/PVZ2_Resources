.class public Lcom/bytedance/ttnet/config/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.java"

# interfaces
.implements Lcom/bytedance/common/utility/collection/WeakHandler$IHandler;
.implements Lcom/bytedance/frameworks/baselib/network/connectionclass/ConnectionClassManager$ac;
.implements Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiRequestInterceptor;
.implements Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CdnConnectionQualitySamplerHook;
.implements Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ConnectionQualitySamplerHook;
.implements Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CookieShareInterceptor;
.implements Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ab;
.implements Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ac;
.implements Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ad;
.implements Lcom/bytedance/frameworks/core/encrypt/RequestEncryptUtils$IEncryptConfig;
.implements Lcom/bytedance/ttnet/HttpClient$ac;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttnet/config/AppConfig$ab;
    }
.end annotation


# static fields
.field static final CONTINUOUS_FAILURES_TO_CLOSE_CRONET:I = 0x5

.field static final CRONET_TRY_REBOOT_HOURS:I = 0x1

.field private static final INVALID_VALUE:I = -0x80000000

.field static final KEY_ADD_DEVICE_FINGERPRINT_OPEN:Ljava/lang/String; = "add_device_fingerprint_open"

.field static final KEY_ADD_SS_QUERIES_HEADER_OPEN:Ljava/lang/String; = "add_ss_queries_header_open"

.field static final KEY_ADD_SS_QUERIES_OPEN:Ljava/lang/String; = "add_ss_queries_open"

.field static final KEY_ADD_SS_QUERIES_PLAINTEXT_OPEN:Ljava/lang/String; = "add_ss_queries_plaintext_open"

.field static final KEY_API_HTTP_HOST_LIST:Ljava/lang/String; = "api_http_host_list"

.field static final KEY_CDN_SAMPLE_BAND_WIDTH_ENABLED:Ljava/lang/String; = "cdn_sample_band_width_enabled"

.field static final KEY_CHROMIUM_BOOT_FAILURES:Ljava/lang/String; = "chromium_boot_failures"

.field static final KEY_CHROMIUM_BOOT_FAILURES_TIMESTAMP:Ljava/lang/String; = "chromium_boot_failures_timestamp"

.field static final KEY_COLLECT_RECENT_PAGE_INFO_ENABLE:Ljava/lang/String; = "collect_recent_page_info_enable"

.field static final KEY_COMMON_PARAMS_CONFIG:Ljava/lang/String; = "add_common_params"

.field static final KEY_CONCURRENT_REQUEST_CONFIG:Ljava/lang/String; = "concurrent_request_config"

.field static final KEY_CRONET_SO_PATH:Ljava/lang/String; = "cronet_so_path"

.field static final KEY_CRONET_VERSION:Ljava/lang/String; = "cronet_version"

.field static final KEY_DETECT_NATIVE_PAGE:Ljava/lang/String; = "detect_native_page"

.field static final KEY_DETECT_OPEN:Ljava/lang/String; = "detect_open"

.field static final KEY_DISABLE_FRAMED_TRANSPORT:Ljava/lang/String; = "disable_framed_transport"

.field static final KEY_DYNAMIC_ADJUST_THREADPOOL_SIZE_OPEN:Ljava/lang/String; = "dynamic_adjust_threadpool_size_open"

.field static final KEY_ENCRYPT_SWITCH:Ljava/lang/String; = "android_log_encrypt_switch"

.field static final KEY_HTTP_DNS_ENABLED:Ljava/lang/String; = "http_dns_enabled"

.field static final KEY_HTTP_SHOW_HIJACK:Ljava/lang/String; = "http_show_hijack"

.field static final KEY_HTTP_VERIFY_SIGN:Ljava/lang/String; = "http_verify_sign"

.field static final KEY_IMAGE_TTNET_ENABLED:Ljava/lang/String; = "image_ttnet_enabled"

.field static final KEY_OK_HTTP3_OPEN:Ljava/lang/String; = "ok_http3_open"

.field static final KEY_OK_HTTP_OPEN:Ljava/lang/String; = "ok_http_open"

.field static final KEY_SAMPLE_BAND_WIDTH_ENABLED:Ljava/lang/String; = "sample_band_width_enabled"

.field static final KEY_SHARE_COOKIE_HOST_LIST:Ljava/lang/String; = "share_cookie_host_list"

.field static final KEY_TNC_HOST_ARRAYS:Ljava/lang/String; = "send_tnc_host_arrays"

.field static final KEY_TNC_UPDATE_INTERVAL:Ljava/lang/String; = "tnc_update_interval"

.field static final KEY_USE_HTTP_DNS:Ljava/lang/String; = "use_http_dns"

.field static final KEY_USE_HTTP_DNS_REFETCH_ON_EXPIRE:Ljava/lang/String; = "use_http_dns_refetch_on_expire"

.field static final MSG_CONFIG_ERROR:I = 0x66

.field static final MSG_CONFIG_OK:I = 0x65

.field static final MSG_TNC_COLDSTART_DELAY:I = 0x68

.field static final MSG_TNC_POLLING:I = 0x67

.field static final SP_SS_APP_CONFIG:Ljava/lang/String; = "ss_app_config"

.field private static final SYNC_MAIN_PROCESS_CONFIG_ACTION:Ljava/lang/String; = "com.bytedance.ttnet.config.appconfig.SYNC_MAIN_PROCESS_CONFIG"

.field static final TAG:Ljava/lang/String; = "AppConfig"

.field private static mInstance:Lcom/bytedance/ttnet/config/AppConfig; = null

.field private static sBlockModelList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sCronetUnsupportedModel:Z = false

.field public static sDisableFallbackReasonBoot:Z = false

.field public static sForceNotUseCronet:Z = false

.field private static sForceNotUseCronetHttpDns:Z = false

.field public static sPackageName:Ljava/lang/String; = null

.field private static sTestDeviceFingerPrint:Z = false

.field private static sTestSsQueries:Z = false

.field private static sUseHttpDns:I = -0x1

.field private static sUseHttpDnsRefetchOnExpire:I = -0x1


# instance fields
.field private mABTest:Lorg/json/JSONObject;

.field private mAddDeviceFingerprintOpen:I

.field private mAddSsQueriesHeaderOpen:I

.field private mAddSsQueriesOpen:I

.field private mAddSsQueriesPlaintextOpen:I

.field private mApiHttpHostList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCdnSampleBandWidthEnabled:I

.field private volatile mChromiumBootFailures:I

.field private mChromiumBootFailuresTimestamp:J

.field private mCollectRecentPageInfoEnable:I

.field private mConfigUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mContext:Landroid/content/Context;

.field private mCronetSoPath:Ljava/lang/String;

.field private mCronetVersion:I

.field private mDetectNativePage:I

.field private mDetectOpen:I

.field private mDynamicAdjustThreadPoolSizeOpen:I

.field private volatile mEncryptSwitch:I

.field private volatile mEncryptSwitchFromSP:Z

.field private mFrontierUrls:Ljava/lang/String;

.field final mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

.field private mHttpDnsEnabled:I

.field private mImageTtnetEnabled:I

.field private final mIsMainProcess:Z

.field private mLastRefreshTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile mLocalLoaded:Z

.field private final mLock:Ljava/lang/Object;

.field private mOkHttp3Open:I

.field private mOkHttpOpen:I

.field private mSampleBandWidthEnabled:I

.field private mShareCookieHostList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTncEtag:Ljava/lang/String;

.field private mTncHostArrays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTncUpdateInterval:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 705
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bytedance/ttnet/config/AppConfig;->sBlockModelList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 706
    sput-boolean v1, Lcom/bytedance/ttnet/config/AppConfig;->sCronetUnsupportedModel:Z

    const-string v2, "MI PAD 2"

    .line 709
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    sget-object v0, Lcom/bytedance/ttnet/config/AppConfig;->sBlockModelList:Ljava/util/ArrayList;

    const-string v2, "YT3-X90L"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    sget-object v0, Lcom/bytedance/ttnet/config/AppConfig;->sBlockModelList:Ljava/util/ArrayList;

    const-string v2, "YT3-X90F"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    sget-object v0, Lcom/bytedance/ttnet/config/AppConfig;->sBlockModelList:Ljava/util/ArrayList;

    const-string v2, "GT-810"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    sput-boolean v1, Lcom/bytedance/ttnet/config/AppConfig;->sForceNotUseCronetHttpDns:Z

    .line 844
    sput-boolean v1, Lcom/bytedance/ttnet/config/AppConfig;->sTestSsQueries:Z

    .line 874
    sput-boolean v1, Lcom/bytedance/ttnet/config/AppConfig;->sTestDeviceFingerPrint:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 5

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mLastRefreshTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mConfigUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mLock:Ljava/lang/Object;

    .line 134
    iput-boolean v3, p0, Lcom/bytedance/ttnet/config/AppConfig;->mLocalLoaded:Z

    const-string v0, ""

    .line 136
    iput-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mFrontierUrls:Ljava/lang/String;

    .line 137
    iput v3, p0, Lcom/bytedance/ttnet/config/AppConfig;->mOkHttpOpen:I

    .line 138
    iput v3, p0, Lcom/bytedance/ttnet/config/AppConfig;->mOkHttp3Open:I

    const/4 v4, -0x1

    .line 139
    iput v4, p0, Lcom/bytedance/ttnet/config/AppConfig;->mChromiumBootFailures:I

    .line 140
    iput-wide v1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mChromiumBootFailuresTimestamp:J

    .line 141
    iput v3, p0, Lcom/bytedance/ttnet/config/AppConfig;->mHttpDnsEnabled:I

    .line 142
    iput v3, p0, Lcom/bytedance/ttnet/config/AppConfig;->mDetectOpen:I

    const/4 v1, 0x1

    .line 143
    iput v1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mDetectNativePage:I

    .line 144
    iput v1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mCollectRecentPageInfoEnable:I

    .line 145
    iput v3, p0, Lcom/bytedance/ttnet/config/AppConfig;->mAddSsQueriesOpen:I

    .line 146
    iput v3, p0, Lcom/bytedance/ttnet/config/AppConfig;->mAddSsQueriesHeaderOpen:I

    .line 147
    iput v1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mAddSsQueriesPlaintextOpen:I

    .line 148
    iput v1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mImageTtnetEnabled:I

    .line 149
    iput v1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mSampleBandWidthEnabled:I

    .line 150
    iput v1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mCdnSampleBandWidthEnabled:I

    .line 151
    iput v1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mAddDeviceFingerprintOpen:I

    .line 152
    iput v1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mDynamicAdjustThreadPoolSizeOpen:I

    .line 153
    iput-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mCronetSoPath:Ljava/lang/String;

    .line 154
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mShareCookieHostList:Ljava/util/List;

    .line 155
    iput v3, p0, Lcom/bytedance/ttnet/config/AppConfig;->mCronetVersion:I

    .line 156
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mApiHttpHostList:Ljava/util/List;

    .line 161
    iput-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mTncEtag:Ljava/lang/String;

    .line 163
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x2a30

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mTncUpdateInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 164
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mTncHostArrays:Ljava/util/List;

    .line 167
    new-instance v0, Lcom/bytedance/common/utility/collection/WeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/common/utility/collection/WeakHandler;-><init>(Landroid/os/Looper;Lcom/bytedance/common/utility/collection/WeakHandler$IHandler;)V

    iput-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    .line 262
    iput-object p1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mContext:Landroid/content/Context;

    .line 263
    iput-boolean p2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mIsMainProcess:Z

    return-void
.end method

.method private getEncryptSwitchFromSP()V
    .locals 3

    .line 1307
    iget-boolean v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mEncryptSwitchFromSP:Z

    if-eqz v0, :cond_0

    return-void

    .line 1309
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mContext:Landroid/content/Context;

    const-string v1, "ss_app_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "android_log_encrypt_switch"

    .line 1310
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mEncryptSwitch:I

    const/4 v0, 0x1

    .line 1311
    iput-boolean v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mEncryptSwitchFromSP:Z

    return-void
.end method

.method public static getHttpVerifySign()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static getHttpsRetryHttp()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static getHttpsShowHijack()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static getHttpsToHttp()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/bytedance/ttnet/config/AppConfig;
    .locals 4

    .line 186
    const-class v0, Lcom/bytedance/ttnet/config/AppConfig;

    monitor-enter v0

    .line 187
    :try_start_0
    sget-object v1, Lcom/bytedance/ttnet/config/AppConfig;->mInstance:Lcom/bytedance/ttnet/config/AppConfig;

    if-nez v1, :cond_3

    .line 188
    invoke-static {p0}, Lgbsdk/common/host/able;->N(Landroid/content/Context;)Z

    move-result v1

    .line 189
    new-instance v2, Lcom/bytedance/ttnet/config/AppConfig;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/bytedance/ttnet/config/AppConfig;-><init>(Landroid/content/Context;Z)V

    sput-object v2, Lcom/bytedance/ttnet/config/AppConfig;->mInstance:Lcom/bytedance/ttnet/config/AppConfig;

    .line 190
    sget-object v2, Lcom/bytedance/ttnet/config/AppConfig;->sBlockModelList:Ljava/util/ArrayList;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 191
    sput-boolean v2, Lcom/bytedance/ttnet/config/AppConfig;->sCronetUnsupportedModel:Z

    .line 193
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bytedance/ttnet/config/AppConfig;->sPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 195
    sget-object v1, Lcom/bytedance/ttnet/config/AppConfig;->mInstance:Lcom/bytedance/ttnet/config/AppConfig;

    invoke-static {v1}, Lcom/bytedance/frameworks/core/encrypt/RequestEncryptUtils;->setEncryptConfig(Lcom/bytedance/frameworks/core/encrypt/RequestEncryptUtils$IEncryptConfig;)V

    .line 196
    sget-object v1, Lcom/bytedance/ttnet/config/AppConfig;->mInstance:Lcom/bytedance/ttnet/config/AppConfig;

    invoke-static {v1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->setCronetHttpDnsConfig(Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ac;)V

    .line 197
    sget-object v1, Lcom/bytedance/ttnet/config/AppConfig;->mInstance:Lcom/bytedance/ttnet/config/AppConfig;

    invoke-static {v1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->setCronetBootFailureChecker(Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ab;)V

    .line 198
    sget-object v1, Lcom/bytedance/ttnet/config/AppConfig;->mInstance:Lcom/bytedance/ttnet/config/AppConfig;

    invoke-static {v1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->setCronetTncInfoGet(Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ad;)V

    .line 199
    sget-object v1, Lcom/bytedance/ttnet/config/AppConfig;->mInstance:Lcom/bytedance/ttnet/config/AppConfig;

    invoke-static {v1}, Lcom/bytedance/ttnet/HttpClient;->setHttpClientConfig(Lcom/bytedance/ttnet/HttpClient$ac;)V

    .line 200
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/connectionclass/ConnectionClassManager;->getInstance()Lcom/bytedance/frameworks/baselib/network/connectionclass/ConnectionClassManager;

    move-result-object v1

    sget-object v2, Lcom/bytedance/ttnet/config/AppConfig;->mInstance:Lcom/bytedance/ttnet/config/AppConfig;

    invoke-virtual {v1, v2}, Lcom/bytedance/frameworks/baselib/network/connectionclass/ConnectionClassManager;->register(Lcom/bytedance/frameworks/baselib/network/connectionclass/ConnectionClassManager$ac;)Lcom/bytedance/frameworks/baselib/network/connectionclass/ConnectionQuality;

    .line 201
    sget-object v1, Lcom/bytedance/ttnet/config/AppConfig;->mInstance:Lcom/bytedance/ttnet/config/AppConfig;

    invoke-static {v1}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->setConnectionQualitySamplerHook(Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ConnectionQualitySamplerHook;)V

    .line 202
    sget-object v1, Lcom/bytedance/ttnet/config/AppConfig;->mInstance:Lcom/bytedance/ttnet/config/AppConfig;

    invoke-static {v1}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->setCdnConnectionQualitySamplerHook(Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CdnConnectionQualitySamplerHook;)V

    .line 203
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getCookieShareInterceptor()Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CookieShareInterceptor;

    move-result-object v1

    if-nez v1, :cond_2

    .line 204
    sget-object v1, Lcom/bytedance/ttnet/config/AppConfig;->mInstance:Lcom/bytedance/ttnet/config/AppConfig;

    invoke-static {v1}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->setCookieShareInterceptor(Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CookieShareInterceptor;)V

    goto :goto_1

    .line 208
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.bytedance.ttnet.config.appconfig.SYNC_MAIN_PROCESS_CONFIG"

    .line 209
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 215
    :try_start_1
    new-instance v2, Lcom/bytedance/ttnet/config/AppConfig$ab;

    invoke-direct {v2}, Lcom/bytedance/ttnet/config/AppConfig$ab;-><init>()V

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 217
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 221
    :goto_0
    invoke-static {}, Lgbsdk/common/host/abtc;->ha()Lgbsdk/common/host/abtc;

    move-result-object v1

    .line 222
    invoke-static {v1}, Lcom/bytedance/frameworks/core/encrypt/RequestEncryptUtils;->setEncryptConfig(Lcom/bytedance/frameworks/core/encrypt/RequestEncryptUtils$IEncryptConfig;)V

    .line 223
    invoke-static {v1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->setCronetHttpDnsConfig(Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ac;)V

    .line 224
    invoke-static {v1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->setCronetBootFailureChecker(Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient$ab;)V

    .line 225
    invoke-static {v1}, Lcom/bytedance/ttnet/HttpClient;->setHttpClientConfig(Lcom/bytedance/ttnet/HttpClient$ac;)V

    .line 226
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getCookieShareInterceptor()Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CookieShareInterceptor;

    move-result-object v2

    if-nez v2, :cond_2

    .line 227
    invoke-static {v1}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->setCookieShareInterceptor(Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CookieShareInterceptor;)V

    .line 230
    :cond_2
    :goto_1
    sget-object v1, Lcom/bytedance/ttnet/config/AppConfig;->mInstance:Lcom/bytedance/ttnet/config/AppConfig;

    invoke-static {v1}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->setApiRequestInterceptor(Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$ApiRequestInterceptor;)V

    .line 231
    invoke-static {p0}, Lgbsdk/common/host/abtj;->aH(Landroid/content/Context;)Lgbsdk/common/host/abtj;

    .line 233
    :cond_3
    sget-object p0, Lcom/bytedance/ttnet/config/AppConfig;->mInstance:Lcom/bytedance/ttnet/config/AppConfig;

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    .line 234
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static isCronetUnsupportedABI()Z
    .locals 5

    const/4 v0, 0x0

    .line 749
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 750
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    goto :goto_0

    .line 752
    :cond_0
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 755
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    const-string v2, "x86"

    .line 759
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "x86_64"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 760
    :cond_2
    invoke-static {}, Lgbsdk/common/host/abwb;->hm()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "AppConfig"

    if-eqz v2, :cond_3

    :try_start_1
    const-string v1, "x86 support"

    .line 761
    invoke-static {v3, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 764
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cronet unsupported CPU arch: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 765
    sput v1, Lgbsdk/common/host/abjb;->nK:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 770
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return v0
.end method

.method private isDidEmpty()Z
    .locals 6

    const-string v0, "device_id"

    .line 943
    invoke-virtual {p0}, Lcom/bytedance/ttnet/config/AppConfig;->getConfigServers()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/ttnet/config/AppConfig;->getConfigServers()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 946
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttnet/config/AppConfig;->getConfigServers()[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    .line 947
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    .line 950
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/get_domains/v5/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 951
    invoke-static {v1, v2}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->addCommonParams(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 952
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 955
    :cond_2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 957
    :try_start_0
    invoke-static {v4, v1}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlUtils;->parseUrlWithValueList(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    .line 958
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    .line 961
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_4

    return v2

    .line 965
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "0"

    .line 966
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_5

    return v3

    :catch_0
    :cond_6
    :goto_0
    return v2
.end method

.method private reportShareCookieLog(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "return"

    .line 1035
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "CurrentShareCookieHostList"

    .line 1036
    iget-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mShareCookieHostList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1040
    :catch_0
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object p2

    .line 1041
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "handleResponse"

    const-string v2, "shareCookieHostList"

    .line 1040
    invoke-interface {p2, v0, v1, v2, p1}, Lcom/bytedance/ttnet/ITTNetDepend;->mobOnEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static setTestFingerPrint(Z)V
    .locals 0

    .line 877
    sput-boolean p0, Lcom/bytedance/ttnet/config/AppConfig;->sTestDeviceFingerPrint:Z

    return-void
.end method

.method public static setTestQuery(Z)V
    .locals 0

    .line 847
    sput-boolean p0, Lcom/bytedance/ttnet/config/AppConfig;->sTestSsQueries:Z

    return-void
.end method

.method private tryRefreshConfigInternal(Lgbsdk/common/host/abwt$ab;Z)V
    .locals 3

    .line 278
    iget-boolean v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ttnet/config/AppConfig;->doRefresh(Lgbsdk/common/host/abwt$ab;Z)Z

    goto :goto_0

    .line 282
    :cond_0
    iget-object p1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mLastRefreshTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 284
    :try_start_0
    new-instance p1, Lcom/bytedance/ttnet/config/AppConfig$1;

    const-string p2, "LoadDomainConfig4Other-Thread"

    invoke-direct {p1, p0, p2}, Lcom/bytedance/ttnet/config/AppConfig$1;-><init>(Lcom/bytedance/ttnet/config/AppConfig;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p1}, Lcom/bytedance/ttnet/config/AppConfig$1;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public cdnShouldSampling(Ljava/lang/String;)Z
    .locals 2

    .line 563
    invoke-static {p1}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 566
    :cond_0
    iget v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mCdnSampleBandWidthEnabled:I

    if-gtz v0, :cond_1

    return v1

    .line 571
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/bytedance/frameworks/baselib/network/http/util/URIUtils;->safeCreateUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    .line 575
    :cond_2
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 576
    invoke-static {p1}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 579
    :cond_3
    invoke-static {}, Lgbsdk/common/host/abtr;->getCdnHostSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 584
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return v1
.end method

.method public doRefresh(Lgbsdk/common/host/abwt$ab;Z)Z
    .locals 4

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doRefresh: updating state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mConfigUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TNCManager"

    invoke-static {v1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mConfigUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "doRefresh, already running"

    .line 331
    invoke-static {v1, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 335
    :cond_0
    new-instance v0, Lcom/bytedance/ttnet/config/AppConfig$2;

    const-string v1, "AppConfigThread"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/bytedance/ttnet/config/AppConfig$2;-><init>(Lcom/bytedance/ttnet/config/AppConfig;Ljava/lang/String;Lgbsdk/common/host/abwt$ab;Z)V

    .line 340
    invoke-virtual {v0}, Lcom/bytedance/ttnet/config/AppConfig$2;->start()V

    return v3
.end method

.method public enableNewCronetBootFallback(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public filterUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 590
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 591
    invoke-virtual {p0, p1}, Lcom/bytedance/ttnet/config/AppConfig;->filterUrlOnUIThread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 593
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/ttnet/config/AppConfig;->filterUrl(Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public filterUrl(Ljava/lang/String;Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 599
    invoke-static {p1}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 603
    :cond_0
    :try_start_0
    iget-boolean p2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mIsMainProcess:Z

    if-eqz p2, :cond_1

    .line 604
    invoke-virtual {p0}, Lcom/bytedance/ttnet/config/AppConfig;->tryLoadLocalConfig()V

    goto :goto_0

    .line 606
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/ttnet/config/AppConfig;->tryLoadDomainConfig4OtherProcess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 612
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method public filterUrlOnUIThread(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 623
    invoke-static {p1}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 626
    :cond_0
    :try_start_0
    invoke-static {}, Lgbsdk/common/host/abwt;->hw()Lgbsdk/common/host/abwt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abwt;->aG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 629
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method public getABTest()Lorg/json/JSONObject;
    .locals 1

    .line 1430
    iget-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mABTest:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getConfigServers()[Ljava/lang/String;
    .locals 2

    .line 977
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ttnet/ITTNetDepend;->getConfigServers()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 978
    array-length v1, v0

    if-gtz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public getCronetSoPath()Ljava/lang/String;
    .locals 1

    .line 1320
    iget-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mCronetSoPath:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getCronetVersion()I
    .locals 3

    monitor-enter p0

    .line 639
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mLocalLoaded:Z

    if-eqz v0, :cond_0

    .line 640
    iget v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mCronetVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 642
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mContext:Landroid/content/Context;

    const-string v1, "ss_app_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cronet_version"

    .line 643
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEncryptSwitch()Z
    .locals 1

    .line 1302
    invoke-direct {p0}, Lcom/bytedance/ttnet/config/AppConfig;->getEncryptSwitchFromSP()V

    .line 1303
    iget v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mEncryptSwitch:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getShareCookie(Landroid/webkit/CookieManager;Lgbsdk/common/host/abjz;Ljava/net/URI;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/CookieManager;",
            "Lgbsdk/common/host/abjz;",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 1338
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 1343
    :goto_0
    invoke-static {v1}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mShareCookieHostList:Ljava/util/List;

    invoke-static {v1, v2}, Lgbsdk/common/host/abwk;->g(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 1348
    :cond_1
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/ttnet/ITTNetDepend;->getShareCookieMainDomain()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 1351
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "://"

    if-eqz p1, :cond_3

    .line 1353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1354
    invoke-virtual {p3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v3

    invoke-interface {v3}, Lcom/bytedance/ttnet/ITTNetDepend;->getShareCookieMainDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1353
    invoke-virtual {p1, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1355
    invoke-static {p1}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1356
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1360
    :cond_3
    invoke-static {v0}, Lcom/bytedance/common/utility/Lists;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1362
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1363
    invoke-virtual {p3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object p3

    invoke-interface {p3}, Lcom/bytedance/ttnet/ITTNetDepend;->getShareCookieMainDomain()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1362
    invoke-virtual {p2, p1, p3}, Lgbsdk/common/host/abjz;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1365
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "Cookie"

    .line 1366
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1370
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return-object v0
.end method

.method public getShareCookieHostList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1412
    iget-object v1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mShareCookieHostList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1413
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1414
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getShareCookieHostList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1378
    iget-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mShareCookieHostList:Ljava/util/List;

    invoke-static {p1, v0}, Lgbsdk/common/host/abwk;->g(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1379
    iget-object p1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mShareCookieHostList:Ljava/util/List;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTncHostArrays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1434
    iget-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mTncHostArrays:Ljava/util/List;

    return-object v0
.end method

.method public handleConfigUpdate(Ljava/lang/String;)V
    .locals 3

    .line 986
    invoke-static {p1}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 990
    :cond_0
    :try_start_0
    sget-object v0, Lgbsdk/common/host/abwt$ab;->aJN:Lgbsdk/common/host/abwt$ab;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/bytedance/ttnet/config/AppConfig;->handleResponse(Ljava/lang/Object;Lgbsdk/common/host/abwt$ab;J)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 993
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x66

    if-eqz p1, :cond_1

    const/16 v0, 0x65

    .line 1000
    :cond_1
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "from"

    const-string v2, "cronet"

    .line 1001
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1002
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p1}, Lcom/bytedance/ttnet/ITTNetDepend;->onAppConfigUpdated(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1005
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1007
    :goto_1
    iget-object p1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    invoke-virtual {p1, v0}, Lcom/bytedance/common/utility/collection/WeakHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 4

    .line 349
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const-string v1, "TNCManager"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 370
    :pswitch_0
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "did is empty, delay request tnc"

    .line 371
    invoke-static {v1, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_0
    sget-object p1, Lgbsdk/common/host/abwt$ab;->aJH:Lgbsdk/common/host/abwt$ab;

    invoke-virtual {p0, p1}, Lcom/bytedance/ttnet/config/AppConfig;->tryRefreshConfig(Lgbsdk/common/host/abwt$ab;)V

    goto :goto_0

    .line 364
    :pswitch_1
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "do tnc polling"

    .line 365
    invoke-static {v1, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_1
    sget-object p1, Lgbsdk/common/host/abwt$ab;->aJJ:Lgbsdk/common/host/abwt$ab;

    invoke-virtual {p0, p1}, Lcom/bytedance/ttnet/config/AppConfig;->tryRefreshConfig(Lgbsdk/common/host/abwt$ab;)V

    goto :goto_0

    .line 358
    :pswitch_2
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "doRefresh, error"

    .line 359
    invoke-static {v1, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_2
    iget-object p1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mConfigUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 351
    :pswitch_3
    iget-object p1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mLastRefreshTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 352
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "doRefresh, succ"

    .line 353
    invoke-static {v1, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_3
    iget-object p1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mConfigUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleResponse(Ljava/lang/Object;Lgbsdk/common/host/abwt$ab;J)Z
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1047
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1048
    instance-of v3, v0, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 1049
    check-cast v0, Ljava/lang/String;

    .line 1050
    invoke-static {v0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "empty response."

    .line 1051
    invoke-direct {v1, v2, v0}, Lcom/bytedance/ttnet/config/AppConfig;->reportShareCookieLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    return v4

    .line 1055
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1056
    :cond_1
    instance-of v3, v0, Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    .line 1057
    move-object v3, v0

    check-cast v3, Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    const-string v0, "object is null."

    .line 1060
    invoke-direct {v1, v2, v0}, Lcom/bytedance/ttnet/config/AppConfig;->reportShareCookieLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    return v4

    :cond_3
    const-string v0, "data"

    .line 1063
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1064
    iget-object v0, v1, Lcom/bytedance/ttnet/config/AppConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abtf;->aI(Landroid/content/Context;)Lgbsdk/common/host/abtf;

    move-result-object v0

    invoke-virtual {v0, v6}, Lgbsdk/common/host/abtf;->K(Lorg/json/JSONObject;)V

    const-string v0, "use_http_dns"

    const/4 v3, -0x1

    .line 1065
    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/bytedance/ttnet/config/AppConfig;->sUseHttpDns:I

    const-string v0, "collect_recent_page_info_enable"

    .line 1066
    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/bytedance/ttnet/config/AppConfig;->sUseHttpDnsRefetchOnExpire:I

    const-string v0, "ok_http_open"

    .line 1067
    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v0, "ok_http3_open"

    .line 1068
    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v0, "cronet_version"

    .line 1069
    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v0, "http_dns_enabled"

    .line 1070
    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v0, "detect_open"

    .line 1071
    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v0, "detect_native_page"

    const/4 v12, 0x1

    .line 1072
    invoke-virtual {v6, v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string v0, "collect_recent_page_info_enable"

    .line 1073
    invoke-virtual {v6, v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    const-string v0, "add_ss_queries_open"

    .line 1074
    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const-string v0, "add_ss_queries_header_open"

    .line 1075
    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    const-string v0, "add_ss_queries_plaintext_open"

    .line 1076
    invoke-virtual {v6, v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "add_device_fingerprint_open"

    .line 1077
    invoke-virtual {v6, v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "image_ttnet_enabled"

    move-object/from16 v16, v2

    .line 1078
    invoke-virtual {v6, v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "sample_band_width_enabled"

    .line 1079
    invoke-virtual {v6, v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    move/from16 v17, v0

    const-string v0, "cdn_sample_band_width_enabled"

    .line 1080
    invoke-virtual {v6, v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    move/from16 v18, v0

    const-string v0, "dynamic_adjust_threadpool_size_open"

    move/from16 v19, v2

    .line 1081
    invoke-virtual {v6, v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "http_show_hijack"

    move/from16 v20, v2

    .line 1082
    invoke-virtual {v6, v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "http_verify_sign"

    move/from16 v21, v2

    .line 1083
    invoke-virtual {v6, v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "tnc_update_interval"

    const/4 v12, -0x1

    .line 1084
    invoke-virtual {v6, v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_4

    .line 1086
    iget-object v12, v1, Lcom/bytedance/ttnet/config/AppConfig;->mTncUpdateInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_4
    const-string v0, "send_tnc_host_arrays"

    .line 1088
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1090
    iget-object v12, v1, Lcom/bytedance/ttnet/config/AppConfig;->mTncHostArrays:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    move/from16 p1, v2

    const/4 v12, 0x0

    .line 1091
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v12, v2, :cond_7

    .line 1092
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1093
    iget-object v2, v1, Lcom/bytedance/ttnet/config/AppConfig;->mTncHostArrays:Ljava/util/List;

    move-object/from16 v22, v6

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object/from16 v22, v6

    :goto_2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, v22

    goto :goto_1

    :cond_6
    move/from16 p1, v2

    :cond_7
    move-object/from16 v22, v6

    .line 1098
    monitor-enter p0

    .line 1099
    :try_start_0
    iput v5, v1, Lcom/bytedance/ttnet/config/AppConfig;->mOkHttpOpen:I

    .line 1100
    iput v7, v1, Lcom/bytedance/ttnet/config/AppConfig;->mOkHttp3Open:I

    .line 1101
    iput v8, v1, Lcom/bytedance/ttnet/config/AppConfig;->mCronetVersion:I

    .line 1102
    iput v9, v1, Lcom/bytedance/ttnet/config/AppConfig;->mHttpDnsEnabled:I

    .line 1103
    iput v10, v1, Lcom/bytedance/ttnet/config/AppConfig;->mDetectOpen:I

    .line 1104
    iput v11, v1, Lcom/bytedance/ttnet/config/AppConfig;->mDetectNativePage:I

    .line 1105
    iput v13, v1, Lcom/bytedance/ttnet/config/AppConfig;->mCollectRecentPageInfoEnable:I

    .line 1106
    iput v14, v1, Lcom/bytedance/ttnet/config/AppConfig;->mAddSsQueriesOpen:I

    .line 1107
    iput v15, v1, Lcom/bytedance/ttnet/config/AppConfig;->mAddSsQueriesHeaderOpen:I

    .line 1108
    iput v4, v1, Lcom/bytedance/ttnet/config/AppConfig;->mAddSsQueriesPlaintextOpen:I

    .line 1109
    iput v3, v1, Lcom/bytedance/ttnet/config/AppConfig;->mAddDeviceFingerprintOpen:I

    move/from16 v2, v20

    .line 1110
    iput v2, v1, Lcom/bytedance/ttnet/config/AppConfig;->mDynamicAdjustThreadPoolSizeOpen:I

    move/from16 v6, v19

    .line 1111
    iput v6, v1, Lcom/bytedance/ttnet/config/AppConfig;->mImageTtnetEnabled:I

    move/from16 v0, v17

    .line 1112
    iput v0, v1, Lcom/bytedance/ttnet/config/AppConfig;->mSampleBandWidthEnabled:I

    move/from16 v0, v18

    .line 1113
    iput v0, v1, Lcom/bytedance/ttnet/config/AppConfig;->mCdnSampleBandWidthEnabled:I

    .line 1114
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-lez v2, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    .line 1115
    :goto_3
    invoke-static {v0}, Lgbsdk/common/host/abjr;->l(Z)V

    const-string v0, "enable_req_ticket"

    move/from16 v19, v6

    move-object/from16 v12, v22

    const/4 v6, 0x1

    .line 1116
    invoke-virtual {v12, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    sput-boolean v0, Lgbsdk/common/host/abwq;->aJW:Z

    .line 1117
    invoke-static {v12}, Lgbsdk/common/host/abwo;->N(Lorg/json/JSONObject;)Lgbsdk/common/host/abwo$ab;

    move-result-object v6

    .line 1119
    iget v0, v1, Lcom/bytedance/ttnet/config/AppConfig;->mAddSsQueriesOpen:I

    if-gtz v0, :cond_a

    iget v0, v1, Lcom/bytedance/ttnet/config/AppConfig;->mAddSsQueriesHeaderOpen:I

    if-lez v0, :cond_b

    :cond_a
    const/16 v17, 0x1

    .line 1120
    sput-boolean v17, Lgbsdk/common/host/abws;->aIT:Z

    .line 1122
    :cond_b
    invoke-static {v12}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->onServerConfigUpdate(Lorg/json/JSONObject;)V

    .line 1123
    invoke-static {v12}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->onServerConfigUpdate(Lorg/json/JSONObject;)V

    const-string v0, "frontier_urls"

    move/from16 v20, v2

    const-string v2, ""

    .line 1125
    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "share_cookie_host_list"

    move-object/from16 v17, v2

    const-string v2, ""

    .line 1126
    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1127
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/bytedance/ttnet/ITTNetDepend;->onShareCookieConfigUpdated(Ljava/lang/String;)V

    const-string v0, "api_http_host_list"

    move-object/from16 v18, v2

    const-string v2, ""

    .line 1128
    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "concurrent_request_config"

    move-object/from16 v22, v2

    const-string v2, ""

    .line 1131
    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1132
    invoke-static {}, Lgbsdk/common/host/abjk;->bE()Lgbsdk/common/host/abjk;

    move-result-object v0

    invoke-virtual {v0, v2}, Lgbsdk/common/host/abjk;->onNetConfigChanged(Ljava/lang/String;)V

    const-string v0, "add_common_params"

    move-object/from16 v23, v2

    const-string v2, ""

    .line 1134
    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1135
    invoke-static {}, Lgbsdk/common/host/abjp;->bx()Lgbsdk/common/host/abjp;

    move-result-object v0

    iget-object v0, v0, Lgbsdk/common/host/abjp;->hU:Lgbsdk/common/host/abjm;

    if-eqz v0, :cond_c

    .line 1137
    invoke-virtual {v0, v2}, Lgbsdk/common/host/abjm;->onNetConfigChanged(Ljava/lang/String;)V

    :cond_c
    const-string v0, "L0_params"

    move-object/from16 v24, v2

    const-string v2, ""

    .line 1141
    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1142
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;->inst()Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;->parseL0ParamsString(Ljava/lang/String;)V

    const-string v0, "query_filter_enabled"

    move-object/from16 v25, v2

    const/high16 v2, -0x80000000

    move/from16 v26, v3

    .line 1143
    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "query_filter_actions"

    move/from16 v27, v4

    .line 1144
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eq v3, v2, :cond_e

    .line 1146
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;->inst()Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;

    move-result-object v0

    if-lez v3, :cond_d

    const/4 v2, 0x1

    goto :goto_5

    :cond_d
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v0, v2}, Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;->enableQueryFilterEngine(Z)V

    .line 1147
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;->inst()Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;->onNetConfigChanged(Ljava/lang/String;)V

    :cond_e
    const-string v0, "disable_store_region_v2"

    const/4 v2, 0x0

    .line 1151
    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 1152
    invoke-static {}, Lgbsdk/common/host/abkj;->cD()Lgbsdk/common/host/abkj;

    move-result-object v2

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_6

    :cond_f
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v2, v0}, Lgbsdk/common/host/abkj;->u(Z)V

    const-string v0, "disable_encrypt_switch"

    const/4 v2, 0x0

    .line 1154
    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/ttnet/config/AppConfig;->mEncryptSwitch:I

    const-string v0, "cronet_so_path"

    const-string v2, ""

    .line 1155
    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/ttnet/config/AppConfig;->mCronetSoPath:Ljava/lang/String;

    .line 1156
    iget v0, v1, Lcom/bytedance/ttnet/config/AppConfig;->mEncryptSwitch:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_10

    .line 1157
    iget-object v0, v1, Lcom/bytedance/ttnet/config/AppConfig;->mContext:Landroid/content/Context;

    const-string v2, "app_log_encrypt_switch_count"

    move/from16 v28, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1158
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "app_log_encrypt_faild_count"

    .line 1159
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1160
    invoke-static {v0}, Lcom/bytedance/common/utility/persistent/SharedPrefsEditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_7

    :cond_10
    move/from16 v28, v3

    const/4 v3, 0x0

    :goto_7
    const-string v0, "disable_framed_transport"

    .line 1162
    invoke-virtual {v12, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_11

    .line 1165
    :try_start_1
    invoke-static {v2}, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->disableFramedTransport(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 1168
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1172
    :cond_11
    :goto_8
    monitor-enter p0

    .line 1173
    :try_start_2
    iget-object v0, v1, Lcom/bytedance/ttnet/config/AppConfig;->mContext:Landroid/content/Context;

    const-string v3, "ss_app_config"

    move-object/from16 v29, v12

    const/4 v12, 0x0

    invoke-virtual {v0, v3, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "share_cookie_host_list"

    const-string v12, ""

    .line 1176
    invoke-interface {v0, v3, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1178
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v12, "ttnet_response_verify"

    move/from16 v30, v2

    .line 1179
    iget-object v2, v6, Lgbsdk/common/host/abwo$ab;->aKc:Ljava/lang/String;

    invoke-interface {v0, v12, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "ttnet_response_verify_enabled"

    .line 1180
    iget v6, v6, Lgbsdk/common/host/abwo$ab;->aKb:I

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1183
    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->onSaveConfigToSP(Landroid/content/SharedPreferences$Editor;)V

    .line 1184
    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->onSaveConfigToSP(Landroid/content/SharedPreferences$Editor;)V

    const-string v2, "ok_http_open"

    .line 1186
    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "ok_http3_open"

    .line 1187
    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "cronet_version"

    .line 1188
    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "http_dns_enabled"

    .line 1189
    invoke-interface {v0, v2, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "detect_open"

    .line 1190
    invoke-interface {v0, v2, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "detect_native_page"

    .line 1191
    invoke-interface {v0, v2, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "collect_recent_page_info_enable"

    .line 1192
    invoke-interface {v0, v2, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "add_ss_queries_open"

    .line 1193
    invoke-interface {v0, v2, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "add_ss_queries_header_open"

    .line 1194
    invoke-interface {v0, v2, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "add_ss_queries_plaintext_open"

    move/from16 v5, v27

    .line 1195
    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "add_device_fingerprint_open"

    move/from16 v6, v26

    .line 1196
    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "dynamic_adjust_threadpool_size_open"

    move/from16 v6, v20

    .line 1197
    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "image_ttnet_enabled"

    move/from16 v6, v19

    .line 1198
    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "use_http_dns"

    .line 1199
    sget v6, Lcom/bytedance/ttnet/config/AppConfig;->sUseHttpDns:I

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "use_http_dns_refetch_on_expire"

    .line 1200
    sget v6, Lcom/bytedance/ttnet/config/AppConfig;->sUseHttpDnsRefetchOnExpire:I

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "http_show_hijack"

    move/from16 v6, v21

    .line 1201
    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "http_verify_sign"

    move/from16 v6, p1

    .line 1202
    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "frontier_urls"

    move-object/from16 v6, v17

    .line 1203
    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "cronet_so_path"

    .line 1204
    iget-object v7, v1, Lcom/bytedance/ttnet/config/AppConfig;->mCronetSoPath:Ljava/lang/String;

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "share_cookie_host_list"

    move-object/from16 v7, v18

    .line 1205
    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "oldShareCookieHosts"

    move-object/from16 v12, v16

    .line 1206
    invoke-virtual {v12, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "newShareCookieHosts"

    .line 1207
    invoke-virtual {v12, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1208
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1210
    iget-object v2, v1, Lcom/bytedance/ttnet/config/AppConfig;->mShareCookieHostList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1211
    iget-object v2, v1, Lcom/bytedance/ttnet/config/AppConfig;->mShareCookieHostList:Ljava/util/List;

    invoke-static {v7, v2}, Lgbsdk/common/host/abwk;->j(Ljava/lang/String;Ljava/util/List;)V

    .line 1213
    :cond_12
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/ttnet/ITTNetDepend;->getShareCookieMainDomain()Ljava/lang/String;

    move-result-object v2

    .line 1214
    invoke-static {v2}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_13

    iget-object v8, v1, Lcom/bytedance/ttnet/config/AppConfig;->mShareCookieHostList:Ljava/util/List;

    .line 1215
    invoke-static {v2, v8}, Lgbsdk/common/host/abwk;->g(Ljava/lang/String;Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 1216
    iget-object v8, v1, Lcom/bytedance/ttnet/config/AppConfig;->mShareCookieHostList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    const-string v2, "api_http_host_list"

    move-object/from16 v8, v22

    .line 1218
    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "concurrent_request_config"

    move-object/from16 v10, v23

    .line 1220
    invoke-interface {v0, v2, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "add_common_params"

    move-object/from16 v10, v24

    .line 1222
    invoke-interface {v0, v2, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "query_filter_actions"

    .line 1224
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "L0_params"

    move-object/from16 v10, v25

    .line 1225
    invoke-interface {v0, v2, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "query_filter_enabled"

    move/from16 v11, v28

    .line 1226
    invoke-interface {v0, v2, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, ","

    .line 1227
    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1228
    array-length v8, v2

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v8, :cond_16

    move/from16 v16, v8

    aget-object v8, v2, v13

    .line 1229
    invoke-static {v8}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_14

    move-object/from16 p1, v2

    iget-object v2, v1, Lcom/bytedance/ttnet/config/AppConfig;->mApiHttpHostList:Ljava/util/List;

    invoke-static {v8, v2}, Lgbsdk/common/host/abwk;->g(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1230
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1231
    iget-object v8, v1, Lcom/bytedance/ttnet/config/AppConfig;->mApiHttpHostList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_14
    move-object/from16 p1, v2

    :cond_15
    :goto_a
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p1

    move/from16 v8, v16

    goto :goto_9

    :cond_16
    const-string v2, "android_log_encrypt_switch"

    .line 1234
    iget v8, v1, Lcom/bytedance/ttnet/config/AppConfig;->mEncryptSwitch:I

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "image_ttnet_enabled"

    .line 1235
    iget v8, v1, Lcom/bytedance/ttnet/config/AppConfig;->mImageTtnetEnabled:I

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "sample_band_width_enabled"

    .line 1236
    iget v8, v1, Lcom/bytedance/ttnet/config/AppConfig;->mSampleBandWidthEnabled:I

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "cdn_sample_band_width_enabled"

    .line 1237
    iget v8, v1, Lcom/bytedance/ttnet/config/AppConfig;->mCdnSampleBandWidthEnabled:I

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "disable_framed_transport"

    move/from16 v8, v30

    .line 1238
    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "tnc_update_interval"

    .line 1239
    iget-object v13, v1, Lcom/bytedance/ttnet/config/AppConfig;->mTncUpdateInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    invoke-interface {v0, v2, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v12

    const/4 v13, 0x0

    .line 1241
    :goto_b
    iget-object v12, v1, Lcom/bytedance/ttnet/config/AppConfig;->mTncHostArrays:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v13, v12, :cond_18

    .line 1242
    iget-object v12, v1, Lcom/bytedance/ttnet/config/AppConfig;->mTncHostArrays:Ljava/util/List;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    iget-object v12, v1, Lcom/bytedance/ttnet/config/AppConfig;->mTncHostArrays:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-eq v13, v12, :cond_17

    const/16 v12, 0x2c

    .line 1244
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 1247
    :cond_18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1248
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_19

    const-string v12, "send_tnc_host_arrays"

    .line 1249
    invoke-interface {v0, v12, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1251
    :cond_19
    invoke-static {v0}, Lcom/bytedance/common/utility/persistent/SharedPrefsEditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1253
    :try_start_3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1254
    invoke-static {v6}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, v1, Lcom/bytedance/ttnet/config/AppConfig;->mFrontierUrls:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1255
    iput-object v6, v1, Lcom/bytedance/ttnet/config/AppConfig;->mFrontierUrls:Ljava/lang/String;

    const-string v2, "frontier_urls"

    .line 1256
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    const-string v2, "http_dns_enabled"

    .line 1258
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "add_ss_queries_open"

    .line 1259
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "add_ss_queries_header_open"

    .line 1260
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "add_ss_queries_plaintext_open"

    .line 1261
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "share_cookie_host_list"

    .line 1262
    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "disable_framed_transport"

    .line 1263
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "query_filter_actions"

    .line 1264
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "L0_params"

    .line 1265
    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "query_filter_enabled"

    .line 1266
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v2

    iget-object v4, v1, Lcom/bytedance/ttnet/config/AppConfig;->mContext:Landroid/content/Context;

    invoke-interface {v2, v4, v0}, Lcom/bytedance/ttnet/ITTNetDepend;->saveMapToProvider(Landroid/content/Context;Ljava/util/Map;)V

    .line 1269
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.bytedance.ttnet.config.appconfig.SYNC_MAIN_PROCESS_CONFIG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1270
    sget-object v2, Lcom/bytedance/ttnet/config/AppConfig;->sPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1271
    sget-object v2, Lcom/bytedance/ttnet/config/AppConfig;->sPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1273
    :cond_1b
    iget-object v2, v1, Lcom/bytedance/ttnet/config/AppConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception v0

    .line 1276
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1278
    :goto_c
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1280
    invoke-static {v7}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1285
    invoke-static {}, Lgbsdk/common/host/abtd;->gZ()Lgbsdk/common/host/abtd;

    move-result-object v0

    invoke-virtual {v0, v3, v7}, Lgbsdk/common/host/abtd;->S(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    :cond_1c
    sget-object v0, Lgbsdk/common/host/abtj;->aGM:Lgbsdk/common/host/abtj;

    if-eqz v0, :cond_1d

    .line 1289
    sget-object v0, Lgbsdk/common/host/abtj;->aGM:Lgbsdk/common/host/abtj;

    move-object/from16 v2, v29

    invoke-virtual {v0, v2}, Lgbsdk/common/host/abtj;->J(Lorg/json/JSONObject;)V

    goto :goto_d

    :cond_1d
    move-object/from16 v2, v29

    .line 1292
    :goto_d
    invoke-static {}, Lgbsdk/common/host/abwt;->hw()Lgbsdk/common/host/abwt;

    move-result-object v0

    iget-object v0, v0, Lgbsdk/common/host/abwt;->aJt:Lgbsdk/common/host/abwu;

    if-eqz v0, :cond_1e

    .line 1293
    invoke-static {}, Lgbsdk/common/host/abwt;->hw()Lgbsdk/common/host/abwt;

    move-result-object v0

    iget-object v5, v0, Lgbsdk/common/host/abwt;->aJt:Lgbsdk/common/host/abwu;

    iget-object v8, v1, Lcom/bytedance/ttnet/config/AppConfig;->mTncEtag:Ljava/lang/String;

    const-string v9, ""

    move-object v6, v2

    move-object/from16 v7, p2

    move-wide/from16 v10, p3

    invoke-virtual/range {v5 .. v11}, Lgbsdk/common/host/abwu;->a(Lorg/json/JSONObject;Lgbsdk/common/host/abwt$ab;Ljava/lang/String;Ljava/lang/String;J)Z

    :cond_1e
    const-string v0, "return true"

    move-object/from16 v2, v16

    .line 1297
    invoke-direct {v1, v2, v0}, Lcom/bytedance/ttnet/config/AppConfig;->reportShareCookieLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :catchall_2
    move-exception v0

    .line 1278
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    .line 1114
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method public isChromiumOpen()Z
    .locals 3

    .line 717
    sget-boolean v0, Lcom/bytedance/ttnet/config/AppConfig;->sForceNotUseCronet:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 718
    sput v1, Lgbsdk/common/host/abjb;->nK:I

    return v1

    .line 722
    :cond_0
    sget-boolean v0, Lcom/bytedance/ttnet/config/AppConfig;->sCronetUnsupportedModel:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 723
    sput v0, Lgbsdk/common/host/abjb;->nK:I

    return v1

    .line 727
    :cond_1
    invoke-static {}, Lcom/bytedance/ttnet/config/AppConfig;->isCronetUnsupportedABI()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 731
    :cond_2
    sget-boolean v0, Lcom/bytedance/ttnet/config/AppConfig;->sDisableFallbackReasonBoot:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mChromiumBootFailures:I

    const/4 v2, 0x5

    if-le v0, v2, :cond_3

    const/4 v0, 0x3

    .line 732
    sput v0, Lgbsdk/common/host/abjb;->nK:I

    const-string v0, "AppConfig"

    const-string v2, "After five consecutive crashes of cronet, you must reinstall app to enable cronet, or wait until several hours"

    .line 733
    invoke-static {v0, v2}, Lcom/bytedance/common/utility/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 738
    :cond_3
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ttnet/ITTNetDepend;->isCronetPluginInstalled()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    .line 739
    sput v0, Lgbsdk/common/host/abjb;->nK:I

    return v1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public isCollectRecentPageInfoEnable()Z
    .locals 1

    .line 896
    iget v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mCollectRecentPageInfoEnable:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCronetBootFailureExpected()Z
    .locals 11

    .line 800
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    const-string v1, "AppConfig"

    if-eqz v0, :cond_0

    const-string v0, "isCronetBootFailureExpected..."

    .line 801
    invoke-static {v1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mContext:Landroid/content/Context;

    const-string v2, "ss_app_config"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 806
    iget v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mChromiumBootFailures:I

    const-string v4, "chromium_boot_failures"

    if-gez v2, :cond_1

    .line 807
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mChromiumBootFailures:I

    :cond_1
    const-wide/16 v5, 0x0

    const-string v2, "chromium_boot_failures_timestamp"

    .line 809
    invoke-interface {v0, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/bytedance/ttnet/config/AppConfig;->mChromiumBootFailuresTimestamp:J

    .line 810
    iget v5, p0, Lcom/bytedance/ttnet/config/AppConfig;->mChromiumBootFailures:I

    const/4 v6, 0x5

    if-le v5, v6, :cond_2

    .line 811
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/bytedance/ttnet/config/AppConfig;->mChromiumBootFailuresTimestamp:J

    sub-long/2addr v7, v9

    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x1

    .line 812
    invoke-virtual {v5, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-lez v5, :cond_2

    .line 815
    iput v6, p0, Lcom/bytedance/ttnet/config/AppConfig;->mChromiumBootFailures:I

    .line 817
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/ttnet/config/AppConfig;->isChromiumOpen()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 821
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 822
    iget v3, p0, Lcom/bytedance/ttnet/config/AppConfig;->mChromiumBootFailures:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 823
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 824
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "KEY_CHROMIUM_BOOT_FAILURES inc..."

    .line 825
    invoke-static {v1, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    :cond_3
    invoke-static {v0}, Lcom/bytedance/common/utility/persistent/SharedPrefsEditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 830
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 831
    iget v1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mChromiumBootFailures:I

    add-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lcom/bytedance/ttnet/ITTNetDepend;->saveMapToProvider(Landroid/content/Context;Ljava/util/Map;)V

    return v5

    :cond_4
    return v3
.end method

.method public isCronetHttpDnsOpen()Z
    .locals 2

    .line 784
    sget-boolean v0, Lcom/bytedance/ttnet/config/AppConfig;->sForceNotUseCronetHttpDns:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 787
    :cond_0
    iget v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mHttpDnsEnabled:I

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isDetectNativePage()Z
    .locals 1

    .line 892
    iget v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mDetectNativePage:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDetectOpen()Z
    .locals 1

    .line 841
    iget v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mDetectOpen:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDeviceFingerPrintOpen()Z
    .locals 2

    .line 881
    sget-boolean v0, Lcom/bytedance/ttnet/config/AppConfig;->sTestDeviceFingerPrint:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 884
    :cond_0
    iget v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mAddDeviceFingerprintOpen:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isImageTtnetEnabled()Z
    .locals 1

    .line 888
    iget v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mImageTtnetEnabled:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNeedHttpDnsRefetchOnExpire()Z
    .locals 1

    .line 635
    sget v0, Lcom/bytedance/ttnet/config/AppConfig;->sUseHttpDnsRefetchOnExpire:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOkHttp3Open()Z
    .locals 2

    .line 654
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 657
    :cond_0
    iget v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mOkHttp3Open:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isOkHttpOpen()Z
    .locals 1

    .line 649
    iget v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mOkHttpOpen:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSsQueriesHeaderOpen()Z
    .locals 2

    .line 860
    sget-boolean v0, Lcom/bytedance/ttnet/config/AppConfig;->sTestSsQueries:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 863
    :cond_0
    iget v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mAddSsQueriesHeaderOpen:I

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSsQueriesOpen()Z
    .locals 2

    .line 852
    sget-boolean v0, Lcom/bytedance/ttnet/config/AppConfig;->sTestSsQueries:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 855
    :cond_0
    iget v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mAddSsQueriesOpen:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSsQueriesPlaintextOpen()Z
    .locals 2

    .line 868
    sget-boolean v0, Lcom/bytedance/ttnet/config/AppConfig;->sTestSsQueries:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 871
    :cond_0
    iget v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mAddSsQueriesPlaintextOpen:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public monitorApiHttp(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 668
    iget-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mApiHttpHostList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mApiHttpHostList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 673
    invoke-static {v1}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 675
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "url"

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "replace"

    .line 677
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "api_http"

    .line 678
    invoke-static {p1, v0}, Lcom/bytedance/ttnet/TTNetInit;->monitorLogSend(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 683
    :goto_0
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->apiHttpInterceptEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 684
    :cond_2
    new-instance p1, Lgbsdk/common/host/abkd;

    const-string p2, "Api http request is not allowed to be executed"

    invoke-direct {p1, p2}, Lgbsdk/common/host/abkd;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public onBandwidthStateChange(Lcom/bytedance/frameworks/baselib/network/connectionclass/ConnectionQuality;)V
    .locals 2

    .line 1325
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBandwidthStateChange bandwidthState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppConfig"

    invoke-static {v0, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resetCronetBootSucceed()V
    .locals 6

    const-string v0, "chromium_boot_failures"

    .line 1012
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mContext:Landroid/content/Context;

    const-string v2, "ss_app_config"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1013
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1014
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1015
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "AppConfig"

    const-string v5, "KEY_CHROMIUM_BOOT_FAILURES set 0"

    .line 1016
    invoke-static {v4, v5}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    :cond_0
    invoke-static {v2}, Lcom/bytedance/common/utility/persistent/SharedPrefsEditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 1020
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mChromiumBootFailures:I

    .line 1021
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1022
    iget v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mChromiumBootFailures:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2, v1}, Lcom/bytedance/ttnet/ITTNetDepend;->saveMapToProvider(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1025
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public resolveInetAddresses(Ljava/lang/String;)Ljava/util/List;
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

    .line 522
    invoke-static {p1}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mIsMainProcess:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 525
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/ttnet/config/AppConfig;->resolveInetAddressesFromHttpDns(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveInetAddressesFromHttpDns(Ljava/lang/String;)Ljava/util/List;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public setCronetTryRebootHours(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setDisableFallbackReasonBoot(Z)V
    .locals 0

    .line 663
    sput-boolean p1, Lcom/bytedance/ttnet/config/AppConfig;->sDisableFallbackReasonBoot:Z

    return-void
.end method

.method public setEncryptSwitch(I)V
    .locals 1

    .line 1315
    iget v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mEncryptSwitch:I

    if-eq v0, p1, :cond_0

    .line 1316
    iput p1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mEncryptSwitch:I

    :cond_0
    return-void
.end method

.method public setForceNotUseCronet(Z)V
    .locals 0

    .line 694
    sput-boolean p1, Lcom/bytedance/ttnet/config/AppConfig;->sForceNotUseCronet:Z

    return-void
.end method

.method public setForceNotUseCronetHttpDns(Z)V
    .locals 0

    .line 779
    sput-boolean p1, Lcom/bytedance/ttnet/config/AppConfig;->sForceNotUseCronetHttpDns:Z

    return-void
.end method

.method public setForceSwitch(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setForceUseCronet(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setForceUseCronetOn4X(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setShareCookieHostList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1391
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1395
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1396
    invoke-static {v0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mShareCookieHostList:Ljava/util/List;

    invoke-static {v0, v1}, Lgbsdk/common/host/abwk;->g(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1397
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1398
    iget-object v1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mShareCookieHostList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setTncABTest(Ljava/lang/String;)V
    .locals 0

    .line 1425
    invoke-static {p1}, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->getABTestInfo(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mABTest:Lorg/json/JSONObject;

    return-void
.end method

.method public setTncEtag(Ljava/lang/String;)V
    .locals 0

    .line 1421
    iput-object p1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mTncEtag:Ljava/lang/String;

    return-void
.end method

.method public shouldSampling(Ljava/lang/String;)Z
    .locals 2

    .line 535
    invoke-static {p1}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 538
    :cond_0
    iget v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mSampleBandWidthEnabled:I

    if-gtz v0, :cond_1

    return v1

    .line 543
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/bytedance/frameworks/baselib/network/http/util/URIUtils;->safeCreateUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    .line 547
    :cond_2
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 548
    invoke-static {p1}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 551
    :cond_3
    invoke-static {}, Lgbsdk/common/host/abtr;->getHostSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 556
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return v1
.end method

.method public tryDnsMapping(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method declared-synchronized tryLoadDomainConfig4OtherProcess()V
    .locals 6

    monitor-enter p0

    .line 303
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 305
    iget-object v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mLastRefreshTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mTncUpdateInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 306
    iget-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mLastRefreshTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 309
    :try_start_1
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mContext:Landroid/content/Context;

    const-string v2, "disable_framed_transport"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/ttnet/ITTNetDepend;->getProviderInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-lez v0, :cond_0

    .line 312
    :try_start_2
    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->disableFramedTransport(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 315
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 319
    :cond_0
    :goto_0
    invoke-static {}, Lgbsdk/common/host/abwt;->hw()Lgbsdk/common/host/abwt;

    move-result-object v0

    iget-object v0, v0, Lgbsdk/common/host/abwt;->aJt:Lgbsdk/common/host/abwu;

    if-eqz v0, :cond_1

    .line 320
    invoke-static {}, Lgbsdk/common/host/abwt;->hw()Lgbsdk/common/host/abwt;

    move-result-object v0

    iget-object v0, v0, Lgbsdk/common/host/abwt;->aJt:Lgbsdk/common/host/abwu;

    iget-object v1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mLastRefreshTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 321
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 320
    invoke-virtual {v0, v1, v2}, Lgbsdk/common/host/abwu;->v(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 326
    :catch_0
    :cond_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryLoadLocalConfig()V
    .locals 8

    .line 379
    iget-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_0
    iget-boolean v1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mLocalLoaded:Z

    if-eqz v1, :cond_0

    .line 381
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 382
    iput-boolean v1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mLocalLoaded:Z

    .line 383
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 384
    iget-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abtf;->aI(Landroid/content/Context;)Lgbsdk/common/host/abtf;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/common/host/abtf;->hc()V

    .line 385
    iget-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mContext:Landroid/content/Context;

    const-string v2, "ss_app_config"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "ok_http_open"

    .line 386
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mOkHttpOpen:I

    const-string v2, "ok_http3_open"

    .line 387
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mOkHttp3Open:I

    const-string v2, "cronet_version"

    .line 388
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mCronetVersion:I

    const-string v2, "http_dns_enabled"

    .line 389
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mHttpDnsEnabled:I

    const-string v2, "detect_open"

    .line 390
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mDetectOpen:I

    const-string v2, "detect_native_page"

    .line 391
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mDetectNativePage:I

    const-string v2, "collect_recent_page_info_enable"

    .line 392
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mCollectRecentPageInfoEnable:I

    const-string v2, "add_ss_queries_open"

    .line 393
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mAddSsQueriesOpen:I

    const-string v2, "add_ss_queries_header_open"

    .line 394
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mAddSsQueriesHeaderOpen:I

    const-string v2, "add_ss_queries_plaintext_open"

    .line 395
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mAddSsQueriesPlaintextOpen:I

    const-string v2, "add_device_fingerprint_open"

    .line 396
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mAddDeviceFingerprintOpen:I

    const-string v2, "dynamic_adjust_threadpool_size_open"

    .line 397
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mDynamicAdjustThreadPoolSizeOpen:I

    .line 398
    iget v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mChromiumBootFailures:I

    if-gez v2, :cond_1

    const-string v2, "chromium_boot_failures"

    .line 399
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mChromiumBootFailures:I

    .line 401
    :cond_1
    iget v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mDynamicAdjustThreadPoolSizeOpen:I

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lgbsdk/common/host/abjr;->l(Z)V

    const-string v2, "image_ttnet_enabled"

    .line 402
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mImageTtnetEnabled:I

    const-string v2, "sample_band_width_enabled"

    .line 403
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mSampleBandWidthEnabled:I

    const-string v2, "cdn_sample_band_width_enabled"

    .line 404
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mCdnSampleBandWidthEnabled:I

    const-string v2, "use_http_dns"

    const/4 v4, -0x1

    .line 405
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/bytedance/ttnet/config/AppConfig;->sUseHttpDns:I

    const-string v2, "use_http_dns_refetch_on_expire"

    .line 406
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/bytedance/ttnet/config/AppConfig;->sUseHttpDnsRefetchOnExpire:I

    .line 408
    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->onConfigUpdate(Landroid/content/SharedPreferences;)V

    .line 409
    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->onConfigUpdate(Landroid/content/SharedPreferences;)V

    .line 411
    invoke-static {v0}, Lgbsdk/common/host/abwo;->b(Landroid/content/SharedPreferences;)V

    .line 413
    iget v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mAddSsQueriesOpen:I

    if-gtz v2, :cond_3

    iget v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mAddSsQueriesHeaderOpen:I

    if-lez v2, :cond_4

    .line 414
    :cond_3
    sput-boolean v1, Lgbsdk/common/host/abws;->aIT:Z

    :cond_4
    const-string v2, "frontier_urls"

    const-string v4, ""

    .line 417
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mFrontierUrls:Ljava/lang/String;

    const-string v2, "cronet_so_path"

    const-string v4, ""

    .line 418
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mCronetSoPath:Ljava/lang/String;

    const-string v2, "api_http_host_list"

    const-string v4, ""

    .line 420
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 421
    invoke-static {v2}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, ","

    .line 422
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 423
    array-length v4, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_6

    aget-object v6, v2, v5

    .line 424
    invoke-static {v6}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 425
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 426
    iget-object v7, p0, Lcom/bytedance/ttnet/config/AppConfig;->mApiHttpHostList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    const-string v2, "concurrent_request_config"

    const-string v4, ""

    .line 431
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 432
    invoke-static {}, Lgbsdk/common/host/abjk;->bE()Lgbsdk/common/host/abjk;

    move-result-object v4

    invoke-virtual {v4, v2}, Lgbsdk/common/host/abjk;->onNetConfigChanged(Ljava/lang/String;)V

    const-string v2, "add_common_params"

    const-string v4, ""

    .line 434
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 435
    invoke-static {}, Lgbsdk/common/host/abjp;->bx()Lgbsdk/common/host/abjp;

    move-result-object v4

    iget-object v4, v4, Lgbsdk/common/host/abjp;->hU:Lgbsdk/common/host/abjm;

    if-eqz v4, :cond_7

    .line 437
    invoke-virtual {v4, v2}, Lgbsdk/common/host/abjm;->onNetConfigChanged(Ljava/lang/String;)V

    :cond_7
    const-string v2, "L0_params"

    const-string v4, ""

    .line 440
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;->inst()Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;->parseL0ParamsString(Ljava/lang/String;)V

    const-string v2, "query_filter_enabled"

    const/high16 v4, -0x80000000

    .line 442
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v5, "query_filter_actions"

    const-string v6, ""

    .line 443
    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eq v2, v4, :cond_9

    .line 445
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;->inst()Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;

    move-result-object v4

    if-lez v2, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v4, v1}, Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;->enableQueryFilterEngine(Z)V

    .line 446
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;->inst()Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;->onNetConfigChanged(Ljava/lang/String;)V

    :cond_9
    const-string v1, "share_cookie_host_list"

    const-string v2, ""

    .line 449
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 450
    iget-object v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mShareCookieHostList:Ljava/util/List;

    invoke-static {v1, v2}, Lgbsdk/common/host/abwk;->j(Ljava/lang/String;Ljava/util/List;)V

    .line 451
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/ttnet/ITTNetDepend;->getShareCookieMainDomain()Ljava/lang/String;

    move-result-object v2

    .line 452
    invoke-static {v2}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/bytedance/ttnet/config/AppConfig;->mShareCookieHostList:Ljava/util/List;

    .line 453
    invoke-static {v2, v4}, Lgbsdk/common/host/abwk;->g(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 454
    iget-object v4, p0, Lcom/bytedance/ttnet/config/AppConfig;->mShareCookieHostList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_a
    iget-object v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mTncUpdateInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v4, "tnc_update_interval"

    const/16 v5, 0x2a30

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v2, "send_tnc_host_arrays"

    const-string v4, ""

    .line 457
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 458
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, ","

    .line 459
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 460
    iget-object v4, p0, Lcom/bytedance/ttnet/config/AppConfig;->mTncHostArrays:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 461
    iget-object v4, p0, Lcom/bytedance/ttnet/config/AppConfig;->mTncHostArrays:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 465
    :cond_b
    invoke-static {}, Lgbsdk/common/host/abwt;->hw()Lgbsdk/common/host/abwt;

    move-result-object v2

    iget-object v2, v2, Lgbsdk/common/host/abwt;->aJt:Lgbsdk/common/host/abwu;

    if-eqz v2, :cond_c

    .line 466
    invoke-static {}, Lgbsdk/common/host/abwt;->hw()Lgbsdk/common/host/abwt;

    move-result-object v2

    iget-object v2, v2, Lgbsdk/common/host/abwt;->aJt:Lgbsdk/common/host/abwu;

    iget-object v4, p0, Lcom/bytedance/ttnet/config/AppConfig;->mLastRefreshTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lgbsdk/common/host/abwu;->u(J)V

    :cond_c
    const-string v2, "disable_framed_transport"

    .line 469
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_d

    .line 472
    :try_start_1
    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/ok3/impl/OkHttp3Builder;->disableFramedTransport(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    .line 475
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 479
    :cond_d
    :goto_3
    iget-boolean v2, p0, Lcom/bytedance/ttnet/config/AppConfig;->mIsMainProcess:Z

    if-eqz v2, :cond_f

    .line 482
    :try_start_2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 483
    iget-object v3, p0, Lcom/bytedance/ttnet/config/AppConfig;->mFrontierUrls:Ljava/lang/String;

    invoke-static {v3}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "frontier_urls"

    .line 484
    iget-object v4, p0, Lcom/bytedance/ttnet/config/AppConfig;->mFrontierUrls:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    const-string v3, "http_dns_enabled"

    .line 486
    iget v4, p0, Lcom/bytedance/ttnet/config/AppConfig;->mHttpDnsEnabled:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "add_ss_queries_open"

    .line 487
    iget v4, p0, Lcom/bytedance/ttnet/config/AppConfig;->mAddSsQueriesOpen:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "add_ss_queries_header_open"

    .line 488
    iget v4, p0, Lcom/bytedance/ttnet/config/AppConfig;->mAddSsQueriesHeaderOpen:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "add_ss_queries_plaintext_open"

    .line 489
    iget v4, p0, Lcom/bytedance/ttnet/config/AppConfig;->mAddSsQueriesPlaintextOpen:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "chromium_boot_failures"

    .line 490
    iget v4, p0, Lcom/bytedance/ttnet/config/AppConfig;->mChromiumBootFailures:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "share_cookie_host_list"

    .line 491
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "disable_framed_transport"

    .line 492
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    new-instance v0, Lcom/bytedance/ttnet/config/AppConfig$3;

    const-string v1, "SaveMapToProvider-Thread"

    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/ttnet/config/AppConfig$3;-><init>(Lcom/bytedance/ttnet/config/AppConfig;Ljava/lang/String;Ljava/util/Map;)V

    .line 506
    invoke-virtual {v0}, Lcom/bytedance/ttnet/config/AppConfig$3;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    .line 509
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_4
    return-void

    :catchall_2
    move-exception v1

    .line 383
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method public tryRefreshConfig(Lgbsdk/common/host/abwt$ab;)V
    .locals 1

    const/4 v0, 0x0

    .line 270
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/ttnet/config/AppConfig;->tryRefreshConfig(Lgbsdk/common/host/abwt$ab;Z)V

    return-void
.end method

.method public tryRefreshConfig(Lgbsdk/common/host/abwt$ab;Z)V
    .locals 0

    .line 274
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ttnet/config/AppConfig;->tryRefreshConfigInternal(Lgbsdk/common/host/abwt$ab;Z)V

    return-void
.end method

.method updateConfig(Lgbsdk/common/host/abwt$ab;Z)V
    .locals 3

    .line 903
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    const-string v1, "TNCManager"

    if-eqz v0, :cond_0

    const-string v0, "doRefresh, actual request"

    .line 904
    invoke-static {v1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/common/utility/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 910
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/ttnet/config/AppConfig;->tryLoadLocalConfig()V

    .line 911
    invoke-virtual {p0}, Lcom/bytedance/ttnet/config/AppConfig;->isChromiumOpen()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 912
    iget-object p1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mConfigUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 919
    invoke-direct {p0}, Lcom/bytedance/ttnet/config/AppConfig;->isDidEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p1, "did is empty, delay 5s send tnc again"

    .line 920
    invoke-static {v1, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    iget-object p1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    const/16 p2, 0x68

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Lcom/bytedance/common/utility/collection/WeakHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 922
    iget-object p1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mConfigUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_3
    const/16 p2, 0x66

    .line 927
    iget-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lgbsdk/common/host/abwt;->a(Landroid/content/Context;ZLgbsdk/common/host/abwt$ab;)Z

    move-result p1

    const/16 v0, 0x65

    if-eqz p1, :cond_4

    :goto_0
    const/16 p2, 0x65

    goto :goto_1

    :cond_4
    const-string p1, "AppConfig"

    const-string v1, "tnc reqeust through okhttp failed, fallback to HttpUrlConnection"

    .line 930
    invoke-static {p1, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    iget-object p1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mContext:Landroid/content/Context;

    sget-object v1, Lgbsdk/common/host/abwt$ab;->aJL:Lgbsdk/common/host/abwt$ab;

    invoke-static {p1, v2, v1}, Lgbsdk/common/host/abwt;->a(Landroid/content/Context;ZLgbsdk/common/host/abwt$ab;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 936
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    invoke-virtual {p1, p2}, Lcom/bytedance/common/utility/collection/WeakHandler;->sendEmptyMessage(I)Z

    .line 937
    iget-object p1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    const/16 p2, 0x67

    invoke-virtual {p1, p2}, Lcom/bytedance/common/utility/collection/WeakHandler;->removeMessages(I)V

    .line 938
    iget-object p1, p0, Lcom/bytedance/ttnet/config/AppConfig;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    iget-object v0, p0, Lcom/bytedance/ttnet/config/AppConfig;->mTncUpdateInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/bytedance/common/utility/collection/WeakHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
