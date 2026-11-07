.class Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;
.super Ljava/lang/Object;
.source "AndroidSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/AndroidSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GraphicsConfigChooser"
.end annotation


# static fields
.field private static EGL_OPENGL_ES2_BIT:I = 0x4

.field private static EGL_OPENGL_ES_BIT:I = 0x1

.field private static s_configAttribs2:[I


# instance fields
.field private mAlphaSize:I

.field private mBlueSize:I

.field private mDepthSize:I

.field private mGLESVersion:I

.field private mGreenSize:I

.field private mRedSize:I

.field private mStencilSize:I

.field private mValue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    .line 551
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->s_configAttribs2:[I

    return-void

    :array_0
    .array-data 4
        0x3024
        0x4
        0x3023
        0x4
        0x3022
        0x4
        0x3040
        0x4
        0x3038
    .end array-data
.end method

.method public constructor <init>(IIIIIII)V
    .locals 0

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->mRedSize:I

    .line 573
    iput p2, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->mGreenSize:I

    .line 574
    iput p3, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->mBlueSize:I

    .line 575
    iput p4, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->mAlphaSize:I

    .line 576
    iput p5, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->mDepthSize:I

    .line 577
    iput p6, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->mStencilSize:I

    .line 579
    iput p7, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->mGLESVersion:I

    const/4 p1, 0x1

    .line 581
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->mValue:[I

    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 692
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->mValue:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    return p1

    :cond_0
    return p5
.end method

.method private printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 9

    const/16 v0, 0x21

    .line 710
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 745
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "EGL_BUFFER_SIZE"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "EGL_ALPHA_SIZE"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v6, "EGL_BLUE_SIZE"

    aput-object v6, v2, v3

    const/4 v3, 0x3

    const-string v6, "EGL_GREEN_SIZE"

    aput-object v6, v2, v3

    const/4 v3, 0x4

    const-string v6, "EGL_RED_SIZE"

    aput-object v6, v2, v3

    const/4 v3, 0x5

    const-string v6, "EGL_DEPTH_SIZE"

    aput-object v6, v2, v3

    const/4 v3, 0x6

    const-string v6, "EGL_STENCIL_SIZE"

    aput-object v6, v2, v3

    const/4 v3, 0x7

    const-string v6, "EGL_CONFIG_CAVEAT"

    aput-object v6, v2, v3

    const/16 v3, 0x8

    const-string v6, "EGL_CONFIG_ID"

    aput-object v6, v2, v3

    const/16 v3, 0x9

    const-string v6, "EGL_LEVEL"

    aput-object v6, v2, v3

    const/16 v3, 0xa

    const-string v6, "EGL_MAX_PBUFFER_HEIGHT"

    aput-object v6, v2, v3

    const/16 v3, 0xb

    const-string v6, "EGL_MAX_PBUFFER_PIXELS"

    aput-object v6, v2, v3

    const/16 v3, 0xc

    const-string v6, "EGL_MAX_PBUFFER_WIDTH"

    aput-object v6, v2, v3

    const/16 v3, 0xd

    const-string v6, "EGL_NATIVE_RENDERABLE"

    aput-object v6, v2, v3

    const/16 v3, 0xe

    const-string v6, "EGL_NATIVE_VISUAL_ID"

    aput-object v6, v2, v3

    const/16 v3, 0xf

    const-string v6, "EGL_NATIVE_VISUAL_TYPE"

    aput-object v6, v2, v3

    const/16 v3, 0x10

    const-string v6, "EGL_PRESERVED_RESOURCES"

    aput-object v6, v2, v3

    const/16 v3, 0x11

    const-string v6, "EGL_SAMPLES"

    aput-object v6, v2, v3

    const/16 v3, 0x12

    const-string v6, "EGL_SAMPLE_BUFFERS"

    aput-object v6, v2, v3

    const/16 v3, 0x13

    const-string v6, "EGL_SURFACE_TYPE"

    aput-object v6, v2, v3

    const/16 v3, 0x14

    const-string v6, "EGL_TRANSPARENT_TYPE"

    aput-object v6, v2, v3

    const/16 v3, 0x15

    const-string v6, "EGL_TRANSPARENT_RED_VALUE"

    aput-object v6, v2, v3

    const/16 v3, 0x16

    const-string v6, "EGL_TRANSPARENT_GREEN_VALUE"

    aput-object v6, v2, v3

    const/16 v3, 0x17

    const-string v6, "EGL_TRANSPARENT_BLUE_VALUE"

    aput-object v6, v2, v3

    const/16 v3, 0x18

    const-string v6, "EGL_BIND_TO_TEXTURE_RGB"

    aput-object v6, v2, v3

    const/16 v3, 0x19

    const-string v6, "EGL_BIND_TO_TEXTURE_RGBA"

    aput-object v6, v2, v3

    const/16 v3, 0x1a

    const-string v6, "EGL_MIN_SWAP_INTERVAL"

    aput-object v6, v2, v3

    const/16 v3, 0x1b

    const-string v6, "EGL_MAX_SWAP_INTERVAL"

    aput-object v6, v2, v3

    const/16 v3, 0x1c

    const-string v6, "EGL_LUMINANCE_SIZE"

    aput-object v6, v2, v3

    const/16 v3, 0x1d

    const-string v6, "EGL_ALPHA_MASK_SIZE"

    aput-object v6, v2, v3

    const/16 v3, 0x1e

    const-string v6, "EGL_COLOR_BUFFER_TYPE"

    aput-object v6, v2, v3

    const/16 v3, 0x1f

    const-string v6, "EGL_RENDERABLE_TYPE"

    aput-object v6, v2, v3

    const/16 v3, 0x20

    const-string v6, "EGL_CONFORMANT"

    aput-object v6, v2, v3

    .line 780
    new-array v3, v5, [I

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_2

    .line 783
    aget v6, v1, v5

    .line 784
    aget-object v7, v2, v5

    .line 785
    invoke-interface {p1, p2, p3, v6, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 787
    sget-object v6, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->LogTAG:Ljava/lang/String;

    aget v8, v3, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "  %s: %d\n"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 791
    :cond_0
    sget-object v6, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->LogTAG:Ljava/lang/String;

    const-string v8, "  %s: failed\n"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :goto_1
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v6

    const/16 v7, 0x3000

    if-eq v6, v7, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x3020
        0x3021
        0x3022
        0x3023
        0x3024
        0x3025
        0x3026
        0x3027
        0x3028
        0x3029
        0x302a
        0x302b
        0x302c
        0x302d
        0x302e
        0x302f
        0x3030
        0x3031
        0x3032
        0x3033
        0x3034
        0x3037
        0x3036
        0x3035
        0x3039
        0x303a
        0x303b
        0x303c
        0x303d
        0x303e
        0x303f
        0x3040
        0x3042
    .end array-data
.end method

.method private printConfigs(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 5

    .line 699
    array-length v0, p3

    .line 700
    sget-object v1, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->LogTAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d configurations"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 703
    sget-object v2, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->LogTAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Configuration %d:\n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    aget-object v2, p3, v1

    invoke-direct {p0, p1, p2, v2}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 9

    const/4 v0, 0x1

    .line 659
    new-array v0, v0, [I

    .line 660
    sget-object v3, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->s_configAttribs2:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    const-string v7, "GraphicsConfigChooser"

    if-nez v1, :cond_0

    .line 662
    const-string v1, "eglChooseConfig get config nums failed."

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    .line 666
    aget v5, v0, v1

    if-lez v5, :cond_3

    .line 673
    new-array v8, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 675
    sget-object v3, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->s_configAttribs2:[I

    move-object v1, p1

    move-object v2, p2

    move-object v4, v8

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 677
    const-string v0, "eglChooseConfig get detail configs failed."

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_1
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 682
    invoke-direct {p0, p1, p2, v8}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->printConfigs(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 685
    :cond_2
    invoke-virtual {p0, p1, p2, v8}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->chooseConfigFromList(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p1

    return-object p1

    .line 670
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No configs match configSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public chooseConfigFromList(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p3

    .line 588
    array-length v8, v7

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    const-string v10, "GraphicsConfigChooser"

    if-ge v9, v8, :cond_2

    aget-object v11, v7, v9

    const/16 v4, 0x3025

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v11

    .line 605
    invoke-direct/range {v0 .. v5}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    const/16 v4, 0x3026

    .line 606
    invoke-direct/range {v0 .. v5}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 609
    iget v1, v6, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->mDepthSize:I

    if-lt v12, v1, :cond_1

    iget v1, v6, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->mStencilSize:I

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x3024

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v11

    .line 613
    invoke-direct/range {v0 .. v5}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    const/16 v4, 0x3023

    .line 614
    invoke-direct/range {v0 .. v5}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    const/16 v4, 0x3022

    .line 615
    invoke-direct/range {v0 .. v5}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    const/16 v4, 0x3021

    .line 616
    invoke-direct/range {v0 .. v5}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 618
    iget v1, v6, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->mRedSize:I

    if-ne v12, v1, :cond_1

    iget v1, v6, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->mGreenSize:I

    if-ne v13, v1, :cond_1

    iget v1, v6, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->mBlueSize:I

    if-ne v14, v1, :cond_1

    iget v1, v6, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->mAlphaSize:I

    if-ne v0, v1, :cond_1

    .line 620
    const-string v0, "found the match config."

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 621
    invoke-direct {p0, v0, v1, v11}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView$GraphicsConfigChooser;->printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    return-object v11

    :cond_1
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 626
    :cond_2
    const-string v0, "can\'t find the match config."

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
