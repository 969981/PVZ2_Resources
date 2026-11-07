.class public final Lgbsdk/optional/applog/abeo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lgbsdk/androidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field public a:I

.field public b:I

.field public final c:I

.field public final d:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sendScrollObserveCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lgbsdk/optional/applog/abeo;->c:I

    iput-object p2, p0, Lgbsdk/optional/applog/abeo;->d:Lkotlin/jvm/functions/Function3;

    const/4 p1, -0x1

    iput p1, p0, Lgbsdk/optional/applog/abeo;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(IFI)V
    .locals 0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lgbsdk/optional/applog/abeo;->c:I

    if-gt p1, p2, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lgbsdk/optional/applog/abeo;->c:I

    if-le p1, p2, :cond_2

    :cond_0
    iget p1, p0, Lgbsdk/optional/applog/abeo;->a:I

    if-lez p3, :cond_1

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    iput p1, p0, Lgbsdk/optional/applog/abeo;->a:I

    :cond_2
    iget p1, p0, Lgbsdk/optional/applog/abeo;->b:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    iget p1, p0, Lgbsdk/optional/applog/abeo;->a:I

    iput p1, p0, Lgbsdk/optional/applog/abeo;->b:I

    :cond_3
    return-void
.end method

.method public b(I)V
    .locals 4

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p0, Lgbsdk/optional/applog/abeo;->a:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lgbsdk/optional/applog/abeo;->c:I

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Lgbsdk/optional/applog/abeo;->d:Lkotlin/jvm/functions/Function3;

    iget v0, p0, Lgbsdk/optional/applog/abeo;->a:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 1
    iget v2, p0, Lgbsdk/optional/applog/abeo;->a:I

    iget v3, p0, Lgbsdk/optional/applog/abeo;->b:I

    if-le v2, v3, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    .line 2
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lgbsdk/optional/applog/abeo;->a:I

    const/4 p1, -0x1

    iput p1, p0, Lgbsdk/optional/applog/abeo;->b:I

    :cond_2
    :goto_1
    return-void
.end method
