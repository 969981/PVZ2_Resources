.class public final Lcom/bytedance/applog/aggregation/AggregationImpl;
.super Ljava/lang/Object;
.source "AggregationImpl.kt"

# interfaces
.implements Lcom/bytedance/applog/aggregation/IAggregation;
.implements Lcom/bytedance/applog/aggregation/IWorker;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0004\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J8\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00172\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0017H\u0016J\u0016\u0010\u001a\u001a\u00020\u000e2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u001cH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/bytedance/applog/aggregation/AggregationImpl;",
        "Lcom/bytedance/applog/aggregation/IAggregation;",
        "Lcom/bytedance/applog/aggregation/IWorker;",
        "cache",
        "Lcom/bytedance/applog/aggregation/IMetricsCache;",
        "looper",
        "Landroid/os/Looper;",
        "(Lcom/bytedance/applog/aggregation/IMetricsCache;Landroid/os/Looper;)V",
        "handler",
        "Landroid/os/Handler;",
        "trackers",
        "",
        "Lcom/bytedance/applog/aggregation/IMetricsTracker;",
        "flush",
        "",
        "callback",
        "Lcom/bytedance/applog/aggregation/IAggregationFlushCallback;",
        "newMetricsTracker",
        "metricsName",
        "",
        "types",
        "",
        "dimensions",
        "",
        "interval",
        "",
        "post",
        "block",
        "Lkotlin/Function0;",
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

.field private final handler:Landroid/os/Handler;

.field private final trackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/applog/aggregation/IMetricsTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/aggregation/IMetricsCache;Landroid/os/Looper;)V
    .locals 1

    const-string v0, "cache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/applog/aggregation/AggregationImpl;->cache:Lcom/bytedance/applog/aggregation/IMetricsCache;

    if-eqz p2, :cond_0

    .line 15
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    iput-object p1, p0, Lcom/bytedance/applog/aggregation/AggregationImpl;->handler:Landroid/os/Handler;

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/bytedance/applog/aggregation/AggregationImpl;->trackers:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getCache$p(Lcom/bytedance/applog/aggregation/AggregationImpl;)Lcom/bytedance/applog/aggregation/IMetricsCache;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/bytedance/applog/aggregation/AggregationImpl;->cache:Lcom/bytedance/applog/aggregation/IMetricsCache;

    return-object p0
.end method


# virtual methods
.method public flush(Lcom/bytedance/applog/aggregation/IAggregationFlushCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/bytedance/applog/aggregation/AggregationImpl$flush$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/applog/aggregation/AggregationImpl$flush$1;-><init>(Lcom/bytedance/applog/aggregation/AggregationImpl;Lcom/bytedance/applog/aggregation/IAggregationFlushCallback;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, v0}, Lcom/bytedance/applog/aggregation/AggregationImpl;->post(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public newMetricsTracker(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Lcom/bytedance/applog/aggregation/IMetricsTracker;
    .locals 8
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
            ">;)",
            "Lcom/bytedance/applog/aggregation/IMetricsTracker;"
        }
    .end annotation

    const-string v0, "metricsName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;

    if-eqz p3, :cond_0

    .line 26
    check-cast p3, Ljava/lang/Iterable;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move-object v4, p3

    iget-object v6, p0, Lcom/bytedance/applog/aggregation/AggregationImpl;->cache:Lcom/bytedance/applog/aggregation/IMetricsCache;

    move-object v7, p0

    check-cast v7, Lcom/bytedance/applog/aggregation/IWorker;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v5, p4

    .line 25
    invoke-direct/range {v1 .. v7}, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;Lcom/bytedance/applog/aggregation/IMetricsCache;Lcom/bytedance/applog/aggregation/IWorker;)V

    .line 28
    iget-object p1, p0, Lcom/bytedance/applog/aggregation/AggregationImpl;->trackers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    check-cast v0, Lcom/bytedance/applog/aggregation/IMetricsTracker;

    return-object v0
.end method

.method public post(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/AggregationImpl;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 42
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 44
    :cond_0
    new-instance v1, Lcom/bytedance/applog/aggregation/AggregationImpl$post$1;

    invoke-direct {v1, p1}, Lcom/bytedance/applog/aggregation/AggregationImpl$post$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
