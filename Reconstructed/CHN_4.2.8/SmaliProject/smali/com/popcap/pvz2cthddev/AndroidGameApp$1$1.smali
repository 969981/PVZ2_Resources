.class Lcom/popcap/pvz2cthddev/AndroidGameApp$1$1;
.super Ljava/lang/Object;
.source "AndroidGameApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/AndroidGameApp$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popcap/pvz2cthddev/AndroidGameApp$1;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/AndroidGameApp$1;)V
    .locals 0

    .line 780
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp$1$1;->this$1:Lcom/popcap/pvz2cthddev/AndroidGameApp$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 783
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp$1$1;->this$1:Lcom/popcap/pvz2cthddev/AndroidGameApp$1;

    iget-boolean p2, p2, Lcom/popcap/pvz2cthddev/AndroidGameApp$1;->val$i_exitApp:Z

    if-eqz p2, :cond_0

    .line 785
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp$1$1;->this$1:Lcom/popcap/pvz2cthddev/AndroidGameApp$1;

    iget-object p2, p2, Lcom/popcap/pvz2cthddev/AndroidGameApp$1;->this$0:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    invoke-static {p2}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->access$000(Lcom/popcap/pvz2cthddev/AndroidGameApp;)V

    .line 788
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
