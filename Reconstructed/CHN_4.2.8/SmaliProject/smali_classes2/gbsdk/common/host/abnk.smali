.class public Lgbsdk/common/host/abnk;
.super Ljava/lang/Object;
.source "CacheData.java"


# instance fields
.field private final aS:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lgbsdk/common/host/abpx;",
            ">;"
        }
    .end annotation
.end field

.field private final aT:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lgbsdk/common/host/abnf;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private final vk:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lgbsdk/common/host/abnl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abnk;->aS:Ljava/util/LinkedList;

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abnk;->aT:Ljava/util/LinkedList;

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abnk;->vk:Ljava/util/LinkedList;

    const/16 v0, 0xc8

    .line 22
    iput v0, p0, Lgbsdk/common/host/abnk;->d:I

    return-void
.end method

.method static synthetic a(Lgbsdk/common/host/abnk;)Ljava/util/LinkedList;
    .locals 0

    .line 16
    iget-object p0, p0, Lgbsdk/common/host/abnk;->aS:Ljava/util/LinkedList;

    return-object p0
.end method

.method private a(Lcom/bytedance/framwork/core/apm/SDKMonitor;Lgbsdk/common/host/abnf;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object v0, p2, Lgbsdk/common/host/abnf;->a:Ljava/lang/String;

    iget-object v1, p2, Lgbsdk/common/host/abnf;->b:Lorg/json/JSONObject;

    iget-wide v2, p2, Lgbsdk/common/host/abnf;->c:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->monitorCommonLogInternal(Ljava/lang/String;Lorg/json/JSONObject;J)V

    return-void
.end method

.method private a(Lcom/bytedance/framwork/core/apm/SDKMonitor;Lgbsdk/common/host/abnl;)V
    .locals 11

    if-eqz p2, :cond_2

    .line 120
    iget-object v0, p2, Lgbsdk/common/host/abnl;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p2, Lgbsdk/common/host/abnl;->a:Ljava/lang/String;

    const-string v1, "api_error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-wide v2, p2, Lgbsdk/common/host/abnl;->b:J

    iget-wide v4, p2, Lgbsdk/common/host/abnl;->c:J

    iget-object v6, p2, Lgbsdk/common/host/abnl;->d:Ljava/lang/String;

    iget-object v7, p2, Lgbsdk/common/host/abnl;->e:Ljava/lang/String;

    iget-object v8, p2, Lgbsdk/common/host/abnl;->f:Ljava/lang/String;

    iget v9, p2, Lgbsdk/common/host/abnl;->g:I

    iget-object v10, p2, Lgbsdk/common/host/abnl;->vj:Lorg/json/JSONObject;

    move-object v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->monitorApiError(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p2, Lgbsdk/common/host/abnl;->a:Ljava/lang/String;

    const-string v1, "api_all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-wide v2, p2, Lgbsdk/common/host/abnl;->b:J

    iget-wide v4, p2, Lgbsdk/common/host/abnl;->c:J

    iget-object v6, p2, Lgbsdk/common/host/abnl;->d:Ljava/lang/String;

    iget-object v7, p2, Lgbsdk/common/host/abnl;->e:Ljava/lang/String;

    iget-object v8, p2, Lgbsdk/common/host/abnl;->f:Ljava/lang/String;

    iget v9, p2, Lgbsdk/common/host/abnl;->g:I

    iget-object v10, p2, Lgbsdk/common/host/abnl;->vj:Lorg/json/JSONObject;

    move-object v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->monitorSLA(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Lcom/bytedance/framwork/core/apm/SDKMonitor;Lgbsdk/common/host/abpx;)V
    .locals 10

    if-eqz p2, :cond_1

    .line 106
    iget-object v0, p2, Lgbsdk/common/host/abpx;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v2, p2, Lgbsdk/common/host/abpx;->a:Ljava/lang/String;

    iget v3, p2, Lgbsdk/common/host/abpx;->b:I

    iget-object v4, p2, Lgbsdk/common/host/abpx;->c:Lorg/json/JSONObject;

    iget-object v5, p2, Lgbsdk/common/host/abpx;->d:Lorg/json/JSONObject;

    iget-object v6, p2, Lgbsdk/common/host/abpx;->e:Lorg/json/JSONObject;

    iget-object v7, p2, Lgbsdk/common/host/abpx;->f:Lorg/json/JSONObject;

    iget-wide v8, p2, Lgbsdk/common/host/abpx;->g:J

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->monitorService(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lgbsdk/common/host/abnk;Lcom/bytedance/framwork/core/apm/SDKMonitor;Lgbsdk/common/host/abnf;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lgbsdk/common/host/abnk;->a(Lcom/bytedance/framwork/core/apm/SDKMonitor;Lgbsdk/common/host/abnf;)V

    return-void
.end method

.method static synthetic a(Lgbsdk/common/host/abnk;Lcom/bytedance/framwork/core/apm/SDKMonitor;Lgbsdk/common/host/abnl;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lgbsdk/common/host/abnk;->a(Lcom/bytedance/framwork/core/apm/SDKMonitor;Lgbsdk/common/host/abnl;)V

    return-void
.end method

.method static synthetic a(Lgbsdk/common/host/abnk;Lcom/bytedance/framwork/core/apm/SDKMonitor;Lgbsdk/common/host/abpx;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lgbsdk/common/host/abnk;->a(Lcom/bytedance/framwork/core/apm/SDKMonitor;Lgbsdk/common/host/abpx;)V

    return-void
.end method

.method static synthetic b(Lgbsdk/common/host/abnk;)Ljava/util/LinkedList;
    .locals 0

    .line 16
    iget-object p0, p0, Lgbsdk/common/host/abnk;->aT:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic c(Lgbsdk/common/host/abnk;)Ljava/util/LinkedList;
    .locals 0

    .line 16
    iget-object p0, p0, Lgbsdk/common/host/abnk;->vk:Ljava/util/LinkedList;

    return-object p0
.end method


# virtual methods
.method public a(Lgbsdk/common/host/abnf;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abnk;->aT:Ljava/util/LinkedList;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/abnk;->aT:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lgbsdk/common/host/abnk;->d:I

    if-le v1, v2, :cond_1

    .line 44
    iget-object v1, p0, Lgbsdk/common/host/abnk;->aT:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 46
    :cond_1
    iget-object v1, p0, Lgbsdk/common/host/abnk;->aT:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 47
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lgbsdk/common/host/abnl;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abnk;->vk:Ljava/util/LinkedList;

    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/abnk;->vk:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lgbsdk/common/host/abnk;->d:I

    if-le v1, v2, :cond_1

    .line 56
    iget-object v1, p0, Lgbsdk/common/host/abnk;->vk:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 58
    :cond_1
    iget-object v1, p0, Lgbsdk/common/host/abnk;->vk:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 59
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lgbsdk/common/host/abpx;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abnk;->aS:Ljava/util/LinkedList;

    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/abnk;->aS:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lgbsdk/common/host/abnk;->d:I

    if-le v1, v2, :cond_1

    .line 32
    iget-object v1, p0, Lgbsdk/common/host/abnk;->aS:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 34
    :cond_1
    iget-object v1, p0, Lgbsdk/common/host/abnk;->aS:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 35
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public k(Lcom/bytedance/framwork/core/apm/SDKMonitor;)V
    .locals 2

    .line 63
    iget-boolean v0, p0, Lgbsdk/common/host/abnk;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lgbsdk/common/host/abnk;->e:Z

    .line 68
    sget-object v0, Lgbsdk/common/host/abob$ab;->uG:Lgbsdk/common/host/abob;

    new-instance v1, Lgbsdk/common/host/abnk$1;

    invoke-direct {v1, p0, p1}, Lgbsdk/common/host/abnk$1;-><init>(Lgbsdk/common/host/abnk;Lcom/bytedance/framwork/core/apm/SDKMonitor;)V

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abob;->d(Ljava/lang/Runnable;)V

    return-void
.end method
