.class public Lgbsdk/android/support/v7/widget/ShareActionProvider;
.super Lgbsdk/android/support/v4/view/ActionProvider;
.source "ShareActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/android/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;,
        Lgbsdk/android/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;,
        Lgbsdk/android/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_ACTIVITY_COUNT:I = 0x4

.field public static final DEFAULT_SHARE_HISTORY_FILE_NAME:Ljava/lang/String; = "share_history.xml"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mMaxShownActivityCount:I

.field private mOnChooseActivityListener:Lgbsdk/android/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

.field private final mOnMenuItemClickListener:Lgbsdk/android/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

.field mOnShareTargetSelectedListener:Lgbsdk/android/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

.field mShareHistoryFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 197
    invoke-direct {p0, p1}, Lgbsdk/android/support/v4/view/ActionProvider;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    .line 164
    iput v0, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mMaxShownActivityCount:I

    .line 169
    new-instance v0, Lgbsdk/android/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    invoke-direct {v0, p0}, Lgbsdk/android/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;-><init>(Lgbsdk/android/support/v7/widget/ShareActionProvider;)V

    iput-object v0, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mOnMenuItemClickListener:Lgbsdk/android/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    const-string v0, "share_history.xml"

    .line 185
    iput-object v0, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    .line 198
    iput-object p1, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setActivityChooserPolicyIfNeeded()V
    .locals 2

    .line 383
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Lgbsdk/android/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

    if-nez v0, :cond_0

    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mOnChooseActivityListener:Lgbsdk/android/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

    if-nez v0, :cond_1

    .line 387
    new-instance v0, Lgbsdk/android/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;

    invoke-direct {v0, p0}, Lgbsdk/android/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;-><init>(Lgbsdk/android/support/v7/widget/ShareActionProvider;)V

    iput-object v0, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mOnChooseActivityListener:Lgbsdk/android/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 389
    :cond_1
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lgbsdk/android/support/v7/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Lgbsdk/android/support/v7/widget/ActivityChooserModel;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mOnChooseActivityListener:Lgbsdk/android/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-virtual {v0, v1}, Lgbsdk/android/support/v7/widget/ActivityChooserModel;->setOnChooseActivityListener(Lgbsdk/android/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;)V

    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 5

    .line 222
    new-instance v0, Lgbsdk/android/support/v7/widget/ActivityChooserView;

    iget-object v1, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lgbsdk/android/support/v7/widget/ActivityChooserView;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/ActivityChooserView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    iget-object v1, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v1, v2}, Lgbsdk/android/support/v7/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Lgbsdk/android/support/v7/widget/ActivityChooserModel;

    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Lgbsdk/android/support/v7/widget/ActivityChooserView;->setActivityChooserModel(Lgbsdk/android/support/v7/widget/ActivityChooserModel;)V

    .line 229
    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 230
    iget-object v2, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const-string v3, "actionModeShareDrawable"

    const-string v4, "attr"

    invoke-static {v3, v4}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 231
    iget-object v2, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v2, v1}, Lgbsdk/android/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Lgbsdk/android/support/v7/widget/ActivityChooserView;->setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    invoke-virtual {v0, p0}, Lgbsdk/android/support/v7/widget/ActivityChooserView;->setProvider(Lgbsdk/android/support/v4/view/ActionProvider;)V

    const-string v1, "abc_shareactionprovider_share_with_application"

    const-string v2, "string"

    .line 236
    invoke-static {v1, v2}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lgbsdk/android/support/v7/widget/ActivityChooserView;->setDefaultActionButtonContentDescription(I)V

    const-string v1, "abc_shareactionprovider_share_with"

    .line 238
    invoke-static {v1, v2}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lgbsdk/android/support/v7/widget/ActivityChooserView;->setExpandActivityOverflowButtonContentDescription(I)V

    return-object v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 8

    .line 258
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 260
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lgbsdk/android/support/v7/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Lgbsdk/android/support/v7/widget/ActivityChooserModel;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 263
    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/ActivityChooserModel;->getActivityCount()I

    move-result v2

    .line 264
    iget v3, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mMaxShownActivityCount:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    .line 268
    invoke-virtual {v0, v5}, Lgbsdk/android/support/v7/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 269
    invoke-virtual {v6, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {p1, v4, v5, v5, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    .line 270
    invoke-virtual {v6, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v7, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mOnMenuItemClickListener:Lgbsdk/android/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    .line 271
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-ge v3, v2, :cond_1

    .line 276
    iget-object v5, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    const-string v6, "abc_activity_chooser_view_see_all"

    const-string v7, "string"

    invoke-static {v6, v7}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 278
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 276
    invoke-interface {p1, v4, v3, v3, v5}, Landroid/view/SubMenu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 280
    invoke-virtual {v0, v3}, Lgbsdk/android/support/v7/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 281
    invoke-virtual {v5, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {p1, v4, v3, v3, v6}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    .line 282
    invoke-virtual {v5, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v6, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mOnMenuItemClickListener:Lgbsdk/android/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    .line 283
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setOnShareTargetSelectedListener(Lgbsdk/android/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Lgbsdk/android/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

    .line 213
    invoke-direct {p0}, Lgbsdk/android/support/v7/widget/ShareActionProvider;->setActivityChooserPolicyIfNeeded()V

    return-void
.end method

.method public setShareHistoryFileName(Ljava/lang/String;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    .line 322
    invoke-direct {p0}, Lgbsdk/android/support/v7/widget/ShareActionProvider;->setActivityChooserPolicyIfNeeded()V

    return-void
.end method

.method public setShareIntent(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 343
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    .line 344
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    :cond_0
    invoke-virtual {p0, p1}, Lgbsdk/android/support/v7/widget/ShareActionProvider;->updateIntent(Landroid/content/Intent;)V

    .line 348
    :cond_1
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lgbsdk/android/support/v7/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Lgbsdk/android/support/v7/widget/ActivityChooserModel;

    move-result-object v0

    .line 350
    invoke-virtual {v0, p1}, Lgbsdk/android/support/v7/widget/ActivityChooserModel;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method updateIntent(Landroid/content/Intent;)V
    .locals 2

    .line 411
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x8080000

    .line 413
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/high16 v0, 0x80000

    .line 417
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_0
    return-void
.end method
