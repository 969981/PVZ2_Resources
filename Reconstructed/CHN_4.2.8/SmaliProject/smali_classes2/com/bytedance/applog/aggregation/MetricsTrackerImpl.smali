.class public final Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;
.super Ljava/lang/Object;
.source "AggregationImpl.kt"

# interfaces
.implements Lcom/bytedance/applog/aggregation/IMetricsTracker;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ$\u0010\u001a\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007H\u0002J$\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00032\u0008\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0003H\u0002J\u001c\u0010#\u001a\u00020$2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0019\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0019\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006%"
    }
    d2 = {
        "Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;",
        "Lcom/bytedance/applog/aggregation/IMetricsTracker;",
        "metricsName",
        "",
        "types",
        "",
        "dimensions",
        "",
        "interval",
        "",
        "cache",
        "Lcom/bytedance/applog/aggregation/IMetricsCache;",
        "worker",
        "Lcom/bytedance/applog/aggregation/IWorker;",
        "(Ljava/lang/String;ILjava/util/List;Ljava/util/List;Lcom/bytedance/applog/aggregation/IMetricsCache;Lcom/bytedance/applog/aggregation/IWorker;)V",
        "getCache",
        "()Lcom/bytedance/applog/aggregation/IMetricsCache;",
        "getDimensions",
        "()Ljava/util/List;",
        "getInterval",
        "getMetricsName",
        "()Ljava/lang/String;",
        "getTypes",
        "()I",
        "getWorker",
        "()Lcom/bytedance/applog/aggregation/IWorker;",
        "calculateMetricsInterval",
        "value",
        "",
        "getOrCreateMetrics",
        "Lcom/bytedance/applog/aggregation/Metrics;",
        "groupId",
        "params",
        "Lorg/json/JSONObject;",
        "metricsInterval",
        "track",
        "",
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
.field private final cache:Lcom/bytedance/applog/aggregation/IMetricsCache;

.field private final dimensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final interval:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private final metricsName:Ljava/lang/String;

.field private final types:I

.field private final worker:Lcom/bytedance/applog/aggregation/IWorker;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;Lcom/bytedance/applog/aggregation/IMetricsCache;Lcom/bytedance/applog/aggregation/IWorker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;",
            "Lcom/bytedance/applog/aggregation/IMetricsCache;",
            "Lcom/bytedance/applog/aggregation/IWorker;",
            ")V"
        }
    .end annotation

    const-string v0, "metricsName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cache"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "worker"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->metricsName:Ljava/lang/String;

    iput p2, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->types:I

    iput-object p3, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->dimensions:Ljava/util/List;

    iput-object p4, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->interval:Ljava/util/List;

    iput-object p5, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->cache:Lcom/bytedance/applog/aggregation/IMetricsCache;

    iput-object p6, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->worker:Lcom/bytedance/applog/aggregation/IWorker;

    return-void
.end method

.method public static final synthetic access$calculateMetricsInterval(Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;Ljava/lang/Object;Ljava/util/List;)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->calculateMetricsInterval(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final calculateMetricsInterval(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 116
    check-cast v0, Ljava/lang/String;

    .line 117
    iget v1, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->types:I

    and-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_2

    if-eqz p2, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 121
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 122
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p2, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 123
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    const-string v5, "java.lang.String.format(format, *args)"

    const/4 v6, 0x0

    const-string v7, "%.0f"

    cmpg-double v8, v0, v3

    if-gez v8, :cond_0

    .line 125
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, p1, v6

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v7, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 128
    :cond_0
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, p2, v6

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v7, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "+"

    .line 130
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2c

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private final getOrCreateMetrics(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bytedance/applog/aggregation/Metrics;
    .locals 9

    .line 97
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->cache:Lcom/bytedance/applog/aggregation/IMetricsCache;

    invoke-interface {v0, p1}, Lcom/bytedance/applog/aggregation/IMetricsCache;->get(Ljava/lang/String;)Lcom/bytedance/applog/aggregation/Metrics;

    move-result-object v0

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Lcom/bytedance/applog/aggregation/Metrics;

    .line 101
    iget-object v2, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->metricsName:Ljava/lang/String;

    .line 103
    iget v4, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->types:I

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    if-eqz p2, :cond_0

    .line 105
    invoke-static {p2}, Lcom/bytedance/applog/aggregation/UtilsKt;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v7, p2

    move-object v1, v0

    move-object v3, p1

    move-object v8, p3

    .line 100
    invoke-direct/range {v1 .. v8}, Lcom/bytedance/applog/aggregation/Metrics;-><init>(Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONObject;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final getCache()Lcom/bytedance/applog/aggregation/IMetricsCache;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->cache:Lcom/bytedance/applog/aggregation/IMetricsCache;

    return-object v0
.end method

.method public final getDimensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->dimensions:Ljava/util/List;

    return-object v0
.end method

.method public final getInterval()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->interval:Ljava/util/List;

    return-object v0
.end method

.method public final getMetricsName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->metricsName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTypes()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->types:I

    return v0
.end method

.method public final getWorker()Lcom/bytedance/applog/aggregation/IWorker;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->worker:Lcom/bytedance/applog/aggregation/IWorker;

    return-object v0
.end method

.method public track(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->worker:Lcom/bytedance/applog/aggregation/IWorker;

    new-instance v1, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl$track$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl$track$1;-><init>(Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;Ljava/lang/Object;Lorg/json/JSONObject;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v1}, Lcom/bytedance/applog/aggregation/IWorker;->post(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
