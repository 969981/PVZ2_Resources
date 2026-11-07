.class Lcom/popcap/pvz2cthddev/TWPurchase$6;
.super Ljava/lang/Object;
.source "TWPurchase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWPurchase;->showDebugLoginDialog(Ljava/util/concurrent/CountDownLatch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/TWPurchase;Landroid/widget/EditText;Landroid/app/Activity;Ljava/util/concurrent/CountDownLatch;Landroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 684
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$6;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iput-object p2, p0, Lcom/popcap/pvz2cthddev/TWPurchase$6;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/popcap/pvz2cthddev/TWPurchase$6;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/popcap/pvz2cthddev/TWPurchase$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p5, p0, Lcom/popcap/pvz2cthddev/TWPurchase$6;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 686
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$6;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 687
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$6;->val$activity:Landroid/app/Activity;

    const-string v0, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 691
    :cond_0
    invoke-static {p1}, Lcom/popcap/pvz2cthddev/TWPurchase;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 692
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 693
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$6;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
