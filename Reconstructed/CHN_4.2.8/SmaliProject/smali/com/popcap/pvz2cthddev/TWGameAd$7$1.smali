.class Lcom/popcap/pvz2cthddev/TWGameAd$7$1;
.super Ljava/lang/Object;
.source "TWGameAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWGameAd$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popcap/pvz2cthddev/TWGameAd$7;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/TWGameAd$7;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7$1;->this$1:Lcom/popcap/pvz2cthddev/TWGameAd$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 560
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7$1;->this$1:Lcom/popcap/pvz2cthddev/TWGameAd$7;

    iget-object p1, p1, Lcom/popcap/pvz2cthddev/TWGameAd$7;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$7$1;->this$1:Lcom/popcap/pvz2cthddev/TWGameAd$7;

    iget v0, v0, Lcom/popcap/pvz2cthddev/TWGameAd$7;->val$id:I

    invoke-virtual {p1, v0}, Lcom/popcap/pvz2cthddev/TWGameAd;->CloseBanner(I)V

    return-void
.end method
