.class public Lcom/talkweb/network/config/NetworkConfig$Builder;
.super Ljava/lang/Object;
.source "NetworkConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/talkweb/network/config/NetworkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private cacheDir:Ljava/io/File;

.field private cacheMaxSize:J

.field private connectTimeoutMs:J

.field private defaultHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private enableLogging:Z

.field private readTimeoutMs:J

.field private retryCount:I

.field private secret:Ljava/lang/String;

.field private successCode:I

.field private tokenProvider:Lcom/talkweb/network/config/NetworkConfig$TokenProvider;

.field private writeTimeoutMs:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 110
    iput-object v0, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->baseUrl:Ljava/lang/String;

    const-wide/16 v1, 0x3a98

    .line 111
    iput-wide v1, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->connectTimeoutMs:J

    .line 112
    iput-wide v1, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->readTimeoutMs:J

    .line 113
    iput-wide v1, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->writeTimeoutMs:J

    const/4 v1, 0x1

    .line 114
    iput-boolean v1, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->enableLogging:Z

    const/4 v2, 0x0

    .line 115
    iput-object v2, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->tokenProvider:Lcom/talkweb/network/config/NetworkConfig$TokenProvider;

    .line 118
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->defaultHeaders:Ljava/util/Map;

    .line 119
    iput-object v2, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->cacheDir:Ljava/io/File;

    const-wide/32 v2, 0xa00000

    .line 121
    iput-wide v2, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->cacheMaxSize:J

    .line 122
    iput v1, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->retryCount:I

    const/4 v1, 0x0

    .line 123
    iput v1, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->successCode:I

    .line 124
    iput-object v0, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->secret:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/talkweb/network/config/NetworkConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->baseUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/talkweb/network/config/NetworkConfig$Builder;)J
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->connectTimeoutMs:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/talkweb/network/config/NetworkConfig$Builder;)I
    .locals 0

    .line 109
    iget p0, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->successCode:I

    return p0
.end method

.method static synthetic access$1100(Lcom/talkweb/network/config/NetworkConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->secret:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/talkweb/network/config/NetworkConfig$Builder;)J
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->readTimeoutMs:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/talkweb/network/config/NetworkConfig$Builder;)J
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->writeTimeoutMs:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/talkweb/network/config/NetworkConfig$Builder;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->enableLogging:Z

    return p0
.end method

.method static synthetic access$500(Lcom/talkweb/network/config/NetworkConfig$Builder;)Lcom/talkweb/network/config/NetworkConfig$TokenProvider;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->tokenProvider:Lcom/talkweb/network/config/NetworkConfig$TokenProvider;

    return-object p0
.end method

.method static synthetic access$600(Lcom/talkweb/network/config/NetworkConfig$Builder;)Ljava/util/Map;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->defaultHeaders:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$700(Lcom/talkweb/network/config/NetworkConfig$Builder;)Ljava/io/File;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->cacheDir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$800(Lcom/talkweb/network/config/NetworkConfig$Builder;)J
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->cacheMaxSize:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/talkweb/network/config/NetworkConfig$Builder;)I
    .locals 0

    .line 109
    iget p0, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->retryCount:I

    return p0
.end method


# virtual methods
.method public baseUrl(Ljava/lang/String;)Lcom/talkweb/network/config/NetworkConfig$Builder;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->baseUrl:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/talkweb/network/config/NetworkConfig;
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->baseUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/talkweb/network/config/NetworkConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/talkweb/network/config/NetworkConfig;-><init>(Lcom/talkweb/network/config/NetworkConfig$Builder;Lcom/talkweb/network/config/NetworkConfig$1;)V

    return-object v0

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "baseUrl \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cache(Ljava/io/File;)Lcom/talkweb/network/config/NetworkConfig$Builder;
    .locals 2

    const-wide/32 v0, 0xa00000

    .line 164
    invoke-virtual {p0, p1, v0, v1}, Lcom/talkweb/network/config/NetworkConfig$Builder;->cache(Ljava/io/File;J)Lcom/talkweb/network/config/NetworkConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public cache(Ljava/io/File;J)Lcom/talkweb/network/config/NetworkConfig$Builder;
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->cacheDir:Ljava/io/File;

    .line 169
    iput-wide p2, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->cacheMaxSize:J

    return-object p0
.end method

.method public connectTimeout(J)Lcom/talkweb/network/config/NetworkConfig$Builder;
    .locals 0

    .line 133
    iput-wide p1, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->connectTimeoutMs:J

    return-object p0
.end method

.method public defaultHeaders(Ljava/util/Map;)Lcom/talkweb/network/config/NetworkConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/talkweb/network/config/NetworkConfig$Builder;"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->defaultHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public enableLogging(Z)Lcom/talkweb/network/config/NetworkConfig$Builder;
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->enableLogging:Z

    return-object p0
.end method

.method public readTimeout(J)Lcom/talkweb/network/config/NetworkConfig$Builder;
    .locals 0

    .line 138
    iput-wide p1, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->readTimeoutMs:J

    return-object p0
.end method

.method public retryCount(I)Lcom/talkweb/network/config/NetworkConfig$Builder;
    .locals 0

    .line 175
    iput p1, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->retryCount:I

    return-object p0
.end method

.method public secret(Ljava/lang/String;)Lcom/talkweb/network/config/NetworkConfig$Builder;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 190
    :goto_0
    iput-object p1, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->secret:Ljava/lang/String;

    return-object p0
.end method

.method public successCode(I)Lcom/talkweb/network/config/NetworkConfig$Builder;
    .locals 0

    .line 181
    iput p1, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->successCode:I

    return-object p0
.end method

.method public tokenProvider(Lcom/talkweb/network/config/NetworkConfig$TokenProvider;)Lcom/talkweb/network/config/NetworkConfig$Builder;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->tokenProvider:Lcom/talkweb/network/config/NetworkConfig$TokenProvider;

    return-object p0
.end method

.method public writeTimeout(J)Lcom/talkweb/network/config/NetworkConfig$Builder;
    .locals 0

    .line 143
    iput-wide p1, p0, Lcom/talkweb/network/config/NetworkConfig$Builder;->writeTimeoutMs:J

    return-object p0
.end method
