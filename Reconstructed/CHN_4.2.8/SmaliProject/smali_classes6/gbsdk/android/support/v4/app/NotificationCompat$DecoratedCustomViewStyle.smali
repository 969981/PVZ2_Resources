.class public Lgbsdk/android/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;
.super Lgbsdk/android/support/v4/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedCustomViewStyle"
.end annotation


# static fields
.field private static final MAX_ACTION_BUTTONS:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2935
    invoke-direct {p0}, Lgbsdk/android/support/v4/app/NotificationCompat$Style;-><init>()V

    return-void
.end method

.method private createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;
    .locals 8

    const-string v0, "gbsdk_notification_template_custom_big"

    const-string v1, "layout"

    .line 3007
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lgbsdk/android/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;

    move-result-object v0

    const-string v3, "actions"

    const-string v4, "id"

    .line 3009
    invoke-static {v3, v4}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    if-eqz p2, :cond_0

    .line 3011
    iget-object p2, p0, Lgbsdk/android/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object p2, p2, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    .line 3012
    iget-object p2, p0, Lgbsdk/android/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object p2, p2, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v5, 0x3

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-lez p2, :cond_0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p2, :cond_1

    .line 3016
    iget-object v6, p0, Lgbsdk/android/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v6, v6, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgbsdk/android/support/v4/app/NotificationCompat$Action;

    invoke-direct {p0, v6}, Lgbsdk/android/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->generateActionButton(Lgbsdk/android/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 3017
    invoke-static {v3, v4}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    .line 3022
    :goto_1
    invoke-static {v3, v4}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string p2, "action_divider"

    .line 3023
    invoke-static {p2, v4}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3024
    invoke-virtual {p0, v0, p1}, Lgbsdk/android/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    return-object v0
.end method

.method private generateActionButton(Lgbsdk/android/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;
    .locals 8

    .line 3029
    iget-object v0, p1, Lgbsdk/android/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3030
    :goto_0
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lgbsdk/android/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v2, v2, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "layout"

    if-eqz v0, :cond_1

    const-string v4, "gbsdk_notification_action_tombstone"

    goto :goto_1

    :cond_1
    const-string v4, "gbsdk_notification_action"

    :goto_1
    invoke-static {v4, v3}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string v2, "action_image"

    const-string v3, "id"

    .line 3033
    invoke-static {v2, v3}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3034
    invoke-virtual {p1}, Lgbsdk/android/support/v4/app/NotificationCompat$Action;->getIcon()I

    move-result v4

    iget-object v5, p0, Lgbsdk/android/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    iget-object v5, v5, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "notification_action_color_filter"

    const-string v7, "color"

    invoke-static {v6, v7}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 3035
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 3034
    invoke-virtual {p0, v4, v5}, Lgbsdk/android/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 3033
    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const-string v2, "action_text"

    .line 3036
    invoke-static {v2, v3}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v4, p1, Lgbsdk/android/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v2, "action_container"

    if-nez v0, :cond_2

    .line 3038
    invoke-static {v2, v3}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v4, p1, Lgbsdk/android/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 3040
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v0, v4, :cond_3

    .line 3041
    invoke-static {v2, v3}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object p1, p1, Lgbsdk/android/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    :cond_3
    return-object v1
.end method


# virtual methods
.method public apply(Lgbsdk/android/support/v4/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 2

    .line 2944
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2945
    invoke-interface {p1}, Lgbsdk/android/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v0, Landroid/app/Notification$DecoratedCustomViewStyle;

    invoke-direct {v0}, Landroid/app/Notification$DecoratedCustomViewStyle;-><init>()V

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_0
    return-void
.end method

.method public makeBigContentView(Lgbsdk/android/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 2

    .line 2972
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-lt p1, v1, :cond_0

    return-object v0

    .line 2976
    :cond_0
    iget-object p1, p0, Lgbsdk/android/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 2977
    :cond_1
    iget-object p1, p0, Lgbsdk/android/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    .line 2979
    invoke-virtual {p1}, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x1

    .line 2984
    invoke-direct {p0, p1, v0}, Lgbsdk/android/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public makeContentView(Lgbsdk/android/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 2

    .line 2955
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-lt p1, v1, :cond_0

    return-object v0

    .line 2959
    :cond_0
    iget-object p1, p0, Lgbsdk/android/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 2963
    :cond_1
    iget-object p1, p0, Lgbsdk/android/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lgbsdk/android/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public makeHeadsUpContentView(Lgbsdk/android/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 2

    .line 2993
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-lt p1, v1, :cond_0

    return-object v0

    .line 2997
    :cond_0
    iget-object p1, p0, Lgbsdk/android/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->getHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v1, p1

    goto :goto_0

    .line 2998
    :cond_1
    iget-object v1, p0, Lgbsdk/android/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Lgbsdk/android/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Lgbsdk/android/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    :cond_2
    const/4 p1, 0x1

    .line 3003
    invoke-direct {p0, v1, p1}, Lgbsdk/android/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method
