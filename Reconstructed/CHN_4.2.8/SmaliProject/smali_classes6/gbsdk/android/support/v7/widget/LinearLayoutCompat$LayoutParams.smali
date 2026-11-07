.class public Lgbsdk/android/support/v7/widget/LinearLayoutCompat$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v7/widget/LinearLayoutCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I

.field public weight:F


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1803
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, -0x1

    .line 1783
    iput p1, p0, Lgbsdk/android/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    const/4 p1, 0x0

    .line 1804
    iput p1, p0, Lgbsdk/android/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .line 1818
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, -0x1

    .line 1783
    iput p1, p0, Lgbsdk/android/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1819
    iput p3, p0, Lgbsdk/android/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1789
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 1783
    iput v0, p0, Lgbsdk/android/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1790
    sget-object v1, Lgbsdk/common/host/abuh;->aAZ:[Ljava/lang/String;

    const-string v2, "LinearLayoutCompat_Layout"

    invoke-static {v2, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableArr(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v1

    .line 1791
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "LinearLayoutCompat_Layout_android_layout_weight"

    .line 1793
    invoke-static {p2}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lgbsdk/android/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const-string p2, "LinearLayoutCompat_Layout_android_layout_gravity"

    .line 1794
    invoke-static {p2}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lgbsdk/android/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1796
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1826
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 1783
    iput p1, p0, Lgbsdk/android/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 1833
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, -0x1

    .line 1783
    iput p1, p0, Lgbsdk/android/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Lgbsdk/android/support/v7/widget/LinearLayoutCompat$LayoutParams;)V
    .locals 1

    .line 1843
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, -0x1

    .line 1783
    iput v0, p0, Lgbsdk/android/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1845
    iget v0, p1, Lgbsdk/android/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    iput v0, p0, Lgbsdk/android/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1846
    iget p1, p1, Lgbsdk/android/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    iput p1, p0, Lgbsdk/android/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    return-void
.end method
