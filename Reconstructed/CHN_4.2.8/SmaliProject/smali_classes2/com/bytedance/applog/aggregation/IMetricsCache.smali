.class public interface abstract Lcom/bytedance/applog/aggregation/IMetricsCache;
.super Ljava/lang/Object;
.source "Defines.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\tH&J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t2\u0006\u0010\u000b\u001a\u00020\u0007H&J\u0018\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0005H&J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0005H&\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/bytedance/applog/aggregation/IMetricsCache;",
        "",
        "clear",
        "",
        "get",
        "Lcom/bytedance/applog/aggregation/Metrics;",
        "groupId",
        "",
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


# virtual methods
.method public abstract clear()V
.end method

.method public abstract get(Ljava/lang/String;)Lcom/bytedance/applog/aggregation/Metrics;
.end method

.method public abstract getAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/applog/aggregation/Metrics;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getByMetricsName(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract insert(Ljava/lang/String;Lcom/bytedance/applog/aggregation/Metrics;)V
.end method

.method public abstract update(Ljava/lang/String;Lcom/bytedance/applog/aggregation/Metrics;)V
.end method
