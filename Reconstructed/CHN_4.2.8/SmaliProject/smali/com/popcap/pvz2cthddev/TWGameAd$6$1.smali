.class Lcom/popcap/pvz2cthddev/TWGameAd$6$1;
.super Ljava/lang/Object;
.source "TWGameAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWGameAd$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popcap/pvz2cthddev/TWGameAd$6;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/TWGameAd$6;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$6$1;->this$1:Lcom/popcap/pvz2cthddev/TWGameAd$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 359
    invoke-static {p1}, Lcom/talkweb/twgame/TwGameSDK;->onClickNativeAD(Landroid/view/View;)V

    return-void
.end method
