.class public Lgbsdk/android/support/v7/widget/AppCompatTextHelper;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# static fields
.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2


# instance fields
.field private mAsyncFontPending:Z

.field private final mAutoSizeTextHelper:Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;

.field private mDrawableBottomTint:Lgbsdk/android/support/v7/widget/TintInfo;

.field private mDrawableEndTint:Lgbsdk/android/support/v7/widget/TintInfo;

.field private mDrawableLeftTint:Lgbsdk/android/support/v7/widget/TintInfo;

.field private mDrawableRightTint:Lgbsdk/android/support/v7/widget/TintInfo;

.field private mDrawableStartTint:Lgbsdk/android/support/v7/widget/TintInfo;

.field private mDrawableTopTint:Lgbsdk/android/support/v7/widget/TintInfo;

.field private mFontTypeface:Landroid/graphics/Typeface;

.field private mStyle:I

.field private final mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mStyle:I

    .line 65
    iput-object p1, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 66
    new-instance p1, Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    iget-object v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-direct {p1, v0}, Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    return-void
.end method

.method private applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Lgbsdk/android/support/v7/widget/TintInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 371
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Lgbsdk/android/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Lgbsdk/android/support/v7/widget/TintInfo;[I)V

    :cond_0
    return-void
.end method

.method private static createTintInfo(Landroid/content/Context;Lgbsdk/android/support/v7/widget/AppCompatDrawableManager;I)Lgbsdk/android/support/v7/widget/TintInfo;
    .locals 0

    .line 377
    invoke-virtual {p1, p0, p2}, Lgbsdk/android/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 379
    new-instance p1, Lgbsdk/android/support/v7/widget/TintInfo;

    invoke-direct {p1}, Lgbsdk/android/support/v7/widget/TintInfo;-><init>()V

    const/4 p2, 0x1

    .line 380
    iput-boolean p2, p1, Lgbsdk/android/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 381
    iput-object p0, p1, Lgbsdk/android/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private setTextSizeInternal(IF)V
    .locals 1

    .line 418
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2}, Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setTextSizeInternal(IF)V

    return-void
.end method

.method private updateTypefaceAndStyle(Landroid/content/Context;Lgbsdk/android/support/v7/widget/TintTypedArray;)V
    .locals 5

    const-string v0, "TextAppearance_android_textStyle"

    .line 242
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, v0, v1}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mStyle:I

    const-string v0, "TextAppearance_android_fontFamily"

    .line 244
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Lgbsdk/android/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "TextAppearance_fontFamily"

    if-nez v1, :cond_5

    invoke-static {v4}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v1

    .line 245
    invoke-virtual {p2, v1}, Lgbsdk/android/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "TextAppearance_android_typeface"

    .line 282
    invoke-static {p1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lgbsdk/android/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 284
    iput-boolean v2, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    .line 285
    invoke-static {p1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1, v3}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result p1

    if-eq p1, v3, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 296
    :cond_1
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 292
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 288
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    const/4 v1, 0x0

    .line 246
    iput-object v1, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 247
    invoke-static {v4}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Lgbsdk/android/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v4}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_6
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    .line 250
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_8

    .line 251
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 252
    new-instance v1, Lgbsdk/android/support/v7/widget/AppCompatTextHelper$1;

    invoke-direct {v1, p0, p1}, Lgbsdk/android/support/v7/widget/AppCompatTextHelper$1;-><init>(Lgbsdk/android/support/v7/widget/AppCompatTextHelper;Ljava/lang/ref/WeakReference;)V

    .line 265
    :try_start_0
    iget p1, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, v0, p1, v1}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getFont(IILgbsdk/android/support/v4/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez p1, :cond_7

    const/4 v2, 0x1

    .line 267
    :cond_7
    iput-boolean v2, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mAsyncFontPending:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    .line 272
    :cond_8
    :goto_3
    iget-object p1, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez p1, :cond_9

    .line 274
    invoke-virtual {p2, v0}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 276
    iget p2, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mStyle:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    :cond_9
    return-void
.end method


# virtual methods
.method applyCompoundDrawablesTints()V
    .locals 5

    .line 352
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Lgbsdk/android/support/v7/widget/TintInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Lgbsdk/android/support/v7/widget/TintInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Lgbsdk/android/support/v7/widget/TintInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Lgbsdk/android/support/v7/widget/TintInfo;

    if-eqz v0, :cond_1

    .line 354
    :cond_0
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 355
    aget-object v3, v0, v2

    iget-object v4, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Lgbsdk/android/support/v7/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Lgbsdk/android/support/v7/widget/TintInfo;)V

    const/4 v3, 0x1

    .line 356
    aget-object v3, v0, v3

    iget-object v4, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Lgbsdk/android/support/v7/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Lgbsdk/android/support/v7/widget/TintInfo;)V

    .line 357
    aget-object v3, v0, v1

    iget-object v4, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Lgbsdk/android/support/v7/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Lgbsdk/android/support/v7/widget/TintInfo;)V

    const/4 v3, 0x3

    .line 358
    aget-object v0, v0, v3

    iget-object v3, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Lgbsdk/android/support/v7/widget/TintInfo;

    invoke-direct {p0, v0, v3}, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Lgbsdk/android/support/v7/widget/TintInfo;)V

    .line 360
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_3

    .line 361
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mDrawableStartTint:Lgbsdk/android/support/v7/widget/TintInfo;

    if-nez v0, :cond_2

    iget-object v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mDrawableEndTint:Lgbsdk/android/support/v7/widget/TintInfo;

    if-eqz v0, :cond_3

    .line 362
    :cond_2
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 363
    aget-object v2, v0, v2

    iget-object v3, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mDrawableStartTint:Lgbsdk/android/support/v7/widget/TintInfo;

    invoke-direct {p0, v2, v3}, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Lgbsdk/android/support/v7/widget/TintInfo;)V

    .line 364
    aget-object v0, v0, v1

    iget-object v1, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mDrawableEndTint:Lgbsdk/android/support/v7/widget/TintInfo;

    invoke-direct {p0, v0, v1}, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Lgbsdk/android/support/v7/widget/TintInfo;)V

    :cond_3
    return-void
.end method

.method autoSizeText()V
    .locals 1

    .line 408
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    return-void
.end method

.method getAutoSizeMaxTextSize()I
    .locals 1

    .line 453
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0
.end method

.method getAutoSizeMinTextSize()I
    .locals 1

    .line 449
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    move-result v0

    return v0
.end method

.method getAutoSizeStepGranularity()I
    .locals 1

    .line 445
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    move-result v0

    return v0
.end method

.method getAutoSizeTextAvailableSizes()[I
    .locals 1

    .line 457
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0
.end method

.method getAutoSizeTextType()I
    .locals 1

    .line 441
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    move-result v0

    return v0
.end method

.method isAutoSizeEnabled()Z
    .locals 1

    .line 414
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;->isAutoSizeEnabled()Z

    move-result v0

    return v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 71
    iget-object v3, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 72
    invoke-static {}, Lgbsdk/android/support/v7/widget/AppCompatDrawableManager;->get()Lgbsdk/android/support/v7/widget/AppCompatDrawableManager;

    move-result-object v4

    .line 75
    sget-object v5, Lgbsdk/common/host/abuh;->aBs:[Ljava/lang/String;

    const-string v6, "AppCompatTextHelper"

    invoke-static {v6, v5}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableArr(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v1, v5, v2, v6}, Lgbsdk/android/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lgbsdk/android/support/v7/widget/TintTypedArray;

    move-result-object v5

    const-string v7, "AppCompatTextHelper_android_textAppearance"

    .line 77
    invoke-static {v7}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v7

    const-string v9, "AppCompatTextHelper_android_drawableLeft"

    .line 79
    invoke-static {v9}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Lgbsdk/android/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 80
    invoke-static {v9}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v9

    .line 81
    invoke-virtual {v5, v9, v6}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    .line 80
    invoke-static {v3, v4, v9}, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Lgbsdk/android/support/v7/widget/AppCompatDrawableManager;I)Lgbsdk/android/support/v7/widget/TintInfo;

    move-result-object v9

    iput-object v9, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Lgbsdk/android/support/v7/widget/TintInfo;

    :cond_0
    const-string v9, "AppCompatTextHelper_android_drawableTop"

    .line 83
    invoke-static {v9}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Lgbsdk/android/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 84
    invoke-static {v9}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v9

    .line 85
    invoke-virtual {v5, v9, v6}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    .line 84
    invoke-static {v3, v4, v9}, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Lgbsdk/android/support/v7/widget/AppCompatDrawableManager;I)Lgbsdk/android/support/v7/widget/TintInfo;

    move-result-object v9

    iput-object v9, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Lgbsdk/android/support/v7/widget/TintInfo;

    :cond_1
    const-string v9, "AppCompatTextHelper_android_drawableRight"

    .line 87
    invoke-static {v9}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Lgbsdk/android/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 88
    invoke-static {v9}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v9

    .line 89
    invoke-virtual {v5, v9, v6}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    .line 88
    invoke-static {v3, v4, v9}, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Lgbsdk/android/support/v7/widget/AppCompatDrawableManager;I)Lgbsdk/android/support/v7/widget/TintInfo;

    move-result-object v9

    iput-object v9, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Lgbsdk/android/support/v7/widget/TintInfo;

    :cond_2
    const-string v9, "AppCompatTextHelper_android_drawableBottom"

    .line 91
    invoke-static {v9}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Lgbsdk/android/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 92
    invoke-static {v9}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v9

    .line 93
    invoke-virtual {v5, v9, v6}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    .line 92
    invoke-static {v3, v4, v9}, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Lgbsdk/android/support/v7/widget/AppCompatDrawableManager;I)Lgbsdk/android/support/v7/widget/TintInfo;

    move-result-object v9

    iput-object v9, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Lgbsdk/android/support/v7/widget/TintInfo;

    .line 96
    :cond_3
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x11

    if-lt v9, v10, :cond_5

    const-string v9, "AppCompatTextHelper_android_drawableStart"

    .line 97
    invoke-static {v9}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Lgbsdk/android/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 98
    invoke-static {v9}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v9

    .line 99
    invoke-virtual {v5, v9, v6}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    .line 98
    invoke-static {v3, v4, v9}, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Lgbsdk/android/support/v7/widget/AppCompatDrawableManager;I)Lgbsdk/android/support/v7/widget/TintInfo;

    move-result-object v9

    iput-object v9, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mDrawableStartTint:Lgbsdk/android/support/v7/widget/TintInfo;

    :cond_4
    const-string v9, "AppCompatTextHelper_android_drawableEnd"

    .line 101
    invoke-static {v9}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Lgbsdk/android/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 102
    invoke-static {v9}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v9

    .line 103
    invoke-virtual {v5, v9, v6}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    .line 102
    invoke-static {v3, v4, v9}, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Lgbsdk/android/support/v7/widget/AppCompatDrawableManager;I)Lgbsdk/android/support/v7/widget/TintInfo;

    move-result-object v4

    iput-object v4, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mDrawableEndTint:Lgbsdk/android/support/v7/widget/TintInfo;

    .line 107
    :cond_5
    invoke-virtual {v5}, Lgbsdk/android/support/v7/widget/TintTypedArray;->recycle()V

    .line 112
    iget-object v4, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 113
    invoke-virtual {v4}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    instance-of v4, v4, Landroid/text/method/PasswordTransformationMethod;

    const/16 v9, 0x17

    const-string v10, "TextAppearance"

    const-string v12, "TextAppearance_android_textColorLink"

    const-string v13, "TextAppearance_android_textColorHint"

    const-string v14, "TextAppearance_android_textColor"

    const-string v15, "TextAppearance_textAllCaps"

    if-eq v7, v8, :cond_b

    .line 122
    sget-object v5, Lgbsdk/common/host/abuh;->aAL:[Ljava/lang/String;

    invoke-static {v10, v5}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableArr(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v5

    invoke-static {v3, v7, v5}, Lgbsdk/android/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Lgbsdk/android/support/v7/widget/TintTypedArray;

    move-result-object v5

    if-nez v4, :cond_6

    .line 123
    invoke-static {v15}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Lgbsdk/android/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 125
    invoke-static {v15}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7, v6}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v7

    const/16 v17, 0x1

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    const/16 v17, 0x0

    .line 128
    :goto_0
    invoke-direct {v0, v3, v5}, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Lgbsdk/android/support/v7/widget/TintTypedArray;)V

    .line 129
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v11, v9, :cond_9

    .line 132
    invoke-static {v14}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5, v11}, Lgbsdk/android/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 133
    invoke-static {v14}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5, v11}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    goto :goto_1

    :cond_7
    const/4 v11, 0x0

    .line 135
    :goto_1
    invoke-static {v13}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Lgbsdk/android/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 136
    invoke-static {v13}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    .line 139
    :goto_2
    invoke-static {v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lgbsdk/android/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 140
    invoke-static {v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    move-object/from16 v18, v9

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    const/4 v11, 0x0

    :cond_a
    const/16 v18, 0x0

    .line 144
    :goto_3
    invoke-virtual {v5}, Lgbsdk/android/support/v7/widget/TintTypedArray;->recycle()V

    move-object/from16 v5, v18

    move-object/from16 v18, v8

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 148
    :goto_4
    sget-object v8, Lgbsdk/common/host/abuh;->aAL:[Ljava/lang/String;

    invoke-static {v10, v8}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableArr(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v8

    invoke-static {v3, v1, v8, v2, v6}, Lgbsdk/android/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lgbsdk/android/support/v7/widget/TintTypedArray;

    move-result-object v8

    if-nez v4, :cond_c

    .line 150
    invoke-static {v15}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lgbsdk/android/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 152
    invoke-static {v15}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v8, v7, v6}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v7

    const/16 v16, 0x1

    goto :goto_5

    :cond_c
    move/from16 v16, v17

    .line 154
    :goto_5
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-ge v9, v10, :cond_f

    .line 157
    invoke-static {v14}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lgbsdk/android/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 158
    invoke-static {v14}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 160
    :cond_d
    invoke-static {v13}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lgbsdk/android/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 161
    invoke-static {v13}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v18

    .line 164
    :cond_e
    invoke-static {v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lgbsdk/android/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 165
    invoke-static {v12}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v8, v5}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    :cond_f
    move-object/from16 v9, v18

    .line 170
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1c

    if-lt v10, v12, :cond_10

    const-string v10, "TextAppearance_android_textSize"

    invoke-static {v10}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v12

    .line 171
    invoke-virtual {v8, v12}, Lgbsdk/android/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 172
    invoke-static {v10}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v10

    const/4 v12, -0x1

    invoke-virtual {v8, v10, v12}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v10

    if-nez v10, :cond_10

    .line 173
    iget-object v10, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v10, v6, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 177
    :cond_10
    invoke-direct {v0, v3, v8}, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Lgbsdk/android/support/v7/widget/TintTypedArray;)V

    .line 178
    invoke-virtual {v8}, Lgbsdk/android/support/v7/widget/TintTypedArray;->recycle()V

    if-eqz v11, :cond_11

    .line 181
    iget-object v8, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_11
    if-eqz v9, :cond_12

    .line 184
    iget-object v8, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_12
    if-eqz v5, :cond_13

    .line 187
    iget-object v8, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_13
    if-nez v4, :cond_14

    if-eqz v16, :cond_14

    .line 190
    invoke-virtual {v0, v7}, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 192
    :cond_14
    iget-object v4, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-eqz v4, :cond_15

    .line 193
    iget-object v5, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget v7, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 196
    :cond_15
    iget-object v4, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v4, v1, v2}, Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 198
    sget-boolean v2, Lgbsdk/android/support/v4/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v2, :cond_17

    .line 200
    iget-object v2, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v2}, Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    move-result v2

    if-eqz v2, :cond_17

    .line 202
    iget-object v2, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    .line 203
    invoke-virtual {v2}, Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v2

    .line 204
    array-length v4, v2

    if-lez v4, :cond_17

    .line 205
    iget-object v4, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_16

    .line 208
    iget-object v2, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget-object v4, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    .line 209
    invoke-virtual {v4}, Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    move-result v4

    iget-object v5, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    .line 210
    invoke-virtual {v5}, Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    move-result v5

    iget-object v7, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    .line 211
    invoke-virtual {v7}, Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    move-result v7

    .line 208
    invoke-virtual {v2, v4, v5, v7, v6}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_6

    .line 214
    :cond_16
    iget-object v4, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v6}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 222
    :cond_17
    :goto_6
    sget-object v2, Lgbsdk/common/host/abuh;->aBr:[Ljava/lang/String;

    const-string v4, "AppCompatTextView"

    invoke-static {v4, v2}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableArr(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v2

    invoke-static {v3, v1, v2}, Lgbsdk/android/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lgbsdk/android/support/v7/widget/TintTypedArray;

    move-result-object v1

    const-string v2, "AppCompatTextView_firstBaselineToTopHeight"

    .line 223
    invoke-static {v2}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const-string v4, "AppCompatTextView_lastBaselineToBottomHeight"

    .line 225
    invoke-static {v4}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4, v3}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    const-string v5, "AppCompatTextView_lineHeight"

    .line 227
    invoke-static {v5}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5, v3}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 229
    invoke-virtual {v1}, Lgbsdk/android/support/v7/widget/TintTypedArray;->recycle()V

    if-eq v2, v3, :cond_18

    .line 231
    iget-object v1, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lgbsdk/android/support/v4/widget/TextViewCompat;->setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V

    :cond_18
    if-eq v4, v3, :cond_19

    .line 234
    iget-object v1, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v1, v4}, Lgbsdk/android/support/v4/widget/TextViewCompat;->setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V

    :cond_19
    if-eq v5, v3, :cond_1a

    .line 237
    iget-object v1, v0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lgbsdk/android/support/v4/widget/TextViewCompat;->setLineHeight(Landroid/widget/TextView;I)V

    :cond_1a
    return-void
.end method

.method onAsyncTypefaceReceived(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    .line 304
    iget-boolean v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    if-eqz v0, :cond_0

    .line 305
    iput-object p2, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 306
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 308
    iget v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-void
.end method

.method onLayout(ZIIII)V
    .locals 0

    .line 390
    sget-boolean p1, Lgbsdk/android/support/v4/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez p1, :cond_0

    .line 391
    invoke-virtual {p0}, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->autoSizeText()V

    :cond_0
    return-void
.end method

.method onSetTextAppearance(Landroid/content/Context;I)V
    .locals 3

    .line 314
    sget-object v0, Lgbsdk/common/host/abuh;->aAL:[Ljava/lang/String;

    const-string v1, "TextAppearance"

    invoke-static {v1, v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableArr(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Lgbsdk/android/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Lgbsdk/android/support/v7/widget/TintTypedArray;

    move-result-object p2

    const-string v0, "TextAppearance_textAllCaps"

    .line 316
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Lgbsdk/android/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 321
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0, v2}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 323
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    const-string v0, "TextAppearance_android_textColor"

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v1

    .line 324
    invoke-virtual {p2, v1}, Lgbsdk/android/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    .line 328
    invoke-virtual {p2, v0}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 330
    iget-object v1, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    const-string v0, "TextAppearance_android_textSize"

    .line 334
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Lgbsdk/android/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 335
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Lgbsdk/android/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-nez v0, :cond_2

    .line 336
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 340
    :cond_2
    invoke-direct {p0, p1, p2}, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Lgbsdk/android/support/v7/widget/TintTypedArray;)V

    .line 341
    invoke-virtual {p2}, Lgbsdk/android/support/v7/widget/TintTypedArray;->recycle()V

    .line 342
    iget-object p1, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-eqz p1, :cond_3

    .line 343
    iget-object p2, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    return-void
.end method

.method setAllCaps(Z)V
    .locals 1

    .line 348
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1

    .line 430
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    return-void
.end method

.method setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1

    .line 436
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2}, Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    return-void
.end method

.method setAutoSizeTextTypeWithDefaults(I)V
    .locals 1

    .line 422
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1}, Lgbsdk/android/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeWithDefaults(I)V

    return-void
.end method

.method setTextSize(IF)V
    .locals 1

    .line 398
    sget-boolean v0, Lgbsdk/android/support/v4/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->isAutoSizeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    invoke-direct {p0, p1, p2}, Lgbsdk/android/support/v7/widget/AppCompatTextHelper;->setTextSizeInternal(IF)V

    :cond_0
    return-void
.end method
