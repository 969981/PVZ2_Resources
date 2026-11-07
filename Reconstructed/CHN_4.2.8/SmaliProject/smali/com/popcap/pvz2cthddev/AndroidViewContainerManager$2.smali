.class Lcom/popcap/pvz2cthddev/AndroidViewContainerManager$2;
.super Ljava/lang/Object;
.source "AndroidViewContainerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->RemoveViewContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager$2;->this$0:Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager$2;->this$0:Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->access$000(Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;)Lcom/popcap/pvz2cthddev/AndroidViewContainer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager$2;->this$0:Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->access$000(Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;)Lcom/popcap/pvz2cthddev/AndroidViewContainer;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager$2;->this$0:Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->access$002(Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;Lcom/popcap/pvz2cthddev/AndroidViewContainer;)Lcom/popcap/pvz2cthddev/AndroidViewContainer;

    .line 161
    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 164
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 166
    :cond_1
    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->Destroy()V

    .line 169
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager$2;->this$0:Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->Native_CallCloseWebView()V

    return-void
.end method
