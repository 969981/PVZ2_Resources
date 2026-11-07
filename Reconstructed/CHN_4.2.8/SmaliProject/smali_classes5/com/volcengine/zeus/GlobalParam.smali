.class public Lcom/volcengine/zeus/GlobalParam;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/volcengine/zeus/GlobalParam;


# instance fields
.field private hasInit:Z

.field private mAutoFetch:Z

.field private mAutoInstallInternal:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckMatchHostAbi:Z

.field private mCheckPermission:Z

.field private mCloseFlipped:Z

.field private mCustomTag:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDebug:Z

.field private mDexOptDelayTime:J

.field private mDid:Ljava/lang/String;

.field private mDownloadDir:Ljava/io/File;

.field private mDownloaderProvider:Lcom/volcengine/zeus/download/IDownloaderProvider;

.field private mEnableClassLoaderOpt:Z

.field private mFastDex2oat:Z

.field private mHostUrl:Ljava/lang/String;

.field private mInstallThreads:I

.field private mLogger:Lcom/volcengine/zeus/log/IZeusLogger;

.field private mPostBgDexOptByInit:Z

.field private mReporter:Lcom/volcengine/zeus/log/IZeusReporter;

.field private mRequestHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSignature:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unInstallPluginWhenHostChange:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/volcengine/zeus/GlobalParam;->hasInit:Z

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/volcengine/zeus/GlobalParam;->mDebug:Z

    const/4 v1, 0x4

    .line 29
    iput v1, p0, Lcom/volcengine/zeus/GlobalParam;->mInstallThreads:I

    .line 30
    iput-boolean v0, p0, Lcom/volcengine/zeus/GlobalParam;->mCheckMatchHostAbi:Z

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/volcengine/zeus/GlobalParam;->mRequestHeader:Ljava/util/Map;

    .line 36
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/volcengine/zeus/GlobalParam;->unInstallPluginWhenHostChange:Ljava/util/Map;

    .line 37
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/volcengine/zeus/GlobalParam;->mCustomTag:Ljava/util/Map;

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/volcengine/zeus/GlobalParam;->mSignature:Ljava/util/Map;

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/volcengine/zeus/GlobalParam;->mAutoInstallInternal:Ljava/util/Map;

    const-wide/16 v1, 0x3a98

    .line 42
    iput-wide v1, p0, Lcom/volcengine/zeus/GlobalParam;->mDexOptDelayTime:J

    .line 43
    iput-boolean v0, p0, Lcom/volcengine/zeus/GlobalParam;->mPostBgDexOptByInit:Z

    .line 45
    iput-boolean v0, p0, Lcom/volcengine/zeus/GlobalParam;->mAutoFetch:Z

    return-void
.end method

.method private ensureInit()V
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/volcengine/zeus/GlobalParam;->hasInit:Z

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static getInstance()Lcom/volcengine/zeus/GlobalParam;
    .locals 2

    .line 52
    sget-object v0, Lcom/volcengine/zeus/GlobalParam;->mInstance:Lcom/volcengine/zeus/GlobalParam;

    if-nez v0, :cond_1

    .line 53
    const-class v0, Lcom/volcengine/zeus/GlobalParam;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/volcengine/zeus/GlobalParam;->mInstance:Lcom/volcengine/zeus/GlobalParam;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/volcengine/zeus/GlobalParam;

    invoke-direct {v1}, Lcom/volcengine/zeus/GlobalParam;-><init>()V

    sput-object v1, Lcom/volcengine/zeus/GlobalParam;->mInstance:Lcom/volcengine/zeus/GlobalParam;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lcom/volcengine/zeus/GlobalParam;->mInstance:Lcom/volcengine/zeus/GlobalParam;

    return-object v0
.end method


# virtual methods
.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/volcengine/zeus/GlobalParam;->ensureInit()V

    .line 104
    iget-object v0, p0, Lcom/volcengine/zeus/GlobalParam;->mRequestHeader:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public autoFetch()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/volcengine/zeus/GlobalParam;->mAutoFetch:Z

    return v0
.end method

.method public checkMatchHostAbi()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/volcengine/zeus/GlobalParam;->mCheckMatchHostAbi:Z

    return v0
.end method

.method public checkPermission()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/volcengine/zeus/GlobalParam;->mCheckPermission:Z

    return v0
.end method

.method public enableClassLoaderOpt()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/volcengine/zeus/GlobalParam;->mEnableClassLoaderOpt:Z

    return v0
.end method

.method public getCustomTag(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/volcengine/zeus/GlobalParam;->mCustomTag:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public getDexOptDelayTime()J
    .locals 2

    .line 239
    iget-wide v0, p0, Lcom/volcengine/zeus/GlobalParam;->mDexOptDelayTime:J

    return-wide v0
.end method

.method public getDid()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/volcengine/zeus/GlobalParam;->mDid:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadDir()Ljava/io/File;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/volcengine/zeus/GlobalParam;->mDownloadDir:Ljava/io/File;

    return-object v0
.end method

.method public getDownloaderProvider()Lcom/volcengine/zeus/download/IDownloaderProvider;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/volcengine/zeus/GlobalParam;->mDownloaderProvider:Lcom/volcengine/zeus/download/IDownloaderProvider;

    return-object v0
.end method

.method public getHostUrl()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/volcengine/zeus/GlobalParam;->mHostUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallThreads()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/volcengine/zeus/GlobalParam;->mInstallThreads:I

    return v0
.end method

.method public getLogger()Lcom/volcengine/zeus/log/IZeusLogger;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/volcengine/zeus/GlobalParam;->mLogger:Lcom/volcengine/zeus/log/IZeusLogger;

    return-object v0
.end method

.method public getReporter()Lcom/volcengine/zeus/log/IZeusReporter;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/volcengine/zeus/GlobalParam;->mReporter:Lcom/volcengine/zeus/log/IZeusReporter;

    return-object v0
.end method

.method public getRequestHeader()Ljava/util/Map;
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

    .line 227
    iget-object v0, p0, Lcom/volcengine/zeus/GlobalParam;->mRequestHeader:Ljava/util/Map;

    return-object v0
.end method

.method public getSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/volcengine/zeus/GlobalParam;->mSignature:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lcom/volcengine/zeus/GlobalParam;->hasInit:Z

    return-void
.end method

.method public isAutoInstallInternal(Ljava/lang/String;)Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/volcengine/zeus/GlobalParam;->mAutoInstallInternal:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 130
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public isCloseFlipped()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/volcengine/zeus/GlobalParam;->mCloseFlipped:Z

    return v0
.end method

.method public isDebug()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/volcengine/zeus/GlobalParam;->mDebug:Z

    return v0
.end method

.method public isFastDex2oat()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/volcengine/zeus/GlobalParam;->mFastDex2oat:Z

    return v0
.end method

.method public isPostBgDexOptByInit()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/volcengine/zeus/GlobalParam;->mPostBgDexOptByInit:Z

    return v0
.end method

.method public postBgDexOptByInit(Z)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/volcengine/zeus/GlobalParam;->ensureInit()V

    .line 70
    iget-boolean p1, p0, Lcom/volcengine/zeus/GlobalParam;->mPostBgDexOptByInit:Z

    iput-boolean p1, p0, Lcom/volcengine/zeus/GlobalParam;->mPostBgDexOptByInit:Z

    return-void
.end method

.method public setAutoFetch(Z)V
    .locals 0

    .line 261
    invoke-direct {p0}, Lcom/volcengine/zeus/GlobalParam;->ensureInit()V

    .line 262
    iput-boolean p1, p0, Lcom/volcengine/zeus/GlobalParam;->mAutoFetch:Z

    return-void
.end method

.method public setAutoInstallInternal(Ljava/lang/String;Z)V
    .locals 1

    .line 121
    invoke-direct {p0}, Lcom/volcengine/zeus/GlobalParam;->ensureInit()V

    .line 122
    iget-object v0, p0, Lcom/volcengine/zeus/GlobalParam;->mAutoInstallInternal:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCheckMatchHostAbi(Z)V
    .locals 0

    .line 170
    iput-boolean p1, p0, Lcom/volcengine/zeus/GlobalParam;->mCheckMatchHostAbi:Z

    return-void
.end method

.method public setCheckPermission(Z)V
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/volcengine/zeus/GlobalParam;->mCheckPermission:Z

    return-void
.end method

.method public setCloseFlipped(Z)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/volcengine/zeus/GlobalParam;->ensureInit()V

    .line 145
    iput-boolean p1, p0, Lcom/volcengine/zeus/GlobalParam;->mCloseFlipped:Z

    return-void
.end method

.method public setCustomTag(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/volcengine/zeus/GlobalParam;->mCustomTag:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/volcengine/zeus/GlobalParam;->ensureInit()V

    .line 65
    iput-boolean p1, p0, Lcom/volcengine/zeus/GlobalParam;->mDebug:Z

    return-void
.end method

.method public setDexOptDelayTime(J)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/volcengine/zeus/GlobalParam;->ensureInit()V

    .line 140
    iput-wide p1, p0, Lcom/volcengine/zeus/GlobalParam;->mDexOptDelayTime:J

    return-void
.end method

.method public setDid(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/volcengine/zeus/GlobalParam;->mDid:Ljava/lang/String;

    return-void
.end method

.method public setDownloadDir(Ljava/io/File;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/volcengine/zeus/GlobalParam;->ensureInit()V

    .line 94
    iput-object p1, p0, Lcom/volcengine/zeus/GlobalParam;->mDownloadDir:Ljava/io/File;

    return-void
.end method

.method public setDownloaderProvider(Lcom/volcengine/zeus/download/IDownloaderProvider;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/volcengine/zeus/GlobalParam;->ensureInit()V

    .line 135
    iput-object p1, p0, Lcom/volcengine/zeus/GlobalParam;->mDownloaderProvider:Lcom/volcengine/zeus/download/IDownloaderProvider;

    return-void
.end method

.method public setEnableClassLoaderOpt(Z)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/volcengine/zeus/GlobalParam;->ensureInit()V

    .line 150
    iput-boolean p1, p0, Lcom/volcengine/zeus/GlobalParam;->mEnableClassLoaderOpt:Z

    return-void
.end method

.method public setFastDex2oat(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/volcengine/zeus/GlobalParam;->mFastDex2oat:Z

    return-void
.end method

.method public setHostUrl(Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/volcengine/zeus/GlobalParam;->ensureInit()V

    .line 79
    iput-object p1, p0, Lcom/volcengine/zeus/GlobalParam;->mHostUrl:Ljava/lang/String;

    return-void
.end method

.method public setInstallThreads(I)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/volcengine/zeus/GlobalParam;->ensureInit()V

    .line 99
    iput p1, p0, Lcom/volcengine/zeus/GlobalParam;->mInstallThreads:I

    return-void
.end method

.method public setLogger(Lcom/volcengine/zeus/log/IZeusLogger;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/volcengine/zeus/GlobalParam;->ensureInit()V

    .line 89
    iput-object p1, p0, Lcom/volcengine/zeus/GlobalParam;->mLogger:Lcom/volcengine/zeus/log/IZeusLogger;

    return-void
.end method

.method public setReporter(Lcom/volcengine/zeus/log/IZeusReporter;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/volcengine/zeus/GlobalParam;->ensureInit()V

    .line 84
    iput-object p1, p0, Lcom/volcengine/zeus/GlobalParam;->mReporter:Lcom/volcengine/zeus/log/IZeusReporter;

    return-void
.end method

.method public setSignature(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 202
    invoke-direct {p0}, Lcom/volcengine/zeus/GlobalParam;->ensureInit()V

    .line 203
    iget-object v0, p0, Lcom/volcengine/zeus/GlobalParam;->mSignature:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUnInstallPluginWhenHostChange(Ljava/lang/String;Z)V
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/volcengine/zeus/GlobalParam;->ensureInit()V

    .line 109
    iget-object v0, p0, Lcom/volcengine/zeus/GlobalParam;->unInstallPluginWhenHostChange:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unInstallPluginWhenHostChange(Ljava/lang/String;)Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/volcengine/zeus/GlobalParam;->unInstallPluginWhenHostChange:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 117
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
