.class public final Lcom/talkweb/network/config/NetworkConfig;
.super Ljava/lang/Object;
.source "NetworkConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/talkweb/network/config/NetworkConfig$Builder;,
        Lcom/talkweb/network/config/NetworkConfig$TokenProvider;
    }
.end annotation


# instance fields
.field private final baseUrl:Ljava/lang/String;

.field private final cacheDir:Ljava/io/File;

.field private final cacheMaxSize:J

.field private final connectTimeoutMs:J

.field private final defaultHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final enableLogging:Z

.field private final readTimeoutMs:J

.field private final retryCount:I

.field private final secret:Ljava/lang/String;

.field private final successCode:I

.field private final tokenProvider:Lcom/talkweb/network/config/NetworkConfig$TokenProvider;

.field private final writeTimeoutMs:J


# direct methods
.method private constructor <init>(Lcom/talkweb/network/config/NetworkConfig$Builder;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/talkweb/network/config/NetworkConfig$Builder;->access$000(Lcom/talkweb/network/config/NetworkConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/talkweb/network/config/NetworkConfig;->baseUrl:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/talkweb/network/config/NetworkConfig$Builder;->access$100(Lcom/talkweb/network/config/NetworkConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/talkweb/network/config/NetworkConfig;->connectTimeoutMs:J

    .line 38
    invoke-static {p1}, Lcom/talkweb/network/config/NetworkConfig$Builder;->access$200(Lcom/talkweb/network/config/NetworkConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/talkweb/network/config/NetworkConfig;->readTimeoutMs:J

    .line 39
    invoke-static {p1}, Lcom/talkweb/network/config/NetworkConfig$Builder;->access$300(Lcom/talkweb/network/config/NetworkConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/talkweb/network/config/NetworkConfig;->writeTimeoutMs:J

    .line 40
    invoke-static {p1}, Lcom/talkweb/network/config/NetworkConfig$Builder;->access$400(Lcom/talkweb/network/config/NetworkConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/talkweb/network/config/NetworkConfig;->enableLogging:Z

    .line 41
    invoke-static {p1}, Lcom/talkweb/network/config/NetworkConfig$Builder;->access$500(Lcom/talkweb/network/config/NetworkConfig$Builder;)Lcom/talkweb/network/config/NetworkConfig$TokenProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/talkweb/network/config/NetworkConfig;->tokenProvider:Lcom/talkweb/network/config/NetworkConfig$TokenProvider;

    .line 42
    invoke-static {p1}, Lcom/talkweb/network/config/NetworkConfig$Builder;->access$600(Lcom/talkweb/network/config/NetworkConfig$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/talkweb/network/config/NetworkConfig;->defaultHeaders:Ljava/util/Map;

    .line 43
    invoke-static {p1}, Lcom/talkweb/network/config/NetworkConfig$Builder;->access$700(Lcom/talkweb/network/config/NetworkConfig$Builder;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/talkweb/network/config/NetworkConfig;->cacheDir:Ljava/io/File;

    .line 44
    invoke-static {p1}, Lcom/talkweb/network/config/NetworkConfig$Builder;->access$800(Lcom/talkweb/network/config/NetworkConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/talkweb/network/config/NetworkConfig;->cacheMaxSize:J

    .line 45
    invoke-static {p1}, Lcom/talkweb/network/config/NetworkConfig$Builder;->access$900(Lcom/talkweb/network/config/NetworkConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/talkweb/network/config/NetworkConfig;->retryCount:I

    .line 46
    invoke-static {p1}, Lcom/talkweb/network/config/NetworkConfig$Builder;->access$1000(Lcom/talkweb/network/config/NetworkConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/talkweb/network/config/NetworkConfig;->successCode:I

    .line 47
    invoke-static {p1}, Lcom/talkweb/network/config/NetworkConfig$Builder;->access$1100(Lcom/talkweb/network/config/NetworkConfig$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/talkweb/network/config/NetworkConfig;->secret:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/talkweb/network/config/NetworkConfig$Builder;Lcom/talkweb/network/config/NetworkConfig$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/talkweb/network/config/NetworkConfig;-><init>(Lcom/talkweb/network/config/NetworkConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/talkweb/network/config/NetworkConfig;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/talkweb/network/config/NetworkConfig;->cacheDir:Ljava/io/File;

    return-object v0
.end method

.method public getCacheMaxSize()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/talkweb/network/config/NetworkConfig;->cacheMaxSize:J

    return-wide v0
.end method

.method public getConnectTimeoutMs()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/talkweb/network/config/NetworkConfig;->connectTimeoutMs:J

    return-wide v0
.end method

.method public getDefaultHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/talkweb/network/config/NetworkConfig;->defaultHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getReadTimeoutMs()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/talkweb/network/config/NetworkConfig;->readTimeoutMs:J

    return-wide v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/talkweb/network/config/NetworkConfig;->retryCount:I

    return v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/talkweb/network/config/NetworkConfig;->secret:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccessCode()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/talkweb/network/config/NetworkConfig;->successCode:I

    return v0
.end method

.method public getTokenProvider()Lcom/talkweb/network/config/NetworkConfig$TokenProvider;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/talkweb/network/config/NetworkConfig;->tokenProvider:Lcom/talkweb/network/config/NetworkConfig$TokenProvider;

    return-object v0
.end method

.method public getWriteTimeoutMs()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/talkweb/network/config/NetworkConfig;->writeTimeoutMs:J

    return-wide v0
.end method

.method public isEnableLogging()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/talkweb/network/config/NetworkConfig;->enableLogging:Z

    return v0
.end method
