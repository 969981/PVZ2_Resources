.class Lcom/popcap/pvz2cthddev/AndroidViewContainerManager$1;
.super Ljava/lang/Object;
.source "AndroidViewContainerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->AddViewContainer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager$1;->this$0:Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;

    iput-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager$1;->this$0:Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->access$000(Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;)Lcom/popcap/pvz2cthddev/AndroidViewContainer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager$1;->this$0:Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;

    new-instance v1, Lcom/popcap/pvz2cthddev/AndroidViewContainer;

    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager$1;->val$url:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/popcap/pvz2cthddev/AndroidViewContainer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->access$002(Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;Lcom/popcap/pvz2cthddev/AndroidViewContainer;)Lcom/popcap/pvz2cthddev/AndroidViewContainer;

    .line 126
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 131
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager$1;->this$0:Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;

    invoke-static {v1}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->access$000(Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;)Lcom/popcap/pvz2cthddev/AndroidViewContainer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->setBackgroundColor(I)V

    .line 132
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager$1;->this$0:Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;

    invoke-static {v1}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->access$000(Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;)Lcom/popcap/pvz2cthddev/AndroidViewContainer;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x1000000

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager$1;->this$0:Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;

    invoke-static {v1}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->access$000(Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;)Lcom/popcap/pvz2cthddev/AndroidViewContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 135
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager$1;->this$0:Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;

    invoke-static {v2}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->access$000(Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;)Lcom/popcap/pvz2cthddev/AndroidViewContainer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
