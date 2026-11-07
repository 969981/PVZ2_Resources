.class public final Lgbsdk/common/host/abwj;
.super Ljava/lang/Object;
.source "CloudMessageManager.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbsdk/common/host/abux;",
            ">;"
        }
    .end annotation
.end field

.field public final aKC:Ljava/util/concurrent/ExecutorService;

.field private aKD:Landroid/content/Context;

.field private aKE:Lgbsdk/common/host/abwl;

.field private aKF:Lgbsdk/common/host/abwf;

.field private volatile aKG:Z

.field public aKH:Lgbsdk/common/host/abgm;

.field private final aN:J

.field volatile bo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field bw:J

.field volatile c:Ljava/lang/String;

.field private volatile k:Ljava/lang/String;

.field private volatile l:Ljava/lang/String;

.field private volatile m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;)V
    .locals 7

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 63
    iput-object v0, p0, Lgbsdk/common/host/abwj;->k:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lgbsdk/common/host/abwj;->c:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lgbsdk/common/host/abwj;->l:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lgbsdk/common/host/abwj;->m:Ljava/lang/String;

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lgbsdk/common/host/abwj;->bo:Ljava/lang/ref/WeakReference;

    const-wide/32 v1, 0x1d4c0

    .line 81
    iput-wide v1, p0, Lgbsdk/common/host/abwj;->aN:J

    .line 83
    new-instance v1, Lgbsdk/common/host/abgp;

    invoke-direct {v1}, Lgbsdk/common/host/abgp;-><init>()V

    iput-object v1, p0, Lgbsdk/common/host/abwj;->aKH:Lgbsdk/common/host/abgm;

    const/4 v1, 0x1

    .line 90
    iput-boolean v1, p0, Lgbsdk/common/host/abwj;->aKG:Z

    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lgbsdk/common/host/abwj;->aKD:Landroid/content/Context;

    .line 93
    invoke-virtual {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getAid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lgbsdk/common/host/abwj;->c:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getUpdateVersionCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lgbsdk/common/host/abwj;->m:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getDynamicParams()Lcom/monitor/cloudmessage/config/SDKIDynamicParams;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getDynamicParams()Lcom/monitor/cloudmessage/config/SDKIDynamicParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/monitor/cloudmessage/config/SDKIDynamicParams;->getUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lgbsdk/common/host/abwj;->k:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getDynamicParams()Lcom/monitor/cloudmessage/config/SDKIDynamicParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/monitor/cloudmessage/config/SDKIDynamicParams;->getDid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lgbsdk/common/host/abwj;->l:Ljava/lang/String;

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->isDebug()Z

    move-result v2

    .line 100
    sput-boolean v2, Lgbsdk/common/host/abvp;->a:Z

    .line 102
    :cond_1
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    iput-object v2, p0, Lgbsdk/common/host/abwj;->aKC:Ljava/util/concurrent/ExecutorService;

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    new-instance v3, Lgbsdk/common/host/abvc;

    invoke-direct {v3}, Lgbsdk/common/host/abvc;-><init>()V

    .line 105
    iget-object v4, p0, Lgbsdk/common/host/abwj;->c:Ljava/lang/String;

    iput-object v4, v3, Lgbsdk/common/host/abvd;->a:Ljava/lang/String;

    .line 106
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lgbsdk/common/host/abwj;->a:Ljava/util/List;

    .line 108
    iget-object v2, p0, Lgbsdk/common/host/abwj;->c:Ljava/lang/String;

    invoke-static {v2}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v2

    .line 1066
    iput-object p1, v2, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 1067
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cloud_uploading"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getAid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v2, Lgbsdk/common/host/abut;->b:Ljava/io/File;

    .line 1161
    iget-object p1, p0, Lgbsdk/common/host/abwj;->aKE:Lgbsdk/common/host/abwl;

    if-eqz p1, :cond_2

    .line 1162
    invoke-direct {p0, p1}, Lgbsdk/common/host/abwj;->a(Lgbsdk/common/host/abwl;)V

    .line 1163
    iput-object v0, p0, Lgbsdk/common/host/abwj;->aKE:Lgbsdk/common/host/abwl;

    .line 1166
    :cond_2
    iget-object p1, p0, Lgbsdk/common/host/abwj;->aKF:Lgbsdk/common/host/abwf;

    if-eqz p1, :cond_3

    .line 1167
    invoke-direct {p0, p1}, Lgbsdk/common/host/abwj;->a(Lgbsdk/common/host/abwf;)V

    .line 1168
    iput-object v0, p0, Lgbsdk/common/host/abwj;->aKF:Lgbsdk/common/host/abwf;

    .line 2117
    :cond_3
    new-instance p1, Lgbsdk/common/host/abwj$1;

    invoke-direct {p1, p0}, Lgbsdk/common/host/abwj$1;-><init>(Lgbsdk/common/host/abwj;)V

    .line 2285
    iget-boolean v0, p0, Lgbsdk/common/host/abwj;->aKG:Z

    if-eqz v0, :cond_4

    .line 2286
    invoke-direct {p0, p1}, Lgbsdk/common/host/abwj;->a(Lgbsdk/common/host/abwl;)V

    goto :goto_0

    .line 2288
    :cond_4
    iput-object p1, p0, Lgbsdk/common/host/abwj;->aKE:Lgbsdk/common/host/abwl;

    .line 111
    :goto_0
    iget-object p1, p0, Lgbsdk/common/host/abwj;->c:Ljava/lang/String;

    invoke-static {p1}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object p1

    .line 3072
    iget-object p1, p1, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 111
    invoke-virtual {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CloudMessageManager Init:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lgbsdk/common/host/abwj;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "ApmInsight"

    invoke-static {v0, p1}, Lgbsdk/common/host/abvp;->c(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private a(Lgbsdk/common/host/abwf;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 238
    iget-object v0, p0, Lgbsdk/common/host/abwj;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abux;

    .line 239
    instance-of v2, v1, Lgbsdk/common/host/abuy;

    if-eqz v2, :cond_0

    .line 240
    check-cast v1, Lgbsdk/common/host/abuy;

    .line 3090
    iput-object p1, v1, Lgbsdk/common/host/abuy;->aKN:Lgbsdk/common/host/abwf;

    :cond_1
    return-void
.end method

.method private a(Lgbsdk/common/host/abwl;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 269
    iget-object v0, p0, Lgbsdk/common/host/abwj;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abux;

    .line 270
    instance-of v2, v1, Lgbsdk/common/host/abvc;

    if-eqz v2, :cond_0

    .line 271
    check-cast v1, Lgbsdk/common/host/abvc;

    .line 3104
    iput-object p1, v1, Lgbsdk/common/host/abvc;->aKM:Lgbsdk/common/host/abwl;

    :cond_1
    return-void
.end method

.method public static m(Lorg/json/JSONObject;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 423
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static q(Ljava/lang/String;)[B
    .locals 1

    if-eqz p0, :cond_0

    .line 429
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "UTF-8"

    .line 430
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 433
    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final d(Ljava/lang/Runnable;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lgbsdk/common/host/abwj;->aKC:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
