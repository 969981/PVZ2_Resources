.class Lcom/popcap/pvz2cthddev/CrashHandler$1$1;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/CrashHandler$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popcap/pvz2cthddev/CrashHandler$1;

.field final synthetic val$progress:Landroid/app/ProgressDialog;

.field final synthetic val$task:Landroid/os/AsyncTask;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/CrashHandler$1;Landroid/os/AsyncTask;Landroid/app/ProgressDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/CrashHandler$1$1;->this$1:Lcom/popcap/pvz2cthddev/CrashHandler$1;

    iput-object p2, p0, Lcom/popcap/pvz2cthddev/CrashHandler$1$1;->val$task:Landroid/os/AsyncTask;

    iput-object p3, p0, Lcom/popcap/pvz2cthddev/CrashHandler$1$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 66
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/CrashHandler$1$1;->val$task:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/CrashHandler$1$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 70
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/CrashHandler$1$1;->val$task:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 71
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/CrashHandler$1$1;->this$1:Lcom/popcap/pvz2cthddev/CrashHandler$1;

    iget-object v2, v2, Lcom/popcap/pvz2cthddev/CrashHandler$1;->this$0:Lcom/popcap/pvz2cthddev/CrashHandler;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/CrashHandler$1$1;->this$1:Lcom/popcap/pvz2cthddev/CrashHandler$1;

    iget-object v2, v2, Lcom/popcap/pvz2cthddev/CrashHandler$1;->this$0:Lcom/popcap/pvz2cthddev/CrashHandler;

    sget v3, Lcom/popcap/pvz2cthddev/R$string;->get_log_failed:I

    .line 72
    invoke-virtual {v2, v3}, Lcom/popcap/pvz2cthddev/CrashHandler;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/popcap/pvz2cthddev/CrashHandler$1$1;->this$1:Lcom/popcap/pvz2cthddev/CrashHandler$1;

    iget-object v3, v3, Lcom/popcap/pvz2cthddev/CrashHandler$1;->this$0:Lcom/popcap/pvz2cthddev/CrashHandler;

    sget v4, Lcom/popcap/pvz2cthddev/R$string;->author_email:I

    invoke-virtual {v3, v4}, Lcom/popcap/pvz2cthddev/CrashHandler;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    .line 74
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
