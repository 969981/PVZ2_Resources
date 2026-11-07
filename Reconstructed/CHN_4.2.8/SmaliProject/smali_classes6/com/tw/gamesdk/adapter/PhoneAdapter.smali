.class public Lcom/tw/gamesdk/adapter/PhoneAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tw/gamesdk/adapter/PhoneAdapter$OnPhoneItemClickListener;,
        Lcom/tw/gamesdk/adapter/PhoneAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private listener:Lcom/tw/gamesdk/adapter/PhoneAdapter$OnPhoneItemClickListener;

.field private phoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tw/gamesdk/bean/SimpleUserData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tw/gamesdk/bean/SimpleUserData;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/tw/gamesdk/adapter/PhoneAdapter;->phoneList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/gamesdk/adapter/PhoneAdapter;)Lcom/tw/gamesdk/adapter/PhoneAdapter$OnPhoneItemClickListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/tw/gamesdk/adapter/PhoneAdapter;->listener:Lcom/tw/gamesdk/adapter/PhoneAdapter$OnPhoneItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tw/gamesdk/adapter/PhoneAdapter;)Ljava/util/List;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/tw/gamesdk/adapter/PhoneAdapter;->phoneList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/tw/gamesdk/adapter/PhoneAdapter;->phoneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/tw/gamesdk/adapter/PhoneAdapter;->phoneList:Ljava/util/List;

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
    .locals 3

    if-nez p2, :cond_0

    .line 49
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 50
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "twgame_login_quick_view_item"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 51
    new-instance v0, Lcom/tw/gamesdk/adapter/PhoneAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/tw/gamesdk/adapter/PhoneAdapter$ViewHolder;-><init>()V

    .line 52
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "twgame_login_quick_item_phone"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/tw/gamesdk/adapter/PhoneAdapter$ViewHolder;->tvPhone:Landroid/widget/TextView;

    .line 53
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v1, "twgame_login_quick_item_clean"

    invoke-static {p3, v1}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, v0, Lcom/tw/gamesdk/adapter/PhoneAdapter$ViewHolder;->imgClean:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/tw/gamesdk/adapter/PhoneAdapter$ViewHolder;

    .line 59
    :goto_0
    iget-object p3, p0, Lcom/tw/gamesdk/adapter/PhoneAdapter;->phoneList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {p3}, Lcom/tw/gamesdk/bean/SimpleUserData;->getPhone()Ljava/lang/String;

    move-result-object p3

    .line 62
    iget-object v1, v0, Lcom/tw/gamesdk/adapter/PhoneAdapter$ViewHolder;->tvPhone:Landroid/widget/TextView;

    invoke-static {p3}, Lcom/tw/gamesdk/utils/DataMaskingUtil;->maskPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    new-instance p3, Lcom/tw/gamesdk/adapter/PhoneAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/tw/gamesdk/adapter/PhoneAdapter$1;-><init>(Lcom/tw/gamesdk/adapter/PhoneAdapter;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object p3, v0, Lcom/tw/gamesdk/adapter/PhoneAdapter$ViewHolder;->imgClean:Landroid/widget/ImageView;

    new-instance v0, Lcom/tw/gamesdk/adapter/PhoneAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/tw/gamesdk/adapter/PhoneAdapter$2;-><init>(Lcom/tw/gamesdk/adapter/PhoneAdapter;I)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public setOnPhoneItemClickListener(Lcom/tw/gamesdk/adapter/PhoneAdapter$OnPhoneItemClickListener;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/tw/gamesdk/adapter/PhoneAdapter;->listener:Lcom/tw/gamesdk/adapter/PhoneAdapter$OnPhoneItemClickListener;

    return-void
.end method
