.class Lcom/popcap/pvz2cthddev/CrashHandler$1;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/CrashHandler;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/CrashHandler;

.field final synthetic val$b:Landroid/widget/Button;

.field final synthetic val$dir:Ljava/lang/String;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/CrashHandler;Ljava/lang/String;Ljava/lang/String;Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/CrashHandler$1;->this$0:Lcom/popcap/pvz2cthddev/CrashHandler;

    iput-object p2, p0, Lcom/popcap/pvz2cthddev/CrashHandler$1;->val$dir:Ljava/lang/String;

    iput-object p3, p0, Lcom/popcap/pvz2cthddev/CrashHandler$1;->val$fileName:Ljava/lang/String;

    iput-object p4, p0, Lcom/popcap/pvz2cthddev/CrashHandler$1;->val$b:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 55
    new-instance p1, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/CrashHandler$1;->this$0:Lcom/popcap/pvz2cthddev/CrashHandler;

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 56
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/CrashHandler$1;->this$0:Lcom/popcap/pvz2cthddev/CrashHandler;

    sget v1, Lcom/popcap/pvz2cthddev/R$string;->getting_log:I

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/CrashHandler;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 57
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 59
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 62
    :try_start_0
    new-instance v1, Lcom/popcap/pvz2cthddev/LogTask;

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/CrashHandler$1;->this$0:Lcom/popcap/pvz2cthddev/CrashHandler;

    iget-object v3, p0, Lcom/popcap/pvz2cthddev/CrashHandler$1;->val$dir:Ljava/lang/String;

    iget-object v4, p0, Lcom/popcap/pvz2cthddev/CrashHandler$1;->val$fileName:Ljava/lang/String;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/popcap/pvz2cthddev/LogTask;-><init>(Landroid/app/Activity;Landroid/app/ProgressDialog;Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/popcap/pvz2cthddev/LogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/CrashHandler$1;->val$b:Landroid/widget/Button;

    new-instance v2, Lcom/popcap/pvz2cthddev/CrashHandler$1$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/popcap/pvz2cthddev/CrashHandler$1$1;-><init>(Lcom/popcap/pvz2cthddev/CrashHandler$1;Landroid/os/AsyncTask;Landroid/app/ProgressDialog;)V

    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/Button;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 80
    const-string v0, "CrashHandler"

    const-string v1, "CrashHandler Exception "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
