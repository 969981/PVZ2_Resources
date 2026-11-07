.class public Lgbsdk/optional/applog/abaa;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/optional/applog/abaa$ac;
    }
.end annotation


# static fields
.field public static a:Lgbsdk/optional/applog/abaa$ac;


# instance fields
.field public b:J

.field public final c:Lgbsdk/optional/applog/abbj;

.field public d:Lgbsdk/optional/applog/abbw;

.field public e:Lgbsdk/optional/applog/abbw;

.field public volatile f:Ljava/lang/String;

.field public final g:Ljava/util/concurrent/atomic/AtomicLong;

.field public volatile h:J

.field public i:I

.field public j:J

.field public volatile k:Z

.field public l:J

.field public m:I

.field public n:Ljava/lang/String;

.field public volatile o:Ljava/lang/String;

.field public volatile p:Z

.field public volatile q:Z


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abbj;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lgbsdk/optional/applog/abaa;->g:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lgbsdk/optional/applog/abaa;->j:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgbsdk/optional/applog/abaa;->p:Z

    iput-boolean v0, p0, Lgbsdk/optional/applog/abaa;->q:Z

    iput-object p1, p0, Lgbsdk/optional/applog/abaa;->c:Lgbsdk/optional/applog/abbj;

    return-void
.end method

.method public static a(Lgbsdk/optional/applog/abfu;)Z
    .locals 1

    instance-of v0, p0, Lgbsdk/optional/applog/abbw;

    if-eqz v0, :cond_0

    check-cast p0, Lgbsdk/optional/applog/abbw;

    invoke-virtual {p0}, Lgbsdk/optional/applog/abbw;->c()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public declared-synchronized a(JJ)Landroid/os/Bundle;
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-wide v1, p0, Lgbsdk/optional/applog/abaa;->h:J

    iget-object v3, p0, Lgbsdk/optional/applog/abaa;->c:Lgbsdk/optional/applog/abbj;

    .line 19
    iget-object v3, v3, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 20
    iget-object v3, v3, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->isPlayEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    invoke-virtual {p0}, Lgbsdk/optional/applog/abaa;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    sub-long v1, p1, v1

    cmp-long v3, v1, p3

    if-lez v3, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget p3, p0, Lgbsdk/optional/applog/abaa;->m:I

    const-string p4, "session_no"

    invoke-virtual {v0, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget p3, p0, Lgbsdk/optional/applog/abaa;->i:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lgbsdk/optional/applog/abaa;->i:I

    const-string p4, "send_times"

    invoke-virtual {v0, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-wide/16 p3, 0x3e8

    div-long/2addr v1, p3

    const-string p3, "current_duration"

    invoke-virtual {v0, p3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide p3, p0, Lgbsdk/optional/applog/abaa;->j:J

    invoke-static {p3, p4}, Lgbsdk/optional/applog/abfu;->a(J)Ljava/lang/String;

    move-result-object p3

    const-string p4, "session_start_time"

    invoke-virtual {v0, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide p1, p0, Lgbsdk/optional/applog/abaa;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/bytedance/bdtracker/d;Lgbsdk/optional/applog/abfu;Ljava/util/List;Z)Lgbsdk/optional/applog/abbf;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/bdtracker/d;",
            "Lgbsdk/optional/applog/abfu;",
            "Ljava/util/List<",
            "Lgbsdk/optional/applog/abfu;",
            ">;Z)",
            "Lgbsdk/optional/applog/abbf;"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v0, p2

    move/from16 v8, p4

    monitor-enter p0

    :try_start_0
    instance-of v1, v0, Lgbsdk/optional/applog/abaa$ac;

    const-wide/16 v9, -0x1

    if-eqz v1, :cond_0

    move-wide v11, v9

    goto :goto_0

    :cond_0
    iget-wide v1, v0, Lgbsdk/optional/applog/abfu;->r:J

    move-wide v11, v1

    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lgbsdk/optional/applog/abaa;->f:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v13, Lgbsdk/optional/applog/abaa$ab;

    move-object v1, v13

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-wide v5, v11

    invoke-direct/range {v1 .. v6}, Lgbsdk/optional/applog/abaa$ab;-><init>(Lgbsdk/optional/applog/abaa;Lcom/bytedance/bdtracker/d;ZJ)V

    const-string v1, "session_start"

    invoke-static {v1, v13}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    :cond_1
    if-eqz v8, :cond_2

    iget-object v1, v7, Lgbsdk/optional/applog/abaa;->c:Lgbsdk/optional/applog/abbj;

    iget-boolean v1, v1, Lgbsdk/optional/applog/abbj;->v:Z

    if-nez v1, :cond_2

    iget-object v1, v7, Lgbsdk/optional/applog/abaa;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v7, Lgbsdk/optional/applog/abaa;->f:Ljava/lang/String;

    iput-object v1, v7, Lgbsdk/optional/applog/abaa;->o:Ljava/lang/String;

    :cond_2
    iget-object v1, v7, Lgbsdk/optional/applog/abaa;->g:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iput-wide v11, v7, Lgbsdk/optional/applog/abaa;->j:J

    iput-boolean v8, v7, Lgbsdk/optional/applog/abaa;->k:Z

    const-wide/16 v1, 0x0

    iput-wide v1, v7, Lgbsdk/optional/applog/abaa;->l:J

    iput-wide v1, v7, Lgbsdk/optional/applog/abaa;->h:J

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v8, :cond_5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const-string v5, ""

    invoke-static {v5}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v7, Lgbsdk/optional/applog/abaa;->c:Lgbsdk/optional/applog/abbj;

    .line 31
    iget-object v5, v5, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 32
    iget-object v6, v7, Lgbsdk/optional/applog/abaa;->n:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 33
    iget-object v6, v5, Lgbsdk/optional/applog/abfl;->e:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v13, "session_last_day"

    const-string v14, ""

    invoke-interface {v6, v13, v14}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 34
    iput-object v6, v7, Lgbsdk/optional/applog/abaa;->n:Ljava/lang/String;

    .line 35
    iget-object v6, v5, Lgbsdk/optional/applog/abfl;->e:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v13, "session_order"

    invoke-interface {v6, v13, v2}, Lcom/bytedance/applog/store/kv/IKVStore;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 36
    iput v6, v7, Lgbsdk/optional/applog/abaa;->m:I

    :cond_3
    iget-object v6, v7, Lgbsdk/optional/applog/abaa;->n:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iput-object v4, v7, Lgbsdk/optional/applog/abaa;->n:Ljava/lang/String;

    iput v3, v7, Lgbsdk/optional/applog/abaa;->m:I

    goto :goto_1

    :cond_4
    iget v6, v7, Lgbsdk/optional/applog/abaa;->m:I

    add-int/2addr v6, v3

    iput v6, v7, Lgbsdk/optional/applog/abaa;->m:I

    :goto_1
    iget v6, v7, Lgbsdk/optional/applog/abaa;->m:I

    .line 37
    iget-object v5, v5, Lgbsdk/optional/applog/abfl;->e:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v13, "session_last_day"

    invoke-interface {v5, v13, v4}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    move-result-object v4

    const-string v5, "session_order"

    invoke-interface {v4, v5, v6}, Lcom/bytedance/applog/store/kv/IKVStore;->putInt(Ljava/lang/String;I)Lcom/bytedance/applog/store/kv/IKVStore;

    .line 38
    iput v2, v7, Lgbsdk/optional/applog/abaa;->i:I

    iget-wide v4, v0, Lgbsdk/optional/applog/abfu;->r:J

    iput-wide v4, v7, Lgbsdk/optional/applog/abaa;->h:J

    :cond_5
    const/4 v4, 0x0

    cmp-long v5, v11, v9

    if-eqz v5, :cond_b

    new-instance v4, Lgbsdk/optional/applog/abbf;

    invoke-direct {v4}, Lgbsdk/optional/applog/abbf;-><init>()V

    .line 39
    iget-object v5, v0, Lgbsdk/optional/applog/abfu;->B:Ljava/lang/String;

    .line 40
    iput-object v5, v4, Lgbsdk/optional/applog/abfu;->B:Ljava/lang/String;

    .line 41
    iget-object v5, v7, Lgbsdk/optional/applog/abaa;->f:Ljava/lang/String;

    iput-object v5, v4, Lgbsdk/optional/applog/abfu;->t:Ljava/lang/String;

    iget-boolean v5, v7, Lgbsdk/optional/applog/abaa;->k:Z

    xor-int/2addr v5, v3

    iput-boolean v5, v4, Lgbsdk/optional/applog/abbf;->c:Z

    .line 42
    iget-object v5, v7, Lgbsdk/optional/applog/abaa;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    .line 43
    iput-wide v5, v4, Lgbsdk/optional/applog/abfu;->s:J

    iget-wide v5, v7, Lgbsdk/optional/applog/abaa;->j:J

    invoke-virtual {v4, v5, v6}, Lgbsdk/optional/applog/abfu;->b(J)V

    iget-object v5, v7, Lgbsdk/optional/applog/abaa;->c:Lgbsdk/optional/applog/abbj;

    .line 44
    iget-object v5, v5, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    .line 45
    invoke-virtual {v5}, Lgbsdk/optional/applog/abfy;->c()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lgbsdk/optional/applog/abbf;->b:Ljava/lang/String;

    iget-object v5, v7, Lgbsdk/optional/applog/abaa;->c:Lgbsdk/optional/applog/abbj;

    .line 46
    iget-object v5, v5, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    .line 47
    invoke-virtual {v5}, Lgbsdk/optional/applog/abfy;->b()I

    move-result v5

    iput v5, v4, Lgbsdk/optional/applog/abbf;->a:I

    iget-wide v5, v7, Lgbsdk/optional/applog/abaa;->b:J

    iput-wide v5, v4, Lgbsdk/optional/applog/abfu;->u:J

    iget-object v5, v7, Lgbsdk/optional/applog/abaa;->c:Lgbsdk/optional/applog/abbj;

    .line 48
    iget-object v5, v5, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    .line 49
    invoke-virtual {v5}, Lgbsdk/optional/applog/abfy;->e()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lgbsdk/optional/applog/abfu;->v:Ljava/lang/String;

    iget-object v5, v7, Lgbsdk/optional/applog/abaa;->c:Lgbsdk/optional/applog/abbj;

    .line 50
    iget-object v5, v5, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    .line 51
    invoke-virtual {v5}, Lgbsdk/optional/applog/abfy;->f()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lgbsdk/optional/applog/abfu;->w:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/bdtracker/d;->getSsid()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lgbsdk/optional/applog/abfu;->x:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/bdtracker/d;->getAbSdkVersion()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lgbsdk/optional/applog/abfu;->y:Ljava/lang/String;

    if-eqz v8, :cond_6

    iget-object v5, v7, Lgbsdk/optional/applog/abaa;->c:Lgbsdk/optional/applog/abbj;

    .line 52
    iget-object v5, v5, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 53
    iget-object v5, v5, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v6, "is_first_time_launch"

    invoke-interface {v5, v6, v3}, Lcom/bytedance/applog/store/kv/IKVStore;->getInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    .line 54
    :goto_2
    iput v5, v4, Lgbsdk/optional/applog/abbf;->e:I

    if-eqz v8, :cond_7

    iget v5, v4, Lgbsdk/optional/applog/abbf;->e:I

    if-ne v5, v3, :cond_7

    iget-object v5, v7, Lgbsdk/optional/applog/abaa;->c:Lgbsdk/optional/applog/abbj;

    .line 55
    iget-object v5, v5, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 56
    iget-object v5, v5, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v6, "is_first_time_launch"

    invoke-interface {v5, v6, v2}, Lcom/bytedance/applog/store/kv/IKVStore;->putInt(Ljava/lang/String;I)Lcom/bytedance/applog/store/kv/IKVStore;

    .line 57
    :cond_7
    invoke-static {}, Lgbsdk/optional/applog/abga;->a()Lgbsdk/optional/applog/abbw;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v6, v5, Lgbsdk/optional/applog/abbw;->c:Ljava/lang/String;

    iput-object v6, v4, Lgbsdk/optional/applog/abbf;->g:Ljava/lang/String;

    iget-object v6, v5, Lgbsdk/optional/applog/abbw;->d:Ljava/lang/String;

    iput-object v6, v4, Lgbsdk/optional/applog/abbf;->f:Ljava/lang/String;

    :cond_8
    instance-of v6, v0, Lgbsdk/optional/applog/abbw;

    if-eqz v6, :cond_9

    if-nez v5, :cond_9

    check-cast v0, Lgbsdk/optional/applog/abbw;

    iget-object v5, v0, Lgbsdk/optional/applog/abbw;->c:Ljava/lang/String;

    iput-object v5, v4, Lgbsdk/optional/applog/abbf;->g:Ljava/lang/String;

    iget-object v0, v0, Lgbsdk/optional/applog/abbw;->d:Ljava/lang/String;

    iput-object v0, v4, Lgbsdk/optional/applog/abbf;->f:Ljava/lang/String;

    :cond_9
    iget-boolean v0, v7, Lgbsdk/optional/applog/abaa;->k:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v7, Lgbsdk/optional/applog/abaa;->p:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v7, Lgbsdk/optional/applog/abaa;->p:Z

    iput-boolean v0, v4, Lgbsdk/optional/applog/abbf;->h:Z

    iput-boolean v2, v7, Lgbsdk/optional/applog/abaa;->p:Z

    :cond_a
    iget-object v0, v7, Lgbsdk/optional/applog/abaa;->c:Lgbsdk/optional/applog/abbj;

    .line 58
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 59
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[event_process] fillSessionParams launch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v0, v5, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v0, v7, Lgbsdk/optional/applog/abaa;->c:Lgbsdk/optional/applog/abbj;

    .line 61
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 62
    iget v5, v0, Lcom/bytedance/bdtracker/d;->l:I

    if-gtz v5, :cond_c

    const/4 v5, 0x6

    .line 63
    iput v5, v0, Lcom/bytedance/bdtracker/d;->l:I

    :cond_c
    move-object/from16 v0, p1

    .line 64
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v1, [Ljava/lang/Object;

    .line 65
    iget-object v5, v7, Lgbsdk/optional/applog/abaa;->f:Ljava/lang/String;

    aput-object v5, v1, v2

    iget-boolean v2, v7, Lgbsdk/optional/applog/abaa;->k:Z

    xor-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Start new session:{} with background:{}"

    invoke-interface {v0, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/bytedance/applog/IAppLogInstance;Lgbsdk/optional/applog/abfu;)V
    .locals 5

    if-eqz p2, :cond_3

    iget-object v0, p0, Lgbsdk/optional/applog/abaa;->c:Lgbsdk/optional/applog/abbj;

    .line 3
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    .line 4
    invoke-interface {p1}, Lcom/bytedance/applog/IAppLogInstance;->getAppId()Ljava/lang/String;

    move-result-object p1

    .line 5
    iput-object p1, p2, Lgbsdk/optional/applog/abfu;->B:Ljava/lang/String;

    .line 6
    iget-wide v1, p0, Lgbsdk/optional/applog/abaa;->b:J

    iput-wide v1, p2, Lgbsdk/optional/applog/abfu;->u:J

    invoke-virtual {v0}, Lgbsdk/optional/applog/abfy;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lgbsdk/optional/applog/abfu;->v:Ljava/lang/String;

    invoke-virtual {v0}, Lgbsdk/optional/applog/abfy;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lgbsdk/optional/applog/abfu;->w:Ljava/lang/String;

    invoke-virtual {v0}, Lgbsdk/optional/applog/abfy;->k()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lgbsdk/optional/applog/abfu;->x:Ljava/lang/String;

    iget-object p1, p0, Lgbsdk/optional/applog/abaa;->f:Ljava/lang/String;

    iput-object p1, p2, Lgbsdk/optional/applog/abfu;->t:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lgbsdk/optional/applog/abaa;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    .line 8
    iput-wide v1, p2, Lgbsdk/optional/applog/abfu;->s:J

    iget-object p1, p2, Lgbsdk/optional/applog/abfu;->y:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Lgbsdk/optional/applog/abfy;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lgbsdk/optional/applog/abfy;->i(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, p1}, Lgbsdk/optional/applog/abfy;->i(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v1}, Lgbsdk/optional/applog/abfy;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    .line 10
    :goto_0
    iput-object p1, p2, Lgbsdk/optional/applog/abfu;->y:Ljava/lang/String;

    iget-object p1, p0, Lgbsdk/optional/applog/abaa;->c:Lgbsdk/optional/applog/abbj;

    invoke-virtual {p1}, Lgbsdk/optional/applog/abbj;->b()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    .line 11
    invoke-static {p1, v0}, Lgbsdk/optional/applog/abek;->b(Landroid/content/Context;Z)Lgbsdk/optional/applog/abek$ab;

    move-result-object p1

    .line 12
    iget p1, p1, Lgbsdk/optional/applog/abek$ab;->n:I

    .line 13
    iput p1, p2, Lgbsdk/optional/applog/abfu;->z:I

    instance-of p1, p2, Lgbsdk/optional/applog/abbm;

    if-eqz p1, :cond_2

    iget-wide v0, p0, Lgbsdk/optional/applog/abaa;->j:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    move-object p1, p2

    check-cast p1, Lgbsdk/optional/applog/abbm;

    .line 14
    iget-object p1, p1, Lgbsdk/optional/applog/abbm;->c:Ljava/lang/String;

    const-string v0, "$crash"

    .line 15
    invoke-static {p1, v0}, Lgbsdk/optional/applog/abce;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p2, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    const-string v0, "$session_duration"

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lgbsdk/optional/applog/abaa;->j:J

    sub-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    iget-object p1, p0, Lgbsdk/optional/applog/abaa;->c:Lgbsdk/optional/applog/abbj;

    .line 16
    iget-object p1, p1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 17
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[event_process] fillSessionParams data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public a(Lcom/bytedance/bdtracker/d;Lgbsdk/optional/applog/abfu;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/bdtracker/d;",
            "Lgbsdk/optional/applog/abfu;",
            "Ljava/util/List<",
            "Lgbsdk/optional/applog/abfu;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lgbsdk/optional/applog/abaa;->c:Lgbsdk/optional/applog/abbj;

    .line 24
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 25
    invoke-virtual {v0}, Lgbsdk/optional/applog/abfl;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 26
    instance-of v0, p2, Lgbsdk/optional/applog/abbw;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lgbsdk/optional/applog/abbw;

    invoke-virtual {v0}, Lgbsdk/optional/applog/abbw;->c()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    iget-wide v2, p0, Lgbsdk/optional/applog/abaa;->j:J

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v2, p0, Lgbsdk/optional/applog/abaa;->k:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2, p3, v6}, Lgbsdk/optional/applog/abaa;->a(Lcom/bytedance/bdtracker/d;Lgbsdk/optional/applog/abfu;Ljava/util/List;Z)Lgbsdk/optional/applog/abbf;

    goto :goto_2

    :cond_2
    iget-wide v2, p0, Lgbsdk/optional/applog/abaa;->l:J

    const-wide/16 v4, 0x0

    cmp-long v7, v2, v4

    if-eqz v7, :cond_3

    iget-wide v4, p2, Lgbsdk/optional/applog/abfu;->r:J

    iget-object v7, p0, Lgbsdk/optional/applog/abaa;->c:Lgbsdk/optional/applog/abbj;

    .line 28
    iget-object v7, v7, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 29
    iget-object v7, v7, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-wide/16 v8, 0x7530

    const-string v10, "session_interval"

    invoke-interface {v7, v10, v8, v9}, Lcom/bytedance/applog/store/kv/IKVStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    add-long/2addr v7, v2

    cmp-long v2, v4, v7

    if-lez v2, :cond_3

    .line 30
    iput-boolean v6, p0, Lgbsdk/optional/applog/abaa;->p:Z

    goto :goto_1

    :cond_3
    iget-wide v2, p0, Lgbsdk/optional/applog/abaa;->j:J

    iget-wide v4, p2, Lgbsdk/optional/applog/abfu;->r:J

    const-wide/32 v7, 0x6ddd00

    add-long/2addr v4, v7

    cmp-long v7, v2, v4

    if-lez v7, :cond_4

    :goto_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lgbsdk/optional/applog/abaa;->a(Lcom/bytedance/bdtracker/d;Lgbsdk/optional/applog/abfu;Ljava/util/List;Z)Lgbsdk/optional/applog/abbf;

    :goto_2
    const/4 v1, 0x1

    :cond_4
    invoke-virtual {p0, p1, p2}, Lgbsdk/optional/applog/abaa;->a(Lcom/bytedance/applog/IAppLogInstance;Lgbsdk/optional/applog/abfu;)V

    iput-boolean v1, p0, Lgbsdk/optional/applog/abaa;->q:Z

    :cond_5
    return-void
.end method

.method public a(Lgbsdk/optional/applog/abfu;Ljava/util/List;Lcom/bytedance/bdtracker/d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/optional/applog/abfu;",
            "Ljava/util/List<",
            "Lgbsdk/optional/applog/abfu;",
            ">;",
            "Lcom/bytedance/bdtracker/d;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Lgbsdk/optional/applog/abbw;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lgbsdk/optional/applog/abbw;

    invoke-virtual {v0}, Lgbsdk/optional/applog/abbw;->c()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    iput-wide v2, p0, Lgbsdk/optional/applog/abaa;->l:J

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lgbsdk/optional/applog/abbw;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lgbsdk/optional/applog/abaa;->e:Lgbsdk/optional/applog/abbw;

    const-wide/16 p2, 0x1f4

    if-eqz p1, :cond_0

    iget-wide v1, v0, Lgbsdk/optional/applog/abfu;->r:J

    iget-wide v3, p1, Lgbsdk/optional/applog/abfu;->r:J

    sub-long/2addr v1, v3

    iget-wide v3, p1, Lgbsdk/optional/applog/abbw;->a:J

    sub-long/2addr v1, v3

    cmp-long v3, v1, p2

    if-gez v3, :cond_0

    :goto_0
    iget-object p1, p1, Lgbsdk/optional/applog/abbw;->c:Ljava/lang/String;

    iput-object p1, v0, Lgbsdk/optional/applog/abbw;->b:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lgbsdk/optional/applog/abaa;->d:Lgbsdk/optional/applog/abbw;

    if-eqz p1, :cond_5

    iget-wide v1, v0, Lgbsdk/optional/applog/abfu;->r:J

    iget-wide v3, p1, Lgbsdk/optional/applog/abfu;->r:J

    sub-long/2addr v1, v3

    iget-wide v3, p1, Lgbsdk/optional/applog/abbw;->a:J

    sub-long/2addr v1, v3

    cmp-long v3, v1, p2

    if-gez v3, :cond_5

    goto :goto_0

    :cond_1
    iget-wide v4, p1, Lgbsdk/optional/applog/abfu;->r:J

    invoke-virtual {p0, v4, v5, v2, v3}, Lgbsdk/optional/applog/abaa;->a(JJ)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    if-eqz v1, :cond_2

    const-string v3, "play_session"

    invoke-virtual {p3, v3, v1, v2}, Lcom/bytedance/bdtracker/d;->onEventV3(Ljava/lang/String;Landroid/os/Bundle;I)V

    :cond_2
    iget-wide v3, v0, Lgbsdk/optional/applog/abfu;->r:J

    iput-wide v3, p0, Lgbsdk/optional/applog/abaa;->l:J

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1
    iget-boolean p1, v0, Lgbsdk/optional/applog/abbw;->l:Z

    xor-int/2addr p1, v2

    if-eqz p1, :cond_3

    .line 2
    iput-object v0, p0, Lgbsdk/optional/applog/abaa;->d:Lgbsdk/optional/applog/abbw;

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lgbsdk/optional/applog/abaa;->e:Lgbsdk/optional/applog/abbw;

    const/4 p1, 0x0

    iput-object p1, p0, Lgbsdk/optional/applog/abaa;->d:Lgbsdk/optional/applog/abbw;

    goto :goto_1

    :cond_4
    instance-of p3, p1, Lgbsdk/optional/applog/abaa$ac;

    if-nez p3, :cond_5

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public a()Z
    .locals 5

    .line 22
    iget-boolean v0, p0, Lgbsdk/optional/applog/abaa;->k:Z

    if-eqz v0, :cond_0

    .line 23
    iget-wide v0, p0, Lgbsdk/optional/applog/abaa;->l:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
