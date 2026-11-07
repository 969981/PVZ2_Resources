.class public final Lcom/bytedance/applog/aggregation/IAggregation$Companion;
.super Ljava/lang/Object;
.source "Defines.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/applog/aggregation/IAggregation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/bytedance/applog/aggregation/IAggregation$Companion;",
        "",
        "()V",
        "TYPE_AVG",
        "",
        "TYPE_COUNT",
        "TYPE_INTERVAL",
        "TYPE_MERGE",
        "TYPE_SUM",
        "newInstance",
        "Lcom/bytedance/applog/aggregation/IAggregation;",
        "cache",
        "Lcom/bytedance/applog/aggregation/IMetricsCache;",
        "looper",
        "Landroid/os/Looper;",
        "aggregation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/bytedance/applog/aggregation/IAggregation$Companion;

.field public static final TYPE_AVG:I = 0x4

.field public static final TYPE_COUNT:I = 0x1

.field public static final TYPE_INTERVAL:I = 0x10

.field public static final TYPE_MERGE:I = 0x8

.field public static final TYPE_SUM:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/bytedance/applog/aggregation/IAggregation$Companion;

    invoke-direct {v0}, Lcom/bytedance/applog/aggregation/IAggregation$Companion;-><init>()V

    sput-object v0, Lcom/bytedance/applog/aggregation/IAggregation$Companion;->$$INSTANCE:Lcom/bytedance/applog/aggregation/IAggregation$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/bytedance/applog/aggregation/IAggregation$Companion;Lcom/bytedance/applog/aggregation/IMetricsCache;Landroid/os/Looper;ILjava/lang/Object;)Lcom/bytedance/applog/aggregation/IAggregation;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 23
    check-cast p2, Landroid/os/Looper;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/applog/aggregation/IAggregation$Companion;->newInstance(Lcom/bytedance/applog/aggregation/IMetricsCache;Landroid/os/Looper;)Lcom/bytedance/applog/aggregation/IAggregation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(Lcom/bytedance/applog/aggregation/IMetricsCache;)Lcom/bytedance/applog/aggregation/IAggregation;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/bytedance/applog/aggregation/IAggregation$Companion;->newInstance$default(Lcom/bytedance/applog/aggregation/IAggregation$Companion;Lcom/bytedance/applog/aggregation/IMetricsCache;Landroid/os/Looper;ILjava/lang/Object;)Lcom/bytedance/applog/aggregation/IAggregation;

    move-result-object p1

    return-object p1
.end method

.method public final newInstance(Lcom/bytedance/applog/aggregation/IMetricsCache;Landroid/os/Looper;)Lcom/bytedance/applog/aggregation/IAggregation;
    .locals 1

    const-string v0, "cache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/bytedance/applog/aggregation/AggregationImpl;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/applog/aggregation/AggregationImpl;-><init>(Lcom/bytedance/applog/aggregation/IMetricsCache;Landroid/os/Looper;)V

    check-cast v0, Lcom/bytedance/applog/aggregation/IAggregation;

    return-object v0
.end method
