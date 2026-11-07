.class public final Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;
.super Ljava/lang/Object;
.source "MetricsSQLiteCache.kt"

# interfaces
.implements Lcom/bytedance/applog/aggregation/IMetricsCache;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0012\u001a\u00020\u0005H\u0016J\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0014H\u0016J\u0016\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00142\u0006\u0010\u0016\u001a\u00020\u0005H\u0016J\u0018\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u000eH\u0016J\u0018\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u000eH\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;",
        "Lcom/bytedance/applog/aggregation/IMetricsCache;",
        "context",
        "Landroid/content/Context;",
        "dbName",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "memCache",
        "Lcom/bytedance/applog/aggregation/MetricsMemoryCache;",
        "openHelper",
        "Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;",
        "clear",
        "",
        "fillMetrics",
        "Lcom/bytedance/applog/aggregation/Metrics;",
        "cursor",
        "Landroid/database/Cursor;",
        "get",
        "groupId",
        "getAll",
        "",
        "getByMetricsName",
        "name",
        "insert",
        "metrics",
        "update",
        "aggregation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final memCache:Lcom/bytedance/applog/aggregation/MetricsMemoryCache;

.field private final openHelper:Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dbName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->openHelper:Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;

    .line 17
    new-instance p1, Lcom/bytedance/applog/aggregation/MetricsMemoryCache;

    invoke-direct {p1}, Lcom/bytedance/applog/aggregation/MetricsMemoryCache;-><init>()V

    iput-object p1, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->memCache:Lcom/bytedance/applog/aggregation/MetricsMemoryCache;

    return-void
.end method

.method private final fillMetrics(Landroid/database/Cursor;)Lcom/bytedance/applog/aggregation/Metrics;
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "name"

    .line 35
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "group_id"

    .line 36
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v2, "agg_types"

    .line 37
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v2, "start_time"

    .line 38
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v2, "params"

    .line 39
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/bytedance/applog/aggregation/UtilsKt;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object v9, v3

    :goto_0
    const-string v2, "interval"

    .line 40
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v2, "count"

    .line 41
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v2, "sum"

    .line 42
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v13

    const-string v2, "end_time"

    .line 43
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const-string v2, "value_array"

    .line 45
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/bytedance/applog/aggregation/UtilsKt;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    :cond_1
    move-object/from16 v17, v3

    .line 47
    new-instance v0, Lcom/bytedance/applog/aggregation/Metrics;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "groupId"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/bytedance/applog/aggregation/Metrics;-><init>(Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONObject;Ljava/lang/String;)V

    move-object v11, v0

    .line 48
    invoke-virtual/range {v11 .. v17}, Lcom/bytedance/applog/aggregation/Metrics;->restore(IDJLorg/json/JSONArray;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->openHelper:Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "metrics"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->memCache:Lcom/bytedance/applog/aggregation/MetricsMemoryCache;

    invoke-virtual {v0}, Lcom/bytedance/applog/aggregation/MetricsMemoryCache;->clear()V

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/bytedance/applog/aggregation/Metrics;
    .locals 4

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->memCache:Lcom/bytedance/applog/aggregation/MetricsMemoryCache;

    invoke-virtual {v0, p1}, Lcom/bytedance/applog/aggregation/MetricsMemoryCache;->get(Ljava/lang/String;)Lcom/bytedance/applog/aggregation/Metrics;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22
    iget-object v1, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->openHelper:Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;

    invoke-virtual {v1}, Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "SELECT * FROM metrics WHERE group_id = ?"

    invoke-virtual {v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 26
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "cursor"

    .line 27
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->fillMetrics(Landroid/database/Cursor;)Lcom/bytedance/applog/aggregation/Metrics;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->memCache:Lcom/bytedance/applog/aggregation/MetricsMemoryCache;

    invoke-virtual {v1, p1, v0}, Lcom/bytedance/applog/aggregation/MetricsMemoryCache;->insert(Ljava/lang/String;Lcom/bytedance/applog/aggregation/Metrics;)V

    :cond_0
    return-object v0
.end method

.method public getAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/applog/aggregation/Metrics;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->openHelper:Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT * FROM metrics"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 90
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "cursor"

    .line 91
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->fillMetrics(Landroid/database/Cursor;)Lcom/bytedance/applog/aggregation/Metrics;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getByMetricsName(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/applog/aggregation/Metrics;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->openHelper:Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "SELECT * FROM metrics WHERE name = ?"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 101
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cursor"

    .line 102
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->fillMetrics(Landroid/database/Cursor;)Lcom/bytedance/applog/aggregation/Metrics;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public insert(Ljava/lang/String;Lcom/bytedance/applog/aggregation/Metrics;)V
    .locals 6

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metrics"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 55
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getGroupId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "group_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getAggregationTypes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "agg_types"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "start_time"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 59
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getParams()Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-string v4, "params"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getInterval()Ljava/lang/String;

    move-result-object v2

    const-string v4, "interval"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "count"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getSum()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v4, "sum"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 63
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getEndTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "end_time"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 64
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getValues()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "value_array"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->openHelper:Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;

    invoke-virtual {v2}, Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 69
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->memCache:Lcom/bytedance/applog/aggregation/MetricsMemoryCache;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/applog/aggregation/MetricsMemoryCache;->insert(Ljava/lang/String;Lcom/bytedance/applog/aggregation/Metrics;)V

    return-void
.end method

.method public update(Ljava/lang/String;Lcom/bytedance/applog/aggregation/Metrics;)V
    .locals 5

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metrics"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 74
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 75
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getSum()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "sum"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 76
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getEndTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "end_time"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 77
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getValues()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value_array"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->openHelper:Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;

    invoke-virtual {v2}, Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v4, "group_id = ?"

    invoke-virtual {v2, v0, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->memCache:Lcom/bytedance/applog/aggregation/MetricsMemoryCache;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/applog/aggregation/MetricsMemoryCache;->update(Ljava/lang/String;Lcom/bytedance/applog/aggregation/Metrics;)V

    return-void
.end method
