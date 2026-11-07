.class Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$2;
.super Ljava/lang/Object;
.source "SexyAppFrameworkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->AddSplashScreen()V
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

    .line 279
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$2;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$2;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$100(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/AndroidSplashScreen;

    move-result-object v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$2;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    new-instance v1, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$2;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    .line 285
    invoke-virtual {v2}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;-><init>(Landroid/content/Context;)V

    .line 284
    invoke-static {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$102(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;Lcom/popcap/pvz2cthddev/AndroidSplashScreen;)Lcom/popcap/pvz2cthddev/AndroidSplashScreen;

    .line 286
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 290
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$2;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$100(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/AndroidSplashScreen;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
