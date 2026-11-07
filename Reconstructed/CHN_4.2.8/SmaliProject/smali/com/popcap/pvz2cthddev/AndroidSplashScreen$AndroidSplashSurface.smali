.class Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;
.super Landroid/view/SurfaceView;
.source "AndroidSplashScreen.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/AndroidSplashScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidSplashSurface"
.end annotation


# instance fields
.field private mBGBitmap:Landroid/graphics/Bitmap;

.field private mBGBitmapTitle:Landroid/graphics/Bitmap;

.field private mBarBgMaxHeight:I

.field private mBarBgMaxWidth:I

.field private mBarMaxHeight:I

.field private mBarMaxWidth:I

.field private mCurrentBarBgHeight:I

.field private mCurrentBarBgWidth:I

.field private mCurrentBarHeight:I

.field private mCurrentBarWidth:I

.field private mHeight:I

.field private mProgressBar:Landroid/graphics/Bitmap;

.field private mProgressBarBg:Landroid/graphics/Bitmap;

.field private mScreenMaxHeight:I

.field private mScreenMaxWidth:I

.field private mTextPaint1:Landroid/text/TextPaint;

.field private mTextPaint2:Landroid/text/TextPaint;

.field private mUpdateCount:I

.field private mValue:I

.field private mValueX:I

.field private mWidth:I

.field final synthetic this$0:Lcom/popcap/pvz2cthddev/AndroidSplashScreen;


# direct methods
.method public constructor <init>(Lcom/popcap/pvz2cthddev/AndroidSplashScreen;Landroid/content/Context;)V
    .locals 1

    .line 134
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->this$0:Lcom/popcap/pvz2cthddev/AndroidSplashScreen;

    .line 135
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 138
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/4 p1, 0x0

    .line 140
    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->setWillNotDraw(Z)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->setVisibility(I)V

    const/4 p2, 0x0

    .line 143
    iput-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mProgressBarBg:Landroid/graphics/Bitmap;

    .line 144
    iput-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mProgressBar:Landroid/graphics/Bitmap;

    const/4 v0, 0x4

    .line 145
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mValueX:I

    .line 147
    iput-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mBGBitmap:Landroid/graphics/Bitmap;

    const/4 p2, -0x1

    .line 148
    iput p2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mWidth:I

    .line 149
    iput p2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mHeight:I

    .line 151
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mValue:I

    .line 152
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mUpdateCount:I

    const/16 p2, 0xa00

    .line 154
    iput p2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mScreenMaxWidth:I

    const/16 p2, 0x6b3

    .line 155
    iput p2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mScreenMaxHeight:I

    .line 157
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mBarMaxWidth:I

    .line 158
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mBarMaxHeight:I

    .line 159
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mCurrentBarWidth:I

    .line 160
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mCurrentBarHeight:I

    .line 162
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mBarBgMaxWidth:I

    .line 163
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mBarBgMaxHeight:I

    .line 164
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mCurrentBarBgWidth:I

    .line 165
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mCurrentBarBgHeight:I

    return-void
.end method

.method private RenderPorgressBarBackground(Landroid/graphics/Canvas;)V
    .locals 5

    .line 285
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mWidth:I

    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mCurrentBarBgWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 286
    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mHeight:I

    int-to-double v1, v1

    const-wide v3, 0x3fec28f5c28f5c29L    # 0.88

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-static {}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->access$000()I

    move-result v2

    sub-int/2addr v1, v2

    .line 288
    iget-object v2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mProgressBarBg:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private RenderProgressBar(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIIII)V
    .locals 2

    if-ge p9, p5, :cond_0

    goto :goto_0

    :cond_0
    move p9, p5

    .line 303
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr p5, p7

    add-int v1, p8, p6

    invoke-direct {v0, p7, p8, p5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 304
    new-instance p5, Landroid/graphics/Rect;

    add-int/2addr p9, p3

    add-int/2addr p6, p4

    invoke-direct {p5, p3, p4, p9, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p3, 0x0

    .line 306
    invoke-virtual {p1, p2, v0, p5, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 308
    new-instance p2, Landroid/graphics/Rect;

    iget p3, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mWidth:I

    const/4 p5, 0x0

    invoke-direct {p2, p5, p4, p3, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 310
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    int-to-float p3, p3

    invoke-static {}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->access$100()I

    move-result p5

    sub-int p5, p4, p5

    int-to-float p5, p5

    iget-object p6, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mTextPaint1:Landroid/text/TextPaint;

    const-string p7, "\u89e3\u538b\u9700\u8981\u4e00\u5b9a\u65f6\u95f4\uff0c\u8bf7\u8010\u5fc3\u7b49\u5f85"

    invoke-virtual {p1, p7, p3, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 313
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "\u6b63\u5728\u89e3\u538b\u6587\u4ef6"

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p5, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->mCurrentDecompressStage:I

    add-int/lit8 p5, p5, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, "/6\uff0c\u5269\u4f59\u65f6\u95f4\uff08\u9884\u8ba1\uff09\uff1a"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    sget p5, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->mLeftDecompressTime:I

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, "\u79d2"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 314
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    invoke-static {}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->access$200()I

    move-result p5

    add-int/2addr p4, p5

    int-to-float p4, p4

    iget-object p5, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mTextPaint2:Landroid/text/TextPaint;

    invoke-virtual {p1, p3, p2, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public DatafileIsExists()Z
    .locals 4

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->GetUserDataFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/initrsb.tag.smf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->GetExternalFilesDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 324
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mBGBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mProgressBarBg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mProgressBar:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 328
    :cond_0
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->GetSplashScreenBackgroudColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 330
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mWidth:I

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mBGBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 331
    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mHeight:I

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mBGBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 332
    sget-boolean v2, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->mIsFirstInit:Z

    if-eqz v2, :cond_1

    .line 334
    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mHeight:I

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mBGBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v1, v1

    const-wide v3, 0x3fdc28f5c28f5c29L    # 0.44

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-static {}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->access$300()I

    move-result v2

    sub-int/2addr v1, v2

    .line 336
    :cond_1
    iget-object v2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mBGBitmap:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 338
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->mStartShowProgressBarFlag:Z

    if-nez v0, :cond_2

    return-void

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->this$0:Lcom/popcap/pvz2cthddev/AndroidSplashScreen;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->access$400(Lcom/popcap/pvz2cthddev/AndroidSplashScreen;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 346
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->this$0:Lcom/popcap/pvz2cthddev/AndroidSplashScreen;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->access$400(Lcom/popcap/pvz2cthddev/AndroidSplashScreen;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 350
    :cond_3
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->mIsFirstInit:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mBGBitmapTitle:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    return-void

    .line 354
    :cond_4
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->mIsFirstInit:Z

    if-eqz v0, :cond_8

    .line 356
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mWidth:I

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mBGBitmapTitle:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 357
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mBGBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    invoke-static {}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->access$300()I

    .line 360
    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->RenderPorgressBarBackground(Landroid/graphics/Canvas;)V

    .line 362
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mUpdateCount:I

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_7

    .line 364
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->mStartShowProgressBarFlag:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->mFinishShowProgressBarFlag:Z

    if-nez v0, :cond_5

    .line 366
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mValue:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mProgressBar:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3feb333333333333L    # 0.85

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_7

    .line 368
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mValue:I

    int-to-double v0, v0

    iget v2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mValueX:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mValue:I

    goto :goto_0

    .line 371
    :cond_5
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->mFinishShowProgressBarFlag:Z

    if-eqz v0, :cond_6

    .line 373
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mValue:I

    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mValueX:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mValue:I

    goto :goto_0

    .line 377
    :cond_6
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mValue:I

    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mValueX:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mValue:I

    .line 381
    :cond_7
    :goto_0
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mWidth:I

    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mCurrentBarBgWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mCurrentBarWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int v5, v0, v1

    .line 382
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mHeight:I

    int-to-double v0, v0

    const-wide v2, 0x3fec28f5c28f5c29L    # 0.88

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mCurrentBarBgHeight:I

    iget v2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mCurrentBarHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->access$000()I

    move-result v1

    sub-int v6, v0, v1

    .line 383
    iget-object v4, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mProgressBar:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mProgressBar:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    iget v11, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mValue:I

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v11}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->RenderProgressBar(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIIII)V

    .line 384
    iget p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mUpdateCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mUpdateCount:I

    .line 387
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->invalidate()V

    :cond_8
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 190
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mWidth:I

    .line 191
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mHeight:I

    .line 193
    iget p2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mWidth:I

    invoke-virtual {p0, p2, p1}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->setMeasuredDimension(II)V

    .line 197
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 p2, 0x0

    .line 198
    iput-boolean p2, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 202
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mWidth:I

    iget v2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mHeight:I

    invoke-static {v1, v2}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->GetBestFitFirstSplashImage(II)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mBGBitmapTitle:Landroid/graphics/Bitmap;

    .line 203
    invoke-virtual {v0, p2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 206
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mWidth:I

    iget v2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mHeight:I

    invoke-static {v1, v2}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->GetBestFitSplashImage(II)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mBGBitmap:Landroid/graphics/Bitmap;

    .line 207
    invoke-virtual {v0, p2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 209
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->GetProgressBarBgSplashImage()Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 210
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->GetProgressBarBgSplashImage()Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 213
    :cond_0
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->GetProgressBarSplashImage()Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;->GetIntendedDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mBarMaxWidth:I

    .line 214
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->GetProgressBarSplashImage()Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;->GetIntendedDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mBarMaxHeight:I

    .line 216
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->GetProgressBarBgSplashImage()Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;->GetIntendedDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mBarBgMaxWidth:I

    .line 217
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->GetProgressBarBgSplashImage()Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;->GetIntendedDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mBarBgMaxHeight:I

    .line 219
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->GetProgressBarBgSplashImage()Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;->GetResourceID()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mProgressBarBg:Landroid/graphics/Bitmap;

    .line 220
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->GetProgressBarSplashImage()Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;->GetResourceID()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mProgressBar:Landroid/graphics/Bitmap;

    .line 221
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mProgressBarBg:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 222
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mProgressBar:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 227
    iget p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mBarMaxHeight:I

    iget p2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mHeight:I

    mul-int v0, p1, p2

    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mScreenMaxHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mCurrentBarHeight:I

    .line 228
    iget v2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mBarMaxWidth:I

    mul-int/2addr v0, v2

    div-int/2addr v0, p1

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mCurrentBarWidth:I

    .line 230
    iget p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mBarBgMaxHeight:I

    mul-int/2addr p2, p1

    div-int/2addr p2, v1

    iput p2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mCurrentBarBgHeight:I

    .line 231
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mBarBgMaxWidth:I

    mul-int/2addr p2, v0

    div-int/2addr p2, p1

    iput p2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mCurrentBarBgWidth:I

    .line 233
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "BarBgWidth: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mCurrentBarBgWidth:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", BarBgHeight: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mCurrentBarBgHeight:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SplashScreen"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "BarWidth: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mCurrentBarWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", BarHeight: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mCurrentBarHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mCurrentBarBgWidth:I

    if-lez p1, :cond_2

    iget p2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mCurrentBarBgHeight:I

    if-lez p2, :cond_2

    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mCurrentBarWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mCurrentBarHeight:I

    if-gtz v0, :cond_1

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mProgressBarBg:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mProgressBarBg:Landroid/graphics/Bitmap;

    .line 242
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mProgressBar:Landroid/graphics/Bitmap;

    iget p2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mCurrentBarWidth:I

    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mCurrentBarHeight:I

    invoke-static {p1, p2, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mProgressBar:Landroid/graphics/Bitmap;

    .line 248
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mTextPaint2:Landroid/text/TextPaint;

    const/high16 p2, 0x41a00000    # 20.0f

    .line 249
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 250
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mTextPaint2:Landroid/text/TextPaint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 251
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mTextPaint2:Landroid/text/TextPaint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 254
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mTextPaint1:Landroid/text/TextPaint;

    const/high16 v0, 0x420c0000    # 35.0f

    .line 255
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 256
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mTextPaint1:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 257
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->mTextPaint1:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 172
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->invalidate()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 179
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;->invalidate()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
