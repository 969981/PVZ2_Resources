.class Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidEGLContextFactory;
.super Ljava/lang/Object;
.source "AndroidSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/AndroidSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidEGLContextFactory"
.end annotation


# static fields
.field private static EGL_CONTEXT_CLIENT_VERSION:I = 0x3098


# instance fields
.field private mView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/popcap/pvz2cthddev/AndroidSurfaceView;)V
    .locals 0

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidEGLContextFactory;->mView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    return-void
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 3

    .line 537
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 539
    sget-object v1, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->LogTAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%s: EGL error: 0x%x"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 4

    .line 503
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidEGLContextFactory;->mView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->Graphics_GetOpenGLESVersion()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x3

    .line 509
    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 510
    sget v3, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidEGLContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v3, v1, v2

    const/4 v2, 0x1

    .line 511
    aput v0, v1, v2

    const/4 v0, 0x2

    const/16 v2, 0x3038

    .line 512
    aput v2, v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 515
    :goto_0
    const-string v0, "Before eglCreateContext"

    invoke-static {v0, p1}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidEGLContextFactory;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 517
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p2

    .line 518
    sget-object p3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne p2, p3, :cond_1

    .line 520
    const-string p3, "After eglCreateContext"

    invoke-static {p3, p1}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidEGLContextFactory;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    :cond_1
    return-object p2
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1

    .line 528
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq p3, v0, :cond_0

    .line 530
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    :cond_0
    return-void
.end method
