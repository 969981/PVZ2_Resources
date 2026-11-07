.class Lcom/popcap/pvz2cthddev/AndroidSurfaceView$2;
.super Ljava/lang/Object;
.source "AndroidSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->resetFramePacing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/AndroidSurfaceView;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$2;->this$0:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$2;->this$0:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->access$300(Lcom/popcap/pvz2cthddev/AndroidSurfaceView;)Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->resetFramePacing()V

    return-void
.end method
