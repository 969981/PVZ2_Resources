.class public Lcom/tw/pay/sdk/adapter/PayTypeAdapter;
.super Landroid/widget/BaseAdapter;
.source "PayTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tw/pay/sdk/adapter/PayTypeAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/talkweb/sdk/orm/model/PaywayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/talkweb/sdk/orm/model/PaywayInfo;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/pay/sdk/adapter/PayTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 26
    iput-object p1, p0, Lcom/tw/pay/sdk/adapter/PayTypeAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/tw/pay/sdk/adapter/PayTypeAdapter;->mDatas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/tw/pay/sdk/adapter/PayTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/tw/pay/sdk/adapter/PayTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 49
    sget-boolean p2, Lcom/tw/pay/sdk/TwPaySetting;->isLandScape:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 50
    iget-object p2, p0, Lcom/tw/pay/sdk/adapter/PayTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/tw/pay/sdk/adapter/PayTypeAdapter;->mContext:Landroid/content/Context;

    const-string v3, "paytype_item"

    .line 51
    invoke-static {v2, v3}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 50
    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 54
    :cond_0
    iget-object p2, p0, Lcom/tw/pay/sdk/adapter/PayTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/tw/pay/sdk/adapter/PayTypeAdapter;->mContext:Landroid/content/Context;

    const-string v3, "paytype_item_port"

    .line 55
    invoke-static {v2, v3}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 54
    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 58
    :goto_0
    new-instance p3, Lcom/tw/pay/sdk/adapter/PayTypeAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Lcom/tw/pay/sdk/adapter/PayTypeAdapter$ViewHolder;-><init>(Lcom/tw/pay/sdk/adapter/PayTypeAdapter;Lcom/tw/pay/sdk/adapter/PayTypeAdapter$1;)V

    .line 59
    iget-object v1, p0, Lcom/tw/pay/sdk/adapter/PayTypeAdapter;->mContext:Landroid/content/Context;

    const-string v2, "imageView1"

    .line 60
    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/tw/pay/sdk/adapter/PayTypeAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 61
    iget-object v1, p0, Lcom/tw/pay/sdk/adapter/PayTypeAdapter;->mContext:Landroid/content/Context;

    const-string v2, "paytype_bg"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p3, Lcom/tw/pay/sdk/adapter/PayTypeAdapter$ViewHolder;->paytypeBg:Landroid/widget/LinearLayout;

    .line 64
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tw/pay/sdk/adapter/PayTypeAdapter$ViewHolder;

    .line 68
    :goto_1
    iget-object v1, p0, Lcom/tw/pay/sdk/adapter/PayTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/talkweb/sdk/orm/model/PaywayInfo;

    .line 75
    invoke-virtual {p1}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->getPayWayId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "9"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    iget-object p1, p0, Lcom/tw/pay/sdk/adapter/PayTypeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/adapter/PayTypeAdapter;->mContext:Landroid/content/Context;

    const-string v1, "zf_butn1"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_2

    .line 77
    :cond_2
    invoke-virtual {p1}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->getPayWayId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "10"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    iget-object p1, p0, Lcom/tw/pay/sdk/adapter/PayTypeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/adapter/PayTypeAdapter;->mContext:Landroid/content/Context;

    const-string v1, "zf_butn_wx"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 79
    :cond_3
    invoke-virtual {p1}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->getPayWayId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "11"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    iget-object p1, p0, Lcom/tw/pay/sdk/adapter/PayTypeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/adapter/PayTypeAdapter;->mContext:Landroid/content/Context;

    const-string v1, "zf_butn_wx3"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 81
    :cond_4
    invoke-virtual {p1}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->getPayWayId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "12"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 82
    iget-object p1, p0, Lcom/tw/pay/sdk/adapter/PayTypeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/adapter/PayTypeAdapter;->mContext:Landroid/content/Context;

    const-string v1, "zf_butn3"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 83
    :cond_5
    invoke-virtual {p1}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->getPayWayId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "13"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 84
    iget-object p1, p0, Lcom/tw/pay/sdk/adapter/PayTypeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/adapter/PayTypeAdapter;->mContext:Landroid/content/Context;

    const-string v1, "zf_butn13"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 97
    iget-object p1, p3, Lcom/tw/pay/sdk/adapter/PayTypeAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_7
    return-object p2
.end method
