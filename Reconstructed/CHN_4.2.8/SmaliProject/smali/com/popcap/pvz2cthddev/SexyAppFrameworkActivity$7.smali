.class Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$7;
.super Ljava/lang/Object;
.source "SexyAppFrameworkActivity.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 782
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$7;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    .line 802
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$7;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$500(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/AndroidGameApp;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 804
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$7;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$500(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/AndroidGameApp;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->HandleOnConfigurationChanged(Landroid/content/res/Configuration;II)V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
