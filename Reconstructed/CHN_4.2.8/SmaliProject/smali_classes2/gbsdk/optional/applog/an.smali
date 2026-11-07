.class public Lgbsdk/optional/applog/an;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lgbsdk/optional/applog/abbj;

.field public final b:Lgbsdk/optional/applog/ag;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abbj;Lgbsdk/optional/applog/ag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    iput-object p2, p0, Lgbsdk/optional/applog/an;->b:Lgbsdk/optional/applog/ag;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bytedance/applog/event/IEventHandler;ILjava/lang/String;Lgbsdk/optional/applog/abfu;Lorg/json/JSONObject;)Lcom/bytedance/applog/event/EventPolicy;
    .locals 5

    invoke-virtual {p4}, Lgbsdk/optional/applog/abfu;->n()Lorg/json/JSONObject;

    invoke-virtual {p4}, Lgbsdk/optional/applog/abfu;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    goto :goto_0

    :catchall_0
    iget-object v2, p0, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object v2, v2, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x5

    const-string v4, "Param:[{}] is not a json string"

    .line 3
    invoke-interface {v2, v0, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    invoke-static {p5, v1}, Lgbsdk/optional/applog/abce;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 4
    :cond_1
    new-instance p5, Lcom/bytedance/applog/event/EventBasicData;

    invoke-direct {p5, p4}, Lcom/bytedance/applog/event/EventBasicData;-><init>(Lgbsdk/optional/applog/abfu;)V

    .line 5
    invoke-interface {p1, p2, p3, v1, p5}, Lcom/bytedance/applog/event/IEventHandler;->onReceive(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/applog/event/EventBasicData;)Lcom/bytedance/applog/event/EventPolicy;

    move-result-object p1

    .line 6
    iput-object v1, p4, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;

    return-object p1
.end method

.method public a(Ljava/util/List;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgbsdk/optional/applog/abfu;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_17

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v0, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isTrackEventEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 4
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 5
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->C:Lcom/bytedance/applog/event/IEventHandler;

    .line 6
    :try_start_0
    iget-object v10, v1, Lgbsdk/optional/applog/an;->b:Lgbsdk/optional/applog/ag;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    :try_start_1
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgbsdk/optional/applog/abfu;

    iget-object v14, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 7
    iget-object v14, v14, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 8
    iget-object v14, v14, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 9
    invoke-virtual {v14}, Lcom/bytedance/applog/InitConfig;->isLaunchTerminateEnabled()Z

    move-result v14

    invoke-virtual {v1, v0, v13, v14}, Lgbsdk/optional/applog/an;->a(Lcom/bytedance/applog/event/IEventHandler;Lgbsdk/optional/applog/abfu;Z)Z

    move-result v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    if-nez v14, :cond_3

    :try_start_2
    iget-object v14, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 10
    iget-object v14, v14, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 11
    iget-object v15, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    invoke-virtual {v15}, Lgbsdk/optional/applog/abbj;->a()Ljava/lang/String;

    move-result-object v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v8, 0x3ed

    move-object/from16 v17, v10

    const-wide/16 v9, 0x2

    .line 12
    :try_start_3
    invoke-static {v14, v9, v10, v15, v8}, Lgbsdk/optional/applog/abdt;->a(Lgbsdk/optional/applog/abdr;JLjava/lang/String;I)V

    .line 13
    iget-object v8, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 14
    iget-object v8, v8, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 15
    iget-object v8, v8, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v9, "[event_process] filterByEventHandler: {}"

    :try_start_4
    new-array v10, v3, [Ljava/lang/Object;

    aput-object v13, v10, v4

    const/4 v13, 0x5

    .line 16
    invoke-interface {v8, v13, v9, v10}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v10, v17

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v17, v10

    :goto_2
    move-object/from16 v8, v17

    goto/16 :goto_8

    :cond_3
    move-object/from16 v17, v10

    :try_start_5
    iget-object v8, v13, Lgbsdk/optional/applog/abfu;->B:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v8, :cond_4

    :try_start_6
    iget-object v8, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 17
    iget-object v8, v8, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 18
    iget-object v8, v8, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 19
    iput-object v8, v13, Lgbsdk/optional/applog/abfu;->B:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 20
    :cond_4
    :goto_3
    :try_start_7
    instance-of v8, v13, Lgbsdk/optional/applog/abbf;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-nez v8, :cond_6

    :try_start_8
    instance-of v8, v13, Lgbsdk/optional/applog/abax;

    if-nez v8, :cond_6

    instance-of v8, v13, Lgbsdk/optional/applog/abao;

    if-nez v8, :cond_6

    iget-object v8, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 21
    iget-object v8, v8, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    .line 22
    invoke-virtual {v8}, Lgbsdk/optional/applog/abfy;->c()Ljava/lang/String;

    move-result-object v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 23
    :try_start_9
    iget-object v9, v13, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;

    if-nez v9, :cond_5

    .line 24
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    :cond_5
    const-string v10, "$app_version"

    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    iput-object v9, v13, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 26
    :catchall_2
    :cond_6
    :try_start_a
    iget-object v8, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 27
    iget-object v8, v8, Lgbsdk/optional/applog/abbj;->F:Lgbsdk/optional/applog/abbg;

    .line 28
    invoke-virtual {v8, v13}, Lgbsdk/optional/applog/abbg;->a(Lgbsdk/optional/applog/abfu;)V

    monitor-enter p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    invoke-virtual {v13}, Lgbsdk/optional/applog/abfu;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v12}, Lgbsdk/optional/applog/abfu;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object/from16 v9, v17

    const/4 v10, 0x0

    :try_start_c
    invoke-virtual {v9, v8, v10, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v14

    iput-wide v14, v13, Lgbsdk/optional/applog/abfu;->q:J

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    const-string v8, "eventv3"

    :try_start_d
    invoke-virtual {v13}, Lgbsdk/optional/applog/abfu;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    instance-of v8, v13, Lgbsdk/optional/applog/abbf;

    if-eqz v8, :cond_8

    move-object v8, v13

    check-cast v8, Lgbsdk/optional/applog/abbf;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    instance-of v8, v13, Lgbsdk/optional/applog/abbw;

    if-eqz v8, :cond_9

    move-object v8, v13

    check-cast v8, Lgbsdk/optional/applog/abbw;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    const-string v8, "event_save_db"

    invoke-static {v8, v13}, Lcom/bytedance/applog/log/LogUtils;->sendObject(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 29
    iget-object v8, v8, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 30
    iget-object v8, v8, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    const-string v14, "[event_process] event_save_db: {}, id: {}"

    const/4 v15, 0x2

    :try_start_e
    new-array v15, v15, [Ljava/lang/Object;

    aput-object v13, v15, v4

    move-object/from16 v16, v11

    .line 31
    iget-wide v10, v13, Lgbsdk/optional/applog/abfu;->q:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v15, v3

    const/4 v10, 0x5

    invoke-interface {v8, v10, v14, v15}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    move-object v10, v9

    move-object/from16 v11, v16

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    move-object/from16 v9, v17

    :goto_5
    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    throw v0

    :catchall_4
    move-exception v0

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object/from16 v9, v17

    goto :goto_7

    :cond_a
    move-object v9, v10

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object v0, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 32
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 33
    iget-object v8, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    invoke-virtual {v8}, Lgbsdk/optional/applog/abbj;->a()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v0, :cond_b

    .line 34
    new-instance v11, Lgbsdk/optional/applog/abgb;

    invoke-direct {v11, v10}, Lgbsdk/optional/applog/abgb;-><init>(I)V

    move-object v10, v0

    check-cast v10, Lgbsdk/optional/applog/abci;

    invoke-virtual {v10, v11}, Lgbsdk/optional/applog/abci;->a(Lgbsdk/optional/applog/abfn;)V

    :cond_b
    if-eqz v0, :cond_d

    new-instance v10, Lgbsdk/optional/applog/abes;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    const-wide/16 v18, 0x1

    if-eqz v8, :cond_c

    goto :goto_6

    :cond_c
    const-string v8, ""

    :goto_6
    move-object/from16 v20, v8

    const-wide/16 v21, 0x1

    move-object/from16 v17, v10

    :try_start_11
    invoke-direct/range {v17 .. v22}, Lgbsdk/optional/applog/abes;-><init>(JLjava/lang/String;J)V

    check-cast v0, Lgbsdk/optional/applog/abci;

    invoke-virtual {v0, v10}, Lgbsdk/optional/applog/abci;->a(Lgbsdk/optional/applog/abfn;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :cond_d
    move-object v10, v9

    goto :goto_9

    :catchall_6
    move-exception v0

    goto :goto_7

    :catchall_7
    move-exception v0

    move-object v9, v10

    :goto_7
    move-object v8, v9

    goto :goto_8

    :catchall_8
    move-exception v0

    const/4 v8, 0x0

    .line 35
    :goto_8
    :try_start_12
    iget-object v9, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 36
    iget-object v9, v9, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 37
    iget-object v9, v9, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    const-string v10, "[event_process] Insert to table failed"

    :try_start_13
    new-array v11, v3, [Ljava/lang/Object;

    aput-object v0, v11, v4

    const/4 v12, 0x5

    .line 38
    invoke-interface {v9, v12, v10, v11}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_e

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lgbsdk/optional/applog/abap;

    if-nez v2, :cond_e

    iget-object v2, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 39
    iget-object v2, v2, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 40
    invoke-static {v2, v0}, Lgbsdk/optional/applog/abdt;->a(Lgbsdk/optional/applog/abdr;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    :cond_e
    move-object v10, v8

    :goto_9
    invoke-static {v10}, Lgbsdk/optional/applog/abce;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1, v7}, Lgbsdk/optional/applog/an;->b(Ljava/util/List;)V

    .line 41
    :try_start_14
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbsdk/optional/applog/abbw;

    iget-wide v6, v2, Lgbsdk/optional/applog/abbw;->a:J

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-nez v10, :cond_11

    iget-object v6, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 42
    iget-object v6, v6, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 43
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->c:Lgbsdk/optional/applog/abak;

    .line 44
    invoke-virtual {v6}, Lgbsdk/optional/applog/abak;->a()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 45
    iget-object v6, v6, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 46
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->c:Lgbsdk/optional/applog/abak;

    .line 47
    invoke-virtual {v2}, Lgbsdk/optional/applog/abfu;->n()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lgbsdk/optional/applog/abak;->pageJson(Lorg/json/JSONObject;Z)V

    :cond_10
    iget-object v6, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 48
    iget-object v6, v6, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 49
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->c:Lgbsdk/optional/applog/abak;

    .line 50
    invoke-virtual {v6}, Lgbsdk/optional/applog/abak;->b()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 51
    iget-object v6, v6, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 52
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->c:Lgbsdk/optional/applog/abak;

    .line 53
    iget-object v2, v2, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;

    invoke-virtual {v6, v2}, Lgbsdk/optional/applog/abak;->onPageEnter(Lorg/json/JSONObject;)V

    goto :goto_a

    :cond_11
    iget-object v6, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 54
    iget-object v6, v6, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 55
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->c:Lgbsdk/optional/applog/abak;

    .line 56
    invoke-virtual {v6}, Lgbsdk/optional/applog/abak;->a()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 57
    iget-object v6, v6, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 58
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->c:Lgbsdk/optional/applog/abak;

    .line 59
    invoke-virtual {v2}, Lgbsdk/optional/applog/abfu;->n()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lgbsdk/optional/applog/abak;->pageJson(Lorg/json/JSONObject;Z)V

    :cond_12
    iget-object v6, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 60
    iget-object v6, v6, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 61
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->c:Lgbsdk/optional/applog/abak;

    .line 62
    invoke-virtual {v6}, Lgbsdk/optional/applog/abak;->b()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 63
    iget-object v6, v6, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 64
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->c:Lgbsdk/optional/applog/abak;

    .line 65
    iget-object v2, v2, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;

    invoke-virtual {v6, v2}, Lgbsdk/optional/applog/abak;->onPageLeave(Lorg/json/JSONObject;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    goto :goto_a

    :catchall_9
    move-exception v0

    iget-object v2, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 66
    iget-object v2, v2, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 67
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v4

    const-string v0, "Notify event observer failed"

    const/4 v7, 0x5

    .line 68
    invoke-interface {v2, v7, v0, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :cond_13
    :try_start_15
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbsdk/optional/applog/abbf;

    iget-object v5, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 70
    iget-object v5, v5, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 71
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->b:Lgbsdk/optional/applog/abac;

    .line 72
    iget-wide v6, v2, Lgbsdk/optional/applog/abfu;->q:J

    iget-object v8, v2, Lgbsdk/optional/applog/abfu;->t:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lgbsdk/optional/applog/abac;->onSessionStart(JLjava/lang/String;)V

    iget-object v5, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 73
    iget-object v5, v5, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 74
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->c:Lgbsdk/optional/applog/abak;

    .line 75
    invoke-virtual {v5}, Lgbsdk/optional/applog/abak;->a()Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 76
    iget-object v5, v5, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 77
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->c:Lgbsdk/optional/applog/abak;

    .line 78
    invoke-virtual {v2}, Lgbsdk/optional/applog/abfu;->n()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgbsdk/optional/applog/abak;->launchJson(Lorg/json/JSONObject;)V

    :cond_15
    iget-object v5, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 79
    iget-object v5, v5, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 80
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->c:Lgbsdk/optional/applog/abak;

    .line 81
    invoke-virtual {v5}, Lgbsdk/optional/applog/abak;->b()Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 82
    iget-object v5, v5, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 83
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->c:Lgbsdk/optional/applog/abak;

    .line 84
    iget-object v2, v2, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;

    invoke-virtual {v5, v2}, Lgbsdk/optional/applog/abak;->onLaunch(Lorg/json/JSONObject;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    goto :goto_b

    :catchall_a
    move-exception v0

    iget-object v2, v1, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 85
    iget-object v2, v2, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 86
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const-string v0, "Notify session observer failed "

    const/4 v4, 0x5

    .line 87
    invoke-interface {v2, v4, v0, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    return-void

    :catchall_b
    move-exception v0

    .line 88
    invoke-static {v8}, Lgbsdk/optional/applog/abce;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :cond_17
    :goto_c
    return-void
.end method

.method public final a(Lcom/bytedance/applog/event/IEventHandler;Lgbsdk/optional/applog/abfu;Z)Z
    .locals 9

    const/4 v0, 0x1

    if-eqz p2, :cond_6

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/bytedance/applog/event/IEventHandler;->acceptType()I

    move-result v2

    instance-of v3, p2, Lgbsdk/optional/applog/abeh;

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/bytedance/applog/event/EventType;->a(II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v8, p2, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;

    const/16 v5, 0x8

    const-string v6, "bav2b_click"

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Lgbsdk/optional/applog/an;->a(Lcom/bytedance/applog/event/IEventHandler;ILjava/lang/String;Lgbsdk/optional/applog/abfu;Lorg/json/JSONObject;)Lcom/bytedance/applog/event/EventPolicy;

    move-result-object v1

    goto :goto_1

    :cond_0
    instance-of v3, p2, Lgbsdk/optional/applog/abbm;

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    invoke-static {v2, v0}, Lcom/bytedance/applog/event/EventType;->a(II)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, p2

    check-cast v1, Lgbsdk/optional/applog/abbm;

    .line 7
    iget-object v1, v1, Lgbsdk/optional/applog/abbm;->c:Ljava/lang/String;

    const/4 v4, 0x1

    goto :goto_0

    .line 8
    :cond_1
    instance-of v3, p2, Lgbsdk/optional/applog/abbw;

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/bytedance/applog/event/EventType;->a(II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v8, p2, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;

    const/4 v5, 0x4

    const-string v6, "bav2b_page"

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Lgbsdk/optional/applog/an;->a(Lcom/bytedance/applog/event/IEventHandler;ILjava/lang/String;Lgbsdk/optional/applog/abfu;Lorg/json/JSONObject;)Lcom/bytedance/applog/event/EventPolicy;

    move-result-object v1

    goto :goto_1

    :cond_2
    instance-of v3, p2, Lgbsdk/optional/applog/abao;

    if-eqz v3, :cond_3

    invoke-static {v2, v4}, Lcom/bytedance/applog/event/EventType;->a(II)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, p2

    check-cast v1, Lgbsdk/optional/applog/abao;

    .line 9
    iget-object v1, v1, Lgbsdk/optional/applog/abao;->b:Ljava/lang/String;

    .line 8
    :goto_0
    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p2, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lgbsdk/optional/applog/an;->a(Lcom/bytedance/applog/event/IEventHandler;ILjava/lang/String;Lgbsdk/optional/applog/abfu;Lorg/json/JSONObject;)Lcom/bytedance/applog/event/EventPolicy;

    move-result-object v1

    .line 10
    :cond_3
    :goto_1
    instance-of p1, p2, Lgbsdk/optional/applog/abbf;

    if-eqz p1, :cond_5

    if-eqz p3, :cond_4

    sget-object v1, Lcom/bytedance/applog/event/EventPolicy;->ACCEPT:Lcom/bytedance/applog/event/EventPolicy;

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/bytedance/applog/event/EventPolicy;->DENY:Lcom/bytedance/applog/event/EventPolicy;

    :cond_5
    :goto_2
    sget-object p1, Lcom/bytedance/applog/event/EventPolicy;->DENY:Lcom/bytedance/applog/event/EventPolicy;

    if-ne v1, p1, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    return v0
.end method

.method public b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgbsdk/optional/applog/abfu;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/optional/applog/abfu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "eventv3"

    :try_start_1
    invoke-virtual {v0}, Lgbsdk/optional/applog/abfu;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lgbsdk/optional/applog/abbm;

    iget-object v1, p0, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 11
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 12
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->c:Lgbsdk/optional/applog/abak;

    .line 13
    iget-object v2, v0, Lgbsdk/optional/applog/abbm;->c:Ljava/lang/String;

    iget-object v3, v0, Lgbsdk/optional/applog/abbm;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1, v2, v4}, Lgbsdk/optional/applog/abak;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 14
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 15
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->c:Lgbsdk/optional/applog/abak;

    .line 16
    invoke-virtual {v1}, Lgbsdk/optional/applog/abak;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 17
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 18
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->c:Lgbsdk/optional/applog/abak;

    .line 19
    iget-object v2, v0, Lgbsdk/optional/applog/abbm;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lgbsdk/optional/applog/abfu;->n()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lgbsdk/optional/applog/abak;->eventJson(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lgbsdk/optional/applog/an;->a:Lgbsdk/optional/applog/abbj;

    .line 20
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 21
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x5

    const-string v2, "Notify event observer failed"

    .line 22
    invoke-interface {v0, p1, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
