.class public final Lgbsdk/common/host/abex;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lgbsdk/common/host/abff;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lgbsdk/common/host/abff;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static volatile fi:Lgbsdk/common/host/abex;


# instance fields
.field private volatile e:Z

.field private final fj:Lcom/apm/insight/runtime/v;

.field private fk:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lgbsdk/common/host/abex;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgbsdk/common/host/abex;->b:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgbsdk/common/host/abex;->e:Z

    new-instance v0, Lgbsdk/common/host/abex$1;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abex$1;-><init>(Lgbsdk/common/host/abex;)V

    iput-object v0, p0, Lgbsdk/common/host/abex;->fk:Ljava/lang/Runnable;

    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/common/host/abex;->fj:Lcom/apm/insight/runtime/v;

    return-void
.end method

.method static synthetic a(Lgbsdk/common/host/abex;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lgbsdk/common/host/abex;->fk:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static a(Lgbsdk/common/host/abff;)V
    .locals 1

    sget-object v0, Lgbsdk/common/host/abfg;->dX:Lcom/apm/insight/MonitorCrash;

    invoke-static {v0, p0}, Lgbsdk/common/host/abex;->a(Ljava/lang/Object;Lgbsdk/common/host/abff;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;Lgbsdk/common/host/abff;)V
    .locals 4

    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/v;->a()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lgbsdk/common/host/abfg;->dX:Lcom/apm/insight/MonitorCrash;

    :cond_1
    invoke-static {}, Lcom/apm/insight/runtime/p;->e()Z

    move-result v0

    const-string v1, "EventUploadQueue"

    if-nez v0, :cond_2

    const-string v0, "enqueue before init."

    invoke-static {v1, v0}, Lgbsdk/common/host/abia;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lgbsdk/common/host/abex;->c(Ljava/lang/Object;Lgbsdk/common/host/abff;)V

    return-void

    :cond_2
    invoke-static {p0}, Lcom/apm/insight/runtime/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lgbsdk/common/host/abed;->b()V

    :cond_3
    :try_start_0
    invoke-static {p0}, Lgbsdk/common/host/abht;->i(Ljava/lang/Object;)V

    invoke-static {p0}, Lgbsdk/common/host/abhv;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "[reportException]upload limit all."

    invoke-static {v0}, Lgbsdk/common/host/abia;->d(Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object v0, p1, Lgbsdk/common/host/abfl;->a:Lorg/json/JSONObject;

    const-string v2, "stack"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lgbsdk/common/host/abhv;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "[reportException]upload limit stack."

    invoke-static {v0}, Lgbsdk/common/host/abia;->d(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    :cond_5
    invoke-static {}, Lgbsdk/common/host/abex;->f()V

    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p1, Lgbsdk/common/host/abfl;->a:Lorg/json/JSONObject;

    const-string v3, "log_type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "logType "

    if-nez v2, :cond_6

    invoke-static {p0, v0}, Lcom/apm/insight/runtime/a;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " enqueued"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lgbsdk/common/host/abia;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lgbsdk/common/host/abex;->b(Ljava/lang/Object;Lgbsdk/common/host/abff;)V

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not sampled"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lgbsdk/common/host/abia;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_7
    :goto_2
    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v0

    new-instance v1, Lgbsdk/common/host/abex$2;

    invoke-direct {v1, p0, p1}, Lgbsdk/common/host/abex$2;-><init>(Ljava/lang/Object;Lgbsdk/common/host/abff;)V

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/v;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static av()Lgbsdk/common/host/abex;
    .locals 2

    sget-object v0, Lgbsdk/common/host/abex;->fi:Lgbsdk/common/host/abex;

    if-nez v0, :cond_1

    const-class v0, Lgbsdk/common/host/abex;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lgbsdk/common/host/abex;->fi:Lgbsdk/common/host/abex;

    if-nez v1, :cond_0

    new-instance v1, Lgbsdk/common/host/abex;

    invoke-direct {v1}, Lgbsdk/common/host/abex;-><init>()V

    sput-object v1, Lgbsdk/common/host/abex;->fi:Lgbsdk/common/host/abex;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lgbsdk/common/host/abex;->fi:Lgbsdk/common/host/abex;

    return-object v0
.end method

.method static synthetic b(Lgbsdk/common/host/abex;)Lcom/apm/insight/runtime/v;
    .locals 0

    iget-object p0, p0, Lgbsdk/common/host/abex;->fj:Lcom/apm/insight/runtime/v;

    return-object p0
.end method

.method private static b(Ljava/lang/Object;Lgbsdk/common/host/abff;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lgbsdk/common/host/abex;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sget-object v1, Lgbsdk/common/host/abex;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    sget-object p0, Lgbsdk/common/host/abex;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    const/16 p1, 0x1e

    if-lt p0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[enqueue] size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgbsdk/common/host/abia;->d(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-static {}, Lgbsdk/common/host/abex;->g()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static c(Ljava/lang/Object;Lgbsdk/common/host/abff;)V
    .locals 4

    :try_start_0
    iget-object v0, p1, Lgbsdk/common/host/abfl;->a:Lorg/json/JSONObject;

    const-string v1, "log_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lgbsdk/common/host/abex;->b:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lgbsdk/common/host/abex;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lgbsdk/common/host/abex;->b:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez p0, :cond_1

    new-instance p0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-virtual {v2, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic d()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lgbsdk/common/host/abex;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic e()V
    .locals 0

    invoke-static {}, Lgbsdk/common/host/abex;->f()V

    return-void
.end method

.method private static f()V
    .locals 7

    sget-object v0, Lgbsdk/common/host/abex;->b:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lgbsdk/common/host/abex;->b:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sget-object v2, Lgbsdk/common/host/abex;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/apm/insight/runtime/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EventUploadQueue"

    const-string v1, "ApmConfig not inited, clear cache."

    invoke-static {v0, v1}, Lgbsdk/common/host/abia;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/apm/insight/runtime/a;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/apm/insight/runtime/a;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    :try_start_1
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgbsdk/common/host/abff;

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, Lgbsdk/common/host/abex;->b(Ljava/lang/Object;Lgbsdk/common/host/abff;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    goto :goto_0

    :cond_4
    :goto_2
    const-string v3, "EventUploadQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "logType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not sampled"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lgbsdk/common/host/abia;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    return-void

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private static g()V
    .locals 2

    invoke-static {}, Lcom/apm/insight/runtime/p;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/apm/insight/Npth;->isStopUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v0

    new-instance v1, Lgbsdk/common/host/abex$3;

    invoke-direct {v1}, Lgbsdk/common/host/abex$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/v;->a(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    sget-object v0, Lgbsdk/common/host/abex;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbsdk/common/host/abex;->fj:Lcom/apm/insight/runtime/v;

    iget-object v1, p0, Lgbsdk/common/host/abex;->fk:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/apm/insight/runtime/v;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abex;->fj:Lcom/apm/insight/runtime/v;

    iget-object v1, p0, Lgbsdk/common/host/abex;->fk:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/v;->a(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public c()V
    .locals 7

    iget-object v0, p0, Lgbsdk/common/host/abex;->fj:Lcom/apm/insight/runtime/v;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lgbsdk/common/host/abex;->e:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgbsdk/common/host/abex;->e:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sget-object v1, Lgbsdk/common/host/abex;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    :goto_1
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_2
    const/16 v6, 0x1e

    if-ge v5, v6, :cond_3

    :try_start_1
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/apm/insight/runtime/a/f;->a()Lcom/apm/insight/runtime/a/f;

    move-result-object v5

    invoke-static {v2}, Lgbsdk/common/host/abfk;->g(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/apm/insight/runtime/a/f;->a(Ljava/util/List;Lorg/json/JSONArray;)Lgbsdk/common/host/abfl;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v6, "upload events"

    invoke-static {v6}, Lgbsdk/common/host/abia;->i(Ljava/lang/Object;)V

    invoke-static {}, Lgbsdk/common/host/abfa;->au()Lgbsdk/common/host/abfa;

    move-result-object v6

    iget-object v5, v5, Lgbsdk/common/host/abfl;->a:Lorg/json/JSONObject;

    invoke-virtual {v6, v5}, Lgbsdk/common/host/abfa;->a(Lorg/json/JSONObject;)V

    :cond_5
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-static {v5}, Lgbsdk/common/host/abia;->c(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    iput-boolean v3, p0, Lgbsdk/common/host/abex;->e:Z

    return-void

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
