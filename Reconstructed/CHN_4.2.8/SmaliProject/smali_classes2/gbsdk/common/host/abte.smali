.class public Lgbsdk/common/host/abte;
.super Ljava/lang/Object;
.source "TTSyncMutiProcessStateConfig.java"

# interfaces
.implements Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;


# static fields
.field private static volatile aHA:Lgbsdk/common/host/abte;


# instance fields
.field private aHj:Z

.field private aHk:Z

.field private aHm:I

.field private final aHn:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aHo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lgbsdk/common/host/abte;->aHj:Z

    .line 19
    iput v0, p0, Lgbsdk/common/host/abte;->aHm:I

    .line 20
    iput-boolean v0, p0, Lgbsdk/common/host/abte;->aHk:Z

    .line 21
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abte;->aHn:Ljava/util/Set;

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abte;->aHo:Ljava/util/Map;

    .line 36
    invoke-virtual {p0}, Lgbsdk/common/host/abte;->hj()V

    return-void
.end method

.method public static hi()Lgbsdk/common/host/abte;
    .locals 2

    .line 25
    sget-object v0, Lgbsdk/common/host/abte;->aHA:Lgbsdk/common/host/abte;

    if-nez v0, :cond_1

    .line 26
    const-class v0, Lgbsdk/common/host/abte;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abte;->aHA:Lgbsdk/common/host/abte;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lgbsdk/common/host/abte;

    invoke-direct {v1}, Lgbsdk/common/host/abte;-><init>()V

    sput-object v1, Lgbsdk/common/host/abte;->aHA:Lgbsdk/common/host/abte;

    .line 30
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 32
    :cond_1
    :goto_0
    sget-object v0, Lgbsdk/common/host/abte;->aHA:Lgbsdk/common/host/abte;

    return-object v0
.end method


# virtual methods
.method public getDelayTimeByApp(Ljava/lang/String;)I
    .locals 4

    .line 70
    iget-boolean v0, p0, Lgbsdk/common/host/abte;->aHk:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgbsdk/common/host/abte;->aHo:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 71
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    iget-object p1, p0, Lgbsdk/common/host/abte;->aHo:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 78
    :cond_2
    iget-boolean v0, p0, Lgbsdk/common/host/abte;->aHk:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lgbsdk/common/host/abte;->aHn:Ljava/util/Set;

    invoke-static {p1, v0}, Lgbsdk/common/host/abvw;->b(Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 79
    iget v1, p0, Lgbsdk/common/host/abte;->aHm:I

    :cond_3
    :goto_0
    return v1
.end method

.method public getDispatchDelayTime(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 86
    invoke-static {}, Lgbsdk/common/host/abmf;->cv()Lgbsdk/common/host/abmf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgbsdk/common/host/abmf;->z(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public hj()V
    .locals 5

    .line 40
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "app_delay_enable"

    const/4 v3, 0x0

    .line 40
    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/ttnet/ITTNetDepend;->getProviderInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    iput-boolean v0, p0, Lgbsdk/common/host/abte;->aHj:Z

    .line 44
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "app_delay_use_black_list"

    .line 44
    invoke-interface {v0, v2, v4, v3}, Lcom/bytedance/ttnet/ITTNetDepend;->getProviderInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 47
    :goto_1
    iput-boolean v1, p0, Lgbsdk/common/host/abte;->aHk:Z

    .line 49
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    .line 50
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "app_delay_whitelist_delay_time"

    .line 49
    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/ttnet/ITTNetDepend;->getProviderInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lgbsdk/common/host/abte;->aHm:I

    .line 52
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    .line 53
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "app_delay_white_list"

    const-string v3, ""

    .line 52
    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/ttnet/ITTNetDepend;->getProviderString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lgbsdk/common/host/abte;->aHn:Ljava/util/Set;

    invoke-static {v1, v0}, Lgbsdk/common/host/abtf;->a(Ljava/util/Set;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "app_delay_black_list"

    .line 56
    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/ttnet/ITTNetDepend;->getProviderString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lgbsdk/common/host/abte;->aHo:Ljava/util/Map;

    invoke-static {v1, v0}, Lgbsdk/common/host/abtf;->d(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public isAppDelayHandleEnable()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lgbsdk/common/host/abte;->aHj:Z

    return v0
.end method

.method public isDispatchDelayEnabled()Z
    .locals 1

    .line 91
    invoke-static {}, Lgbsdk/common/host/abmf;->cv()Lgbsdk/common/host/abmf;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/common/host/abmf;->isDispatchDelayEnabled()Z

    move-result v0

    return v0
.end method
