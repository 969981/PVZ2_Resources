.class public final Lgbsdk/optional/applog/abeq$ab;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/abeq;->a(Lgbsdk/androidx/recyclerview/widget/RecyclerView;Lcom/bytedance/applog/exposure/ViewExposureData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lgbsdk/optional/applog/abeq;

.field public final synthetic b:Lcom/bytedance/applog/exposure/ViewExposureData;

.field public final synthetic c:Lgbsdk/androidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abeq;Lcom/bytedance/applog/exposure/ViewExposureData;Lgbsdk/androidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abeq$ab;->a:Lgbsdk/optional/applog/abeq;

    iput-object p2, p0, Lgbsdk/optional/applog/abeq$ab;->b:Lcom/bytedance/applog/exposure/ViewExposureData;

    iput-object p3, p0, Lgbsdk/optional/applog/abeq$ab;->c:Lgbsdk/androidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v3

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v4

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 1
    iget-object v0, p0, Lgbsdk/optional/applog/abeq$ab;->a:Lgbsdk/optional/applog/abeq;

    iget-object v1, p0, Lgbsdk/optional/applog/abeq$ab;->c:Lgbsdk/androidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lgbsdk/optional/applog/abeq$ab;->b:Lcom/bytedance/applog/exposure/ViewExposureData;

    invoke-static/range {v0 .. v5}, Lgbsdk/optional/applog/abeq;->a(Lgbsdk/optional/applog/abeq;Landroid/view/View;Lcom/bytedance/applog/exposure/ViewExposureData;FFI)V

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
