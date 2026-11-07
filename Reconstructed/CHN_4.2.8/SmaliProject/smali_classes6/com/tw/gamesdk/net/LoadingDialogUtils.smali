.class public Lcom/tw/gamesdk/net/LoadingDialogUtils;
.super Ljava/lang/Object;
.source "LoadingDialogUtils.java"


# static fields
.field private static mLoadingDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/ProgressDialog;
    .locals 1

    .line 8
    sget-object v0, Lcom/tw/gamesdk/net/LoadingDialogUtils;->mLoadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 8
    sput-object p0, Lcom/tw/gamesdk/net/LoadingDialogUtils;->mLoadingDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method public static dismiss()V
    .locals 1

    .line 53
    sget-object v0, Lcom/tw/gamesdk/net/LoadingDialogUtils;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/tw/gamesdk/net/LoadingDialogUtils;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/tw/gamesdk/net/LoadingDialogUtils;->mLoadingDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 1

    const-string v0, "\u52a0\u8f7d\u4e2d..."

    .line 16
    invoke-static {p0, v0}, Lcom/tw/gamesdk/net/LoadingDialogUtils;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 26
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 27
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 30
    :cond_1
    new-instance v1, Lcom/tw/gamesdk/net/LoadingDialogUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/tw/gamesdk/net/LoadingDialogUtils$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
