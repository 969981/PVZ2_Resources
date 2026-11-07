.class public Lgbsdk/optional/applog/abbj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/optional/applog/abbj$af;,
        Lgbsdk/optional/applog/abbj$ae;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;",
        "Ljava/util/Comparator<",
        "Lgbsdk/optional/applog/abfu;",
        ">;"
    }
.end annotation


# instance fields
.field public final A:Lgbsdk/optional/applog/abdj;

.field public final B:Lgbsdk/optional/applog/abaf;

.field public final C:Lgbsdk/optional/applog/abde;

.field public D:J

.field public volatile E:Z

.field public final F:Lgbsdk/optional/applog/abbg;

.field public final G:Lgbsdk/optional/applog/abay;

.field public a:J

.field public b:Lgbsdk/optional/applog/aj;

.field public c:Z

.field public final d:Lcom/bytedance/bdtracker/d;

.field public final e:Lgbsdk/optional/applog/abfl;

.field public f:Lgbsdk/optional/applog/ax;

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lgbsdk/optional/applog/abfu;",
            ">;"
        }
    .end annotation
.end field

.field public volatile h:Lgbsdk/optional/applog/av;

.field public final i:Lgbsdk/optional/applog/abfy;

.field public volatile j:Landroid/os/Handler;

.field public k:Lgbsdk/optional/applog/abbt;

.field public l:Lgbsdk/optional/applog/abah;

.field public volatile m:Lgbsdk/optional/applog/ac;

.field public final n:Lgbsdk/optional/applog/abaa;

.field public o:Lcom/bytedance/applog/UriConfig;

.field public final p:Landroid/os/Handler;

.field public q:Lgbsdk/optional/applog/abdr;

.field public volatile r:Z

.field public s:Lgbsdk/optional/applog/aq;

.field public volatile t:Lgbsdk/optional/applog/abby;

.field public final u:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lgbsdk/optional/applog/aq;",
            ">;"
        }
    .end annotation
.end field

.field public volatile v:Z

.field public volatile w:J

.field public final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbsdk/optional/applog/abbj$ae;",
            ">;"
        }
    .end annotation
.end field

.field public volatile y:Lgbsdk/optional/applog/abbi;

.field public volatile z:Lcom/bytedance/applog/InitConfig$IpcDataChecker;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;Lgbsdk/optional/applog/abfl;Lgbsdk/optional/applog/abfy;Lgbsdk/optional/applog/abde;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lgbsdk/optional/applog/abbj;->a:J

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lgbsdk/optional/applog/abbj;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/optional/applog/abbj;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/optional/applog/abbj;->x:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgbsdk/optional/applog/abbj;->E:Z

    iput-object p1, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    iput-object p2, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    iput-object p3, p0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    iput-object p4, p0, Lgbsdk/optional/applog/abbj;->C:Lgbsdk/optional/applog/abde;

    new-instance p2, Lgbsdk/optional/applog/abaa;

    invoke-direct {p2, p0}, Lgbsdk/optional/applog/abaa;-><init>(Lgbsdk/optional/applog/abbj;)V

    iput-object p2, p0, Lgbsdk/optional/applog/abbj;->n:Lgbsdk/optional/applog/abaa;

    new-instance p2, Lgbsdk/optional/applog/abbg;

    invoke-direct {p2, p0}, Lgbsdk/optional/applog/abbg;-><init>(Lgbsdk/optional/applog/abbj;)V

    iput-object p2, p0, Lgbsdk/optional/applog/abbj;->F:Lgbsdk/optional/applog/abbg;

    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "bd_tracker_w:"

    invoke-static {p3}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 2
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lgbsdk/optional/applog/abbj;->p:Landroid/os/Handler;

    new-instance p1, Lgbsdk/optional/applog/abaf;

    invoke-direct {p1, p0}, Lgbsdk/optional/applog/abaf;-><init>(Lgbsdk/optional/applog/abbj;)V

    iput-object p1, p0, Lgbsdk/optional/applog/abbj;->B:Lgbsdk/optional/applog/abaf;

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 3
    iget-object p1, p1, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isDeferredALinkEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    iget-object p2, p0, Lgbsdk/optional/applog/abbj;->B:Lgbsdk/optional/applog/abaf;

    invoke-virtual {p1, p2}, Lcom/bytedance/bdtracker/d;->addDataObserver(Lcom/bytedance/applog/IDataObserver;)V

    :cond_0
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    iget-object p2, p0, Lgbsdk/optional/applog/abbj;->p:Landroid/os/Handler;

    .line 5
    iget-object p3, p1, Lgbsdk/optional/applog/abfy;->i:Lgbsdk/optional/applog/abfp;

    .line 6
    iget-object p3, p3, Lgbsdk/optional/applog/abfp;->i:Lgbsdk/optional/applog/aber;

    invoke-virtual {p3, p2}, Lgbsdk/optional/applog/aber;->a(Landroid/os/Handler;)V

    .line 7
    iget-object p2, p1, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    .line 8
    iget-object p2, p2, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 9
    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->isMigrateEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 10
    iget-object p2, p1, Lgbsdk/optional/applog/abfy;->c:Landroid/content/Context;

    const/4 p3, 0x1

    .line 11
    :try_start_0
    invoke-static {p2}, Lgbsdk/optional/applog/abav;->a(Landroid/content/Context;)Lgbsdk/optional/applog/abav;

    move-result-object p4

    .line 12
    iget-boolean p4, p4, Lgbsdk/optional/applog/abav;->d:Z

    if-eqz p4, :cond_3

    .line 13
    iget-object p4, p1, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    if-nez p4, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    iget-object p4, p4, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v1, "google_aid"

    .line 15
    invoke-interface {p4, v1}, Lcom/bytedance/applog/store/kv/IKVStore;->remove(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    .line 16
    :goto_0
    iget-object p4, p1, Lgbsdk/optional/applog/abfy;->h:Lcom/bytedance/applog/store/kv/IKVStore;

    iget-object v1, p1, Lgbsdk/optional/applog/abfy;->i:Lgbsdk/optional/applog/abfp;

    invoke-virtual {v1}, Lgbsdk/optional/applog/abfp;->g()Ljava/lang/String;

    move-result-object v1

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "old_did"

    .line 17
    invoke-interface {p4, v2, v1}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v1, "is_migrate"

    invoke-interface {p4, v1, p3}, Lcom/bytedance/applog/store/kv/IKVStore;->putBoolean(Ljava/lang/String;Z)Lcom/bytedance/applog/store/kv/IKVStore;

    .line 18
    :goto_1
    iget-object p4, p1, Lgbsdk/optional/applog/abfy;->i:Lgbsdk/optional/applog/abfp;

    const-string v1, "openudid"

    invoke-virtual {p4, v1}, Lgbsdk/optional/applog/abfp;->b(Ljava/lang/String;)V

    iget-object p4, p1, Lgbsdk/optional/applog/abfy;->i:Lgbsdk/optional/applog/abfp;

    const-string v1, "clientudid"

    invoke-virtual {p4, v1}, Lgbsdk/optional/applog/abfp;->b(Ljava/lang/String;)V

    iget-object p4, p1, Lgbsdk/optional/applog/abfy;->i:Lgbsdk/optional/applog/abfp;

    const-string v1, "serial_number"

    invoke-virtual {p4, v1}, Lgbsdk/optional/applog/abfp;->b(Ljava/lang/String;)V

    iget-object p4, p1, Lgbsdk/optional/applog/abfy;->i:Lgbsdk/optional/applog/abfp;

    const-string v1, "sim_serial_number"

    invoke-virtual {p4, v1}, Lgbsdk/optional/applog/abfp;->b(Ljava/lang/String;)V

    iget-object p4, p1, Lgbsdk/optional/applog/abfy;->i:Lgbsdk/optional/applog/abfp;

    const-string v1, "udid"

    invoke-virtual {p4, v1}, Lgbsdk/optional/applog/abfp;->b(Ljava/lang/String;)V

    iget-object p4, p1, Lgbsdk/optional/applog/abfy;->i:Lgbsdk/optional/applog/abfp;

    const-string v1, "udid_list"

    invoke-virtual {p4, v1}, Lgbsdk/optional/applog/abfp;->b(Ljava/lang/String;)V

    iget-object p4, p1, Lgbsdk/optional/applog/abfy;->i:Lgbsdk/optional/applog/abfp;

    const-string v1, "device_id"

    invoke-virtual {p4, v1}, Lgbsdk/optional/applog/abfp;->b(Ljava/lang/String;)V

    const-string p4, "clearMigrationInfo"

    invoke-virtual {p1, p4}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_3
    :goto_2
    :try_start_1
    invoke-static {p2}, Lgbsdk/optional/applog/abav;->a(Landroid/content/Context;)Lgbsdk/optional/applog/abav;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    nop

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v1, "detect migrate is error, "

    :try_start_3
    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v0

    invoke-interface {p4, v1, p3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_3
    :try_start_4
    invoke-virtual {p1}, Lgbsdk/optional/applog/abav;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :goto_4
    :try_start_5
    invoke-static {p2}, Lgbsdk/optional/applog/abav;->a(Landroid/content/Context;)Lgbsdk/optional/applog/abav;

    move-result-object p2

    invoke-virtual {p2}, Lgbsdk/optional/applog/abav;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    throw p1

    .line 19
    :cond_4
    :goto_5
    new-instance p1, Lgbsdk/optional/applog/abdj;

    invoke-direct {p1, p0}, Lgbsdk/optional/applog/abdj;-><init>(Lgbsdk/optional/applog/abbj;)V

    iput-object p1, p0, Lgbsdk/optional/applog/abbj;->A:Lgbsdk/optional/applog/abdj;

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 20
    iget-object p1, p1, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isClearDidAndIid()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    iget-object p2, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 22
    iget-object p2, p2, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getClearKey()Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 24
    iget-object p1, p1, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 25
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getIpcDataChecker()Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    invoke-virtual {p1}, Lgbsdk/optional/applog/abfl;->f()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 26
    iget-object p1, p1, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 27
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getIpcDataChecker()Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/optional/applog/abbj;->z:Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    :cond_6
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    invoke-virtual {p1}, Lgbsdk/optional/applog/abfl;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lgbsdk/optional/applog/abci;

    invoke-direct {p1, p0}, Lgbsdk/optional/applog/abci;-><init>(Lgbsdk/optional/applog/abbj;)V

    iput-object p1, p0, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 28
    :cond_7
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->p:Landroid/os/Handler;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 29
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 30
    iget-object p1, p1, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->autoStart()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 31
    invoke-virtual {p0}, Lgbsdk/optional/applog/abbj;->h()V

    :cond_8
    new-instance p1, Lgbsdk/optional/applog/abay;

    invoke-direct {p1, p0}, Lgbsdk/optional/applog/abay;-><init>(Lgbsdk/optional/applog/abbj;)V

    iput-object p1, p0, Lgbsdk/optional/applog/abbj;->G:Lgbsdk/optional/applog/abay;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->n:Lgbsdk/optional/applog/abaa;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lgbsdk/optional/applog/abaa;->f:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lgbsdk/optional/applog/abfu;)V
    .locals 4

    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->t:Lgbsdk/optional/applog/abby;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lgbsdk/optional/applog/abbm;

    if-nez v0, :cond_2

    instance-of v0, p1, Lgbsdk/optional/applog/abbw;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lgbsdk/optional/applog/abbj;->f()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    instance-of v0, p1, Lgbsdk/optional/applog/abef;

    if-nez v0, :cond_2

    instance-of v0, p1, Lgbsdk/optional/applog/abao;

    if-eqz v0, :cond_6

    :cond_2
    invoke-virtual {p1}, Lgbsdk/optional/applog/abfu;->n()Lorg/json/JSONObject;

    move-result-object v0

    instance-of v1, p1, Lgbsdk/optional/applog/abbw;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lgbsdk/optional/applog/abbw;

    invoke-virtual {v1}, Lgbsdk/optional/applog/abbw;->c()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    :try_start_0
    const-string v3, "duration"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_4
    :goto_0
    instance-of v1, p1, Lgbsdk/optional/applog/abef;

    if-eqz v1, :cond_5

    const-string v1, "event"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "log_type"

    :try_start_1
    check-cast p1, Lgbsdk/optional/applog/abef;

    .line 3
    iget-object p1, p1, Lgbsdk/optional/applog/abef;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :catchall_1
    :cond_5
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->k:Lgbsdk/optional/applog/abcz;

    .line 7
    iget-object v1, p0, Lgbsdk/optional/applog/abbj;->t:Lgbsdk/optional/applog/abby;

    .line 8
    iget-object v1, v1, Lgbsdk/optional/applog/abby;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v0, v1}, Lgbsdk/optional/applog/abcz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    :cond_6
    return-void
.end method

.method public final a(Lgbsdk/optional/applog/aq;)V
    .locals 2

    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 104
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 105
    iget-boolean v0, v0, Lcom/bytedance/bdtracker/d;->x:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p1, Lgbsdk/optional/applog/aq;->d:Z

    .line 107
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lgbsdk/optional/applog/aq;->f()J

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_0
    iput-wide v0, p0, Lgbsdk/optional/applog/abbj;->a:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    invoke-virtual {v1}, Lgbsdk/optional/applog/abfy;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lgbsdk/optional/applog/abce;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lgbsdk/optional/applog/abbj;->k:Lgbsdk/optional/applog/abbt;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lgbsdk/optional/applog/abbj;->k:Lgbsdk/optional/applog/abbt;

    invoke-virtual {v2, v0}, Lgbsdk/optional/applog/abbt;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 76
    iget-object v0, v0, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v2, "is_first_time_launch"

    invoke-interface {v0, v2, v1}, Lcom/bytedance/applog/store/kv/IKVStore;->putInt(Ljava/lang/String;I)Lcom/bytedance/applog/store/kv/IKVStore;

    .line 77
    :cond_0
    invoke-virtual {p0, v1}, Lgbsdk/optional/applog/abbj;->a(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 78
    iget-object v2, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 79
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const-string p1, "Register new uuid:{} failed"

    .line 80
    invoke-interface {v2, p1, v0, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    invoke-virtual {v0}, Lgbsdk/optional/applog/abfy;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    invoke-virtual {v1}, Lgbsdk/optional/applog/abfy;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0}, Lgbsdk/optional/applog/abce;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p2, v1}, Lgbsdk/optional/applog/abce;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 84
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "setUserUniqueId not change"

    .line 85
    invoke-interface {p1, v0, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lgbsdk/optional/applog/abga;->a()Lgbsdk/optional/applog/abbw;

    move-result-object v1

    iget-object v5, p0, Lgbsdk/optional/applog/abbj;->n:Lgbsdk/optional/applog/abaa;

    .line 86
    iget-object v5, v5, Lgbsdk/optional/applog/abaa;->f:Ljava/lang/String;

    .line 87
    invoke-static {v5}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lgbsdk/optional/applog/abfu;->o()Lgbsdk/optional/applog/abfu;

    move-result-object v1

    check-cast v1, Lgbsdk/optional/applog/abbw;

    .line 88
    iget-object v6, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 89
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 90
    iput-object v6, v1, Lgbsdk/optional/applog/abfu;->B:Ljava/lang/String;

    .line 91
    iget-wide v6, v1, Lgbsdk/optional/applog/abfu;->r:J

    sub-long v6, v3, v6

    invoke-virtual {v1, v3, v4}, Lgbsdk/optional/applog/abfu;->b(J)V

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-ltz v10, :cond_1

    goto :goto_0

    :cond_1
    move-wide v6, v8

    :goto_0
    iput-wide v6, v1, Lgbsdk/optional/applog/abbw;->a:J

    iget-object v6, p0, Lgbsdk/optional/applog/abbj;->n:Lgbsdk/optional/applog/abaa;

    .line 92
    iget-object v6, v6, Lgbsdk/optional/applog/abaa;->o:Ljava/lang/String;

    .line 93
    iput-object v6, v1, Lgbsdk/optional/applog/abbw;->j:Ljava/lang/String;

    iget-object v6, p0, Lgbsdk/optional/applog/abbj;->n:Lgbsdk/optional/applog/abaa;

    .line 94
    iget-object v7, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 95
    invoke-virtual {v6, v7, v1}, Lgbsdk/optional/applog/abaa;->a(Lcom/bytedance/applog/IAppLogInstance;Lgbsdk/optional/applog/abfu;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0, p1, p2}, Lgbsdk/optional/applog/abbj;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-nez v1, :cond_3

    .line 96
    sget-object v1, Lgbsdk/optional/applog/abga;->j:Lgbsdk/optional/applog/abbw;

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    :goto_1
    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    .line 97
    invoke-virtual {v1}, Lgbsdk/optional/applog/abfu;->o()Lgbsdk/optional/applog/abfu;

    move-result-object p2

    check-cast p2, Lgbsdk/optional/applog/abbw;

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {p2, v3, v4}, Lgbsdk/optional/applog/abfu;->b(J)V

    const-wide/16 v3, -0x1

    iput-wide v3, p2, Lgbsdk/optional/applog/abbw;->a:J

    iget-object v1, p0, Lgbsdk/optional/applog/abbj;->n:Lgbsdk/optional/applog/abaa;

    .line 98
    iget-object v3, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 99
    invoke-virtual {v1, v3, p2, v0, p1}, Lgbsdk/optional/applog/abaa;->a(Lcom/bytedance/bdtracker/d;Lgbsdk/optional/applog/abfu;Ljava/util/List;Z)Lgbsdk/optional/applog/abbf;

    move-result-object p1

    iget-object v1, p0, Lgbsdk/optional/applog/abbj;->n:Lgbsdk/optional/applog/abaa;

    .line 100
    iget-object v1, v1, Lgbsdk/optional/applog/abaa;->o:Ljava/lang/String;

    .line 101
    iput-object v1, p1, Lgbsdk/optional/applog/abbf;->d:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->n:Lgbsdk/optional/applog/abaa;

    .line 102
    iget-object v1, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 103
    invoke-virtual {p1, v1, p2}, Lgbsdk/optional/applog/abaa;->a(Lcom/bytedance/applog/IAppLogInstance;Lgbsdk/optional/applog/abfu;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgbsdk/optional/applog/abfu;

    invoke-virtual {p0, p2}, Lgbsdk/optional/applog/abbj;->b(Lgbsdk/optional/applog/abfu;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->p:Landroid/os/Handler;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgbsdk/optional/applog/abfu;",
            ">;)V"
        }
    .end annotation

    .line 81
    sget-object v0, Lgbsdk/optional/applog/abfw;->a:Ljava/util/concurrent/ExecutorService;

    .line 82
    new-instance v1, Lgbsdk/optional/applog/abbj$ad;

    invoke-direct {v1, p0, p1}, Lgbsdk/optional/applog/abbj$ad;-><init>(Lgbsdk/optional/applog/abbj;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a([Ljava/lang/String;Z)V
    .locals 10

    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 12
    iget-object v0, v0, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isTrackEventEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v3, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 15
    iget-boolean v3, v3, Lcom/bytedance/bdtracker/d;->x:Z

    if-nez v3, :cond_1e

    if-eqz v0, :cond_1

    goto/16 :goto_10

    .line 16
    :cond_1
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->g:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lgbsdk/optional/applog/abbj;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lgbsdk/optional/applog/abbj;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v4, p1

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    array-length v0, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_2

    aget-object v5, p1, v4

    invoke-static {v5}, Lgbsdk/optional/applog/abfu;->a(Ljava/lang/String;)Lgbsdk/optional/applog/abfu;

    move-result-object v5

    .line 17
    iget-object v6, p0, Lgbsdk/optional/applog/abbj;->n:Lgbsdk/optional/applog/abaa;

    .line 18
    iget-object v7, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 19
    invoke-virtual {v6, v7, v5}, Lgbsdk/optional/applog/abaa;->a(Lcom/bytedance/applog/IAppLogInstance;Lgbsdk/optional/applog/abfu;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 20
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    .line 21
    :cond_3
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 22
    iget-object p1, p1, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 23
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isEventFilterEnable()Z

    move-result p1

    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->y:Lgbsdk/optional/applog/abbi;

    .line 24
    iget-object v4, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 25
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->w:Lgbsdk/optional/applog/abbi;

    if-eqz p1, :cond_4

    if-nez v0, :cond_5

    :cond_4
    if-nez v4, :cond_5

    goto :goto_3

    .line 26
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgbsdk/optional/applog/abfu;

    instance-of v6, v5, Lgbsdk/optional/applog/abbm;

    if-eqz v6, :cond_6

    check-cast v5, Lgbsdk/optional/applog/abbm;

    .line 27
    iget-object v6, v5, Lgbsdk/optional/applog/abbm;->c:Ljava/lang/String;

    .line 28
    invoke-virtual {v5}, Lgbsdk/optional/applog/abbm;->f()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_7

    invoke-virtual {v4, v6, v5}, Lgbsdk/optional/applog/abbi;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    if-eqz v0, :cond_6

    invoke-virtual {v0, v6, v5}, Lgbsdk/optional/applog/abbi;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 29
    :cond_9
    :goto_3
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 30
    iget-object p1, p1, Lgbsdk/optional/applog/abfl;->s:Lgbsdk/optional/applog/abdy;

    invoke-virtual {p1, v3, p0}, Lgbsdk/optional/applog/abdy;->a(Ljava/util/List;Lgbsdk/optional/applog/abbj;)V

    .line 31
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1c

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    invoke-virtual {p1}, Lgbsdk/optional/applog/abfl;->f()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 32
    invoke-static {v3, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgbsdk/optional/applog/abfu;

    .line 33
    iget-object v6, p0, Lgbsdk/optional/applog/abbj;->n:Lgbsdk/optional/applog/abaa;

    .line 34
    iget-object v7, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 35
    invoke-virtual {v6, v5, p1, v7}, Lgbsdk/optional/applog/abaa;->a(Lgbsdk/optional/applog/abfu;Ljava/util/List;Lcom/bytedance/bdtracker/d;)V

    instance-of v6, v5, Lgbsdk/optional/applog/abbw;

    if-eqz v6, :cond_a

    invoke-static {v5}, Lgbsdk/optional/applog/abaa;->a(Lgbsdk/optional/applog/abfu;)Z

    move-result v4

    const/4 v3, 0x1

    :cond_a
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    if-ne v6, v7, :cond_b

    iget-object v6, p0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    const/16 v7, 0x10

    invoke-virtual {v6, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5

    :cond_b
    invoke-virtual {p0, v5}, Lgbsdk/optional/applog/abbj;->a(Lgbsdk/optional/applog/abfu;)V

    :cond_c
    :goto_5
    const-string v6, "event_process"

    invoke-static {v6, v5}, Lcom/bytedance/applog/log/LogUtils;->sendObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 36
    :cond_d
    iget-boolean v0, p0, Lgbsdk/optional/applog/abbj;->E:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    .line 37
    iget-boolean v5, v0, Lgbsdk/optional/applog/abfy;->b:Z

    if-eqz v5, :cond_e

    invoke-virtual {v0}, Lgbsdk/optional/applog/abfy;->r()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_12

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lgbsdk/optional/applog/abbj;->D:J

    sub-long/2addr v5, v7

    const-wide/32 v7, 0xea60

    cmp-long v0, v5, v7

    if-ltz v0, :cond_12

    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    invoke-virtual {v0, p1}, Lgbsdk/optional/applog/abfl;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0xc8

    if-gt v5, v6, :cond_f

    invoke-virtual {p0, v0}, Lgbsdk/optional/applog/abbj;->a(Ljava/util/List;)V

    goto :goto_9

    :cond_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    div-int/2addr v5, v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    rem-int/2addr v7, v6

    if-nez v7, :cond_10

    const/4 v6, 0x0

    goto :goto_7

    :cond_10
    const/4 v6, 0x1

    :goto_7
    add-int/2addr v5, v6

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v5, :cond_12

    mul-int/lit16 v7, v6, 0xc8

    add-int/lit16 v8, v7, 0xc8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-interface {v0, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgbsdk/optional/applog/abbj;->a(Ljava/util/List;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 39
    :cond_11
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 40
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "can\'t not use realtime event"

    .line 41
    invoke-interface {v0, v6, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :cond_12
    :goto_9
    invoke-virtual {p0}, Lgbsdk/optional/applog/abbj;->c()Lgbsdk/optional/applog/av;

    move-result-object v0

    .line 43
    iget-object v0, v0, Lgbsdk/optional/applog/av;->c:Lgbsdk/optional/applog/an;

    invoke-virtual {v0, p1}, Lgbsdk/optional/applog/an;->a(Ljava/util/List;)V

    if-eqz v3, :cond_14

    .line 44
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->p:Landroid/os/Handler;

    if-eqz p1, :cond_14

    const/4 v0, 0x7

    if-eqz v4, :cond_13

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_a

    :cond_13
    iget-object v3, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    invoke-virtual {v3}, Lgbsdk/optional/applog/abfl;->j()J

    move-result-wide v3

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 45
    :cond_14
    :goto_a
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->n:Lgbsdk/optional/applog/abaa;

    .line 46
    iget-boolean v0, p1, Lgbsdk/optional/applog/abaa;->q:Z

    iput-boolean v2, p1, Lgbsdk/optional/applog/abaa;->q:Z

    if-nez v0, :cond_17

    .line 47
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 48
    iget-object p1, p1, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v0, "batch_event_size"

    const/4 v3, -0x1

    invoke-interface {p1, v0, v3}, Lcom/bytedance/applog/store/kv/IKVStore;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 49
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    invoke-virtual {v0, p1}, Lgbsdk/optional/applog/abfl;->a(I)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_b

    :cond_15
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->h:Lgbsdk/optional/applog/av;

    .line 50
    iget-object v3, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 51
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 52
    iget-object v4, v0, Lgbsdk/optional/applog/av;->a:Lgbsdk/optional/applog/ag;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/String;

    aput-object v3, v5, v2

    const-string v3, "eventv3"

    const-string v6, "_app_id= ? "

    invoke-virtual {v0, v4, v3, v6, v5}, Lgbsdk/optional/applog/av;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lt v0, p1, :cond_16

    goto :goto_c

    :cond_16
    :goto_b
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_18

    .line 53
    :cond_17
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->l:Lgbsdk/optional/applog/abah;

    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abbj;->a(Lgbsdk/optional/applog/aq;)V

    .line 54
    :cond_18
    iget-boolean p1, p0, Lgbsdk/optional/applog/abbj;->c:Z

    if-nez p1, :cond_1c

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->n:Lgbsdk/optional/applog/abaa;

    .line 55
    iget-boolean p1, p1, Lgbsdk/optional/applog/abaa;->k:Z

    if-eqz p1, :cond_1c

    .line 56
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 57
    iget-object p1, p1, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 58
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isAutoActive()Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-virtual {p0, v2}, Lgbsdk/optional/applog/abbj;->a(Z)Z

    goto :goto_f

    :cond_19
    new-instance p1, Landroid/content/Intent;

    .line 59
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 60
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 61
    const-class v4, Lcom/bytedance/applog/collector/Collector;

    invoke-direct {p1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_d
    if-ge v5, v0, :cond_1a

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgbsdk/optional/applog/abfu;

    invoke-virtual {v7}, Lgbsdk/optional/applog/abfu;->m()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    aget-object v7, v4, v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_1a
    const v0, 0x4b000

    if-lt v6, v0, :cond_1b

    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->z:Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    if-eqz v0, :cond_1b

    :try_start_1
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->z:Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    invoke-interface {v0, v4}, Lcom/bytedance/applog/InitConfig$IpcDataChecker;->checkIpcData([Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_e

    :catchall_0
    move-exception v0

    .line 62
    iget-object v3, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 63
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const-string v0, "check ipc data"

    .line 64
    invoke-interface {v3, v0, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    :goto_e
    if-eqz v1, :cond_1c

    const-string v0, "K_DATA"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 66
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 67
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1c
    :goto_f
    if-eqz p2, :cond_1d

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    invoke-virtual {p1}, Lgbsdk/optional/applog/abfl;->f()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lgbsdk/optional/applog/abbj;->w:J

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-lez v4, :cond_1d

    iput-wide p1, p0, Lgbsdk/optional/applog/abbj;->w:J

    .line 68
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->l:Lgbsdk/optional/applog/abah;

    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abbj;->a(Lgbsdk/optional/applog/aq;)V

    :cond_1d
    return-void

    :catchall_1
    move-exception p1

    .line 69
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_1e
    :goto_10
    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "ssid"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    return v4

    .line 1
    :cond_1
    iget-object v3, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "Register to get ssid by temp header..."

    .line 3
    invoke-interface {v3, v6, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v3, p1}, Lgbsdk/optional/applog/abce;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    iget-object v5, p0, Lgbsdk/optional/applog/abbj;->k:Lgbsdk/optional/applog/abbt;

    invoke-virtual {v5, v3}, Lgbsdk/optional/applog/abbt;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgbsdk/optional/applog/abce;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    const/4 v2, 0x0

    .line 5
    :cond_3
    invoke-static {v2}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6
    iget-object v3, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 7
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "Register to get ssid by header success."

    :try_start_1
    new-array v6, v0, [Ljava/lang/Object;

    .line 8
    invoke-interface {v3, v5, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v4

    :catchall_0
    move-exception p1

    .line 9
    iget-object v1, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 10
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "JSON handle failed"

    .line 11
    invoke-interface {v1, v3, p1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    return v0
.end method

.method public a(Z)Z
    .locals 1

    iget-boolean v0, p0, Lgbsdk/optional/applog/abbj;->c:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lgbsdk/optional/applog/abbj;->c:Z

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget-boolean p1, p0, Lgbsdk/optional/applog/abbj;->c:Z

    return p1
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    return-object v0
.end method

.method public b(Lgbsdk/optional/applog/abfu;)V
    .locals 5

    iget-wide v0, p1, Lgbsdk/optional/applog/abfu;->r:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 70
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 71
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Data ts is 0"

    .line 72
    invoke-interface {v0, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->g:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgbsdk/optional/applog/abbj;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lgbsdk/optional/applog/abbj;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v2, p0, Lgbsdk/optional/applog/abbj;->n:Lgbsdk/optional/applog/abaa;

    .line 74
    iget-object v3, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 75
    iget-object v4, p0, Lgbsdk/optional/applog/abbj;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, p1, v4}, Lgbsdk/optional/applog/abaa;->a(Lcom/bytedance/bdtracker/d;Lgbsdk/optional/applog/abfu;Ljava/util/List;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of p1, p1, Lgbsdk/optional/applog/abbw;

    rem-int/lit8 v0, v1, 0xa

    if-eqz v0, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->p:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->p:Landroid/os/Handler;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->p:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    invoke-virtual {v0}, Lgbsdk/optional/applog/abfy;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    invoke-virtual {v1, p1}, Lgbsdk/optional/applog/abfy;->e(Ljava/lang/String;)Z

    iget-object v1, p0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    invoke-virtual {v1, p2}, Lgbsdk/optional/applog/abfy;->f(Ljava/lang/String;)V

    iget-object p2, p0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    const-string v1, ""

    invoke-virtual {p2, v1}, Lgbsdk/optional/applog/abfy;->g(Ljava/lang/String;)Z

    iget-object p2, p0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    const-string v1, "$tr_web_ssid"

    invoke-virtual {p2, v1}, Lgbsdk/optional/applog/abfy;->c(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 11
    iget-object p2, p2, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 12
    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->isClearABCacheOnUserChange()Z

    move-result p2

    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 13
    iget-object p2, p0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lgbsdk/optional/applog/abfy;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    .line 14
    iget-object p2, p2, Lgbsdk/optional/applog/abfy;->n:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    :cond_0
    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p0, Lgbsdk/optional/applog/abbj;->v:Z

    iget-object p2, p0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lgbsdk/optional/applog/abbj;->x:Ljava/util/List;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->x:Ljava/util/List;

    new-instance v1, Lgbsdk/optional/applog/abbj$af;

    invoke-direct {v1, p0, p1}, Lgbsdk/optional/applog/abbj$af;-><init>(Lgbsdk/optional/applog/abbj;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->A:Lgbsdk/optional/applog/abdj;

    invoke-virtual {v0, p1}, Lgbsdk/optional/applog/abdj;->a(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()Lgbsdk/optional/applog/av;
    .locals 2

    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->h:Lgbsdk/optional/applog/av;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->h:Lgbsdk/optional/applog/av;

    if-nez v0, :cond_0

    new-instance v0, Lgbsdk/optional/applog/av;

    .line 1
    iget-object v1, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 2
    iget-object v1, v1, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 3
    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->getDbName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgbsdk/optional/applog/av;-><init>(Lgbsdk/optional/applog/abbj;Ljava/lang/String;)V

    :cond_0
    iput-object v0, p0, Lgbsdk/optional/applog/abbj;->h:Lgbsdk/optional/applog/av;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->h:Lgbsdk/optional/applog/av;

    return-object v0
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->A:Lgbsdk/optional/applog/abdj;

    invoke-virtual {v0, p1}, Lgbsdk/optional/applog/abdj;->b(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lgbsdk/optional/applog/abfu;

    check-cast p2, Lgbsdk/optional/applog/abfu;

    .line 1
    iget-wide v0, p1, Lgbsdk/optional/applog/abfu;->r:J

    iget-wide p1, p2, Lgbsdk/optional/applog/abfu;->r:J

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()Lcom/bytedance/applog/UriConfig;
    .locals 1

    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->o:Lcom/bytedance/applog/UriConfig;

    if-nez v0, :cond_0

    .line 1
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 2
    iget-object v0, v0, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abbj;->o:Lcom/bytedance/applog/UriConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/applog/util/UriConstants;->createUriConfig(I)Lcom/bytedance/applog/UriConfig;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abbj;->o:Lcom/bytedance/applog/UriConfig;

    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->o:Lcom/bytedance/applog/UriConfig;

    return-object v0
.end method

.method public d(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->A:Lgbsdk/optional/applog/abdj;

    invoke-virtual {v0, p1}, Lgbsdk/optional/applog/abdj;->d(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    new-instance v0, Lgbsdk/optional/applog/abbj$ac;

    invoke-direct {v0, p0}, Lgbsdk/optional/applog/abbj$ac;-><init>(Lgbsdk/optional/applog/abbj;)V

    invoke-static {v0}, Lgbsdk/optional/applog/abdx;->a(Lgbsdk/optional/applog/abbz;)V

    return-void
.end method

.method public e(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->A:Lgbsdk/optional/applog/abdj;

    invoke-virtual {v0, p1}, Lgbsdk/optional/applog/abdj;->c(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->A:Lgbsdk/optional/applog/abdj;

    invoke-virtual {v0, p1}, Lgbsdk/optional/applog/abdj;->e(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 2
    iget v1, v0, Lgbsdk/optional/applog/abfl;->r:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v0, v0, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isAutoTrackEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->p:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final h()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgbsdk/optional/applog/abbj;->r:Z

    .line 1
    iget-object v1, p0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    .line 2
    iget-object v2, v1, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    invoke-virtual {v2}, Lgbsdk/optional/applog/abfl;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lgbsdk/optional/applog/abfy;->c:Landroid/content/Context;

    invoke-static {v1}, Lgbsdk/optional/applog/abdx;->a(Landroid/content/Context;)V

    .line 3
    :cond_0
    iget-object v1, p0, Lgbsdk/optional/applog/abbj;->p:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 12

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_11

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/bytedance/applog/IPullAbTestConfigCallback;

    if-eqz v1, :cond_2

    iget p1, p1, Landroid/os/Message;->arg1:I

    check-cast v0, Lcom/bytedance/applog/IPullAbTestConfigCallback;

    .line 1
    invoke-virtual {p0}, Lgbsdk/optional/applog/abbj;->i()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "ABTest is not enabled"

    .line 3
    invoke-interface {p1, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_0
    iget-object v1, p0, Lgbsdk/optional/applog/abbj;->m:Lgbsdk/optional/applog/ac;

    if-nez v1, :cond_1

    new-instance v1, Lgbsdk/optional/applog/ac;

    invoke-direct {v1, p0}, Lgbsdk/optional/applog/ac;-><init>(Lgbsdk/optional/applog/abbj;)V

    iput-object v1, p0, Lgbsdk/optional/applog/abbj;->m:Lgbsdk/optional/applog/ac;

    :cond_1
    iget-object v1, p0, Lgbsdk/optional/applog/abbj;->m:Lgbsdk/optional/applog/ac;

    :try_start_0
    invoke-virtual {v1, p1}, Lgbsdk/optional/applog/ac;->a(I)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz v0, :cond_2b

    invoke-interface {v0, p1}, Lcom/bytedance/applog/IPullAbTestConfigCallback;->onRemoteConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lgbsdk/optional/applog/abae; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_12

    :catch_0
    nop

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Lcom/bytedance/applog/IPullAbTestConfigCallback;->onTimeoutError()V

    goto/16 :goto_12

    .line 4
    :cond_2
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->m:Lgbsdk/optional/applog/ac;

    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abbj;->a(Lgbsdk/optional/applog/aq;)V

    goto/16 :goto_12

    .line 5
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "oaid"

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    invoke-virtual {p1}, Lgbsdk/optional/applog/abfy;->g()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    invoke-virtual {v1}, Lgbsdk/optional/applog/abfy;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bd_did"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "install_id"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    sget-object p1, Lgbsdk/optional/applog/abbe;->c:Lgbsdk/optional/applog/abcj;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lgbsdk/optional/applog/abcj;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "os"

    const-string v1, "Harmony"

    .line 8
    :goto_0
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    const-string p1, "os"

    const-string v1, "Android"

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    invoke-virtual {p1}, Lgbsdk/optional/applog/abfy;->h()Ljava/lang/String;

    move-result-object p1

    const-string v1, "aid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->k:Lgbsdk/optional/applog/abbt;

    invoke-virtual {p1, v0}, Lgbsdk/optional/applog/abbt;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 10
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "Report oaid success: {}"

    :try_start_2
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    .line 11
    invoke-interface {v0, v1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_12

    :catchall_0
    move-exception p1

    .line 12
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 13
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Report oaid failed"

    .line 14
    invoke-interface {v0, v2, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 15
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lgbsdk/optional/applog/abfu;

    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abbj;->a(Lgbsdk/optional/applog/abfu;)V

    goto/16 :goto_12

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/String;

    .line 16
    iget-object v4, p0, Lgbsdk/optional/applog/abbj;->t:Lgbsdk/optional/applog/abby;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lgbsdk/optional/applog/abbj;->t:Lgbsdk/optional/applog/abby;

    .line 17
    iput-boolean v3, v4, Lgbsdk/optional/applog/aq;->f:Z

    .line 18
    iget-object v4, p0, Lgbsdk/optional/applog/abbj;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v5, p0, Lgbsdk/optional/applog/abbj;->t:Lgbsdk/optional/applog/abby;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v2, p0, Lgbsdk/optional/applog/abbj;->t:Lgbsdk/optional/applog/abby;

    :cond_4
    if-eqz v0, :cond_2b

    new-instance v0, Lgbsdk/optional/applog/abby;

    invoke-direct {v0, p0, p1}, Lgbsdk/optional/applog/abby;-><init>(Lgbsdk/optional/applog/abbj;Ljava/lang/String;)V

    iput-object v0, p0, Lgbsdk/optional/applog/abbj;->t:Lgbsdk/optional/applog/abby;

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->t:Lgbsdk/optional/applog/abby;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_12

    .line 19
    :pswitch_5
    invoke-virtual {p0, v2, v3}, Lgbsdk/optional/applog/abbj;->a([Ljava/lang/String;Z)V

    goto/16 :goto_12

    :pswitch_6
    invoke-virtual {p0}, Lgbsdk/optional/applog/abbj;->i()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->m:Lgbsdk/optional/applog/ac;

    if-nez p1, :cond_5

    new-instance p1, Lgbsdk/optional/applog/ac;

    invoke-direct {p1, p0}, Lgbsdk/optional/applog/ac;-><init>(Lgbsdk/optional/applog/abbj;)V

    iput-object p1, p0, Lgbsdk/optional/applog/abbj;->m:Lgbsdk/optional/applog/ac;

    :cond_5
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->m:Lgbsdk/optional/applog/ac;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->m:Lgbsdk/optional/applog/ac;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->m:Lgbsdk/optional/applog/ac;

    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abbj;->a(Lgbsdk/optional/applog/aq;)V

    goto/16 :goto_12

    :cond_7
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->m:Lgbsdk/optional/applog/ac;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->m:Lgbsdk/optional/applog/ac;

    .line 20
    iput-boolean v3, p1, Lgbsdk/optional/applog/aq;->f:Z

    .line 21
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->m:Lgbsdk/optional/applog/ac;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v2, p0, Lgbsdk/optional/applog/abbj;->m:Lgbsdk/optional/applog/ac;

    :cond_8
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    invoke-virtual {p1}, Lgbsdk/optional/applog/abfy;->m()V

    goto/16 :goto_12

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9
    invoke-virtual {p0, v2}, Lgbsdk/optional/applog/abbj;->a(Ljava/lang/String;)V

    goto/16 :goto_12

    :pswitch_8
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->b:Lgbsdk/optional/applog/aj;

    if-nez p1, :cond_a

    new-instance p1, Lgbsdk/optional/applog/aj;

    invoke-direct {p1, p0}, Lgbsdk/optional/applog/aj;-><init>(Lgbsdk/optional/applog/abbj;)V

    iput-object p1, p0, Lgbsdk/optional/applog/abbj;->b:Lgbsdk/optional/applog/aj;

    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 22
    :cond_a
    iput-boolean v4, p1, Lgbsdk/optional/applog/aq;->f:Z

    .line 23
    :goto_2
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->b:Lgbsdk/optional/applog/aj;

    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abbj;->a(Lgbsdk/optional/applog/aq;)V

    goto/16 :goto_12

    :pswitch_9
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->g:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->C:Lgbsdk/optional/applog/abde;

    iget-object v1, p0, Lgbsdk/optional/applog/abbj;->g:Ljava/util/ArrayList;

    .line 24
    iget-object v5, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 25
    iget-object v6, p0, Lgbsdk/optional/applog/abbj;->n:Lgbsdk/optional/applog/abaa;

    .line 26
    invoke-virtual {v0, v1, v5, v6}, Lgbsdk/optional/applog/abde;->a(Ljava/util/ArrayList;Lcom/bytedance/bdtracker/d;Lgbsdk/optional/applog/abaa;)I

    move-result v0

    .line 27
    iget-object v1, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 28
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[event_process] dumpData size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->C:Lgbsdk/optional/applog/abde;

    .line 30
    iget-object v0, p1, Lgbsdk/optional/applog/abde;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_b

    new-array v2, v0, [Ljava/lang/String;

    iget-object v0, p1, Lgbsdk/optional/applog/abde;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object p1, p1, Lgbsdk/optional/applog/abde;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 31
    :cond_b
    invoke-virtual {p0, v2, v4}, Lgbsdk/optional/applog/abbj;->a([Ljava/lang/String;Z)V

    goto/16 :goto_12

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :pswitch_a
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->s:Lgbsdk/optional/applog/aq;

    .line 32
    iget-boolean v0, p1, Lgbsdk/optional/applog/aq;->f:Z

    if-nez v0, :cond_2b

    .line 33
    invoke-virtual {p1}, Lgbsdk/optional/applog/aq;->f()J

    move-result-wide v0

    .line 34
    iget-boolean p1, p1, Lgbsdk/optional/applog/aq;->f:Z

    if-nez p1, :cond_2b

    .line 35
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_12

    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lgbsdk/optional/applog/abbj;->c()Lgbsdk/optional/applog/av;

    move-result-object v0

    .line 36
    iget-object v0, v0, Lgbsdk/optional/applog/av;->c:Lgbsdk/optional/applog/an;

    invoke-virtual {v0, p1}, Lgbsdk/optional/applog/an;->a(Ljava/util/List;)V

    goto/16 :goto_12

    .line 37
    :pswitch_c
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->g:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_5
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->g:Ljava/util/ArrayList;

    .line 38
    sget-object v1, Lgbsdk/optional/applog/abaa;->a:Lgbsdk/optional/applog/abaa$ac;

    if-nez v1, :cond_c

    new-instance v1, Lgbsdk/optional/applog/abaa$ac;

    invoke-direct {v1, v2}, Lgbsdk/optional/applog/abaa$ac;-><init>(Lgbsdk/optional/applog/abaa$ab;)V

    sput-object v1, Lgbsdk/optional/applog/abaa;->a:Lgbsdk/optional/applog/abaa$ac;

    :cond_c
    sget-object v1, Lgbsdk/optional/applog/abaa;->a:Lgbsdk/optional/applog/abaa$ac;

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6}, Lgbsdk/optional/applog/abfu;->b(J)V

    sget-object v1, Lgbsdk/optional/applog/abaa;->a:Lgbsdk/optional/applog/abaa$ac;

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-virtual {p0, v2, v4}, Lgbsdk/optional/applog/abbj;->a([Ljava/lang/String;Z)V

    goto/16 :goto_12

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :pswitch_d
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 40
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 41
    iget-boolean p1, p1, Lcom/bytedance/bdtracker/d;->x:Z

    const-wide/16 v4, 0x1388

    if-nez p1, :cond_11

    .line 42
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 43
    iget-object p1, p1, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 44
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isSilenceInBackground()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->n:Lgbsdk/optional/applog/abaa;

    invoke-virtual {p1}, Lgbsdk/optional/applog/abaa;->a()Z

    move-result p1

    if-eqz p1, :cond_11

    :cond_d
    const-wide v6, 0x7fffffffffffffffL

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/optional/applog/aq;

    .line 45
    iget-boolean v2, v0, Lgbsdk/optional/applog/aq;->f:Z

    if-nez v2, :cond_e

    .line 46
    invoke-virtual {v0}, Lgbsdk/optional/applog/aq;->f()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-gez v0, :cond_e

    move-wide v6, v8

    goto :goto_3

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long p1, v6, v4

    if-lez p1, :cond_10

    goto :goto_4

    :cond_10
    move-wide v4, v6

    :cond_11
    :goto_4
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->x:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2b

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->x:Ljava/util/List;

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/optional/applog/abbj$ae;

    if-eqz v1, :cond_12

    check-cast v1, Lgbsdk/optional/applog/abbj$af;

    .line 47
    iget-object v2, v1, Lgbsdk/optional/applog/abbj$af;->b:Lgbsdk/optional/applog/abbj;

    iget-object v1, v1, Lgbsdk/optional/applog/abbj$ae;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 48
    invoke-virtual {v2, v1}, Lgbsdk/optional/applog/abbj;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 49
    :cond_13
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit p1

    goto/16 :goto_12

    :catchall_3
    move-exception v0

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lgbsdk/optional/applog/abbj;->a([Ljava/lang/String;Z)V

    goto/16 :goto_12

    :pswitch_f
    new-instance p1, Lgbsdk/optional/applog/abbt;

    invoke-direct {p1, p0}, Lgbsdk/optional/applog/abbt;-><init>(Lgbsdk/optional/applog/abbj;)V

    iput-object p1, p0, Lgbsdk/optional/applog/abbj;->k:Lgbsdk/optional/applog/abbt;

    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 50
    iget-object p1, p1, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    if-eqz p1, :cond_14

    .line 51
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isTrackEventEnabled()Z

    move-result p1

    if-nez p1, :cond_14

    const/4 p1, 0x1

    goto :goto_6

    :cond_14
    const/4 p1, 0x0

    :goto_6
    if-nez p1, :cond_15

    new-instance p1, Lgbsdk/optional/applog/abah;

    invoke-direct {p1, p0}, Lgbsdk/optional/applog/abah;-><init>(Lgbsdk/optional/applog/abbj;)V

    iput-object p1, p0, Lgbsdk/optional/applog/abbj;->l:Lgbsdk/optional/applog/abah;

    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v3, p0, Lgbsdk/optional/applog/abbj;->E:Z

    :cond_15
    invoke-virtual {p0}, Lgbsdk/optional/applog/abbj;->d()Lcom/bytedance/applog/UriConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/applog/UriConfig;->getSettingUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Lgbsdk/optional/applog/ax;

    invoke-direct {v0, p0}, Lgbsdk/optional/applog/ax;-><init>(Lgbsdk/optional/applog/abbj;)V

    iput-object v0, p0, Lgbsdk/optional/applog/abbj;->f:Lgbsdk/optional/applog/ax;

    iget-object v5, p0, Lgbsdk/optional/applog/abbj;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    invoke-virtual {p1}, Lcom/bytedance/applog/UriConfig;->getProfileUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_17

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->A:Lgbsdk/optional/applog/abdj;

    .line 52
    iget-object p1, p1, Lgbsdk/optional/applog/abdj;->b:Landroid/os/Handler;

    const/16 v0, 0x6a

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 53
    :cond_17
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 54
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    const-string v0, "sp_filter_name"

    .line 55
    invoke-static {p1, v0}, Lgbsdk/optional/applog/ai;->a(Lcom/bytedance/applog/IAppLogInstance;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    .line 57
    iget-object v0, v0, Lgbsdk/optional/applog/abfy;->h:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v5, "version_code"

    invoke-interface {v0, v5, v4}, Lcom/bytedance/applog/store/kv/IKVStore;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 58
    iget-object v5, p0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    invoke-virtual {v5}, Lgbsdk/optional/applog/abfy;->b()I

    move-result v5

    if-ne v0, v5, :cond_19

    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 59
    iget-object v0, v0, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v5, "channel"

    const-string v6, ""

    invoke-interface {v0, v5, v6}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v5, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    invoke-virtual {v5}, Lgbsdk/optional/applog/abfl;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_7

    :cond_18
    const/4 v0, 0x0

    goto :goto_8

    :cond_19
    :goto_7
    const/4 v0, 0x1

    :goto_8
    if-eqz v0, :cond_1c

    .line 61
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->k:Lgbsdk/optional/applog/abbt;

    if-eqz v0, :cond_1a

    .line 62
    iput-boolean v3, v0, Lgbsdk/optional/applog/aq;->d:Z

    .line 63
    :cond_1a
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->f:Lgbsdk/optional/applog/ax;

    if-eqz v0, :cond_1b

    .line 64
    iput-boolean v3, v0, Lgbsdk/optional/applog/aq;->d:Z

    .line 65
    :cond_1b
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 66
    iget-object v0, v0, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 67
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isEventFilterEnable()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 68
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 69
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 70
    invoke-static {v0, p1, v2}, Lgbsdk/optional/applog/abbi;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Lgbsdk/optional/applog/abbi;

    move-result-object p1

    .line 71
    iput-object p1, p0, Lgbsdk/optional/applog/abbj;->y:Lgbsdk/optional/applog/abbi;

    goto/16 :goto_f

    .line 72
    :cond_1c
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 73
    iget-object v0, v0, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 74
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isEventFilterEnable()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 75
    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 76
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 77
    :try_start_8
    invoke-static {v0, p1}, Lgbsdk/optional/applog/abeb;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :try_start_9
    invoke-interface {p1}, Lcom/bytedance/applog/store/kv/IKVStore;->getAll()Ljava/util/Map;

    move-result-object v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_9

    :catchall_4
    move-object v6, v2

    :goto_9
    if-eqz v6, :cond_25

    :try_start_a
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    if-gtz v7, :cond_1d

    goto/16 :goto_e

    :cond_1d
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :cond_1e
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_23

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    if-nez v8, :cond_1f

    goto :goto_a

    :cond_1f
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "is_block"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    const-string v7, "is_block"

    invoke-interface {p1, v7, v4}, Lcom/bytedance/applog/store/kv/IKVStore;->getInt(Ljava/lang/String;I)I

    move-result v7

    goto :goto_a

    :cond_20
    const-string v10, "events"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-eqz v10, :cond_21

    :try_start_b
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_b

    :catchall_5
    move-object v8, v2

    :goto_b
    if-eqz v8, :cond_1e

    :try_start_c
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    if-lez v9, :cond_1e

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_a

    :cond_21
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1e

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :try_start_d
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_c

    :catchall_6
    move-object v8, v2

    :goto_c
    if-eqz v8, :cond_22

    :try_start_e
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v11

    if-lez v11, :cond_22

    invoke-virtual {v10, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_22
    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_1e

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_23
    if-lez v7, :cond_24

    new-instance p1, Lgbsdk/optional/applog/abbv;

    invoke-direct {p1, v0, v5}, Lgbsdk/optional/applog/abbv;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;)V

    goto :goto_d

    :cond_24
    new-instance p1, Lgbsdk/optional/applog/abbb;

    invoke-direct {p1, v0, v5}, Lgbsdk/optional/applog/abbb;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :goto_d
    move-object v2, p1

    .line 78
    :catchall_7
    :cond_25
    :goto_e
    iput-object v2, p0, Lgbsdk/optional/applog/abbj;->y:Lgbsdk/optional/applog/abbi;

    .line 79
    :cond_26
    :goto_f
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 80
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    if-eqz p1, :cond_2b

    .line 81
    check-cast p1, Lgbsdk/optional/applog/abci;

    .line 82
    iget-object v0, p1, Lgbsdk/optional/applog/abci;->c:Lgbsdk/optional/applog/abbj;

    .line 83
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    const-string v1, "mEngine.config"

    .line 84
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lgbsdk/optional/applog/abfl;->a()Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_12

    :cond_27
    iget-object v0, p1, Lgbsdk/optional/applog/abci;->b:Lgbsdk/optional/applog/abdg;

    new-instance v1, Lgbsdk/optional/applog/abcp;

    invoke-direct {v1, p1}, Lgbsdk/optional/applog/abcp;-><init>(Lgbsdk/optional/applog/abci;)V

    invoke-virtual {v0, v1}, Lgbsdk/optional/applog/abdg;->a(Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_12

    .line 85
    :pswitch_10
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 86
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "AppLog is starting..."

    .line 87
    invoke-interface {p1, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 88
    iget-object v0, p1, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    .line 89
    iget-object v1, p1, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->isAutoTrackEnabled()Z

    move-result v1

    const-string v2, "bav_log_collect"

    .line 90
    invoke-interface {v0, v2, v1}, Lcom/bytedance/applog/store/kv/IKVStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 91
    iput v0, p1, Lgbsdk/optional/applog/abfl;->r:I

    .line 92
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    invoke-virtual {p1}, Lgbsdk/optional/applog/abfy;->d()Z

    move-result p1

    const-wide/16 v0, 0x3e8

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    invoke-virtual {p1}, Lgbsdk/optional/applog/abfl;->f()Z

    move-result p1

    if-eqz p1, :cond_29

    new-instance p1, Landroid/os/HandlerThread;

    const-string v2, "bd_tracker_n:"

    invoke-static {v2}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 93
    iget-object v5, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 94
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 95
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v2, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_28

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->p:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->p:Landroid/os/Handler;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 96
    :cond_28
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 97
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 98
    sput-boolean v3, Lgbsdk/optional/applog/ao;->a:Z

    .line 99
    sget-object v0, Lgbsdk/optional/applog/abfw;->a:Ljava/util/concurrent/ExecutorService;

    .line 100
    new-instance v1, Lgbsdk/optional/applog/aw;

    invoke-direct {v1, p1}, Lgbsdk/optional/applog/aw;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 101
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 102
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "AppLog started on main process."

    .line 103
    invoke-interface {p1, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    .line 104
    :cond_29
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 105
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "AppLog started on secondary process."

    .line 106
    invoke-interface {p1, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_10
    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->isDisabled()Z

    move-result p1

    if-nez p1, :cond_2b

    new-instance p1, Lgbsdk/optional/applog/abbj$ab;

    invoke-direct {p1, p0}, Lgbsdk/optional/applog/abbj$ab;-><init>(Lgbsdk/optional/applog/abbj;)V

    const-string v0, "start_end"

    invoke-static {v0, p1}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    goto :goto_12

    .line 107
    :cond_2a
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 108
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v4, "AppLog is not ready, will try start again after 1 second..."

    .line 109
    invoke-interface {p1, v4, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->p:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->p:Landroid/os/Handler;

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_12

    .line 110
    :goto_11
    iget-object p1, p0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 111
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Unknown handler message type"

    .line 112
    invoke-interface {p1, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2b
    :goto_12
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    invoke-virtual {v0}, Lgbsdk/optional/applog/abfl;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgbsdk/optional/applog/abbj;->d()Lcom/bytedance/applog/UriConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/UriConfig;->getAbUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
