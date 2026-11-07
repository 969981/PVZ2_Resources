.class public Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;
.super Ljava/lang/Object;
.source "SexyAppFrameworkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomToast"
.end annotation


# static fields
.field public static final LENGTH_MAX:I = -0x1


# instance fields
.field private mCanceled:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mToast:Landroid/widget/Toast;

.field final synthetic this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;


# direct methods
.method public constructor <init>(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;Landroid/content/Context;)V
    .locals 1

    .line 193
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;-><init>(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 186
    iput-boolean p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;->mCanceled:Z

    .line 198
    iput-object p2, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;->mContext:Landroid/content/Context;

    .line 199
    iput-object p3, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;->mHandler:Landroid/os/Handler;

    .line 200
    new-instance p1, Landroid/widget/Toast;

    iget-object p2, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;->mToast:Landroid/widget/Toast;

    const/16 p2, 0x77

    const/4 p3, 0x0

    .line 201
    invoke-virtual {p1, p2, p3, p3}, Landroid/widget/Toast;->setGravity(III)V

    return-void
.end method

.method static synthetic access$000(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;->showUntilCancel()V

    return-void
.end method

.method private showUntilCancel()V
    .locals 4

    .line 228
    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;->mCanceled:Z

    if-eqz v0, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 231
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast$1;

    invoke-direct {v1, p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast$1;-><init>(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;)V

    const-wide/16 v2, 0xdb1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x1

    .line 218
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;->mCanceled:Z

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;->mCanceled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public show(Landroid/view/View;I)V
    .locals 0

    .line 205
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p2, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 206
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x400

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 207
    iget-boolean p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;->mCanceled:Z

    if-eqz p1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;->mToast:Landroid/widget/Toast;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setDuration(I)V

    const/4 p1, 0x0

    .line 210
    iput-boolean p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;->mCanceled:Z

    .line 211
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;->showUntilCancel()V

    :cond_0
    return-void
.end method
