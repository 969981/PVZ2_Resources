.class public final Lcom/bytedance/applog/aggregation/Metrics;
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
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010(\u001a\u00020)2\u0008\u0010*\u001a\u0004\u0018\u00010\u0001J(\u0010+\u001a\u00020)2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0012\u001a\u00020\u00082\u0008\u0010\"\u001a\u0004\u0018\u00010#J\u0006\u0010,\u001a\u00020\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001e\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0018R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0018R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0014R\u001e\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u000f\u001a\u00020\u001e@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006-"
    }
    d2 = {
        "Lcom/bytedance/applog/aggregation/Metrics;",
        "",
        "name",
        "",
        "groupId",
        "aggregationTypes",
        "",
        "startTime",
        "",
        "params",
        "Lorg/json/JSONObject;",
        "interval",
        "(Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONObject;Ljava/lang/String;)V",
        "getAggregationTypes",
        "()I",
        "<set-?>",
        "count",
        "getCount",
        "endTime",
        "getEndTime",
        "()J",
        "setEndTime",
        "(J)V",
        "getGroupId",
        "()Ljava/lang/String;",
        "getInterval",
        "getName",
        "getParams",
        "()Lorg/json/JSONObject;",
        "getStartTime",
        "",
        "sum",
        "getSum",
        "()D",
        "values",
        "Lorg/json/JSONArray;",
        "getValues",
        "()Lorg/json/JSONArray;",
        "setValues",
        "(Lorg/json/JSONArray;)V",
        "append",
        "",
        "value",
        "restore",
        "toParams",
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
.field private final aggregationTypes:I

.field private count:I

.field private endTime:J

.field private final groupId:Ljava/lang/String;

.field private final interval:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final params:Lorg/json/JSONObject;

.field private final startTime:J

.field private sum:D

.field private values:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/applog/aggregation/Metrics;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/applog/aggregation/Metrics;->groupId:Ljava/lang/String;

    iput p3, p0, Lcom/bytedance/applog/aggregation/Metrics;->aggregationTypes:I

    iput-wide p4, p0, Lcom/bytedance/applog/aggregation/Metrics;->startTime:J

    iput-object p6, p0, Lcom/bytedance/applog/aggregation/Metrics;->params:Lorg/json/JSONObject;

    iput-object p7, p0, Lcom/bytedance/applog/aggregation/Metrics;->interval:Ljava/lang/String;

    .line 59
    iput-wide p4, p0, Lcom/bytedance/applog/aggregation/Metrics;->endTime:J

    return-void
.end method


# virtual methods
.method public final append(Ljava/lang/Object;)V
    .locals 4

    .line 71
    iget v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->count:I

    .line 72
    iget v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->aggregationTypes:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    .line 73
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 74
    iget-wide v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->sum:D

    move-object v2, p1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->sum:D

    .line 77
    :cond_0
    iget v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->aggregationTypes:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->values:Lorg/json/JSONArray;

    if-nez v0, :cond_1

    .line 79
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->values:Lorg/json/JSONArray;

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->values:Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 83
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->endTime:J

    return-void
.end method

.method public final getAggregationTypes()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->aggregationTypes:I

    return v0
.end method

.method public final getCount()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->count:I

    return v0
.end method

.method public final getEndTime()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->endTime:J

    return-wide v0
.end method

.method public final getGroupId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public final getInterval()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->interval:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getParams()Lorg/json/JSONObject;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->params:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getStartTime()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->startTime:J

    return-wide v0
.end method

.method public final getSum()D
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->sum:D

    return-wide v0
.end method

.method public final getValues()Lorg/json/JSONArray;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->values:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final restore(IDJLorg/json/JSONArray;)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/bytedance/applog/aggregation/Metrics;->count:I

    .line 64
    iput-wide p2, p0, Lcom/bytedance/applog/aggregation/Metrics;->sum:D

    .line 65
    iput-wide p4, p0, Lcom/bytedance/applog/aggregation/Metrics;->endTime:J

    .line 66
    iput-object p6, p0, Lcom/bytedance/applog/aggregation/Metrics;->values:Lorg/json/JSONArray;

    return-void
.end method

.method public final setEndTime(J)V
    .locals 0

    .line 59
    iput-wide p1, p0, Lcom/bytedance/applog/aggregation/Metrics;->endTime:J

    return-void
.end method

.method public final setValues(Lorg/json/JSONArray;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/bytedance/applog/aggregation/Metrics;->values:Lorg/json/JSONArray;

    return-void
.end method

.method public final toParams()Lorg/json/JSONObject;
    .locals 5

    .line 87
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/bytedance/applog/aggregation/Metrics;->params:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/bytedance/applog/aggregation/UtilsKt;->copyFrom(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 88
    iget-wide v1, p0, Lcom/bytedance/applog/aggregation/Metrics;->startTime:J

    const-string v3, "metrics_start_ms"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 89
    iget-wide v1, p0, Lcom/bytedance/applog/aggregation/Metrics;->endTime:J

    const-string v3, "metrics_end_ms"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 90
    iget v1, p0, Lcom/bytedance/applog/aggregation/Metrics;->aggregationTypes:I

    const-string v2, "metrics_aggregation"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    iget v1, p0, Lcom/bytedance/applog/aggregation/Metrics;->count:I

    const-string v2, "metrics_count"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    iget v1, p0, Lcom/bytedance/applog/aggregation/Metrics;->aggregationTypes:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    .line 93
    iget-wide v1, p0, Lcom/bytedance/applog/aggregation/Metrics;->sum:D

    const-string v3, "metrics_sum"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 95
    :cond_0
    iget v1, p0, Lcom/bytedance/applog/aggregation/Metrics;->aggregationTypes:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_1

    .line 96
    iget-wide v1, p0, Lcom/bytedance/applog/aggregation/Metrics;->sum:D

    iget v3, p0, Lcom/bytedance/applog/aggregation/Metrics;->count:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    const-string v3, "metrics_avg"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 98
    :cond_1
    iget v1, p0, Lcom/bytedance/applog/aggregation/Metrics;->aggregationTypes:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_2

    .line 99
    iget-object v1, p0, Lcom/bytedance/applog/aggregation/Metrics;->values:Lorg/json/JSONArray;

    const-string v2, "metrics_values"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    :cond_2
    iget v1, p0, Lcom/bytedance/applog/aggregation/Metrics;->aggregationTypes:I

    and-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_3

    .line 102
    iget-object v1, p0, Lcom/bytedance/applog/aggregation/Metrics;->interval:Ljava/lang/String;

    const-string v2, "metrics_interval"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    return-object v0
.end method
