.class Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$3;
.super Ljava/lang/Object;
.source "SexyAppFrameworkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->RemoveSplashScreen()V
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

    .line 307
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$3;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$3;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->SplashScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$3;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$200(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$3;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$200(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;->hide()V

    .line 315
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$3;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$202(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;)Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$3;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$100(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/AndroidSplashScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 321
    iget-object v2, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$3;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {v2}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$100(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/AndroidSplashScreen;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 322
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$3;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$102(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;Lcom/popcap/pvz2cthddev/AndroidSplashScreen;)Lcom/popcap/pvz2cthddev/AndroidSplashScreen;

    :cond_1
    return-void
.end method
