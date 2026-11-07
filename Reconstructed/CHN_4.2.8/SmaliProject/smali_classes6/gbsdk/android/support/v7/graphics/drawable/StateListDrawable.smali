.class public Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;
.super Lgbsdk/android/support/v7/graphics/drawable/DrawableContainer;
.source "StateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "StateListDrawable"


# instance fields
.field private mMutated:Z

.field private mStateListState:Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0, v0}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;-><init>(Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;)V
    .locals 0

    .line 412
    invoke-direct {p0}, Lgbsdk/android/support/v7/graphics/drawable/DrawableContainer;-><init>()V

    if-eqz p1, :cond_0

    .line 414
    invoke-virtual {p0, p1}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->setConstantState(Lgbsdk/android/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    :cond_0
    return-void
.end method

.method constructor <init>(Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V
    .locals 1

    .line 401
    invoke-direct {p0}, Lgbsdk/android/support/v7/graphics/drawable/DrawableContainer;-><init>()V

    .line 403
    new-instance v0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;

    invoke-direct {v0, p1, p0, p2}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;-><init>(Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    .line 404
    invoke-virtual {p0, v0}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->setConstantState(Lgbsdk/android/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 405
    invoke-virtual {p0}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    return-void
.end method

.method private inflateChildElements(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 8

    .line 177
    iget-object v0, p0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->mStateListState:Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;

    .line 178
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 181
    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v2, :cond_9

    .line 182
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ge v4, v1, :cond_1

    const/4 v5, 0x3

    if-eq v3, v5, :cond_9

    :cond_1
    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    goto :goto_0

    :cond_2
    if-gt v4, v1, :cond_0

    .line 187
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 192
    :cond_3
    sget-object v3, Lgbsdk/common/host/abuh;->aAN:[Ljava/lang/String;

    const-string v4, "StateListDrawableItem"

    invoke-static {v4, v3}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableArr(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v3

    invoke-static {p2, p5, p4, v3}, Lgbsdk/android/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x0

    const-string v6, "StateListDrawableItem_android_drawable"

    .line 195
    invoke-static {v6}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-lez v6, :cond_4

    .line 198
    invoke-static {p1, v6}, Lgbsdk/android/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 200
    :cond_4
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    invoke-virtual {p0, p4}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->extractStateSet(Landroid/util/AttributeSet;)[I

    move-result-object v3

    if-nez v4, :cond_8

    .line 206
    :goto_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_5

    goto :goto_1

    :cond_5
    if-ne v4, v5, :cond_7

    .line 215
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_6

    .line 216
    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    .line 218
    :cond_6
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    .line 210
    :cond_7
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "child tag defining a drawable"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 221
    :cond_8
    :goto_2
    invoke-virtual {v0, v3, v4}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 154
    iget-object v0, p0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->mStateListState:Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;

    .line 156
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 157
    iget v1, v0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;->mChangingConfigurations:I

    :cond_0
    const-string v1, "StateListDrawable_android_variablePadding"

    .line 159
    invoke-static {v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v1

    iget-boolean v2, v0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;->mVariablePadding:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;->mVariablePadding:Z

    const-string v1, "StateListDrawable_android_constantSize"

    .line 161
    invoke-static {v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v1

    iget-boolean v2, v0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;->mConstantSize:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;->mConstantSize:Z

    const-string v1, "StateListDrawable_android_enterFadeDuration"

    .line 163
    invoke-static {v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v1

    iget v2, v0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;->mEnterFadeDuration:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;->mEnterFadeDuration:I

    const-string v1, "StateListDrawable_android_exitFadeDuration"

    .line 165
    invoke-static {v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v1

    iget v2, v0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;->mExitFadeDuration:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;->mExitFadeDuration:I

    const-string v1, "StateListDrawable_android_dither"

    .line 167
    invoke-static {v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v1

    iget-boolean v2, v0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;->mDither:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;->mDither:Z

    return-void
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 98
    iget-object v0, p0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->mStateListState:Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1, p2}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    .line 100
    invoke-virtual {p0}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 389
    invoke-super {p0, p1}, Lgbsdk/android/support/v7/graphics/drawable/DrawableContainer;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 390
    invoke-virtual {p0}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    return-void
.end method

.method clearMutated()V
    .locals 1

    .line 322
    invoke-super {p0}, Lgbsdk/android/support/v7/graphics/drawable/DrawableContainer;->clearMutated()V

    const/4 v0, 0x0

    .line 323
    iput-boolean v0, p0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->mMutated:Z

    return-void
.end method

.method bridge synthetic cloneConstantState()Lgbsdk/android/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->cloneConstantState()Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;

    move-result-object v0

    return-object v0
.end method

.method cloneConstantState()Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;
    .locals 3

    .line 317
    new-instance v0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;

    iget-object v1, p0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->mStateListState:Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;-><init>(Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method extractStateSet(Landroid/util/AttributeSet;)[I
    .locals 8

    .line 233
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    .line 234
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 236
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v5

    if-eqz v5, :cond_1

    const v6, 0x10100d0

    if-eq v5, v6, :cond_1

    const v6, 0x1010199

    if-eq v5, v6, :cond_1

    add-int/lit8 v6, v4, 0x1

    .line 246
    invoke-interface {p1, v3, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    neg-int v5, v5

    :goto_1
    aput v5, v1, v4

    move v4, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    :cond_2
    invoke-static {v1, v4}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object p1

    return-object p1
.end method

.method getStateCount()I
    .locals 1

    .line 266
    iget-object v0, p0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->mStateListState:Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;->getChildCount()I

    move-result v0

    return v0
.end method

.method getStateDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 290
    iget-object v0, p0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->mStateListState:Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method getStateDrawableIndex([I)I
    .locals 1

    .line 302
    iget-object v0, p0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->mStateListState:Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result p1

    return p1
.end method

.method getStateListState()Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;
    .locals 1

    .line 255
    iget-object v0, p0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->mStateListState:Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;

    return-object v0
.end method

.method getStateSet(I)[I
    .locals 1

    .line 278
    iget-object v0, p0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->mStateListState:Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;

    iget-object v0, v0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aget-object p1, v0, p1

    return-object p1
.end method

.method public inflate(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3

    .line 141
    sget-object v0, Lgbsdk/common/host/abuh;->aAO:[Ljava/lang/String;

    const-string v1, "StateListDrawable"

    invoke-static {v1, v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableArr(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {p2, p5, p4, v0}, Lgbsdk/android/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "StateListDrawable_android_visible"

    .line 142
    invoke-static {v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1, v2}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->setVisible(ZZ)Z

    .line 143
    invoke-direct {p0, v0}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 144
    invoke-virtual {p0, p2}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->updateDensity(Landroid/content/res/Resources;)V

    .line 145
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    invoke-direct/range {p0 .. p5}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->inflateChildElements(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 147
    invoke-virtual {p0}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 308
    iget-boolean v0, p0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lgbsdk/android/support/v7/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 309
    iget-object v0, p0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->mStateListState:Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;->mutate()V

    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 2

    .line 111
    invoke-super {p0, p1}, Lgbsdk/android/support/v7/graphics/drawable/DrawableContainer;->onStateChange([I)Z

    move-result v0

    .line 112
    iget-object v1, p0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->mStateListState:Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v1, p1}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result p1

    if-gez p1, :cond_0

    .line 118
    iget-object p1, p0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->mStateListState:Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p1, v1}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result p1

    .line 120
    :cond_0
    invoke-virtual {p0, p1}, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->selectDrawable(I)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected setConstantState(Lgbsdk/android/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 1

    .line 395
    invoke-super {p0, p1}, Lgbsdk/android/support/v7/graphics/drawable/DrawableContainer;->setConstantState(Lgbsdk/android/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 396
    instance-of v0, p1, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;

    if-eqz v0, :cond_0

    .line 397
    check-cast p1, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;

    iput-object p1, p0, Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable;->mStateListState:Lgbsdk/android/support/v7/graphics/drawable/StateListDrawable$StateListState;

    :cond_0
    return-void
.end method
