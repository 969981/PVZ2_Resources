.class public Lgbsdk/android/support/v7/widget/helper/ItemTouchUIUtilImpl;
.super Ljava/lang/Object;
.source "ItemTouchUIUtilImpl.java"

# interfaces
.implements Lgbsdk/android/support/v7/widget/helper/ItemTouchUIUtil;


# static fields
.field static final INSTANCE:Lgbsdk/android/support/v7/widget/helper/ItemTouchUIUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lgbsdk/android/support/v7/widget/helper/ItemTouchUIUtilImpl;

    invoke-direct {v0}, Lgbsdk/android/support/v7/widget/helper/ItemTouchUIUtilImpl;-><init>()V

    sput-object v0, Lgbsdk/android/support/v7/widget/helper/ItemTouchUIUtilImpl;->INSTANCE:Lgbsdk/android/support/v7/widget/helper/ItemTouchUIUtil;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findMaxElevation(Lgbsdk/android/support/v7/widget/RecyclerView;Landroid/view/View;)F
    .locals 5

    .line 53
    invoke-virtual {p0}, Lgbsdk/android/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 56
    invoke-virtual {p0, v2}, Lgbsdk/android/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    invoke-static {v3}, Lgbsdk/android/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v3

    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    move v1, v3

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public clearView(Landroid/view/View;)V
    .locals 4

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    const-string v0, "item_touch_helper_previous_elevation"

    const-string v1, "id"

    .line 76
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 77
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_0

    .line 78
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {p1, v2}, Lgbsdk/android/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 80
    :cond_0
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lgbsdk/android/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .locals 1

    .line 36
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p6, 0x15

    if-lt p1, p6, :cond_0

    if-eqz p7, :cond_0

    const-string p1, "item_touch_helper_previous_elevation"

    const-string p6, "id"

    .line 38
    invoke-static {p1, p6}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p7

    invoke-virtual {p3, p7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p7

    if-nez p7, :cond_0

    .line 40
    invoke-static {p3}, Lgbsdk/android/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result p7

    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p7

    const/high16 v0, 0x3f800000    # 1.0f

    .line 41
    invoke-static {p2, p3}, Lgbsdk/android/support/v7/widget/helper/ItemTouchUIUtilImpl;->findMaxElevation(Lgbsdk/android/support/v7/widget/RecyclerView;Landroid/view/View;)F

    move-result p2

    add-float/2addr p2, v0

    .line 42
    invoke-static {p3, p2}, Lgbsdk/android/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 43
    invoke-static {p1, p6}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1, p7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 48
    :cond_0
    invoke-virtual {p3, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 49
    invoke-virtual {p3, p5}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lgbsdk/android/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .locals 0

    return-void
.end method

.method public onSelected(Landroid/view/View;)V
    .locals 0

    return-void
.end method
