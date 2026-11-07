.class Lcom/popcap/pvz2cthddev/TWGameAd$6;
.super Ljava/lang/Object;
.source "TWGameAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWGameAd;->ShowBanner1(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

.field final synthetic val$id:I

.field final synthetic val$world:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/TWGameAd;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 336
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    iput p2, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$id:I

    iput-object p3, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$world:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 341
    const-string v0, "ScoringPlaytest"

    const-string v1, "AdCheck"

    .line 0
    const-string v2, "ShowBanner world : "

    .line 341
    :try_start_0
    iget-object v3, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v3}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$000(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/talkweb/twgame/bean/NativeData;

    .line 345
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v4

    .line 347
    iget v5, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$id:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_8

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v0, 0x4

    if-eq v5, v0, :cond_1

    const/4 v0, 0x5

    if-eq v5, v0, :cond_0

    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    .line 483
    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 484
    sget v1, Lcom/popcap/pvz2cthddev/R$layout;->tw_ad_banner_layout:I

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 485
    sget v1, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_right_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 487
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 488
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v1}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    new-instance v1, Lcom/popcap/pvz2cthddev/TWGameAd$6$8;

    invoke-direct {v1, p0}, Lcom/popcap/pvz2cthddev/TWGameAd$6$8;-><init>(Lcom/popcap/pvz2cthddev/TWGameAd$6;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    sget v2, Lcom/popcap/pvz2cthddev/R$id;->right_close:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 496
    new-instance v2, Lcom/popcap/pvz2cthddev/TWGameAd$6$9;

    invoke-direct {v2, p0}, Lcom/popcap/pvz2cthddev/TWGameAd$6$9;-><init>(Lcom/popcap/pvz2cthddev/TWGameAd$6;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    sget v2, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_right_title:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 503
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    sget v5, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_right_content:I

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 504
    check-cast v0, Landroid/view/ViewGroup;

    sget v5, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_right_image:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 505
    invoke-virtual {v3}, Lcom/talkweb/twgame/bean/NativeData;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    invoke-virtual {v3}, Lcom/talkweb/twgame/bean/NativeData;->getConten()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    invoke-static {v4}, Lcom/popcap/pvz2cthddev/TWGameAd;->initImageLoader(Landroid/app/Activity;)V

    .line 508
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v3}, Lcom/talkweb/twgame/bean/NativeData;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 509
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 510
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v1}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    .line 449
    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 450
    sget v1, Lcom/popcap/pvz2cthddev/R$layout;->tw_ad_banner_layout:I

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 451
    sget v1, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_left_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 453
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 454
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v1}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    new-instance v1, Lcom/popcap/pvz2cthddev/TWGameAd$6$6;

    invoke-direct {v1, p0}, Lcom/popcap/pvz2cthddev/TWGameAd$6$6;-><init>(Lcom/popcap/pvz2cthddev/TWGameAd$6;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    sget v2, Lcom/popcap/pvz2cthddev/R$id;->left_close:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 462
    new-instance v2, Lcom/popcap/pvz2cthddev/TWGameAd$6$7;

    invoke-direct {v2, p0}, Lcom/popcap/pvz2cthddev/TWGameAd$6$7;-><init>(Lcom/popcap/pvz2cthddev/TWGameAd$6;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    sget v2, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_left_title:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 469
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    sget v5, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_left_content:I

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 470
    check-cast v0, Landroid/view/ViewGroup;

    sget v5, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_left_image:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 471
    invoke-virtual {v3}, Lcom/talkweb/twgame/bean/NativeData;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    invoke-virtual {v3}, Lcom/talkweb/twgame/bean/NativeData;->getConten()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    invoke-static {v4}, Lcom/popcap/pvz2cthddev/TWGameAd;->initImageLoader(Landroid/app/Activity;)V

    .line 474
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v3}, Lcom/talkweb/twgame/bean/NativeData;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 475
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 476
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v1}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 383
    :cond_2
    iget-object v5, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v5}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v5

    iget v6, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_9

    .line 385
    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 386
    sget v6, Lcom/popcap/pvz2cthddev/R$layout;->tw_ad_banner_layout:I

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 388
    iget-object v6, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$world:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 390
    sget v6, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_top_right_layout:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 391
    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    sget v7, Lcom/popcap/pvz2cthddev/R$id;->top_right_close:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 392
    new-instance v7, Lcom/popcap/pvz2cthddev/TWGameAd$6$3;

    invoke-direct {v7, p0}, Lcom/popcap/pvz2cthddev/TWGameAd$6$3;-><init>(Lcom/popcap/pvz2cthddev/TWGameAd$6;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 400
    :cond_3
    sget v6, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_top_layout:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 401
    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    sget v7, Lcom/popcap/pvz2cthddev/R$id;->top_close:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 402
    new-instance v7, Lcom/popcap/pvz2cthddev/TWGameAd$6$4;

    invoke-direct {v7, p0}, Lcom/popcap/pvz2cthddev/TWGameAd$6$4;-><init>(Lcom/popcap/pvz2cthddev/TWGameAd$6;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    :goto_0
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 409
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 410
    iget-object v6, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v6}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v6

    iget v7, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    new-instance v6, Lcom/popcap/pvz2cthddev/TWGameAd$6$5;

    invoke-direct {v6, p0}, Lcom/popcap/pvz2cthddev/TWGameAd$6$5;-><init>(Lcom/popcap/pvz2cthddev/TWGameAd$6;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    sget v7, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_top_title:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 418
    move-object v7, v5

    check-cast v7, Landroid/view/ViewGroup;

    sget v8, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_top_content:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 419
    move-object v8, v5

    check-cast v8, Landroid/view/ViewGroup;

    sget v9, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_top_image:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 420
    invoke-virtual {v3}, Lcom/talkweb/twgame/bean/NativeData;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    invoke-virtual {v3}, Lcom/talkweb/twgame/bean/NativeData;->getConten()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    invoke-static {v4}, Lcom/popcap/pvz2cthddev/TWGameAd;->initImageLoader(Landroid/app/Activity;)V

    .line 423
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    invoke-virtual {v3}, Lcom/talkweb/twgame/bean/NativeData;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$world:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v2, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$world:Ljava/lang/String;

    const-string v3, "dino"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$world:Ljava/lang/String;

    const-string v3, "kongfu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$world:Ljava/lang/String;

    const-string v3, "cowboy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$world:Ljava/lang/String;

    const-string v3, "egypt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$world:Ljava/lang/String;

    const-string v3, "beach"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 431
    :cond_4
    iget-object v2, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$world:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$world:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$world:Ljava/lang/String;

    const-string v2, "eighties"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$world:Ljava/lang/String;

    const-string v2, "iceage"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$world:Ljava/lang/String;

    const-string v2, "dark"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$world:Ljava/lang/String;

    const-string v2, "future"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 438
    :cond_5
    const-string v0, "ShowBanner R.drawable.ads_battle_2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->ads_battle_2:I

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 433
    :cond_6
    :goto_1
    const-string v0, "ShowBanner R.drawable.ads_battle_3"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->ads_battle_3:I

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 428
    :cond_7
    :goto_2
    const-string v0, "ShowBanner R.drawable.ads_battle_1"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->ads_battle_1:I

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 441
    :goto_3
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v1}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 349
    :cond_8
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    .line 351
    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 352
    sget v1, Lcom/popcap/pvz2cthddev/R$layout;->tw_ad_banner_layout:I

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 353
    sget v1, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_bottom_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 355
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 356
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v1}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    new-instance v1, Lcom/popcap/pvz2cthddev/TWGameAd$6$1;

    invoke-direct {v1, p0}, Lcom/popcap/pvz2cthddev/TWGameAd$6$1;-><init>(Lcom/popcap/pvz2cthddev/TWGameAd$6;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    sget v2, Lcom/popcap/pvz2cthddev/R$id;->bottom_close:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 364
    new-instance v2, Lcom/popcap/pvz2cthddev/TWGameAd$6$2;

    invoke-direct {v2, p0}, Lcom/popcap/pvz2cthddev/TWGameAd$6$2;-><init>(Lcom/popcap/pvz2cthddev/TWGameAd$6;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    sget v2, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_bottom_title:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 371
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    sget v5, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_bottom_content:I

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 372
    check-cast v0, Landroid/view/ViewGroup;

    sget v5, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_bottom_image:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 373
    invoke-virtual {v3}, Lcom/talkweb/twgame/bean/NativeData;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    invoke-virtual {v3}, Lcom/talkweb/twgame/bean/NativeData;->getConten()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    invoke-static {v4}, Lcom/popcap/pvz2cthddev/TWGameAd;->initImageLoader(Landroid/app/Activity;)V

    .line 376
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v3}, Lcom/talkweb/twgame/bean/NativeData;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 377
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 378
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v1}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 517
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6;->val$id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/talkweb/twgame/TwGameSDK;->onExposuredNativeAD(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 520
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void
.end method
