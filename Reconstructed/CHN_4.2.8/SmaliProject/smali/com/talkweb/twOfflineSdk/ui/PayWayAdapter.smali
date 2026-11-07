.class public Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;
.super Landroid/widget/BaseAdapter;
.source "PayWayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private goodsPayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/talkweb/twOfflineSdk/bean/PayWay;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/talkweb/twOfflineSdk/bean/PayWay;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->goodsPayList:Ljava/util/List;

    return-void
.end method

.method public static readBitMap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 156
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 157
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    .line 158
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 159
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    const/4 p1, 0x0

    .line 162
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private setSellOff(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter$ViewHolder;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "sellOff is null"

    .line 127
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "100"

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 131
    rem-int/lit8 v1, v0, 0xa

    if-nez v1, :cond_1

    .line 132
    iget-object p1, p2, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter$ViewHolder;->mOffText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p2, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter$ViewHolder;->mOffText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :goto_0
    iget-object p1, p2, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter$ViewHolder;->mLayout:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 138
    :cond_2
    iget-object p1, p2, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter$ViewHolder;->mLayout:Landroid/widget/FrameLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->goodsPayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->goodsPayList:Ljava/util/List;

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

    const-string v0, "tw_zxzf"

    if-nez p2, :cond_1

    .line 60
    iget-object p2, p0, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->isLandScape(Landroid/content/Context;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 61
    iget-object p2, p0, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->mContext:Landroid/content/Context;

    const-string v3, "tw_offline_paytype_item"

    .line 62
    invoke-static {v2, v3}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 65
    :cond_0
    iget-object p2, p0, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->mContext:Landroid/content/Context;

    const-string v3, "tw_offline_paytype_item_port"

    invoke-static {v2, v3}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 68
    :goto_0
    new-instance p3, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter$ViewHolder;-><init>(Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter$1;)V

    .line 69
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->mContext:Landroid/content/Context;

    const-string v2, "imageView1"

    .line 70
    invoke-static {v1, v2}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 71
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->mContext:Landroid/content/Context;

    const-string v2, "off_layout"

    .line 72
    invoke-static {v1, v2}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p3, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter$ViewHolder;->mLayout:Landroid/widget/FrameLayout;

    .line 73
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->mContext:Landroid/content/Context;

    const-string v2, "off_text"

    .line 74
    invoke-static {v1, v2}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 73
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter$ViewHolder;->mOffText:Landroid/widget/TextView;

    .line 75
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter$ViewHolder;

    .line 79
    :goto_1
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->goodsPayList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/talkweb/twOfflineSdk/bean/PayWay;

    .line 84
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getOperators()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 85
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getOperators()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil;->OPERATOR_THIRD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 86
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->mContext:Landroid/content/Context;

    const-string v0, "tw_hfzf"

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->readBitMap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 88
    iget-object v0, p3, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    iget-object p1, p3, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter$ViewHolder;->mLayout:Landroid/widget/FrameLayout;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    .line 94
    :cond_2
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getSelloff()Ljava/lang/String;

    move-result-object v1

    .line 97
    :try_start_0
    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/SDKConfig;->getTwOfflineSDKInstance(Landroid/content/Context;)Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->getPayIconByType(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 109
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->readBitMap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 110
    iget-object v0, p3, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 113
    :cond_3
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->readBitMap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 115
    iget-object v0, p3, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    :goto_2
    invoke-direct {p0, v1, p3}, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->setSellOff(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter$ViewHolder;)V

    :goto_3
    return-object p2

    :catch_0
    move-exception p1

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "twOfflineSDK\u83b7\u53d6\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter;->readBitMap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 102
    iget-object p3, p3, Lcom/talkweb/twOfflineSdk/ui/PayWayAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p2
.end method
