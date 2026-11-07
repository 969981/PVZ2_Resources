.class public Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;
.super Ljava/lang/Object;
.source "SDKCloudManager.java"


# static fields
.field private static b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/apmplus/sdk/cloudmessage/SDKCloud;",
            ">;"
        }
    .end annotation
.end field

.field private static final fN:Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;

    invoke-direct {v0}, Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;-><init>()V

    sput-object v0, Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;->fN:Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;
    .locals 1

    .line 30
    sget-object v0, Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;->fN:Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;

    return-object v0
.end method

.method public static getSDKCloud(Ljava/lang/String;)Lcom/apmplus/sdk/cloudmessage/SDKCloud;
    .locals 1

    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apmplus/sdk/cloudmessage/SDKCloud;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public init(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;)V
    .locals 3

    if-nez p1, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getAid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 45
    :cond_0
    sget-object v0, Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apmplus/sdk/cloudmessage/SDKCloud;

    if-nez v0, :cond_1

    .line 47
    sget-object v0, Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getAid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/apmplus/sdk/cloudmessage/SDKCloud;

    invoke-direct {v2, p1}, Lcom/apmplus/sdk/cloudmessage/SDKCloud;-><init>(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
