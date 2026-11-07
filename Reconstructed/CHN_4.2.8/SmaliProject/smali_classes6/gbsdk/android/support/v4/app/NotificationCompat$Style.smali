.class public abstract Lgbsdk/android/support/v4/app/NotificationCompat$Style;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field mBigContentTitle:Ljava/lang/CharSequence;

.field protected mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1666
    iput-boolean v0, p0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mSummaryTextSet:Z

    return-void
.end method

.method private calculateTopPadding()I
    .locals 5

    .line 1947
    iget-object v0, p0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v0, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "notification_top_pad"

    const-string v2, "dimen"

    .line 1948
    invoke-static {v1, v2}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const-string v3, "notification_top_pad_large_text"

    .line 1949
    invoke-static {v3, v2}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1951
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3fa66666    # 1.3f

    .line 1952
    invoke-static {v0, v3, v4}, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->constrain(FFF)F

    move-result v0

    sub-float/2addr v0, v3

    const v4, 0x3e999998    # 0.29999995f

    div-float/2addr v0, v4

    sub-float/2addr v3, v0

    int-to-float v1, v1

    mul-float v3, v3, v1

    int-to-float v1, v2

    mul-float v0, v0, v1

    add-float/2addr v3, v0

    .line 1956
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private static constrain(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method private createColoredBitmap(III)Landroid/graphics/Bitmap;
    .locals 3

    .line 1893
    iget-object v0, p0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v0, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p3, :cond_0

    .line 1894
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    if-nez p3, :cond_1

    .line 1895
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    .line 1896
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    .line 1897
    invoke-virtual {p1, v2, v2, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz p2, :cond_2

    .line 1899
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1902
    :cond_2
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1903
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method private createIconWithBackground(IIII)Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "notification_icon_background"

    const-string v1, "drawable"

    .line 1909
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez p4, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, v0, p4, p2}, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 1911
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1912
    iget-object v1, p0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v1, v1, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x1

    .line 1913
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    sub-int/2addr p2, p3

    .line 1914
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    .line 1915
    invoke-virtual {p1, p2, p2, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1916
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    const/4 p3, -0x1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1917
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p4
.end method

.method private hideNormalContent(Landroid/widget/RemoteViews;)V
    .locals 3

    const-string v0, "title"

    const-string v1, "id"

    .line 1941
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v0, "text2"

    .line 1942
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v0, "text"

    .line 1943
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method


# virtual methods
.method public addCompatExtras(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public apply(Lgbsdk/android/support/v4/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 0

    return-void
.end method

.method public applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;
    .locals 17

    move-object/from16 v0, p0

    .line 1742
    iget-object v1, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v1, v1, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1743
    new-instance v8, Landroid/widget/RemoteViews;

    iget-object v2, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v2, v2, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move/from16 v3, p2

    invoke-direct {v8, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1747
    iget-object v2, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->getPriority()I

    move-result v2

    const/4 v3, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1748
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    const/16 v11, 0x10

    const-string v6, "icon"

    const-string v12, "id"

    if-lt v4, v11, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v5, :cond_2

    const-string v4, "notification_background"

    const-string v7, "drawable"

    const-string v13, "setBackgroundResource"

    if-eqz v2, :cond_1

    .line 1751
    invoke-static {v4, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v4, "notification_bg_low"

    invoke-static {v4, v7}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v8, v2, v13, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1753
    invoke-static {v6, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v4, "notification_template_icon_low_bg"

    invoke-static {v4, v7}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v8, v2, v13, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_1

    .line 1756
    :cond_1
    invoke-static {v4, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v4, "notification_bg"

    invoke-static {v4, v7}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v8, v2, v13, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1758
    invoke-static {v6, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v4, "notification_template_icon_bg"

    invoke-static {v4, v7}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v8, v2, v13, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1763
    :cond_2
    :goto_1
    iget-object v2, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v2, v2, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    const/16 v13, 0x8

    const-string v4, "dimen"

    if-eqz v2, :cond_5

    .line 1766
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v11, :cond_3

    .line 1767
    invoke-static {v6, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1768
    invoke-static {v6, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v6, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v6, v6, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v2, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_2

    .line 1770
    :cond_3
    invoke-static {v6, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_2
    if-eqz p1, :cond_7

    .line 1772
    iget-object v2, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v2, v2, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    if-eqz v2, :cond_7

    const-string v2, "notification_right_icon_size"

    .line 1773
    invoke-static {v2, v4}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const-string v6, "notification_small_icon_background_padding"

    .line 1775
    invoke-static {v6, v4}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v2, v6

    .line 1777
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v14, "right_icon"

    if-lt v7, v5, :cond_4

    .line 1778
    iget-object v3, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v3, v3, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    iget-object v7, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    .line 1782
    invoke-virtual {v7}, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->getColor()I

    move-result v7

    .line 1778
    invoke-direct {v0, v3, v2, v6, v7}, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->createIconWithBackground(IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1783
    invoke-static {v14, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v8, v3, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_3

    .line 1785
    :cond_4
    invoke-static {v14, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v6, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v6, v6, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v6, v3}, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1788
    :goto_3
    invoke-static {v14, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_7

    .line 1790
    iget-object v2, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v2, v2, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    if-eqz v2, :cond_7

    .line 1791
    invoke-static {v6, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1792
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_6

    const-string v2, "notification_large_icon_width"

    .line 1793
    invoke-static {v2, v4}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const-string v3, "notification_big_circle_margin"

    invoke-static {v3, v4}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1795
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    const-string v3, "notification_small_icon_size_as_large"

    .line 1796
    invoke-static {v3, v4}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1798
    iget-object v7, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v7, v7, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->icon:I

    iget-object v14, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    .line 1802
    invoke-virtual {v14}, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->getColor()I

    move-result v14

    .line 1798
    invoke-direct {v0, v7, v2, v3, v14}, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->createIconWithBackground(IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1803
    invoke-static {v6, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v8, v3, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_4

    .line 1805
    :cond_6
    invoke-static {v6, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v6, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v6, v6, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v6, v3}, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1809
    :cond_7
    :goto_4
    iget-object v2, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v2, v2, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    const-string v2, "title"

    .line 1810
    invoke-static {v2, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v3, v3, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v8, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1812
    :cond_8
    iget-object v2, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v2, v2, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    const-string v3, "text"

    if-eqz v2, :cond_9

    .line 1813
    invoke-static {v3, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v6, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v6, v6, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v2, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v2, 0x1

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    .line 1817
    :goto_5
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v5, :cond_a

    iget-object v5, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v5, v5, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    .line 1818
    :goto_6
    iget-object v6, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v6, v6, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    const-string v7, "info"

    if-eqz v6, :cond_b

    .line 1819
    invoke-static {v7, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v5, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v5, v5, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    invoke-virtual {v8, v2, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1820
    invoke-static {v7, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_7
    const/4 v14, 0x1

    const/4 v15, 0x1

    goto :goto_9

    .line 1823
    :cond_b
    iget-object v6, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget v6, v6, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mNumber:I

    if-lez v6, :cond_d

    const-string v2, "status_bar_notification_info_maxnum"

    const-string v5, "integer"

    .line 1824
    invoke-static {v2, v5}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1826
    iget-object v5, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget v5, v5, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mNumber:I

    if-le v5, v2, :cond_c

    .line 1827
    invoke-static {v7, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v5, "status_bar_notification_info_overflow"

    const-string v6, "string"

    invoke-static {v5, v6}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v2, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_8

    .line 1830
    :cond_c
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    .line 1831
    invoke-static {v7, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iget-object v6, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget v6, v6, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mNumber:I

    int-to-long v14, v6

    invoke-virtual {v2, v14, v15}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v5, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1833
    :goto_8
    invoke-static {v7, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_7

    .line 1837
    :cond_d
    invoke-static {v7, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v8, v6, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move v14, v2

    move v15, v5

    .line 1841
    :goto_9
    iget-object v2, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v2, v2, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_f

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v11, :cond_f

    .line 1842
    invoke-static {v3, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v5, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v5, v5, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v2, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1843
    iget-object v2, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v2, v2, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    const-string v5, "text2"

    if-eqz v2, :cond_e

    .line 1844
    invoke-static {v5, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v6, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v6, v6, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v2, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1845
    invoke-static {v5, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v2, 0x1

    goto :goto_a

    .line 1848
    :cond_e
    invoke-static {v5, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_f
    const/4 v2, 0x0

    :goto_a
    if-eqz v2, :cond_11

    .line 1854
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v11, :cond_11

    if-eqz p3, :cond_10

    const-string v2, "notification_subtext_size"

    .line 1857
    invoke-static {v2, v4}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 1859
    invoke-static {v3, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2, v10, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    :cond_10
    const-string v1, "line1"

    .line 1863
    invoke-static {v1, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 1866
    :cond_11
    iget-object v1, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_13

    .line 1867
    iget-object v1, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-boolean v1, v1, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    if-eqz v1, :cond_12

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v11, :cond_12

    const-string v1, "chronometer"

    .line 1868
    invoke-static {v1, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1869
    invoke-static {v1, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    .line 1870
    invoke-virtual {v3}, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v3

    .line 1871
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v5, v15

    add-long/2addr v3, v5

    const-string v5, "setBase"

    .line 1869
    invoke-virtual {v8, v2, v5, v3, v4}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 1872
    invoke-static {v1, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v2, "setStarted"

    invoke-virtual {v8, v1, v2, v9}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    goto :goto_b

    :cond_12
    const-string v1, "time"

    .line 1874
    invoke-static {v1, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1875
    invoke-static {v1, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v2

    const-string v4, "setTime"

    invoke-virtual {v8, v1, v4, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto :goto_b

    :cond_13
    move v9, v15

    :goto_b
    const-string v1, "right_side"

    .line 1879
    invoke-static {v1, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v9, :cond_14

    const/4 v2, 0x0

    goto :goto_c

    :cond_14
    const/16 v2, 0x8

    :goto_c
    invoke-virtual {v8, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v1, "line3"

    .line 1880
    invoke-static {v1, v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v14, :cond_15

    goto :goto_d

    :cond_15
    const/16 v10, 0x8

    :goto_d
    invoke-virtual {v8, v1, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v8
.end method

.method public build()Landroid/app/Notification;
    .locals 1

    .line 1679
    iget-object v0, p0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    .line 1680
    invoke-virtual {v0}, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 8

    .line 1929
    invoke-direct {p0, p1}, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->hideNormalContent(Landroid/widget/RemoteViews;)V

    const-string v0, "notification_main_column"

    const-string v1, "id"

    .line 1930
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 1931
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 1932
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1933
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_0

    const-string p2, "notification_main_column_container"

    .line 1935
    invoke-static {p2, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    .line 1936
    invoke-direct {p0}, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->calculateTopPadding()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    .line 1935
    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    :cond_0
    return-void
.end method

.method public createColoredBitmap(II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 1889
    invoke-direct {p0, p1, p2, v0}, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public makeBigContentView(Lgbsdk/android/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public makeContentView(Lgbsdk/android/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public makeHeadsUpContentView(Lgbsdk/android/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setBuilder(Lgbsdk/android/support/v4/app/NotificationCompat$Builder;)V
    .locals 1

    .line 1669
    iget-object v0, p0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    if-eq v0, p1, :cond_0

    .line 1670
    iput-object p1, p0, Lgbsdk/android/support/v4/app/NotificationCompat$Style;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    if-eqz p1, :cond_0

    .line 1672
    invoke-virtual {p1, p0}, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->setStyle(Lgbsdk/android/support/v4/app/NotificationCompat$Style;)Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method
