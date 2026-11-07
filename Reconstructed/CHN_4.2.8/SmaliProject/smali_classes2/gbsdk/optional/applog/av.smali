.class public Lgbsdk/optional/applog/av;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lgbsdk/optional/applog/ag;

.field public final b:Lgbsdk/optional/applog/abbj;

.field public final c:Lgbsdk/optional/applog/an;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abbj;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lgbsdk/optional/applog/ag;

    const/4 v1, 0x0

    const/16 v2, 0x33

    invoke-direct {v0, p1, p2, v1, v2}, Lgbsdk/optional/applog/ag;-><init>(Lgbsdk/optional/applog/abbj;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lgbsdk/optional/applog/av;->a:Lgbsdk/optional/applog/ag;

    iput-object p1, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    new-instance p2, Lgbsdk/optional/applog/an;

    invoke-direct {p2, p1, v0}, Lgbsdk/optional/applog/an;-><init>(Lgbsdk/optional/applog/abbj;Lgbsdk/optional/applog/ag;)V

    iput-object p2, p0, Lgbsdk/optional/applog/av;->c:Lgbsdk/optional/applog/an;

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT count(1) FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    return p1

    :cond_1
    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    iget-object p3, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 25
    iget-object p3, p3, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 26
    iget-object p3, p3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p4, 0x5

    const-string v2, "Count table:{} failed"

    const/4 v3, 0x1

    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v0

    .line 27
    invoke-interface {p3, p4, v2, p1, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p2, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 28
    iget-object p2, p2, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 29
    invoke-static {p2, p1}, Lgbsdk/optional/applog/abdt;->a(Lgbsdk/optional/applog/abdr;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    :goto_0
    return v0

    :catchall_1
    move-exception p1

    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lgbsdk/optional/applog/av;->a:Lgbsdk/optional/applog/ag;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v0

    const-string p1, "SELECT * FROM packV2 WHERE _app_id= ? ORDER BY _id DESC LIMIT 8"

    .line 28
    invoke-virtual {v2, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 29
    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v2

    const/4 p1, 0x0

    :goto_1
    :try_start_2
    instance-of v3, v2, Landroid/database/sqlite/SQLiteBlobTooBigException;

    iget-object v4, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 30
    iget-object v4, v4, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 31
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v5, 0x5

    const-string v6, "Query event packs count failed"

    :try_start_3
    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    invoke-interface {v4, v5, v6, v2, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 33
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 34
    invoke-static {v0, v2}, Lgbsdk/optional/applog/abdt;->a(Lgbsdk/optional/applog/abdr;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    move v0, v3

    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lgbsdk/optional/applog/av;->b()V

    :cond_2
    return p1

    :catchall_2
    move-exception p1

    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    throw p1
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lgbsdk/optional/applog/abap;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SELECT * FROM trace WHERE _app_id= ? "

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-array v5, v2, [Ljava/lang/String;

    aput-object p2, v5, v3

    invoke-virtual {p1, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lgbsdk/optional/applog/abap;

    invoke-direct {p1}, Lgbsdk/optional/applog/abap;-><init>()V

    invoke-virtual {p1, v4}, Lgbsdk/optional/applog/abfu;->a(Landroid/database/Cursor;)I

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    instance-of v1, p1, Landroid/database/sqlite/SQLiteBlobTooBigException;

    iget-object v5, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 89
    iget-object v5, v5, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 90
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x5

    const-string v7, "Query trace for appId:{} failed"

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    .line 91
    invoke-interface {v5, v6, v7, p1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p2, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 92
    iget-object p2, p2, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 93
    invoke-static {p2, p1}, Lgbsdk/optional/applog/abdt;->a(Lgbsdk/optional/applog/abdr;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v4}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lgbsdk/optional/applog/av;->b()V

    :cond_1
    return-object v0

    :catchall_1
    move-exception p1

    invoke-static {v4}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    throw p1
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lgbsdk/optional/applog/abef;",
            ">;"
        }
    .end annotation

    if-gtz p4, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez p3, :cond_1

    const-string v5, "SELECT * FROM custom_event WHERE _app_id= ? and user_unique_id is null limit 0, ?"

    :try_start_0
    new-array v6, v3, [Ljava/lang/String;

    aput-object p2, v6, v4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, v6, v2

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_1
    const-string v5, "SELECT * FROM custom_event WHERE _app_id= ? and user_unique_id = ? limit 0, ?"

    const/4 v6, 0x3

    :try_start_1
    new-array v6, v6, [Ljava/lang/String;

    aput-object p2, v6, v4

    aput-object p3, v6, v2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, v6, v3

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lgbsdk/optional/applog/abef;

    invoke-direct {p1}, Lgbsdk/optional/applog/abef;-><init>()V

    invoke-virtual {p1, v1}, Lgbsdk/optional/applog/abef;->a(Landroid/database/Cursor;)I

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_2
    instance-of p4, p1, Landroid/database/sqlite/SQLiteBlobTooBigException;

    iget-object v5, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 79
    iget-object v5, v5, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 80
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v6, 0x5

    const-string v7, "Query custom event by uuid:{} for appId:{} failed"

    :try_start_3
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v4

    aput-object p2, v3, v2

    .line 81
    invoke-interface {v5, v6, v7, p1, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p2, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 82
    iget-object p2, p2, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 83
    invoke-static {p2, p1}, Lgbsdk/optional/applog/abdt;->a(Lgbsdk/optional/applog/abdr;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    move v4, p4

    :goto_2
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lgbsdk/optional/applog/av;->b()V

    :cond_3
    return-object v0

    :catchall_1
    move-exception p1

    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    throw p1
.end method

.method public final a(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgbsdk/optional/applog/abbw;",
            ">;",
            "Ljava/util/List<",
            "Lgbsdk/optional/applog/abbw;",
            ">;Z)",
            "Ljava/util/List<",
            "Lgbsdk/optional/applog/abax;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    invoke-virtual {v0}, Lgbsdk/optional/applog/abbj;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgbsdk/optional/applog/abbw;

    iget-object v7, v6, Lgbsdk/optional/applog/abfu;->t:Ljava/lang/String;

    invoke-static {v7, v0}, Lgbsdk/optional/applog/abce;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    iget-object v7, v6, Lgbsdk/optional/applog/abfu;->t:Ljava/lang/String;

    invoke-static {v7}, Lgbsdk/optional/applog/abce;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgbsdk/optional/applog/abbw;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-wide/16 v9, 0x0

    move-wide v11, v9

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const/4 v7, 0x1

    if-eqz v13, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgbsdk/optional/applog/abbw;

    iget-object v14, v13, Lgbsdk/optional/applog/abbw;->c:Ljava/lang/String;

    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v13}, Lgbsdk/optional/applog/abbw;->c()Z

    move-result v15

    if-eqz v15, :cond_6

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sub-int/2addr v14, v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lez v14, :cond_3

    iget-object v14, v13, Lgbsdk/optional/applog/abbw;->c:Ljava/lang/String;

    invoke-interface {v5, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    iget-object v7, v13, Lgbsdk/optional/applog/abbw;->c:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    const-wide/16 v14, 0x3e8

    iput-wide v14, v13, Lgbsdk/optional/applog/abbw;->a:J

    iget-boolean v7, v13, Lgbsdk/optional/applog/abbw;->l:Z

    if-nez v7, :cond_5

    iget-wide v14, v13, Lgbsdk/optional/applog/abbw;->a:J

    add-long/2addr v9, v14

    :cond_5
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object v15, v8

    goto :goto_5

    :cond_6
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object v15, v8

    const-wide/16 v7, 0x3e8

    iget-wide v3, v13, Lgbsdk/optional/applog/abbw;->a:J

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v13, Lgbsdk/optional/applog/abbw;->a:J

    iget-boolean v3, v13, Lgbsdk/optional/applog/abbw;->l:Z

    if-nez v3, :cond_7

    iget-wide v3, v13, Lgbsdk/optional/applog/abbw;->a:J

    add-long/2addr v9, v3

    :cond_7
    iget-object v3, v13, Lgbsdk/optional/applog/abbw;->c:Ljava/lang/String;

    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x1

    add-int/2addr v7, v4

    goto :goto_4

    :cond_8
    const/4 v7, 0x1

    :goto_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    invoke-virtual {v13}, Lgbsdk/optional/applog/abbw;->c()Z

    move-result v3

    if-nez v3, :cond_9

    iget-wide v3, v13, Lgbsdk/optional/applog/abfu;->r:J

    goto :goto_6

    :cond_9
    iget-wide v3, v13, Lgbsdk/optional/applog/abfu;->r:J

    iget-wide v7, v13, Lgbsdk/optional/applog/abbw;->a:J

    add-long/2addr v3, v7

    :goto_6
    iget-boolean v7, v13, Lgbsdk/optional/applog/abbw;->l:Z

    if-nez v7, :cond_a

    cmp-long v7, v3, v11

    if-lez v7, :cond_a

    move-wide v11, v3

    move-object v6, v13

    :cond_a
    move-object v8, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_b
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    const-wide/16 v7, 0x3e8

    iget-object v3, v1, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 6
    iget-object v3, v3, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    const/4 v4, 0x5

    if-eqz v3, :cond_c

    .line 7
    iget-object v3, v3, Lgbsdk/optional/applog/abfl;->s:Lgbsdk/optional/applog/abdy;

    .line 8
    iget-object v3, v3, Lgbsdk/optional/applog/abdy;->b:Ljava/util/Set;

    const-string v5, "app_terminate"

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_c
    if-nez p3, :cond_e

    .line 9
    :cond_d
    iget-object v0, v1, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 10
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 11
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "Terminate event block"

    .line 12
    invoke-interface {v0, v4, v5, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v3, v16

    :goto_7
    move-object/from16 v4, v17

    goto/16 :goto_1

    :cond_e
    new-instance v3, Lgbsdk/optional/applog/abax;

    invoke-direct {v3}, Lgbsdk/optional/applog/abax;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lgbsdk/optional/applog/abfu;->t:Ljava/lang/String;

    iput-wide v9, v3, Lgbsdk/optional/applog/abax;->a:J

    iput-wide v11, v3, Lgbsdk/optional/applog/abfu;->r:J

    iget-wide v9, v6, Lgbsdk/optional/applog/abfu;->u:J

    iput-wide v9, v3, Lgbsdk/optional/applog/abfu;->u:J

    iget-object v0, v6, Lgbsdk/optional/applog/abfu;->v:Ljava/lang/String;

    iput-object v0, v3, Lgbsdk/optional/applog/abfu;->v:Ljava/lang/String;

    iget-object v0, v6, Lgbsdk/optional/applog/abfu;->w:Ljava/lang/String;

    iput-object v0, v3, Lgbsdk/optional/applog/abfu;->w:Ljava/lang/String;

    iget-object v0, v6, Lgbsdk/optional/applog/abfu;->x:Ljava/lang/String;

    iput-object v0, v3, Lgbsdk/optional/applog/abfu;->x:Ljava/lang/String;

    iget-object v0, v6, Lgbsdk/optional/applog/abfu;->y:Ljava/lang/String;

    iput-object v0, v3, Lgbsdk/optional/applog/abfu;->y:Ljava/lang/String;

    iput-wide v11, v3, Lgbsdk/optional/applog/abax;->b:J

    iget-object v0, v1, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 13
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->n:Lgbsdk/optional/applog/abaa;

    if-eqz v0, :cond_f

    .line 14
    iget-object v0, v0, Lgbsdk/optional/applog/abaa;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v14

    goto :goto_8

    :cond_f
    move-wide v14, v7

    .line 15
    :goto_8
    iput-wide v14, v3, Lgbsdk/optional/applog/abfu;->s:J

    const/4 v0, 0x0

    iput-object v0, v3, Lgbsdk/optional/applog/abax;->c:Ljava/lang/String;

    iget-object v0, v6, Lgbsdk/optional/applog/abbw;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v6, Lgbsdk/optional/applog/abbw;->j:Ljava/lang/String;

    iput-object v0, v3, Lgbsdk/optional/applog/abax;->c:Ljava/lang/String;

    .line 16
    :cond_10
    iget-object v0, v6, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;

    if-eqz v0, :cond_11

    const-string v5, "$screen_orientation"

    .line 17
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 18
    iget-object v6, v6, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;

    .line 19
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    iput-object v0, v3, Lgbsdk/optional/applog/abfu;->D:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    .line 21
    iget-object v5, v1, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 22
    iget-object v5, v5, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 23
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const-string v0, "JSON handle failed"

    .line 24
    invoke-interface {v5, v4, v0, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    :goto_9
    move-object/from16 v4, v16

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v4

    goto :goto_7

    :cond_12
    move-object v4, v3

    return-object v4
.end method

.method public final a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "local_time_ms"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT `user_unique_id` FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_app_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "= ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/String;

    aput-object p3, v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    instance-of v4, p1, Landroid/database/sqlite/SQLiteBlobTooBigException;

    iget-object v5, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 35
    iget-object v5, v5, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 36
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x5

    const-string v7, "Query uuid set from table:{} for appId:{} failed"

    const/4 v8, 0x2

    :try_start_2
    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v2

    aput-object p3, v8, v1

    .line 37
    invoke-interface {v5, v6, v7, p1, v8}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p2, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 38
    iget-object p2, p2, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 39
    invoke-static {p2, p1}, Lgbsdk/optional/applog/abdt;->a(Lgbsdk/optional/applog/abdr;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v3}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    move v2, v4

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lgbsdk/optional/applog/av;->b()V

    :cond_1
    return-object v0

    :catchall_1
    move-exception p1

    invoke-static {v3}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    throw p1
.end method

.method public declared-synchronized a()V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lgbsdk/optional/applog/av;->a:Lgbsdk/optional/applog/ag;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-static {}, Lgbsdk/optional/applog/abfu;->k()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgbsdk/optional/applog/abfu;

    invoke-virtual {v3}, Lgbsdk/optional/applog/abfu;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lgbsdk/optional/applog/abfu;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    :try_start_3
    iget-object v2, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object v2, v2, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v3, 0x5

    :try_start_4
    const-string v4, "Clear database failed"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v5, 0x0

    :try_start_5
    new-array v5, v5, [Ljava/lang/Object;

    .line 3
    invoke-interface {v2, v3, v4, v0, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v2, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 4
    iget-object v2, v2, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 5
    invoke-static {v2, v0}, Lgbsdk/optional/applog/abdt;->a(Lgbsdk/optional/applog/abdr;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_2

    :try_start_6
    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_7
    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;Lgbsdk/optional/applog/abbc;)V
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "packV2"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p2, v2}, Lgbsdk/optional/applog/abfu;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    :try_start_3
    invoke-static {p1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 94
    :cond_0
    :try_start_4
    iget-object v1, p2, Lgbsdk/optional/applog/abbc;->d:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 95
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgbsdk/optional/applog/abbf;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    const-string v4, "launch"

    const-string v5, "_id = ?"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-array v6, v2, [Ljava/lang/String;

    iget-wide v7, v3, Lgbsdk/optional/applog/abfu;->q:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "event_pack"

    invoke-static {v4, v3}, Lcom/bytedance/applog/log/LogUtils;->sendObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v1, p2, Lgbsdk/optional/applog/abbc;->c:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 97
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgbsdk/optional/applog/abbw;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    const-string v4, "page"

    const-string v5, "session_id = ? and page_key = ?"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v6, 0x2

    :try_start_8
    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, v3, Lgbsdk/optional/applog/abfu;->t:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    iget-object v7, v3, Lgbsdk/optional/applog/abbw;->c:Ljava/lang/String;

    invoke-static {v7}, Lgbsdk/optional/applog/abce;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "event_pack"

    invoke-static {v4, v3}, Lcom/bytedance/applog/log/LogUtils;->sendObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 98
    :cond_2
    iget-object v1, p2, Lgbsdk/optional/applog/abbc;->b:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 99
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgbsdk/optional/applog/abef;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    const-string v4, "custom_event"

    const-string v5, "_id = ?"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    new-array v6, v2, [Ljava/lang/String;

    iget-wide v7, v3, Lgbsdk/optional/applog/abfu;->q:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "event_pack"

    invoke-static {v4, v3}, Lcom/bytedance/applog/log/LogUtils;->sendObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 100
    :cond_3
    iget-object v1, p2, Lgbsdk/optional/applog/abbc;->a:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 101
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgbsdk/optional/applog/abbm;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    const-string v4, "eventv3"

    const-string v5, "_id = ?"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    new-array v6, v2, [Ljava/lang/String;

    iget-wide v7, v3, Lgbsdk/optional/applog/abfu;->q:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "event_pack"

    invoke-static {v4, v3}, Lcom/bytedance/applog/log/LogUtils;->sendObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 102
    :cond_4
    iget-object v1, p2, Lgbsdk/optional/applog/abbc;->f:Ljava/util/List;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v1, :cond_5

    :try_start_d
    const-string v1, "trace"

    const-string v3, "_app_id= ? "
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    new-array v2, v2, [Ljava/lang/String;

    .line 103
    iget-object v4, p2, Lgbsdk/optional/applog/abfu;->B:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-virtual {p1, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 104
    iget-object p2, p2, Lgbsdk/optional/applog/abbc;->f:Ljava/util/List;

    .line 105
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/optional/applog/abap;

    const-string v2, "event_pack"

    invoke-static {v2, v1}, Lcom/bytedance/applog/log/LogUtils;->sendObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :catchall_1
    move-exception p2

    :try_start_f
    iget-object v1, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 106
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 107
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    const/4 v2, 0x5

    :try_start_10
    const-string v3, "Save pack and delete data failed"
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    new-array v0, v0, [Ljava/lang/Object;

    .line 108
    invoke-interface {v1, v2, v3, p2, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 109
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 110
    invoke-static {v0, p2}, Lgbsdk/optional/applog/abdt;->a(Lgbsdk/optional/applog/abdr;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :goto_5
    :try_start_12
    invoke-static {p1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    monitor-exit p0

    return-void

    :catchall_2
    move-exception p2

    :try_start_13
    invoke-static {p1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :goto_6
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lgbsdk/optional/applog/av;->a:Lgbsdk/optional/applog/ag;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v4, "UPDATE launch SET ssid = ? WHERE user_unique_id = ? AND LENGTH(ssid) = 0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-array v5, v2, [Ljava/lang/String;

    aput-object p2, v5, v1

    aput-object p1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v4, "UPDATE page SET ssid = ? WHERE user_unique_id = ? AND LENGTH(ssid) = 0"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-array v5, v2, [Ljava/lang/String;

    aput-object p2, v5, v1

    aput-object p1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    const-string v4, "UPDATE eventv3 SET ssid = ? WHERE user_unique_id = ? AND LENGTH(ssid) = 0"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-array v5, v2, [Ljava/lang/String;

    aput-object p2, v5, v1

    aput-object p1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    const-string v4, "UPDATE profile SET ssid = ? WHERE user_unique_id = ? AND LENGTH(ssid) = 0"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    new-array v5, v2, [Ljava/lang/String;

    aput-object p2, v5, v1

    aput-object p1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    const-string v4, "UPDATE trace SET ssid = ? WHERE user_unique_id = ? AND LENGTH(ssid) = 0"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    new-array v5, v2, [Ljava/lang/String;

    aput-object p2, v5, v1

    aput-object p1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_b
    iget-object v5, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 111
    iget-object v5, v5, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 112
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    const/4 v6, 0x5

    :try_start_c
    const-string v7, "Update ssid to:{} for user:{} failed"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    aput-object p1, v2, v0

    .line 113
    invoke-interface {v5, v6, v7, v4, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p1, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 114
    iget-object p1, p1, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 115
    invoke-static {p1, v4}, Lgbsdk/optional/applog/abdt;->a(Lgbsdk/optional/applog/abdr;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_0
    :try_start_e
    invoke-static {v3}, Lgbsdk/optional/applog/abce;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    :try_start_f
    invoke-static {v3}, Lgbsdk/optional/applog/abce;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgbsdk/optional/applog/abbc;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lgbsdk/optional/applog/av;->a:Lgbsdk/optional/applog/ag;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbsdk/optional/applog/abbc;

    iget v3, v2, Lgbsdk/optional/applog/abbc;->i:I

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    iget v3, v2, Lgbsdk/optional/applog/abbc;->i:I

    if-lez v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v2, Lgbsdk/optional/applog/abfu;->r:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide v7, 0x9a7ec800L

    cmp-long v3, v5, v7

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    iget v3, v2, Lgbsdk/optional/applog/abbc;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v3, :cond_1

    :try_start_1
    const-string v5, "UPDATE packV2 SET _fail= ? WHERE _id= ?"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v6, 0x2

    :try_start_2
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    iget-wide v2, v2, Lgbsdk/optional/applog/abfu;->q:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v4

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    :try_start_3
    const-string v3, "DELETE FROM packV2 WHERE _id=?"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v5, v2, Lgbsdk/optional/applog/abfu;->q:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_5
    iget-object v2, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object v2, v2, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v3, 0x5

    :try_start_6
    const-string v4, "Do task after pack failed"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-interface {v2, v3, v4, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v1, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 4
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 5
    invoke-static {v1, p1}, Lgbsdk/optional/applog/abdt;->a(Lgbsdk/optional/applog/abdr;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 0
    :goto_2
    :try_start_8
    invoke-static {v0}, Lgbsdk/optional/applog/abce;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 5
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_9
    invoke-static {v0}, Lgbsdk/optional/applog/abce;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "launch"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgbsdk/optional/applog/av;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgbsdk/optional/applog/av;->d(Ljava/util/List;)V

    const-string v0, "terminate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgbsdk/optional/applog/av;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgbsdk/optional/applog/av;->d(Ljava/util/List;)V

    const-string v0, "event_v3"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/av;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/av;->d(Ljava/util/List;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 40
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 41
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "Pack events for appId:{} start..."

    const/4 v5, 0x5

    .line 42
    invoke-interface {v0, v5, v4, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    .line 43
    :try_start_1
    iget-object v2, p0, Lgbsdk/optional/applog/av;->a:Lgbsdk/optional/applog/ag;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    iget-object v4, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 44
    iget-object v4, v4, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 45
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "Open db failed"

    .line 46
    invoke-interface {v4, v5, v7, v2, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v4, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 47
    iget-object v4, v4, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 48
    invoke-static {v4, v2}, Lgbsdk/optional/applog/abdt;->a(Lgbsdk/optional/applog/abdr;Ljava/lang/Throwable;)V

    move-object v2, v0

    :goto_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    if-eqz v2, :cond_0

    const-string v6, "launch"

    invoke-virtual {p0, v2, v6, p1}, Lgbsdk/optional/applog/av;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v6, "page"

    invoke-virtual {p0, v2, v6, p1}, Lgbsdk/optional/applog/av;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v6, "eventv3"

    invoke-virtual {p0, v2, v6, p1}, Lgbsdk/optional/applog/av;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v6, "custom_event"

    invoke-virtual {p0, v2, v6, p1}, Lgbsdk/optional/applog/av;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 49
    :cond_0
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_1

    monitor-exit p0

    return v3

    :cond_1
    :try_start_3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v6, p0, Lgbsdk/optional/applog/av;->a:Lgbsdk/optional/applog/ag;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Lgbsdk/optional/applog/abbc;

    invoke-direct {v8}, Lgbsdk/optional/applog/abbc;-><init>()V

    .line 50
    iput-object p1, v8, Lgbsdk/optional/applog/abfu;->B:Ljava/lang/String;

    .line 51
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v9, p2}, Lgbsdk/optional/applog/abce;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const-string v10, "ssid"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    const-string v10, "user_unique_id"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v7}, Lgbsdk/optional/applog/abce;->c(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-object v11, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move-object v11, v7

    :goto_2
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    iput-object v9, v8, Lgbsdk/optional/applog/abbc;->g:Lorg/json/JSONObject;

    .line 53
    invoke-virtual {p0, v6, p1, v7}, Lgbsdk/optional/applog/av;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 54
    iput-object v10, v8, Lgbsdk/optional/applog/abbc;->d:Ljava/util/List;

    .line 55
    invoke-virtual {p0, v6, p1, v7}, Lgbsdk/optional/applog/av;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 56
    iget-object v12, v12, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 57
    iget-object v12, v12, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 58
    invoke-virtual {v12}, Lcom/bytedance/applog/InitConfig;->isLaunchTerminateEnabled()Z

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lgbsdk/optional/applog/av;->a(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v10

    .line 59
    iput-object v11, v8, Lgbsdk/optional/applog/abbc;->c:Ljava/util/List;

    .line 60
    iput-object v10, v8, Lgbsdk/optional/applog/abbc;->e:Ljava/util/List;

    .line 61
    invoke-virtual {v8}, Lgbsdk/optional/applog/abbc;->c()I

    move-result v10

    invoke-virtual {p0, v6, p1, v7, v10}, Lgbsdk/optional/applog/av;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 62
    iput-object v10, v8, Lgbsdk/optional/applog/abbc;->b:Ljava/util/List;

    .line 63
    invoke-virtual {v8}, Lgbsdk/optional/applog/abbc;->c()I

    move-result v10

    iget-object v11, v8, Lgbsdk/optional/applog/abbc;->b:Ljava/util/List;

    if-eqz v11, :cond_3

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v10, v11

    .line 64
    :cond_3
    invoke-virtual {p0, v6, p1, v7, v10}, Lgbsdk/optional/applog/av;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 65
    iput-object v10, v8, Lgbsdk/optional/applog/abbc;->a:Ljava/util/List;

    .line 66
    iget-object v10, v8, Lgbsdk/optional/applog/abbc;->d:Ljava/util/List;

    if-eqz v10, :cond_4

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_4
    iget-object v10, v8, Lgbsdk/optional/applog/abbc;->e:Ljava/util/List;

    if-eqz v10, :cond_5

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_5
    invoke-virtual {v8, v0}, Lgbsdk/optional/applog/abbc;->a(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, v8, Lgbsdk/optional/applog/abbc;->b:Ljava/util/List;

    if-eqz v10, :cond_6

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_6
    const/4 v10, 0x1

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_8

    goto/16 :goto_1

    .line 67
    :cond_8
    invoke-virtual {v8}, Lgbsdk/optional/applog/abbc;->g()V

    invoke-virtual {v8}, Lgbsdk/optional/applog/abbc;->h()V

    iget-object v10, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    invoke-virtual {v10, v9}, Lgbsdk/optional/applog/abbj;->a(Lorg/json/JSONObject;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v7, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 68
    iget-object v7, v7, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 69
    iget-object v7, v7, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    const-string v8, "Register to get ssid by temp header failed."
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    new-array v9, v3, [Ljava/lang/Object;

    .line 70
    invoke-interface {v7, v5, v8, v9}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_9
    iget-object v9, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 71
    iget-object v9, v9, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 72
    iget-object v9, v9, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 73
    invoke-virtual {v8}, Lgbsdk/optional/applog/abbc;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v3, [Ljava/lang/Object;

    invoke-interface {v9, v5, v10, v11}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v6, v8}, Lgbsdk/optional/applog/av;->a(Landroid/database/sqlite/SQLiteDatabase;Lgbsdk/optional/applog/abbc;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception p2

    :try_start_9
    iget-object v0, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 74
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 75
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v3

    aput-object p1, v4, v1

    const-string p1, "Pack events for appId:{} failed"

    .line 76
    invoke-interface {v0, v5, p1, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 77
    iget-object p1, p1, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 78
    invoke-static {p1, p2}, Lgbsdk/optional/applog/abdt;->a(Lgbsdk/optional/applog/abdr;Ljava/lang/Throwable;)V

    :cond_a
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    xor-int/2addr p1, v1

    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lgbsdk/optional/applog/abbf;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez p3, :cond_0

    const-string v5, "SELECT * FROM launch WHERE _app_id= ? and user_unique_id is null"

    :try_start_0
    new-array v6, v2, [Ljava/lang/String;

    aput-object p2, v6, v3

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-string v5, "SELECT * FROM launch WHERE _app_id= ? and user_unique_id = ?"

    :try_start_1
    new-array v6, v1, [Ljava/lang/String;

    aput-object p2, v6, v3

    aput-object p3, v6, v2

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lgbsdk/optional/applog/abbf;

    invoke-direct {v5}, Lgbsdk/optional/applog/abbf;-><init>()V

    invoke-virtual {v5, v4}, Lgbsdk/optional/applog/abbf;->a(Landroid/database/Cursor;)I

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v5, Lgbsdk/optional/applog/abfu;->t:Ljava/lang/String;

    invoke-static {v6}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    const-string v6, "page"

    const-string v7, "session_id = ? LIMIT 1"

    :try_start_2
    new-array v8, v2, [Ljava/lang/String;

    iget-object v9, v5, Lgbsdk/optional/applog/abfu;->t:Ljava/lang/String;

    aput-object v9, v8, v3

    invoke-virtual {p0, p1, v6, v7, v8}, Lgbsdk/optional/applog/av;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    xor-int/2addr v6, v2

    iput-boolean v6, v5, Lgbsdk/optional/applog/abbf;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_3
    instance-of v5, p1, Landroid/database/sqlite/SQLiteBlobTooBigException;

    iget-object v6, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 23
    iget-object v6, v6, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 24
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v7, 0x5

    const-string v8, "Query launch by uuid:{} for appId:{} failed"

    :try_start_4
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v3

    aput-object p2, v1, v2

    .line 25
    invoke-interface {v6, v7, v8, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p2, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 26
    iget-object p2, p2, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 27
    invoke-static {p2, p1}, Lgbsdk/optional/applog/abdt;->a(Lgbsdk/optional/applog/abdr;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v4}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    move v3, v5

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lgbsdk/optional/applog/av;->b()V

    :cond_3
    return-object v0

    :catchall_1
    move-exception p1

    invoke-static {v4}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    throw p1
.end method

.method public final b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lgbsdk/optional/applog/abbm;",
            ">;"
        }
    .end annotation

    if-gtz p4, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez p3, :cond_1

    const-string v5, "SELECT * FROM eventv3 WHERE _app_id= ? and user_unique_id is null limit 0, ?"

    :try_start_0
    new-array v6, v3, [Ljava/lang/String;

    aput-object p2, v6, v4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, v6, v2

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_1
    const-string v5, "SELECT * FROM eventv3 WHERE _app_id= ? and user_unique_id = ? limit 0, ?"

    const/4 v6, 0x3

    :try_start_1
    new-array v6, v6, [Ljava/lang/String;

    aput-object p2, v6, v4

    aput-object p3, v6, v2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, v6, v3

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lgbsdk/optional/applog/abbm;

    invoke-direct {p1}, Lgbsdk/optional/applog/abbm;-><init>()V

    invoke-virtual {p1, v1}, Lgbsdk/optional/applog/abbm;->a(Landroid/database/Cursor;)I

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_2
    instance-of p4, p1, Landroid/database/sqlite/SQLiteBlobTooBigException;

    iget-object v5, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 18
    iget-object v5, v5, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 19
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v6, 0x5

    const-string v7, "Query v3 event by uuid:{} for appId:{} failed"

    :try_start_3
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v4

    aput-object p2, v3, v2

    .line 20
    invoke-interface {v5, v6, v7, p1, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p2, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 21
    iget-object p2, p2, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 22
    invoke-static {p2, p1}, Lgbsdk/optional/applog/abdt;->a(Lgbsdk/optional/applog/abdr;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    move v4, p4

    :goto_2
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lgbsdk/optional/applog/av;->b()V

    :cond_3
    return-object v0

    :catchall_1
    move-exception p1

    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lgbsdk/optional/applog/abao;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_1
    iget-object v4, p0, Lgbsdk/optional/applog/av;->a:Lgbsdk/optional/applog/ag;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v5, "SELECT * FROM profile WHERE _app_id=? ORDER BY _id DESC LIMIT 200"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lgbsdk/optional/applog/abao;

    invoke-direct {v4}, Lgbsdk/optional/applog/abao;-><init>()V

    invoke-virtual {v4, v1}, Lgbsdk/optional/applog/abao;->a(Landroid/database/Cursor;)I

    iget-object v5, v4, Lgbsdk/optional/applog/abfu;->v:Ljava/lang/String;

    invoke-static {v5}, Lgbsdk/optional/applog/abce;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_4
    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_5
    instance-of v5, v4, Landroid/database/sqlite/SQLiteBlobTooBigException;

    iget-object v6, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 84
    iget-object v6, v6, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 85
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v7, 0x5

    :try_start_6
    const-string v8, "Query profiles for appId:{} failed"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 86
    invoke-interface {v6, v7, v8, v4, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p1, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 87
    iget-object p1, p1, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 88
    invoke-static {p1, v4}, Lgbsdk/optional/applog/abdt;->a(Lgbsdk/optional/applog/abdr;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    move v3, v5

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lgbsdk/optional/applog/av;->b()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception p1

    :try_start_9
    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/database/CursorWindow;

    const-string v2, "sCursorWindowSize"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    const/high16 v4, 0x800000

    if-gt v3, v4, :cond_0

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    iget-object v1, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 35
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 36
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryIncreaseCursorWindowSize set new curCursorWindowSize = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 38
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 39
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryIncreaseCursorWindowSize curCursorWindowSize invalid = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 41
    iget-object v2, v2, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 42
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x5

    const-string v4, "tryIncreaseCursorWindowSize"

    .line 43
    invoke-interface {v2, v3, v4, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 6
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 7
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "Pack trace events for appId:{} start..."

    const/4 v5, 0x5

    .line 8
    invoke-interface {v0, v5, v4, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lgbsdk/optional/applog/av;->a:Lgbsdk/optional/applog/ag;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lgbsdk/optional/applog/av;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    new-instance v4, Lgbsdk/optional/applog/abbc;

    invoke-direct {v4}, Lgbsdk/optional/applog/abbc;-><init>()V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v6, p2}, Lgbsdk/optional/applog/abce;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const-string p2, "user_unique_id"

    invoke-virtual {v6, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string p2, "user_unique_id_type"

    invoke-virtual {v6, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object v6, v4, Lgbsdk/optional/applog/abbc;->g:Lorg/json/JSONObject;

    .line 10
    iput-object p1, v4, Lgbsdk/optional/applog/abfu;->B:Ljava/lang/String;

    .line 11
    iput-object v2, v4, Lgbsdk/optional/applog/abbc;->f:Ljava/util/List;

    .line 12
    invoke-virtual {p0, v0, v4}, Lgbsdk/optional/applog/av;->a(Landroid/database/sqlite/SQLiteDatabase;Lgbsdk/optional/applog/abbc;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    :try_start_3
    iget-object v0, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 13
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 14
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "Pack trace events for appId:{} failed"

    .line 15
    invoke-interface {v0, v5, p1, p2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p1, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 16
    iget-object p1, p1, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 17
    invoke-static {p1, p2}, Lgbsdk/optional/applog/abdt;->a(Lgbsdk/optional/applog/abdr;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgbsdk/optional/applog/abao;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lgbsdk/optional/applog/av;->a:Lgbsdk/optional/applog/ag;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbsdk/optional/applog/abao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "profile"

    const-string v4, "_id=?"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v5, 0x1

    :try_start_2
    new-array v5, v5, [Ljava/lang/String;

    iget-wide v6, v2, Lgbsdk/optional/applog/abfu;->q:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    iget-object v2, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 30
    iget-object v2, v2, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 31
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v3, 0x5

    :try_start_4
    const-string v4, "Delete profiles failed"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    invoke-interface {v2, v3, v4, p1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 33
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 34
    invoke-static {v0, p1}, Lgbsdk/optional/applog/abdt;->a(Lgbsdk/optional/applog/abdr;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 0
    :goto_1
    :try_start_6
    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 34
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_7
    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lgbsdk/optional/applog/abbw;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p3, :cond_0

    const-string v4, "SELECT * FROM page WHERE _app_id= ? and user_unique_id is null order by duration desc"

    :try_start_0
    new-array v5, v1, [Ljava/lang/String;

    aput-object p2, v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v3, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const-string v4, "SELECT * FROM page WHERE _app_id= ? and user_unique_id = ? order by duration desc"

    const/4 v5, 0x2

    :try_start_1
    new-array v5, v5, [Ljava/lang/String;

    aput-object p2, v5, v2

    aput-object p3, v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lgbsdk/optional/applog/abbw;

    invoke-direct {p1}, Lgbsdk/optional/applog/abbw;-><init>()V

    invoke-virtual {p1, v3}, Lgbsdk/optional/applog/abbw;->a(Landroid/database/Cursor;)I

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    goto :goto_3

    :goto_2
    :try_start_2
    instance-of p2, p1, Landroid/database/sqlite/SQLiteBlobTooBigException;

    iget-object v4, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object v4, v4, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v5, 0x5

    const-string v6, "Query pages by userId:{} failed"

    :try_start_3
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    .line 3
    invoke-interface {v4, v5, v6, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p3, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 4
    iget-object p3, p3, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 5
    invoke-static {p3, p1}, Lgbsdk/optional/applog/abdt;->a(Lgbsdk/optional/applog/abdr;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v3}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    move v2, p2

    :goto_3
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lgbsdk/optional/applog/av;->b()V

    :cond_2
    return-object v0

    :catchall_1
    move-exception p1

    invoke-static {v3}, Lgbsdk/optional/applog/abce;->a(Landroid/database/Cursor;)V

    throw p1
.end method

.method public declared-synchronized c(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgbsdk/optional/applog/abao;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lgbsdk/optional/applog/av;->a:Lgbsdk/optional/applog/ag;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgbsdk/optional/applog/abao;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v4, "profile"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v3, v2}, Lgbsdk/optional/applog/abfu;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, v4, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    :try_start_4
    iget-object v1, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 6
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 7
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v2, 0x5

    :try_start_5
    const-string v3, "Save profiles failed"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v4, 0x0

    :try_start_6
    new-array v4, v4, [Ljava/lang/Object;

    .line 8
    invoke-interface {v1, v2, v3, p1, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v1, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 9
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 10
    invoke-static {v1, p1}, Lgbsdk/optional/applog/abdt;->a(Lgbsdk/optional/applog/abdr;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v1, v0

    .line 0
    :goto_2
    :try_start_7
    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 10
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    :try_start_8
    invoke-static {v0}, Lgbsdk/optional/applog/abce;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    iget-object v3, p0, Lgbsdk/optional/applog/av;->b:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object v3, v3, Lgbsdk/optional/applog/abbj;->q:Lgbsdk/optional/applog/abdr;

    .line 2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v0, v4

    if-eqz v3, :cond_1

    .line 3
    new-instance v2, Lgbsdk/optional/applog/af;

    invoke-direct {v2, v4, v5}, Lgbsdk/optional/applog/af;-><init>(J)V

    check-cast v3, Lgbsdk/optional/applog/abci;

    invoke-virtual {v3, v2}, Lgbsdk/optional/applog/abci;->a(Lgbsdk/optional/applog/abfn;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
