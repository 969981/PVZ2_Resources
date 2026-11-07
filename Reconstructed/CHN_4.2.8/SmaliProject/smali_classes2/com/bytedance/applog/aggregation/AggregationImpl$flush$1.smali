.class public final Lcom/bytedance/applog/aggregation/AggregationImpl$flush$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AggregationImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/applog/aggregation/AggregationImpl;->flush(Lcom/bytedance/applog/aggregation/IAggregationFlushCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/bytedance/applog/aggregation/IAggregationFlushCallback;

.field final synthetic this$0:Lcom/bytedance/applog/aggregation/AggregationImpl;


# direct methods
.method constructor <init>(Lcom/bytedance/applog/aggregation/AggregationImpl;Lcom/bytedance/applog/aggregation/IAggregationFlushCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/aggregation/AggregationImpl$flush$1;->this$0:Lcom/bytedance/applog/aggregation/AggregationImpl;

    iput-object p2, p0, Lcom/bytedance/applog/aggregation/AggregationImpl$flush$1;->$callback:Lcom/bytedance/applog/aggregation/IAggregationFlushCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/applog/aggregation/AggregationImpl$flush$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/AggregationImpl$flush$1;->this$0:Lcom/bytedance/applog/aggregation/AggregationImpl;

    invoke-static {v0}, Lcom/bytedance/applog/aggregation/AggregationImpl;->access$getCache$p(Lcom/bytedance/applog/aggregation/AggregationImpl;)Lcom/bytedance/applog/aggregation/IMetricsCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/applog/aggregation/IMetricsCache;->getAll()Ljava/util/List;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/bytedance/applog/aggregation/AggregationImpl$flush$1;->this$0:Lcom/bytedance/applog/aggregation/AggregationImpl;

    invoke-static {v1}, Lcom/bytedance/applog/aggregation/AggregationImpl;->access$getCache$p(Lcom/bytedance/applog/aggregation/AggregationImpl;)Lcom/bytedance/applog/aggregation/IMetricsCache;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/applog/aggregation/IMetricsCache;->clear()V

    .line 36
    iget-object v1, p0, Lcom/bytedance/applog/aggregation/AggregationImpl$flush$1;->$callback:Lcom/bytedance/applog/aggregation/IAggregationFlushCallback;

    invoke-interface {v1, v0}, Lcom/bytedance/applog/aggregation/IAggregationFlushCallback;->onFinish(Ljava/util/List;)V

    return-void
.end method
