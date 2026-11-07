.class public Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v7/view/SupportMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuState"
.end annotation


# static fields
.field private static final defaultGroupId:I = 0x0

.field private static final defaultItemCategory:I = 0x0

.field private static final defaultItemCheckable:I = 0x0

.field private static final defaultItemChecked:Z = false

.field private static final defaultItemEnabled:Z = true

.field private static final defaultItemId:I = 0x0

.field private static final defaultItemOrder:I = 0x0

.field private static final defaultItemVisible:Z = true


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field itemActionProvider:Lgbsdk/android/support/v4/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticModifiers:I

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemContentDescription:Ljava/lang/CharSequence;

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemIconTintList:Landroid/content/res/ColorStateList;

.field private itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericModifiers:I

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemTooltipText:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Lgbsdk/android/support/v7/view/SupportMenuInflater;


# direct methods
.method public constructor <init>(Lgbsdk/android/support/v7/view/SupportMenuInflater;Landroid/view/Menu;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->this$0:Lgbsdk/android/support/v7/view/SupportMenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 336
    iput-object p1, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    .line 337
    iput-object p1, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 349
    iput-object p2, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 351
    invoke-virtual {p0}, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->resetGroup()V

    return-void
.end method

.method private getShortcut(Ljava/lang/String;)C
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 460
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 548
    :try_start_0
    iget-object v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->this$0:Lgbsdk/android/support/v7/view/SupportMenuInflater;

    iget-object v0, v0, Lgbsdk/android/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 549
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    const/4 v0, 0x1

    .line 550
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 551
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 553
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot instantiate class: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SupportMenuInflater"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .locals 5

    .line 465
    iget-boolean v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemChecked:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 466
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 467
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 468
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 469
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 470
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 472
    iget v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v0, :cond_1

    .line 473
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 476
    :cond_1
    iget-object v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 477
    iget-object v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->this$0:Lgbsdk/android/support/v7/view/SupportMenuInflater;

    iget-object v0, v0, Lgbsdk/android/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 481
    new-instance v0, Lgbsdk/android/support/v7/view/SupportMenuInflater$InflatedOnMenuItemClickListener;

    iget-object v1, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->this$0:Lgbsdk/android/support/v7/view/SupportMenuInflater;

    .line 482
    invoke-virtual {v1}, Lgbsdk/android/support/v7/view/SupportMenuInflater;->getRealOwner()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lgbsdk/android/support/v7/view/SupportMenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    .line 478
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 485
    :cond_3
    :goto_1
    instance-of v0, p1, Lgbsdk/android/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_4

    move-object v1, p1

    check-cast v1, Lgbsdk/android/support/v7/view/menu/MenuItemImpl;

    .line 486
    :cond_4
    iget v1, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v4, 0x2

    if-lt v1, v4, :cond_6

    if-eqz v0, :cond_5

    .line 488
    move-object v0, p1

    check-cast v0, Lgbsdk/android/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0, v3}, Lgbsdk/android/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    goto :goto_2

    .line 489
    :cond_5
    instance-of v0, p1, Lgbsdk/android/support/v7/view/menu/MenuItemWrapperICS;

    if-eqz v0, :cond_6

    .line 490
    move-object v0, p1

    check-cast v0, Lgbsdk/android/support/v7/view/menu/MenuItemWrapperICS;

    invoke-virtual {v0, v3}, Lgbsdk/android/support/v7/view/menu/MenuItemWrapperICS;->setExclusiveCheckable(Z)V

    .line 495
    :cond_6
    :goto_2
    iget-object v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 496
    sget-object v1, Lgbsdk/android/support/v7/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v2, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->this$0:Lgbsdk/android/support/v7/view/SupportMenuInflater;

    iget-object v2, v2, Lgbsdk/android/support/v7/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 498
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const/4 v2, 0x1

    .line 501
    :cond_7
    iget v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v0, :cond_9

    if-nez v2, :cond_8

    .line 503
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_3

    :cond_8
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    .line 506
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_9
    :goto_3
    iget-object v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Lgbsdk/android/support/v4/view/ActionProvider;

    if-eqz v0, :cond_a

    .line 511
    invoke-static {p1, v0}, Lgbsdk/android/support/v4/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Lgbsdk/android/support/v4/view/ActionProvider;)Landroid/view/MenuItem;

    .line 514
    :cond_a
    iget-object v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lgbsdk/android/support/v4/view/MenuItemCompat;->setContentDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 515
    iget-object v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lgbsdk/android/support/v4/view/MenuItemCompat;->setTooltipText(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 516
    iget-char v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    iget v1, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemAlphabeticModifiers:I

    invoke-static {p1, v0, v1}, Lgbsdk/android/support/v4/view/MenuItemCompat;->setAlphabeticShortcut(Landroid/view/MenuItem;CI)V

    .line 518
    iget-char v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    iget v1, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemNumericModifiers:I

    invoke-static {p1, v0, v1}, Lgbsdk/android/support/v4/view/MenuItemCompat;->setNumericShortcut(Landroid/view/MenuItem;CI)V

    .line 520
    iget-object v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_b

    .line 521
    invoke-static {p1, v0}, Lgbsdk/android/support/v4/view/MenuItemCompat;->setIconTintMode(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    .line 523
    :cond_b
    iget-object v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_c

    .line 524
    invoke-static {p1, v0}, Lgbsdk/android/support/v4/view/MenuItemCompat;->setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public addItem()V
    .locals 5

    const/4 v0, 0x1

    .line 529
    iput-boolean v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 530
    iget-object v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    iget v2, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemId:I

    iget v3, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    return-void
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .locals 5

    const/4 v0, 0x1

    .line 534
    iput-boolean v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 535
    iget-object v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    iget v2, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemId:I

    iget v3, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 536
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public hasAddedItem()Z
    .locals 1

    .line 541
    iget-boolean v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    return v0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .locals 3

    .line 367
    iget-object v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->this$0:Lgbsdk/android/support/v7/view/SupportMenuInflater;

    iget-object v0, v0, Lgbsdk/android/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    sget-object v1, Lgbsdk/common/host/abuh;->aAX:[Ljava/lang/String;

    const-string v2, "MenuGroup"

    invoke-static {v2, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableArr(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "MenuGroup_android_id"

    .line 369
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    const-string v0, "MenuGroup_android_menuCategory"

    .line 370
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->groupCategory:I

    const-string v0, "MenuGroup_android_orderInCategory"

    .line 372
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->groupOrder:I

    const-string v0, "MenuGroup_android_checkableBehavior"

    .line 373
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->groupCheckable:I

    const-string v0, "MenuGroup_android_visible"

    .line 375
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->groupVisible:Z

    const-string v0, "MenuGroup_android_enabled"

    .line 376
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 378
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .locals 6

    .line 385
    iget-object v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->this$0:Lgbsdk/android/support/v7/view/SupportMenuInflater;

    iget-object v0, v0, Lgbsdk/android/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    sget-object v1, Lgbsdk/common/host/abuh;->aAW:[Ljava/lang/String;

    const-string v2, "MenuItem"

    invoke-static {v2, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableArr(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "MenuItem_android_id"

    .line 388
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemId:I

    const-string v0, "MenuItem_android_menuCategory"

    .line 389
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    iget v2, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->groupCategory:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const-string v2, "MenuItem_android_orderInCategory"

    .line 390
    invoke-static {v2}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->groupOrder:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/high16 v3, -0x10000

    and-int/2addr v0, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 391
    iput v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    const-string v0, "MenuItem_android_title"

    .line 393
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    const-string v0, "MenuItem_android_titleCondensed"

    .line 394
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    const-string v0, "MenuItem_android_icon"

    .line 395
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemIconResId:I

    const-string v0, "MenuItem_android_alphabeticShortcut"

    .line 396
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    .line 397
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    const-string v0, "MenuItem_alphabeticModifiers"

    .line 398
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x1000

    .line 399
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemAlphabeticModifiers:I

    const-string v0, "MenuItem_android_numericShortcut"

    .line 400
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    .line 401
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    const-string v0, "MenuItem_numericModifiers"

    .line 402
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    .line 403
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemNumericModifiers:I

    const-string v0, "MenuItem_android_checkable"

    .line 404
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    goto :goto_0

    .line 410
    :cond_0
    iget v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->groupCheckable:I

    iput v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    :goto_0
    const-string v0, "MenuItem_android_checked"

    .line 412
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemChecked:Z

    const-string v0, "MenuItem_android_visible"

    .line 413
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemVisible:Z

    const-string v0, "MenuItem_android_enabled"

    .line 414
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    const-string v0, "MenuItem_showAsAction"

    .line 415
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    const-string v0, "MenuItem_android_onClick"

    .line 416
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    const-string v0, "MenuItem_actionLayout"

    .line 417
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    const-string v0, "MenuItem_actionViewClass"

    .line 418
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    const-string v0, "MenuItem_actionProviderClass"

    .line 419
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 422
    iget v4, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 423
    iget-object v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    sget-object v4, Lgbsdk/android/support/v7/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v5, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->this$0:Lgbsdk/android/support/v7/view/SupportMenuInflater;

    iget-object v5, v5, Lgbsdk/android/support/v7/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    invoke-direct {p0, v0, v4, v5}, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/android/support/v4/view/ActionProvider;

    iput-object v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Lgbsdk/android/support/v4/view/ActionProvider;

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    const-string v0, "SupportMenuInflater"

    const-string v4, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 428
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_3
    iput-object v3, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Lgbsdk/android/support/v4/view/ActionProvider;

    :goto_2
    const-string v0, "MenuItem_contentDescription"

    .line 434
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    const-string v0, "MenuItem_tooltipText"

    .line 435
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    const-string v0, "MenuItem_iconTintMode"

    .line 436
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 437
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iget-object v2, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v2}, Lgbsdk/android/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_3

    .line 442
    :cond_4
    iput-object v3, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_3
    const-string v0, "MenuItem_iconTint"

    .line 444
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 445
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getStyleableIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    goto :goto_4

    .line 448
    :cond_5
    iput-object v3, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    .line 451
    :goto_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 453
    iput-boolean v1, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    return-void
.end method

.method public resetGroup()V
    .locals 1

    const/4 v0, 0x0

    .line 355
    iput v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    .line 356
    iput v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 357
    iput v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 358
    iput v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->groupCheckable:I

    const/4 v0, 0x1

    .line 359
    iput-boolean v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 360
    iput-boolean v0, p0, Lgbsdk/android/support/v7/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    return-void
.end method
