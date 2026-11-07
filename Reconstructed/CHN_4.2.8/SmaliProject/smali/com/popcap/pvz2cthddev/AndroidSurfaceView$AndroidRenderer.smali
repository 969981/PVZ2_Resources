.class Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;
.super Ljava/lang/Object;
.source "AndroidSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/AndroidSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidRenderer"
.end annotation


# static fields
.field static gColor:F = 0.0f

.field static mDrawCount:I = 0x0

.field static mFirstDraw:Z = true

.field static mHaveSurfaceChanged:Z


# instance fields
.field mFPS:Lcom/popcap/pvz2cthddev/AndroidSurfaceView$FPSCounter;

.field private final mFramePacer:Lcom/popcap/pvz2cthddev/AndroidFramePacer;

.field mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

.field private mRequestedFrameRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/popcap/pvz2cthddev/AndroidSurfaceView;)V
    .locals 1

    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 802
    iput-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mFPS:Lcom/popcap/pvz2cthddev/AndroidSurfaceView$FPSCounter;

    .line 808
    new-instance v0, Lcom/popcap/pvz2cthddev/AndroidFramePacer;

    invoke-direct {v0}, Lcom/popcap/pvz2cthddev/AndroidFramePacer;-><init>()V

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mFramePacer:Lcom/popcap/pvz2cthddev/AndroidFramePacer;

    const/4 v0, 0x0

    .line 809
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mRequestedFrameRate:I

    .line 815
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    return-void
.end method

.method private paceFrame(I)V
    .locals 8

    .line 854
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mFramePacer:Lcom/popcap/pvz2cthddev/AndroidFramePacer;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/popcap/pvz2cthddev/AndroidFramePacer;->nextFrameDeadline(IJ)J

    move-result-wide v0

    const/4 p1, 0x0

    .line 857
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const-wide/32 v4, 0xf4240

    .line 861
    :try_start_0
    div-long v6, v2, v4

    rem-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v6, v7, v2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 870
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-void
.end method

.method private requestDisplayFrameRate(I)V
    .locals 2

    .line 826
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mRequestedFrameRate:I

    if-ne v0, p1, :cond_0

    return-void

    .line 829
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    .line 831
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 832
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 836
    :cond_1
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mRequestedFrameRate:I

    .line 839
    :try_start_0
    invoke-static {v0, p1}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$Api30FrameRate;->setFrameRate(Landroid/view/Surface;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 843
    :goto_0
    sget-object v0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->LogTAG:Ljava/lang/String;

    const-string v1, "Unable to request display frame rate"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 848
    :cond_2
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mRequestedFrameRate:I

    :goto_1
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    .line 879
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mbDrawingFrames:Z

    .line 888
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    iget-object p1, p1, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mbNotifyOnDrawEventObject:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 890
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    iget-object p1, p1, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mbNotifyOnDrawEventObject:Ljava/lang/Object;

    monitor-enter p1

    .line 892
    :try_start_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    iget-object v0, v0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mbNotifyOnDrawEventObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 893
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    iput-object v1, v0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mbNotifyOnDrawEventObject:Ljava/lang/Object;

    .line 896
    const-string v0, "Surface"

    const-string v1, "setRenderMode RENDERMODE_WHEN_DIRTY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-virtual {v0, v2}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->setRenderMode(I)V

    .line 898
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->resetFramePacing()V

    .line 899
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    .line 901
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 903
    :cond_0
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    iget-boolean p1, p1, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mbFocusState:Z

    if-nez p1, :cond_1

    .line 910
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->resetFramePacing()V

    return-void

    .line 914
    :cond_1
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    iget-boolean p1, p1, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mHighFPS:Z

    if-eqz p1, :cond_2

    const/16 p1, 0x3c

    goto :goto_0

    :cond_2
    const/16 p1, 0x1e

    .line 915
    :goto_0
    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->requestDisplayFrameRate(I)V

    .line 916
    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->paceFrame(I)V

    .line 918
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-static {p1}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->access$400(Lcom/popcap/pvz2cthddev/AndroidSurfaceView;)V

    .line 920
    sget p1, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mDrawCount:I

    add-int/2addr p1, v0

    sput p1, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mDrawCount:I

    .line 922
    sget-boolean v3, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mFirstDraw:Z

    if-ne v3, v0, :cond_3

    const/16 v0, 0xa

    if-le p1, v0, :cond_3

    .line 924
    sput-boolean v2, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mFirstDraw:Z

    .line 925
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->RemoveSplashScreen()V

    .line 938
    :cond_3
    sget-boolean p1, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->ShowFPS:Z

    if-eqz p1, :cond_5

    .line 940
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mFPS:Lcom/popcap/pvz2cthddev/AndroidSurfaceView$FPSCounter;

    if-nez p1, :cond_4

    .line 942
    new-instance p1, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$FPSCounter;

    invoke-direct {p1, v1}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$FPSCounter;-><init>(Lcom/popcap/pvz2cthddev/AndroidSurfaceView$1;)V

    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mFPS:Lcom/popcap/pvz2cthddev/AndroidSurfaceView$FPSCounter;

    .line 944
    :cond_4
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mFPS:Lcom/popcap/pvz2cthddev/AndroidSurfaceView$FPSCounter;

    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$FPSCounter;->logFrame()V

    :cond_5
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    .line 963
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->resetFramePacing()V

    .line 964
    sget-boolean p1, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 966
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "onSurfaceChanged - Native_onSurfaceChanged :: %d %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Surface"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_0
    sget-boolean p1, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mHaveSurfaceChanged:Z

    if-nez p1, :cond_1

    .line 971
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-static {p1, p2, p3}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->access$700(Lcom/popcap/pvz2cthddev/AndroidSurfaceView;II)V

    const/4 p1, 0x1

    .line 972
    sput-boolean p1, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mHaveSurfaceChanged:Z

    :cond_1
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 953
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->resetFramePacing()V

    .line 954
    sget-boolean p1, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 956
    const-string p1, "Surface"

    const-string p2, "onSurfaceCreated - Native_onSurfaceCreated"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_0
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-static {p1}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->access$600(Lcom/popcap/pvz2cthddev/AndroidSurfaceView;)V

    return-void
.end method

.method resetFramePacing()V
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mFramePacer:Lcom/popcap/pvz2cthddev/AndroidFramePacer;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidFramePacer;->reset()V

    const/4 v0, 0x0

    .line 821
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mRequestedFrameRate:I

    return-void
.end method
