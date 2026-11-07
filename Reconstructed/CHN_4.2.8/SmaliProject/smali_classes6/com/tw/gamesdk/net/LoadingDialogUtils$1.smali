.class final Lcom/tw/gamesdk/net/LoadingDialogUtils$1;
.super Ljava/lang/Object;
.source "LoadingDialogUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/net/LoadingDialogUtils;->show(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/tw/gamesdk/net/LoadingDialogUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/tw/gamesdk/net/LoadingDialogUtils$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 34
    invoke-static {}, Lcom/tw/gamesdk/net/LoadingDialogUtils;->dismiss()V

    .line 36
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/tw/gamesdk/net/LoadingDialogUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/tw/gamesdk/net/LoadingDialogUtils;->access$002(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 37
    invoke-static {}, Lcom/tw/gamesdk/net/LoadingDialogUtils;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/gamesdk/net/LoadingDialogUtils$1;->val$message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tw/gamesdk/net/LoadingDialogUtils$1;->val$message:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "\u52a0\u8f7d\u4e2d..."

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 38
    invoke-static {}, Lcom/tw/gamesdk/net/LoadingDialogUtils;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 39
    invoke-static {}, Lcom/tw/gamesdk/net/LoadingDialogUtils;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 41
    invoke-static {}, Lcom/tw/gamesdk/net/LoadingDialogUtils;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    invoke-static {}, Lcom/tw/gamesdk/net/LoadingDialogUtils;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    return-void
.end method
