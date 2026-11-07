.class public Lcom/popcap/pvz2cthddev/AndroidSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "AndroidSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;,
        Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidEGLContextFactory;,
        Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;,
        Lcom/popcap/pvz2cthddev/AndroidSurfaceView$Api30FrameRate;,
        Lcom/popcap/pvz2cthddev/AndroidSurfaceView$FPSCounter;
    }
.end annotation


# static fields
.field static DEBUG:Z = true

.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field static LogTAG:Ljava/lang/String; = "SexyEGL"

.field static ShowFPS:Z


# instance fields
.field private mAndroidRenderer:Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;

.field private mGLESVersionSupported:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field public volatile mHighFPS:Z

.field private mOrigAppHeight:I

.field private mOrigAppWidth:I

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mUIEventManager:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

.field private mViewScaleFactor:F

.field private mWindowManager:Landroid/view/WindowManager;

.field public mbDrawingFrames:Z

.field public volatile mbFocusState:Z

.field private mbIsInitialized:Z

.field public mbNotifyOnDrawEventObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/popcap/pvz2cthddev/AndroidUIEventManager;I)V
    .locals 2

    .line 98
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mGLESVersionSupported:I

    .line 81
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mbDrawingFrames:Z

    .line 82
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mbFocusState:Z

    const/high16 v1, 0x3f000000    # 0.5f

    .line 86
    iput v1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mViewScaleFactor:F

    .line 88
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mHighFPS:Z

    .line 99
    iput-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    .line 100
    iput-object p3, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mUIEventManager:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    .line 106
    iput p4, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mGLESVersionSupported:I

    .line 107
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mbIsInitialized:Z

    const/4 p2, 0x1

    .line 109
    invoke-virtual {p0, p2}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->setFocusable(Z)V

    .line 110
    invoke-virtual {p0, p2}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->setFocusableInTouchMode(Z)V

    .line 111
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mOrigAppWidth:I

    .line 112
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mOrigAppHeight:I

    .line 114
    new-instance p3, Landroid/view/GestureDetector;

    iget-object p4, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mUIEventManager:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-direct {p3, p1, p4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 115
    invoke-virtual {p3, p2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 116
    new-instance p2, Landroid/view/ScaleGestureDetector;

    iget-object p3, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mUIEventManager:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-direct {p2, p1, p3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 117
    new-instance p1, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$1;

    invoke-direct {p1, p0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$1;-><init>(Lcom/popcap/pvz2cthddev/AndroidSurfaceView;)V

    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private Graphics_CanSetGLViewScaleFactor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private Graphics_GetGLViewScaleFactor()F
    .locals 1

    .line 188
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mViewScaleFactor:F

    return v0
.end method

.method private Graphics_GetGLViewSysFBO()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method private Graphics_GetPointSizeInPixels()F
    .locals 2

    .line 289
    monitor-enter p0

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 293
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 294
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 296
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 297
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private Graphics_GetScreenSizeInPoints([I)V
    .locals 5

    .line 258
    monitor-enter p0

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 262
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 263
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 275
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 276
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 278
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    .line 281
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v4, 0x0

    aput v0, p1, v4

    mul-float/2addr v2, v1

    add-float/2addr v2, v3

    .line 282
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 283
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private Graphics_SetGLViewScaleFactor(F)V
    .locals 0

    .line 193
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mViewScaleFactor:F

    return-void
.end method

.method private native Native_onDrawFrame()V
.end method

.method private native Native_onSurfaceChanged(II)V
.end method

.method private native Native_onSurfaceCreated()V
.end method

.method static synthetic access$000(Lcom/popcap/pvz2cthddev/AndroidSurfaceView;)Landroid/view/ScaleGestureDetector;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method static synthetic access$100(Lcom/popcap/pvz2cthddev/AndroidSurfaceView;)Landroid/view/GestureDetector;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$200(Lcom/popcap/pvz2cthddev/AndroidSurfaceView;)Lcom/popcap/pvz2cthddev/AndroidUIEventManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mUIEventManager:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/popcap/pvz2cthddev/AndroidSurfaceView;)Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mAndroidRenderer:Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/popcap/pvz2cthddev/AndroidSurfaceView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->Native_onDrawFrame()V

    return-void
.end method

.method static synthetic access$600(Lcom/popcap/pvz2cthddev/AndroidSurfaceView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->Native_onSurfaceCreated()V

    return-void
.end method

.method static synthetic access$700(Lcom/popcap/pvz2cthddev/AndroidSurfaceView;II)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->Native_onSurfaceChanged(II)V

    return-void
.end method

.method private resetFramePacing()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mAndroidRenderer:Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;

    if-eqz v0, :cond_0

    .line 230
    new-instance v0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$2;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$2;-><init>(Lcom/popcap/pvz2cthddev/AndroidSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public Graphics_GetOpenGLESVersion()I
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->Graphics_IsOpenGLES20()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public Graphics_GetScreenSizeInPixels([I)V
    .locals 2

    .line 203
    monitor-enter p0

    .line 205
    :try_start_0
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mOrigAppWidth:I

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 206
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mOrigAppHeight:I

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 207
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Graphics_IsOpenGLES20()Z
    .locals 2

    .line 173
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mGLESVersionSupported:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public HasDrawnFirstFrame()Z
    .locals 1

    .line 468
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mFirstDraw:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public IsHighFPS()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mHighFPS:Z

    return v0
.end method

.method public final IsInitailized()Z
    .locals 1

    .line 304
    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mbIsInitialized:Z

    return v0
.end method

.method public NotifyWindowLostFocus()V
    .locals 2

    .line 462
    const-string v0, "Surface"

    const-string v1, "RENDERMODE_WHEN_DIRTY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 463
    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public SetFPS(Z)V
    .locals 0

    .line 218
    iput-boolean p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mHighFPS:Z

    return-void
.end method

.method public SetFocusState(Z)V
    .locals 1

    .line 450
    iput-boolean p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mbFocusState:Z

    .line 452
    iget-boolean p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mbFocusState:Z

    if-eqz p1, :cond_0

    .line 454
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->resetFramePacing()V

    .line 455
    const-string p1, "Surface"

    const-string v0, "RENDERMODE_CONTINUOUSLY"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 456
    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->setRenderMode(I)V

    :cond_0
    return-void
.end method

.method public SetLayout(II)V
    .locals 3

    .line 244
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ChangedSurfaceW: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "ChangedSurfaceH: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Game"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public SetScreenSizeInPixels(II)V
    .locals 0

    .line 212
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mOrigAppWidth:I

    .line 213
    iput p2, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mOrigAppHeight:I

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 375
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public init(IIIIII)V
    .locals 9

    if-lez p4, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    .line 140
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 147
    :cond_0
    new-instance v0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidEGLContextFactory;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidEGLContextFactory;-><init>(Lcom/popcap/pvz2cthddev/AndroidSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 154
    new-instance v0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;

    iget v8, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mGLESVersionSupported:I

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;-><init>(IIIIIII)V

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 157
    new-instance p1, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;

    invoke-direct {p1, p0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;-><init>(Lcom/popcap/pvz2cthddev/AndroidSurfaceView;)V

    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mAndroidRenderer:Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;

    .line 158
    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x1

    .line 160
    iput-boolean p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mbIsInitialized:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 381
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 383
    const-string v0, "Surface"

    const-string v1, "onAttachedToWindow."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 392
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 394
    const-string v0, "Surface"

    const-string v1, "onDetachedFromWindow."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 310
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 312
    const-string v0, "Surface"

    const-string v1, "onKeyDown."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mUIEventManager:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-virtual {v0, p2}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->HandleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    return v1

    .line 332
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 342
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 344
    const-string v0, "Surface"

    const-string v1, "onKeyUp."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mUIEventManager:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-virtual {v0, p2}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->HandleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 403
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 405
    const-string v0, "Surface"

    const-string v1, "onMeasure."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onMeasure(II)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 440
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 442
    const-string v0, "Surface"

    const-string v1, "onPause."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 425
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 427
    const-string v0, "Surface"

    const-string v1, "onResume."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 431
    sput-boolean v0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mFirstDraw:Z

    const/4 v0, 0x0

    .line 432
    sput v0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$AndroidRenderer;->mDrawCount:I

    .line 433
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->resetFramePacing()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 358
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 360
    const-string v0, "Surface"

    const-string v1, "onTouchEvent."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->SplashScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mUIEventManager:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-virtual {v0, p1}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->HandleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    .line 414
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 416
    const-string v0, "Surface"

    const-string v1, "onWindowVisibilityChanged."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onWindowVisibilityChanged(I)V

    return-void
.end method
