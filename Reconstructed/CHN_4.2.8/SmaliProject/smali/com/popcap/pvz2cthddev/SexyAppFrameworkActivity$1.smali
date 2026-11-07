.class Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$1;
.super Ljava/lang/Object;
.source "SexyAppFrameworkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->AddSplashScreenStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$1;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 249
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$1;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$100(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/AndroidSplashScreen;

    move-result-object v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$1;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    new-instance v1, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$1;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    .line 252
    invoke-virtual {v2}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;-><init>(Landroid/content/Context;)V

    .line 251
    invoke-static {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$102(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;Lcom/popcap/pvz2cthddev/AndroidSplashScreen;)Lcom/popcap/pvz2cthddev/AndroidSplashScreen;

    .line 256
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$1;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 257
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 258
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$1;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$100(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/AndroidSplashScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 260
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$1;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    new-instance v2, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;

    iget-object v3, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$1;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v3}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;-><init>(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$202(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;)Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;

    .line 261
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$1;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$200(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;->show(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
