.class public final Lgbsdk/optional/applog/abfz;
.super Lgbsdk/androidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


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

    invoke-direct {p0}, Lgbsdk/androidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    iput p1, p0, Lgbsdk/optional/applog/abfz;->c:I

    iput-object p2, p0, Lgbsdk/optional/applog/abfz;->d:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public a(Lgbsdk/androidx/recyclerview/widget/RecyclerView;I)V
    .locals 5

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lgbsdk/androidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lgbsdk/androidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_8

    iget p2, p0, Lgbsdk/optional/applog/abfz;->a:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p0, Lgbsdk/optional/applog/abfz;->c:I

    if-ge p2, v0, :cond_0

    iget p2, p0, Lgbsdk/optional/applog/abfz;->b:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p0, Lgbsdk/optional/applog/abfz;->c:I

    if-lt p2, v0, :cond_8

    :cond_0
    iget-object p2, p0, Lgbsdk/optional/applog/abfz;->d:Lkotlin/jvm/functions/Function3;

    iget v0, p0, Lgbsdk/optional/applog/abfz;->a:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Lgbsdk/optional/applog/abfz;->b:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 1
    invoke-virtual {p1}, Lgbsdk/androidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lgbsdk/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    instance-of v3, v2, Lgbsdk/androidx/recyclerview/widget/LinearLayoutManager;

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lgbsdk/androidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lgbsdk/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Lgbsdk/androidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Lgbsdk/androidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lgbsdk/optional/applog/abfz;->b:I

    if-lez p1, :cond_7

    goto :goto_0

    :cond_2
    iget p1, p0, Lgbsdk/optional/applog/abfz;->a:I

    if-lez p1, :cond_3

    const/4 v4, 0x4

    goto :goto_1

    :cond_3
    const/4 v4, 0x3

    goto :goto_1

    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    instance-of p1, v2, Lgbsdk/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p1, :cond_6

    iget p1, p0, Lgbsdk/optional/applog/abfz;->b:I

    if-lez p1, :cond_7

    :cond_6
    :goto_0
    const/4 v4, 0x2

    .line 2
    :cond_7
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, v0, v1, p1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lgbsdk/optional/applog/abfz;->a:I

    iput p1, p0, Lgbsdk/optional/applog/abfz;->b:I

    :cond_8
    return-void
.end method

.method public a(Lgbsdk/androidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lgbsdk/androidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Lgbsdk/androidx/recyclerview/widget/RecyclerView;II)V

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lgbsdk/optional/applog/abfz;->c:I

    if-gt p1, v0, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lgbsdk/optional/applog/abfz;->c:I

    if-le p1, v0, :cond_3

    :cond_0
    iget p1, p0, Lgbsdk/optional/applog/abfz;->a:I

    if-lez p2, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    iput p1, p0, Lgbsdk/optional/applog/abfz;->a:I

    iget p1, p0, Lgbsdk/optional/applog/abfz;->b:I

    if-lez p3, :cond_2

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_1
    iput p1, p0, Lgbsdk/optional/applog/abfz;->b:I

    :cond_3
    return-void
.end method
