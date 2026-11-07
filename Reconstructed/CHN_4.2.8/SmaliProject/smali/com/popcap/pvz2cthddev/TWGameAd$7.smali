.class Lcom/popcap/pvz2cthddev/TWGameAd$7;
.super Ljava/lang/Object;
.source "TWGameAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWGameAd;->ShowBanner2(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/TWGameAd;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 528
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    iput p2, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "ShowBanner2 id : "

    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v1}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$000(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->val$id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/talkweb/twgame/bean/NativeData;

    .line 538
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v2

    .line 539
    iget v3, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->val$id:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_0

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_0

    return-void

    .line 628
    :cond_0
    const-string v3, "BANNER_AD_WORLD_SELECT BANNER_AD_BATTLE_STATEMENT "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->val$id:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v0

    iget v3, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->val$id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 631
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 632
    sget v3, Lcom/popcap/pvz2cthddev/R$layout;->tw_ad_banner_layout:I

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 633
    sget v3, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_top_type1_layout:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 634
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    sget v5, Lcom/popcap/pvz2cthddev/R$id;->top_close:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 635
    new-instance v5, Lcom/popcap/pvz2cthddev/TWGameAd$7$3;

    invoke-direct {v5, p0}, Lcom/popcap/pvz2cthddev/TWGameAd$7$3;-><init>(Lcom/popcap/pvz2cthddev/TWGameAd$7;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 641
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 642
    iget-object v4, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v4}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v4

    iget v5, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->val$id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    sget v5, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_top_title:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 650
    move-object v5, v3

    check-cast v5, Landroid/view/ViewGroup;

    sget v6, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_top_content:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 651
    move-object v6, v3

    check-cast v6, Landroid/view/ViewGroup;

    sget v7, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_top_image:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 652
    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/NativeData;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/NativeData;->getConten()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    invoke-static {v2}, Lcom/popcap/pvz2cthddev/TWGameAd;->initImageLoader(Landroid/app/Activity;)V

    .line 655
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/NativeData;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 657
    sget v1, Lcom/popcap/pvz2cthddev/R$drawable;->ads_battle_2:I

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 659
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v1}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v1

    iget v3, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->val$id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 660
    iget-object v3, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v3}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->val$id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    invoke-static {v0}, Lcom/talkweb/twgame/TwGameSDK;->onExposuredNativeAD(Landroid/view/View;)V

    goto/16 :goto_0

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v0

    iget v3, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->val$id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 594
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 595
    sget v3, Lcom/popcap/pvz2cthddev/R$layout;->tw_ad_banner_layout:I

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 596
    sget v3, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_center_layout_below:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 597
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 598
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 599
    iget-object v4, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v4}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v4

    iget v5, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->val$id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    sget v5, Lcom/popcap/pvz2cthddev/R$id;->center_close_below:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 607
    new-instance v5, Lcom/popcap/pvz2cthddev/TWGameAd$7$2;

    invoke-direct {v5, p0}, Lcom/popcap/pvz2cthddev/TWGameAd$7$2;-><init>(Lcom/popcap/pvz2cthddev/TWGameAd$7;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    sget v5, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_center_title_below:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 614
    move-object v5, v3

    check-cast v5, Landroid/view/ViewGroup;

    sget v6, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_center_content_below:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 615
    check-cast v3, Landroid/view/ViewGroup;

    sget v6, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_center_image_below:I

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 616
    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/NativeData;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/NativeData;->getConten()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    invoke-static {v2}, Lcom/popcap/pvz2cthddev/TWGameAd;->initImageLoader(Landroid/app/Activity;)V

    .line 619
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/NativeData;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 620
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v1}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v1

    iget v3, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->val$id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 621
    iget-object v3, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v3}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->val$id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 622
    invoke-static {v0}, Lcom/talkweb/twgame/TwGameSDK;->onExposuredNativeAD(Landroid/view/View;)V

    goto/16 :goto_0

    .line 541
    :cond_2
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v0

    iget v3, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->val$id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 543
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 544
    sget v3, Lcom/popcap/pvz2cthddev/R$layout;->tw_ad_banner_layout:I

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 545
    sget v3, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_bottom_layout:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 546
    sget v4, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_layout:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 550
    iget-object v5, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v5}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v5

    iget v6, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->val$id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    sget v5, Lcom/popcap/pvz2cthddev/R$id;->bottom_close:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 558
    new-instance v5, Lcom/popcap/pvz2cthddev/TWGameAd$7$1;

    invoke-direct {v5, p0}, Lcom/popcap/pvz2cthddev/TWGameAd$7$1;-><init>(Lcom/popcap/pvz2cthddev/TWGameAd$7;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    sget v4, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_center_layout_below:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 567
    sget v4, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_top_layout:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 568
    sget v4, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_top_type1_layout:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 569
    sget v4, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_left_layout:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 570
    sget v4, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_right_layout:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 571
    sget v4, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_center_layout:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 572
    sget v4, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_top_right_layout:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 574
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 575
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x51

    .line 576
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 578
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    sget v5, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_bottom_title:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 579
    move-object v5, v3

    check-cast v5, Landroid/view/ViewGroup;

    sget v6, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_bottom_content:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 580
    check-cast v3, Landroid/view/ViewGroup;

    sget v6, Lcom/popcap/pvz2cthddev/R$id;->tw_ad_banner_bottom_image:I

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 581
    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/NativeData;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/NativeData;->getConten()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    invoke-static {v2}, Lcom/popcap/pvz2cthddev/TWGameAd;->initImageLoader(Landroid/app/Activity;)V

    .line 584
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    invoke-virtual {v1}, Lcom/talkweb/twgame/bean/NativeData;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 585
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v1}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v1

    iget v3, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->val$id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 586
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v1}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v1

    iget v3, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->val$id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 587
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->val$id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/talkweb/twgame/TwGameSDK;->onExposuredNativeAD(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 670
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
