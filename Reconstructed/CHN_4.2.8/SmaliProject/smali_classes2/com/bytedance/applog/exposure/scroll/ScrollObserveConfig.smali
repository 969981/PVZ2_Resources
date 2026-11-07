.class public final Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;
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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0008\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0002\u0010\u0008J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\u0015\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u00c6\u0003J)\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0014\u0008\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00072\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;",
        "Lcom/bytedance/applog/exposure/IExposureConfig;",
        "minOffset",
        "",
        "scrollCallback",
        "Lkotlin/Function1;",
        "Lcom/bytedance/applog/exposure/ViewExposureParam;",
        "",
        "(ILkotlin/jvm/functions/Function1;)V",
        "getMinOffset",
        "()I",
        "getScrollCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
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
.field public final a:I

.field public final b:Lkotlin/jvm/functions/Function1;
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
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;-><init>(ILkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;-><init>(ILkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/bytedance/applog/exposure/ViewExposureParam;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "scrollCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;->a:I

    iput-object p2, p0, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/16 p1, 0x1e

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig$a;->a:Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig$a;

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;-><init>(ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;->a:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;->b:Lkotlin/jvm/functions/Function1;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;->copy(ILkotlin/jvm/functions/Function1;)Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;->a:I

    return v0
.end method

.method public final component2()Lkotlin/jvm/functions/Function1;
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

    iget-object v0, p0, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;->b:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final copy(ILkotlin/jvm/functions/Function1;)Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/bytedance/applog/exposure/ViewExposureParam;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;"
        }
    .end annotation

    const-string v0, "scrollCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;-><init>(ILkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;

    iget v0, p0, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;->a:I

    iget v1, p1, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;->b:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;->b:Lkotlin/jvm/functions/Function1;

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

.method public final getMinOffset()I
    .locals 1

    iget v0, p0, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;->a:I

    return v0
.end method

.method public final getScrollCallback()Lkotlin/jvm/functions/Function1;
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

    iget-object v0, p0, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;->b:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;->b:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ScrollObserveConfig(minOffset="

    invoke-static {v0}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scrollCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/applog/exposure/scroll/ScrollObserveConfig;->b:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
