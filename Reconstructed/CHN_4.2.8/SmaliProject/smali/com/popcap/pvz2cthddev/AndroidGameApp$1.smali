.class Lcom/popcap/pvz2cthddev/AndroidGameApp$1;
.super Ljava/lang/Object;
.source "AndroidGameApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/AndroidGameApp;->UI_ShowAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/AndroidGameApp;

.field final synthetic val$i_exitApp:Z

.field final synthetic val$i_msg:Ljava/lang/String;

.field final synthetic val$i_ok:Ljava/lang/String;

.field final synthetic val$i_title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/AndroidGameApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 774
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp$1;->this$0:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    iput-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp$1;->val$i_title:Ljava/lang/String;

    iput-object p3, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp$1;->val$i_msg:Ljava/lang/String;

    iput-object p4, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp$1;->val$i_ok:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp$1;->val$i_exitApp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 776
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp$1;->this$0:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    invoke-static {v1}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->access$100(Lcom/popcap/pvz2cthddev/AndroidGameApp;)Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp$1;->val$i_title:Ljava/lang/String;

    .line 777
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp$1;->val$i_msg:Ljava/lang/String;

    .line 778
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 779
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp$1;->val$i_ok:Ljava/lang/String;

    new-instance v2, Lcom/popcap/pvz2cthddev/AndroidGameApp$1$1;

    invoke-direct {v2, p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp$1$1;-><init>(Lcom/popcap/pvz2cthddev/AndroidGameApp$1;)V

    .line 780
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 791
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
