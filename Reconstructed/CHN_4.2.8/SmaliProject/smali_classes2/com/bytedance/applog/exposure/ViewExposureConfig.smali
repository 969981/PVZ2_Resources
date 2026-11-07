.class public final Lcom/bytedance/applog/exposure/ViewExposureConfig;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/exposure/IExposureConfig;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B?\u0008\u0007\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0014\u0008\u0002\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00050\t\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\rJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0014J\t\u0010\u0018\u001a\u00020\u0007H\u00c6\u0003J\u0015\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00050\tH\u00c6\u0003JF\u0010\u001a\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0014\u0008\u0002\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00050\tH\u00c6\u0001\u00a2\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u00052\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u00d6\u0003J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J\t\u0010!\u001a\u00020\"H\u00d6\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\rR\u001d\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00050\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u0015\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006#"
    }
    d2 = {
        "Lcom/bytedance/applog/exposure/ViewExposureConfig;",
        "Lcom/bytedance/applog/exposure/IExposureConfig;",
        "areaRatio",
        "",
        "visualDiagnosis",
        "",
        "stayTriggerTime",
        "",
        "exposureCallback",
        "Lkotlin/Function1;",
        "Lcom/bytedance/applog/exposure/ViewExposureParam;",
        "(Ljava/lang/Float;Ljava/lang/Boolean;JLkotlin/jvm/functions/Function1;)V",
        "getAreaRatio",
        "()Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "getExposureCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "getStayTriggerTime",
        "()J",
        "getVisualDiagnosis",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(Ljava/lang/Float;Ljava/lang/Boolean;JLkotlin/jvm/functions/Function1;)Lcom/bytedance/applog/exposure/ViewExposureConfig;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "agent_liteChinaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Float;

.field public final b:Ljava/lang/Boolean;

.field public final c:J

.field public final d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/bytedance/applog/exposure/ViewExposureParam;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/applog/exposure/ViewExposureConfig;-><init>(Ljava/lang/Float;Ljava/lang/Boolean;JLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;)V
    .locals 8

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/applog/exposure/ViewExposureConfig;-><init>(Ljava/lang/Float;Ljava/lang/Boolean;JLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 8

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/applog/exposure/ViewExposureConfig;-><init>(Ljava/lang/Float;Ljava/lang/Boolean;JLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Boolean;J)V
    .locals 8

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/applog/exposure/ViewExposureConfig;-><init>(Ljava/lang/Float;Ljava/lang/Boolean;JLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Boolean;JLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            "Ljava/lang/Boolean;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/bytedance/applog/exposure/ViewExposureParam;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exposureCallback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->a:Ljava/lang/Float;

    iput-object p2, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->b:Ljava/lang/Boolean;

    iput-wide p3, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->c:J

    iput-object p5, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Float;Ljava/lang/Boolean;JLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    const-wide/16 p3, 0x0

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    sget-object p5, Lcom/bytedance/applog/exposure/ViewExposureConfig$a;->a:Lcom/bytedance/applog/exposure/ViewExposureConfig$a;

    :cond_3
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-wide p5, v0

    move-object p7, v2

    invoke-direct/range {p2 .. p7}, Lcom/bytedance/applog/exposure/ViewExposureConfig;-><init>(Ljava/lang/Float;Ljava/lang/Boolean;JLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/applog/exposure/ViewExposureConfig;Ljava/lang/Float;Ljava/lang/Boolean;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/bytedance/applog/exposure/ViewExposureConfig;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->a:Ljava/lang/Float;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->b:Ljava/lang/Boolean;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-wide p3, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->c:J

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p5, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->d:Lkotlin/jvm/functions/Function1;

    :cond_3
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-wide p5, v0

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/bytedance/applog/exposure/ViewExposureConfig;->copy(Ljava/lang/Float;Ljava/lang/Boolean;JLkotlin/jvm/functions/Function1;)Lcom/bytedance/applog/exposure/ViewExposureConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->a:Ljava/lang/Float;

    return-object v0
.end method

.method public final component2()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->c:J

    return-wide v0
.end method

.method public final component4()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/bytedance/applog/exposure/ViewExposureParam;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->d:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final copy(Ljava/lang/Float;Ljava/lang/Boolean;JLkotlin/jvm/functions/Function1;)Lcom/bytedance/applog/exposure/ViewExposureConfig;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            "Ljava/lang/Boolean;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/bytedance/applog/exposure/ViewExposureParam;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/bytedance/applog/exposure/ViewExposureConfig;"
        }
    .end annotation

    const-string v0, "exposureCallback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/applog/exposure/ViewExposureConfig;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/applog/exposure/ViewExposureConfig;-><init>(Ljava/lang/Float;Ljava/lang/Boolean;JLkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/bytedance/applog/exposure/ViewExposureConfig;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bytedance/applog/exposure/ViewExposureConfig;

    iget-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->a:Ljava/lang/Float;

    iget-object v1, p1, Lcom/bytedance/applog/exposure/ViewExposureConfig;->a:Ljava/lang/Float;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->b:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/bytedance/applog/exposure/ViewExposureConfig;->b:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->c:J

    iget-wide v2, p1, Lcom/bytedance/applog/exposure/ViewExposureConfig;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->d:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Lcom/bytedance/applog/exposure/ViewExposureConfig;->d:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAreaRatio()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->a:Ljava/lang/Float;

    return-object v0
.end method

.method public final getExposureCallback()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/bytedance/applog/exposure/ViewExposureParam;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->d:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getStayTriggerTime()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->c:J

    return-wide v0
.end method

.method public final getVisualDiagnosis()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->a:Ljava/lang/Float;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->c:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->d:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ViewExposureConfig(areaRatio="

    invoke-static {v0}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->a:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", visualDiagnosis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stayTriggerTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", exposureCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/applog/exposure/ViewExposureConfig;->d:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
