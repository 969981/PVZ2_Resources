.class Lcom/popcap/pvz2cthddev/AndroidSurfaceView$1;
.super Ljava/lang/Object;
.source "AndroidSurfaceView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/AndroidSurfaceView;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/popcap/pvz2cthddev/AndroidUIEventManager;I)V
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

    .line 118
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$1;->this$0:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 122
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->SplashScreenShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$1;->this$0:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-static {p1}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->access$000(Lcom/popcap/pvz2cthddev/AndroidSurfaceView;)Landroid/view/ScaleGestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$1;->this$0:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->access$100(Lcom/popcap/pvz2cthddev/AndroidSurfaceView;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr p1, v0

    .line 130
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$1;->this$0:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->access$200(Lcom/popcap/pvz2cthddev/AndroidSurfaceView;)Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->HandleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1
.end method
