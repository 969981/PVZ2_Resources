.class final Lcom/tw/pay/sdk/adapter/PayTypeAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PayTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/adapter/PayTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewHolder"
.end annotation


# instance fields
.field mImageView:Landroid/widget/ImageView;

.field paytypeBg:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/tw/pay/sdk/adapter/PayTypeAdapter;


# direct methods
.method private constructor <init>(Lcom/tw/pay/sdk/adapter/PayTypeAdapter;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/tw/pay/sdk/adapter/PayTypeAdapter$ViewHolder;->this$0:Lcom/tw/pay/sdk/adapter/PayTypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tw/pay/sdk/adapter/PayTypeAdapter;Lcom/tw/pay/sdk/adapter/PayTypeAdapter$1;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/tw/pay/sdk/adapter/PayTypeAdapter$ViewHolder;-><init>(Lcom/tw/pay/sdk/adapter/PayTypeAdapter;)V

    return-void
.end method
