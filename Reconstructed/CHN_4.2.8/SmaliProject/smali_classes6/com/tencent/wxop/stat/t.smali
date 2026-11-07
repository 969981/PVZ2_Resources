.class public Lcom/tencent/wxop/stat/t;
.super Ljava/lang/Object;


# static fields
.field private static bZ:Lcom/tencent/wxop/stat/b/b;

.field private static ca:Landroid/content/Context;

.field private static cb:Lcom/tencent/wxop/stat/t;


# instance fields
.field volatile aI:I

.field private ab:Ljava/lang/String;

.field private bW:Lcom/tencent/wxop/stat/ac;

.field private bX:Lcom/tencent/wxop/stat/ac;

.field bY:Lcom/tencent/wxop/stat/b/c;

.field private be:Lcom/tencent/wxop/stat/b/f;

.field private bq:Ljava/lang/String;

.field private cc:I

.field private cd:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/tencent/wxop/stat/a/d;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ce:Z

.field private cf:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/tencent/wxop/stat/b/l;->av()Lcom/tencent/wxop/stat/b/b;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/wxop/stat/t;->ca:Landroid/content/Context;

    sput-object v0, Lcom/tencent/wxop/stat/t;->cb:Lcom/tencent/wxop/stat/t;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    iput-object v0, p0, Lcom/tencent/wxop/stat/t;->bX:Lcom/tencent/wxop/stat/ac;

    iput-object v0, p0, Lcom/tencent/wxop/stat/t;->be:Lcom/tencent/wxop/stat/b/f;

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/wxop/stat/t;->ab:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/wxop/stat/t;->bq:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/wxop/stat/t;->aI:I

    iput-object v0, p0, Lcom/tencent/wxop/stat/t;->bY:Lcom/tencent/wxop/stat/b/c;

    iput v1, p0, Lcom/tencent/wxop/stat/t;->cc:I

    iput-object v0, p0, Lcom/tencent/wxop/stat/t;->cd:Ljava/util/concurrent/ConcurrentHashMap;

    iput-boolean v1, p0, Lcom/tencent/wxop/stat/t;->ce:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wxop/stat/t;->cf:Ljava/util/HashMap;

    :try_start_0
    new-instance v0, Lcom/tencent/wxop/stat/b/f;

    invoke-direct {v0}, Lcom/tencent/wxop/stat/b/f;-><init>()V

    iput-object v0, p0, Lcom/tencent/wxop/stat/t;->be:Lcom/tencent/wxop/stat/b/f;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/t;->ca:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wxop/stat/t;->cd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lcom/tencent/wxop/stat/b/l;->J(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/t;->ab:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "pri_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/wxop/stat/b/l;->J(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/t;->bq:Ljava/lang/String;

    new-instance p1, Lcom/tencent/wxop/stat/ac;

    sget-object v0, Lcom/tencent/wxop/stat/t;->ca:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/wxop/stat/t;->ab:Ljava/lang/String;

    invoke-direct {p1, v0, v2}, Lcom/tencent/wxop/stat/ac;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    new-instance p1, Lcom/tencent/wxop/stat/ac;

    sget-object v0, Lcom/tencent/wxop/stat/t;->ca:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/wxop/stat/t;->bq:Ljava/lang/String;

    invoke-direct {p1, v0, v2}, Lcom/tencent/wxop/stat/ac;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/wxop/stat/t;->bX:Lcom/tencent/wxop/stat/ac;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/tencent/wxop/stat/t;->b(Z)V

    invoke-direct {p0, v1}, Lcom/tencent/wxop/stat/t;->b(Z)V

    invoke-direct {p0}, Lcom/tencent/wxop/stat/t;->aj()V

    sget-object p1, Lcom/tencent/wxop/stat/t;->ca:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/t;->t(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/c;

    invoke-direct {p0}, Lcom/tencent/wxop/stat/t;->I()V

    invoke-direct {p0}, Lcom/tencent/wxop/stat/t;->an()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v0, p1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method private I()V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    invoke-virtual {v1}, Lcom/tencent/wxop/stat/ac;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "config"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    new-instance v5, Lcom/tencent/wxop/stat/ah;

    invoke-direct {v5, v1}, Lcom/tencent/wxop/stat/ah;-><init>(I)V

    iput v1, v5, Lcom/tencent/wxop/stat/ah;->aI:I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, v5, Lcom/tencent/wxop/stat/ah;->df:Lorg/json/JSONObject;

    iput-object v3, v5, Lcom/tencent/wxop/stat/ah;->c:Ljava/lang/String;

    iput v4, v5, Lcom/tencent/wxop/stat/ah;->L:I

    sget-object v1, Lcom/tencent/wxop/stat/t;->ca:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/tencent/wxop/stat/c;->a(Landroid/content/Context;Lcom/tencent/wxop/stat/ah;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    sget-object v2, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v2, v1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private declared-synchronized a(IZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/wxop/stat/t;->aI:I

    if-lez v0, :cond_4

    if-lez p1, :cond_4

    invoke-static {}, Lcom/tencent/wxop/stat/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Load "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/wxop/stat/t;->aI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unsent events"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/wxop/stat/t;->b(Ljava/util/List;IZ)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Peek "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unsent events."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/wxop/stat/t;->a(Ljava/util/List;IZ)V

    sget-object p1, Lcom/tencent/wxop/stat/t;->ca:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/wxop/stat/ak;->Z(Landroid/content/Context;)Lcom/tencent/wxop/stat/ak;

    move-result-object p1

    new-instance v1, Lcom/tencent/wxop/stat/aa;

    invoke-direct {v1, p0, v0, p2}, Lcom/tencent/wxop/stat/aa;-><init>(Lcom/tencent/wxop/stat/t;Ljava/util/List;Z)V

    invoke-virtual {p1, v0, v1}, Lcom/tencent/wxop/stat/ak;->b(Ljava/util/List;Lcom/tencent/wxop/stat/aj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    sget-object p2, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {p2, p1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Lcom/tencent/wxop/stat/a/d;Lcom/tencent/wxop/stat/aj;ZZ)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/wxop/stat/c;->s()I

    move-result v0

    if-lez v0, :cond_d

    sget v0, Lcom/tencent/wxop/stat/c;->ay:I

    if-lez v0, :cond_4

    if-nez p3, :cond_4

    if-eqz p4, :cond_0

    goto/16 :goto_0

    :cond_0
    sget p3, Lcom/tencent/wxop/stat/c;->ay:I

    if-lez p3, :cond_d

    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "cacheEventsInMemory.size():"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wxop/stat/t;->cd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, ",numEventsCachedInMemory:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    sget v0, Lcom/tencent/wxop/stat/c;->ay:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, ",numStoredEvents:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget v0, p0, Lcom/tencent/wxop/stat/t;->aI:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Object;)V

    sget-object p3, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "cache event:"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/a/d;->af()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Object;)V

    :cond_1
    iget-object p3, p0, Lcom/tencent/wxop/stat/t;->cd:Ljava/util/concurrent/ConcurrentHashMap;

    const-string p4, ""

    invoke-virtual {p3, p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/wxop/stat/t;->cd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    sget p3, Lcom/tencent/wxop/stat/c;->ay:I

    if-lt p1, p3, :cond_2

    invoke-direct {p0}, Lcom/tencent/wxop/stat/t;->am()V

    :cond_2
    if-eqz p2, :cond_d

    iget-object p1, p0, Lcom/tencent/wxop/stat/t;->cd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    if-lez p1, :cond_3

    invoke-direct {p0}, Lcom/tencent/wxop/stat/t;->am()V

    :cond_3
    invoke-interface {p2}, Lcom/tencent/wxop/stat/aj;->ah()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    goto/16 :goto_5

    :cond_4
    :goto_0
    const/4 p4, 0x1

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p3}, Lcom/tencent/wxop/stat/t;->c(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-nez p3, :cond_5

    iget p3, p0, Lcom/tencent/wxop/stat/t;->aI:I

    invoke-static {}, Lcom/tencent/wxop/stat/c;->s()I

    move-result v2

    if-le p3, v2, :cond_5

    sget-object p3, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    const-string v2, "Too many events stored in db."

    invoke-virtual {p3, v2}, Lcom/tencent/wxop/stat/b/b;->warn(Ljava/lang/Object;)V

    iget p3, p0, Lcom/tencent/wxop/stat/t;->aI:I

    iget-object v2, p0, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    invoke-virtual {v2}, Lcom/tencent/wxop/stat/ac;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "events"

    const-string v4, "event_id in (select event_id from events where timestamp in (select min(timestamp) from events) limit 1)"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    sub-int/2addr p3, v2

    iput p3, p0, Lcom/tencent/wxop/stat/t;->aI:I

    :cond_5
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/a/d;->af()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insert 1 event, content:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Object;)V

    :cond_6
    invoke-static {v2}, Lcom/tencent/wxop/stat/b/r;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {p3, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "send_count"

    const-string v3, "0"

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "status"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "timestamp"

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/a/d;->ad()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "events"

    invoke-virtual {v1, v2, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_8

    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p3

    :try_start_4
    sget-object v0, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v0, p3}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    goto :goto_3

    :catchall_1
    move-exception p3

    move-object v0, v1

    goto :goto_1

    :catchall_2
    move-exception p3

    :goto_1
    :try_start_5
    sget-object v1, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v1, p3}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v0, :cond_7

    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p3

    :try_start_7
    sget-object v0, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v0, p3}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    const-wide/16 v2, -0x1

    :cond_8
    :goto_3
    const-wide/16 v0, 0x0

    cmp-long p3, v2, v0

    if-lez p3, :cond_a

    iget p3, p0, Lcom/tencent/wxop/stat/t;->aI:I

    add-int/2addr p3, p4

    iput p3, p0, Lcom/tencent/wxop/stat/t;->aI:I

    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result p3

    if-eqz p3, :cond_9

    sget-object p3, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "directStoreEvent insert event to db, event:"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/a/d;->af()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/tencent/wxop/stat/b/b;->e(Ljava/lang/Object;)V

    :cond_9
    if-eqz p2, :cond_b

    invoke-interface {p2}, Lcom/tencent/wxop/stat/aj;->ah()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    monitor-exit p0

    return-void

    :cond_a
    :try_start_8
    sget-object p2, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Failed to store event:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/a/d;->af()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tencent/wxop/stat/b/b;->error(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :cond_b
    monitor-exit p0

    return-void

    :catchall_4
    move-exception p1

    if-eqz v0, :cond_c

    :try_start_9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p2

    :try_start_a
    sget-object p3, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {p3, p2}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V

    :cond_c
    :goto_4
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :cond_d
    :goto_5
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Lcom/tencent/wxop/stat/ah;)V
    .locals 12

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p1, Lcom/tencent/wxop/stat/ah;->df:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/wxop/stat/b/l;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "content"

    iget-object v5, p1, Lcom/tencent/wxop/stat/ah;->df:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "md5sum"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p1, Lcom/tencent/wxop/stat/ah;->c:Ljava/lang/String;

    const-string v2, "version"

    iget v4, p1, Lcom/tencent/wxop/stat/ah;->L:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    invoke-virtual {v2}, Lcom/tencent/wxop/stat/ac;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "config"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iget v7, p1, Lcom/tencent/wxop/stat/ah;->aI:I

    if-ne v4, v7, :cond_0

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    iget-object v7, p0, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    invoke-virtual {v7}, Lcom/tencent/wxop/stat/ac;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-ne v5, v4, :cond_2

    iget-object v0, p0, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/ac;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "config"

    const-string v7, "type=?"

    new-array v5, v5, [Ljava/lang/String;

    iget p1, p1, Lcom/tencent/wxop/stat/ah;->aI:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v6

    invoke-virtual {v0, v4, v3, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long v3, p1

    goto :goto_1

    :cond_2
    const-string v4, "type"

    iget p1, p1, Lcom/tencent/wxop/stat/ah;->aI:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/ac;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v4, "config"

    invoke-virtual {p1, v4, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    :goto_1
    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    sget-object p1, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to store cfg:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/wxop/stat/b/b;->d(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Sucessed to store cfg:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/wxop/stat/b/b;->e(Ljava/lang/Object;)V

    :goto_2
    iget-object p1, p0, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/ac;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_4
    :try_start_3
    iget-object p1, p0, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/ac;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit p0

    return-void

    :catch_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_3

    :catchall_1
    move-exception p1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v1, p1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_5

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_5
    :try_start_6
    iget-object p1, p0, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/ac;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit p0

    return-void

    :catch_1
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_6

    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_6
    :try_start_8
    iget-object v0, p0, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/ac;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    goto :goto_5

    :catch_2
    :goto_4
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/tencent/wxop/stat/t;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/wxop/stat/t;->am()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/wxop/stat/t;IZ)V
    .locals 7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/tencent/wxop/stat/t;->ak()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/wxop/stat/t;->al()I

    move-result p1

    :cond_1
    :goto_0
    if-lez p1, :cond_5

    invoke-static {}, Lcom/tencent/wxop/stat/c;->u()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    invoke-static {}, Lcom/tencent/wxop/stat/c;->q()I

    move-result v1

    mul-int/2addr v0, v1

    if-le p1, v0, :cond_2

    if-lez v0, :cond_2

    move p1, v0

    :cond_2
    invoke-static {}, Lcom/tencent/wxop/stat/c;->r()I

    move-result v1

    div-int v2, p1, v1

    rem-int v3, p1, v1

    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sentStoreEventsByDb sendNumbers="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, ",important="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, ",maxSendNumPerFor1Period="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",maxCount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",restNumbers="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Object;)V

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-ge p1, v2, :cond_4

    invoke-direct {p0, v1, p2}, Lcom/tencent/wxop/stat/t;->a(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    if-lez v3, :cond_5

    invoke-direct {p0, v3, p2}, Lcom/tencent/wxop/stat/t;->a(IZ)V

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/tencent/wxop/stat/t;Lcom/tencent/wxop/stat/a/d;Lcom/tencent/wxop/stat/aj;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/wxop/stat/t;->a(Lcom/tencent/wxop/stat/a/d;Lcom/tencent/wxop/stat/aj;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/wxop/stat/t;Lcom/tencent/wxop/stat/ah;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/wxop/stat/t;->a(Lcom/tencent/wxop/stat/ah;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/wxop/stat/t;Ljava/util/List;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/wxop/stat/t;->a(Ljava/util/List;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/wxop/stat/t;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/wxop/stat/t;->a(Ljava/util/List;Z)V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/List;IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/wxop/stat/ad;",
            ">;IZ)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-nez p3, :cond_1

    :try_start_1
    invoke-static {}, Lcom/tencent/wxop/stat/c;->p()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/wxop/stat/c;->n()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :goto_0
    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, p3}, Lcom/tencent/wxop/stat/t;->c(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "update events set status="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", send_count=send_count+1  where "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/tencent/wxop/stat/t;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update events set status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " where "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/tencent/wxop/stat/t;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/tencent/wxop/stat/t;->cc:I

    rem-int/lit8 p2, p2, 0x3

    if-nez p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "delete from events where send_count>"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget p2, p0, Lcom/tencent/wxop/stat/t;->cc:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/tencent/wxop/stat/t;->cc:I

    :goto_1
    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "update sql:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-eqz v1, :cond_5

    sget-object p1, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "update for delete sql:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Object;)V

    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/wxop/stat/t;->aj()V

    :cond_5
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p3, :cond_6

    :try_start_4
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    sget-object p2, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {p2, p1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    move-object v1, p3

    goto :goto_2

    :catchall_2
    move-exception p1

    :goto_2
    :try_start_6
    sget-object p2, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {p2, p1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    :try_start_8
    sget-object p2, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {p2, p1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    monitor-exit p0

    return-void

    :cond_6
    monitor-exit p0

    return-void

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_7

    :try_start_9
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p2

    :try_start_a
    sget-object p3, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {p3, p2}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/wxop/stat/ad;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Delete "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " events, important:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "event_id in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/wxop/stat/ad;

    iget-wide v3, v3, Lcom/tencent/wxop/stat/ad;->K:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_2

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    const/4 p1, 0x0

    :try_start_2
    invoke-direct {p0, p2}, Lcom/tencent/wxop/stat/t;->c(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "events"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delete "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " event "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", success delete:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Object;)V

    :cond_4
    iget v0, p0, Lcom/tencent/wxop/stat/t;->aI:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/wxop/stat/t;->aI:I

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-direct {p0}, Lcom/tencent/wxop/stat/t;->aj()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_5

    :try_start_4
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    sget-object p2, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {p2, p1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p2

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    :goto_1
    :try_start_6
    sget-object v0, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v0, p1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz p2, :cond_5

    :try_start_7
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    :try_start_8
    sget-object p2, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {p2, p1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    monitor-exit p0

    return-void

    :cond_5
    monitor-exit p0

    return-void

    :catchall_4
    move-exception p1

    if-eqz p2, :cond_6

    :try_start_9
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p2

    :try_start_a
    sget-object v0, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v0, p2}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static ai()Lcom/tencent/wxop/stat/t;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/t;->cb:Lcom/tencent/wxop/stat/t;

    return-object v0
.end method

.method private aj()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/wxop/stat/t;->ak()I

    move-result v0

    invoke-direct {p0}, Lcom/tencent/wxop/stat/t;->al()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/wxop/stat/t;->aI:I

    return-void
.end method

.method private ak()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/ac;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private al()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/wxop/stat/t;->bX:Lcom/tencent/wxop/stat/ac;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/ac;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private am()V
    .locals 11

    iget-boolean v0, p0, Lcom/tencent/wxop/stat/t;->ce:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/wxop/stat/t;->cd:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/wxop/stat/t;->cd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/wxop/stat/t;->ce:Z

    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "insert "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/wxop/stat/t;->cd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " events ,numEventsCachedInMemory:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/tencent/wxop/stat/c;->ay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",numStoredEvents:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tencent/wxop/stat/t;->aI:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    invoke-virtual {v3}, Lcom/tencent/wxop/stat/ac;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v4, p0, Lcom/tencent/wxop/stat/t;->cd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/wxop/stat/a/d;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v5}, Lcom/tencent/wxop/stat/a/d;->af()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "insert content:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Object;)V

    :cond_3
    invoke-static {v7}, Lcom/tencent/wxop/stat/b/r;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "content"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "send_count"

    const-string v8, "0"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "status"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "timestamp"

    invoke-virtual {v5}, Lcom/tencent/wxop/stat/a/d;->ad()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "events"

    invoke-virtual {v3, v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_5

    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0}, Lcom/tencent/wxop/stat/t;->aj()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    :try_start_4
    sget-object v2, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    :goto_1
    invoke-virtual {v2, v1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v2, v3

    goto :goto_2

    :catchall_2
    move-exception v1

    :goto_2
    :try_start_5
    sget-object v3, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v3, v1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0}, Lcom/tencent/wxop/stat/t;->aj()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v1

    :try_start_7
    sget-object v2, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    goto :goto_1

    :cond_5
    :goto_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/wxop/stat/t;->ce:Z

    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "after insert, cacheEventsInMemory.size():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/wxop/stat/t;->cd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",numEventsCachedInMemory:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/tencent/wxop/stat/c;->ay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",numStoredEvents:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/wxop/stat/t;->aI:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Object;)V

    :cond_6
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    return-void

    :catchall_4
    move-exception v1

    if-eqz v2, :cond_7

    :try_start_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0}, Lcom/tencent/wxop/stat/t;->aj()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v2

    :try_start_9
    sget-object v3, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v3, v2}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private an()V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    invoke-virtual {v1}, Lcom/tencent/wxop/stat/ac;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "keyvalues"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/wxop/stat/t;->cf:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    sget-object v2, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v2, v1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method static synthetic ao()Lcom/tencent/wxop/stat/b/b;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    return-object v0
.end method

.method private static b(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/wxop/stat/ad;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "event_id in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/wxop/stat/ad;

    iget-wide v3, v3, Lcom/tencent/wxop/stat/ad;->K:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/util/List;IZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/wxop/stat/ad;",
            ">;IZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    :try_start_0
    iget-object p3, p0, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/tencent/wxop/stat/t;->bX:Lcom/tencent/wxop/stat/ac;

    :goto_0
    invoke-virtual {p3}, Lcom/tencent/wxop/stat/ac;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    move-object v1, p3

    const-string v2, "events"

    const-string v4, "status=?"

    const/4 p3, 0x1

    new-array v5, p3, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    aput-object v3, v5, v10

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-interface {v0, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-boolean v1, Lcom/tencent/wxop/stat/c;->ad:Z

    if-nez v1, :cond_1

    invoke-static {p2}, Lcom/tencent/wxop/stat/b/r;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object v4, p2

    const/4 p2, 0x2

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 p2, 0x3

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    new-instance v9, Lcom/tencent/wxop/stat/ad;

    move-object v1, v9

    move-wide v2, v7

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/tencent/wxop/stat/ad;-><init>(JLjava/lang/String;II)V

    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "peek event, id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",send_count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ",timestamp="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Object;)V

    :cond_2
    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    sget-object p2, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {p2, p1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method

.method private b(Z)V
    .locals 6

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/wxop/stat/t;->c(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "status"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "events"

    const-string v3, "status=?"

    new-array v2, v2, [Ljava/lang/String;

    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " unsent events."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v0, p1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    const/4 p1, 0x0

    :goto_1
    :try_start_3
    sget-object v1, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz p1, :cond_2

    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    return-void

    :catchall_3
    move-exception v0

    if-eqz p1, :cond_3

    :try_start_5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception p1

    sget-object v1, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v1, p1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v0
.end method

.method private c(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    :goto_0
    invoke-virtual {p1}, Lcom/tencent/wxop/stat/ac;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/tencent/wxop/stat/t;->bX:Lcom/tencent/wxop/stat/ac;

    goto :goto_0
.end method

.method public static s(Landroid/content/Context;)Lcom/tencent/wxop/stat/t;
    .locals 2

    sget-object v0, Lcom/tencent/wxop/stat/t;->cb:Lcom/tencent/wxop/stat/t;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/wxop/stat/t;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wxop/stat/t;->cb:Lcom/tencent/wxop/stat/t;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/wxop/stat/t;

    invoke-direct {v1, p0}, Lcom/tencent/wxop/stat/t;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/wxop/stat/t;->cb:Lcom/tencent/wxop/stat/t;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/tencent/wxop/stat/t;->cb:Lcom/tencent/wxop/stat/t;

    return-object p0
.end method


# virtual methods
.method final H()V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/c;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wxop/stat/t;->be:Lcom/tencent/wxop/stat/b/f;

    new-instance v1, Lcom/tencent/wxop/stat/w;

    invoke-direct {v1, p0}, Lcom/tencent/wxop/stat/w;-><init>(Lcom/tencent/wxop/stat/t;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method final b(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/wxop/stat/t;->be:Lcom/tencent/wxop/stat/b/f;

    new-instance v1, Lcom/tencent/wxop/stat/ab;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wxop/stat/ab;-><init>(Lcom/tencent/wxop/stat/t;I)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method final b(Lcom/tencent/wxop/stat/a/d;Lcom/tencent/wxop/stat/aj;ZZ)V
    .locals 8

    iget-object v0, p0, Lcom/tencent/wxop/stat/t;->be:Lcom/tencent/wxop/stat/b/f;

    if-eqz v0, :cond_0

    new-instance v7, Lcom/tencent/wxop/stat/x;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/tencent/wxop/stat/x;-><init>(Lcom/tencent/wxop/stat/t;Lcom/tencent/wxop/stat/a/d;Lcom/tencent/wxop/stat/aj;ZZ)V

    invoke-virtual {v0, v7}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method final b(Lcom/tencent/wxop/stat/ah;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/wxop/stat/t;->be:Lcom/tencent/wxop/stat/b/f;

    new-instance v1, Lcom/tencent/wxop/stat/y;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wxop/stat/y;-><init>(Lcom/tencent/wxop/stat/t;Lcom/tencent/wxop/stat/ah;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method final b(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/wxop/stat/ad;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/wxop/stat/t;->be:Lcom/tencent/wxop/stat/b/f;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tencent/wxop/stat/u;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/wxop/stat/u;-><init>(Lcom/tencent/wxop/stat/t;Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method final c(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/wxop/stat/ad;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/wxop/stat/t;->be:Lcom/tencent/wxop/stat/b/f;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tencent/wxop/stat/v;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/wxop/stat/v;-><init>(Lcom/tencent/wxop/stat/t;Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final r()I
    .locals 1

    iget v0, p0, Lcom/tencent/wxop/stat/t;->aI:I

    return v0
.end method

.method public final declared-synchronized t(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/c;
    .locals 16

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lcom/tencent/wxop/stat/t;->bY:Lcom/tencent/wxop/stat/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/ac;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v0, :cond_1

    :try_start_2
    sget-object v0, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    const-string v3, "try to load user info from db."

    invoke-virtual {v0, v3}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_1
    :goto_0
    :try_start_3
    iget-object v0, v1, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/ac;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "user"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    if-eqz v0, :cond_a

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/b/r;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x2

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    div-long/2addr v14, v4

    if-eq v9, v8, :cond_2

    mul-long/2addr v12, v4

    invoke-static {v12, v13}, Lcom/tencent/wxop/stat/b/l;->d(J)Ljava/lang/String;

    move-result-object v12

    mul-long/2addr v4, v14

    invoke-static {v4, v5}, Lcom/tencent/wxop/stat/b/l;->d(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v8

    goto :goto_1

    :cond_2
    move v4, v9

    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/tencent/wxop/stat/b/l;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    or-int/lit8 v4, v4, 0x2

    :cond_3
    const-string v5, ","

    invoke-virtual {v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    array-length v11, v5

    if-lez v11, :cond_6

    aget-object v11, v5, v6

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0xb

    if-ge v12, v13, :cond_4

    goto :goto_2

    :cond_4
    move v2, v6

    goto :goto_3

    :cond_5
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/tencent/wxop/stat/b/r;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v2, 0xa

    if-le v13, v2, :cond_4

    move v2, v8

    move-object v11, v12

    goto :goto_3

    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/tencent/wxop/stat/b/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    move v2, v8

    :goto_3
    if-eqz v5, :cond_7

    array-length v12, v5

    if-lt v12, v10, :cond_7

    aget-object v5, v5, v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/tencent/wxop/stat/b/l;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move v2, v8

    :cond_8
    :goto_4
    new-instance v10, Lcom/tencent/wxop/stat/b/c;

    invoke-direct {v10, v11, v5, v4}, Lcom/tencent/wxop/stat/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v10, v1, Lcom/tencent/wxop/stat/t;->bY:Lcom/tencent/wxop/stat/b/c;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v7}, Lcom/tencent/wxop/stat/b/r;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "uid"

    invoke-virtual {v5, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "user_type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "app_ver"

    invoke-static/range {p1 .. p1}, Lcom/tencent/wxop/stat/b/l;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "ts"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    invoke-virtual {v2}, Lcom/tencent/wxop/stat/ac;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v7, "user"

    const-string v10, "uid=?"

    new-array v8, v8, [Ljava/lang/String;

    aput-object v0, v8, v6

    invoke-virtual {v2, v7, v5, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_9
    if-eq v4, v9, :cond_c

    iget-object v0, v1, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/ac;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "user"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_6

    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/tencent/wxop/stat/b/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/tencent/wxop/stat/b/l;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_b
    move-object v7, v0

    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long/2addr v8, v4

    invoke-static/range {p1 .. p1}, Lcom/tencent/wxop/stat/b/l;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v7}, Lcom/tencent/wxop/stat/b/r;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "uid"

    invoke-virtual {v5, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "user_type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "app_ver"

    invoke-virtual {v5, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ts"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, v1, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    invoke-virtual {v4}, Lcom/tencent/wxop/stat/ac;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v7, "user"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    new-instance v4, Lcom/tencent/wxop/stat/b/c;

    invoke-direct {v4, v0, v2, v6}, Lcom/tencent/wxop/stat/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v4, v1, Lcom/tencent/wxop/stat/t;->bY:Lcom/tencent/wxop/stat/b/c;

    :cond_c
    :goto_6
    iget-object v0, v1, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/ac;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_d

    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_d
    iget-object v0, v1, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/ac;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    :try_start_6
    sget-object v2, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    :goto_7
    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_8

    :catchall_3
    move-exception v0

    const/4 v8, 0x0

    move-object v2, v8

    :goto_8
    :try_start_7
    sget-object v3, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v3, v0}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v2, :cond_e

    :try_start_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_e
    iget-object v0, v1, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/ac;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_9

    :catchall_4
    move-exception v0

    :try_start_9
    sget-object v2, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    goto :goto_7

    :goto_9
    iget-object v0, v1, Lcom/tencent/wxop/stat/t;->bY:Lcom/tencent/wxop/stat/b/c;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_f

    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_f
    iget-object v0, v1, Lcom/tencent/wxop/stat/t;->bW:Lcom/tencent/wxop/stat/ac;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/ac;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    :try_start_b
    sget-object v2, Lcom/tencent/wxop/stat/t;->bZ:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V

    :goto_a
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method
