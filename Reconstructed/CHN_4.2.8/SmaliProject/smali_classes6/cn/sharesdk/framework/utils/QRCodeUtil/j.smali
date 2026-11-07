.class public Lcn/sharesdk/framework/utils/QRCodeUtil/j;
.super Ljava/lang/Object;
.source "QRCode.java"


# instance fields
.field private A:I

.field private B:Landroid/graphics/Point;

.field private C:F

.field private D:I

.field private E:I

.field private F:I

.field private G:Landroid/graphics/Bitmap;

.field private H:Z

.field private I:Z

.field private J:[F

.field private K:[F

.field private L:[F

.field private M:Lcn/sharesdk/framework/utils/QRCodeUtil/k;

.field protected a:Landroid/graphics/Bitmap;

.field protected b:Landroid/graphics/Point;

.field protected c:Landroid/graphics/Point;

.field protected d:Ljava/lang/String;

.field protected e:I

.field protected f:Ljava/lang/String;

.field protected g:Z

.field protected h:I

.field protected i:Landroid/graphics/Bitmap;

.field protected j:Landroid/graphics/drawable/Drawable;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:I

.field protected n:I

.field protected o:Z

.field protected p:I

.field protected q:Landroid/graphics/Bitmap;

.field protected r:Landroid/graphics/drawable/Drawable;

.field protected s:Ljava/lang/String;

.field protected t:Ljava/lang/String;

.field protected u:I

.field protected v:Z

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->B:Landroid/graphics/Point;

    const/16 v0, 0x190

    .line 49
    iput v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->D:I

    .line 50
    iput v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->E:I

    .line 51
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->b:Landroid/graphics/Point;

    .line 52
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->c:Landroid/graphics/Point;

    const/4 v1, 0x0

    .line 57
    iput-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->d:Ljava/lang/String;

    const/4 v2, 0x1

    .line 58
    iput v2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->e:I

    .line 59
    iput-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->f:Ljava/lang/String;

    .line 60
    iput-boolean v2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->g:Z

    const/4 v3, 0x0

    .line 65
    iput v3, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->h:I

    .line 66
    iput-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->i:Landroid/graphics/Bitmap;

    .line 67
    iput-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->j:Landroid/graphics/drawable/Drawable;

    .line 68
    iput-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->k:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->l:Ljava/lang/String;

    const/4 v4, 0x6

    .line 72
    iput v4, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->n:I

    .line 73
    iput-boolean v2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->o:Z

    .line 78
    iput v3, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->p:I

    .line 79
    iput-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->q:Landroid/graphics/Bitmap;

    .line 80
    iput-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->r:Landroid/graphics/drawable/Drawable;

    .line 81
    iput-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->s:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->t:Ljava/lang/String;

    .line 84
    iput v4, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->u:I

    .line 85
    iput-boolean v2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->v:Z

    .line 94
    iput-boolean v2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->I:Z

    .line 102
    iput v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->y:I

    iput v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->w:I

    .line 103
    iput v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->x:I

    .line 104
    iput v3, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->z:I

    const/16 v0, 0x50

    .line 105
    iput v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->A:I

    const/4 v0, -0x1

    .line 106
    iput v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->m:I

    const/high16 v0, -0x1000000

    .line 107
    iput v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->F:I

    .line 108
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/k;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/k;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->M:Lcn/sharesdk/framework/utils/QRCodeUtil/k;

    .line 109
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->e()V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 563
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 564
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 567
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 569
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 572
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 573
    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 574
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 12

    .line 408
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 410
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->w:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->i:Landroid/graphics/Bitmap;

    .line 411
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->x:I

    int-to-float v2, v1

    div-float/2addr v0, v2

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    aput v0, v2, p1

    iput-object v2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->J:[F

    .line 414
    iget p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->w:I

    mul-int/2addr p1, v1

    new-array v5, p1, [I

    move p1, v3

    .line 415
    :goto_0
    iget v11, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->x:I

    if-ge p1, v11, :cond_1

    move v0, v3

    .line 416
    :goto_1
    iget v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->w:I

    if-ge v0, v1, :cond_0

    mul-int/2addr v1, p1

    add-int/2addr v1, v0

    .line 417
    invoke-direct {p0, v0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->b(II)I

    move-result v2

    aput v2, v5, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 420
    :cond_1
    iget-object v4, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->a:Landroid/graphics/Bitmap;

    iget v10, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->w:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move v7, v10

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_2

    .line 422
    :cond_2
    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->m:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_2
    return-void
.end method

.method private b(II)I
    .locals 2

    .line 428
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->J:[F

    if-nez v0, :cond_0

    .line 429
    iget p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->m:I

    return p1

    :cond_0
    int-to-float p1, p1

    const/4 v1, 0x0

    .line 431
    aget v1, v0, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p2, p2

    const/4 v1, 0x1

    .line 432
    aget v0, v0, v1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 433
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    return p1
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->G:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->y:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    iget-object v4, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->G:Landroid/graphics/Bitmap;

    .line 441
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->y:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    new-array v5, v3, [F

    aput v0, v5, v1

    aput v4, v5, v2

    iput-object v5, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->K:[F

    .line 444
    :cond_0
    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/l;

    invoke-direct {v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/l;-><init>()V

    .line 445
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 446
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v4, "utf-8"

    invoke-virtual {v11, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->f:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    iget v4, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->z:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    sget-object v4, Lcn/sharesdk/framework/utils/QRCodeUtil/f;->d:Lcn/sharesdk/framework/utils/QRCodeUtil/f;

    invoke-virtual {v11, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v7, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->f:Ljava/lang/String;

    sget-object v8, Lcn/sharesdk/framework/utils/QRCodeUtil/a;->l:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    iget v10, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->y:I

    move v9, v10

    invoke-virtual/range {v6 .. v11}, Lcn/sharesdk/framework/utils/QRCodeUtil/l;->encode(Ljava/lang/String;Lcn/sharesdk/framework/utils/QRCodeUtil/a;IILjava/util/Map;)Lcn/sharesdk/framework/utils/QRCodeUtil/c;

    move-result-object v0

    .line 451
    iget v4, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->y:I

    mul-int/2addr v4, v4

    new-array v4, v4, [I

    move v5, v1

    .line 452
    :goto_0
    iget v6, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->y:I

    if-ge v5, v6, :cond_3

    move v6, v1

    .line 453
    :goto_1
    iget v7, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->y:I

    if-ge v6, v7, :cond_2

    .line 454
    invoke-virtual {v0, v6, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->a(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 455
    iget v7, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->y:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v6

    invoke-direct {p0, v6, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->c(II)I

    move-result v8

    aput v8, v4, v7

    goto :goto_2

    .line 457
    :cond_1
    iget v7, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->y:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v6

    aput v1, v4, v7

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 462
    :cond_3
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 464
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->A:I

    int-to-float v5, v5

    div-float/2addr v0, v5

    iget-object v5, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->q:Landroid/graphics/Bitmap;

    .line 465
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->A:I

    int-to-float v7, v6

    div-float/2addr v5, v7

    new-array v7, v3, [F

    aput v0, v7, v1

    aput v5, v7, v2

    iput-object v7, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->L:[F

    .line 468
    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->y:I

    sub-int v1, v0, v6

    div-int/2addr v1, v3

    add-int/2addr v0, v6

    .line 469
    div-int/2addr v0, v3

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_5

    move v5, v1

    :goto_4
    if-ge v5, v0, :cond_4

    .line 472
    iget v6, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->y:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v5

    sub-int v7, v5, v1

    sub-int v8, v2, v1

    invoke-direct {p0, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->d(II)I

    move-result v7

    aput v7, v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 477
    :cond_5
    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->y:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 479
    iget-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->B:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->B:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 480
    iget v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->C:F

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 481
    iget v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->y:I

    neg-int v2, v1

    div-int/2addr v2, v3

    int-to-float v2, v2

    neg-int v1, v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 483
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private c(II)I
    .locals 2

    .line 487
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->K:[F

    if-nez v0, :cond_0

    .line 488
    iget p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->F:I

    return p1

    :cond_0
    int-to-float p1, p1

    const/4 v1, 0x0

    .line 490
    aget v1, v0, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p2, p2

    const/4 v1, 0x1

    .line 491
    aget v0, v0, v1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 492
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->G:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    return p1
.end method

.method private c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 509
    iget-boolean v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 512
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->d:Ljava/lang/String;

    iput-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private d(II)I
    .locals 2

    int-to-float p1, p1

    .line 497
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->L:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p2, p2

    const/4 v1, 0x1

    .line 498
    aget v0, v0, v1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 499
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 500
    iget-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->q:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    sub-int/2addr p1, v1

    .line 502
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 503
    iget-object p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->q:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    sub-int/2addr p2, v1

    .line 505
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    return p1
.end method

.method private d()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 532
    iget-boolean v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->o:Z

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x6

    if-eqz v0, :cond_4

    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->n:I

    if-eq v0, v6, :cond_4

    if-ne v0, v5, :cond_0

    .line 534
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v7, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->h:I

    invoke-static {v0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->i:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    if-ne v0, v4, :cond_1

    .line 536
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->j:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->i:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    .line 538
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->k:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->i:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 540
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v7, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->l:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 541
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->i:Landroid/graphics/Bitmap;

    .line 544
    :cond_3
    :goto_0
    iput-boolean v2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->o:Z

    .line 547
    :cond_4
    iget-boolean v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->v:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->u:I

    if-eq v0, v6, :cond_9

    if-ne v0, v5, :cond_5

    .line 549
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->p:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->q:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_5
    if-ne v0, v4, :cond_6

    .line 551
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->r:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->q:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_6
    if-ne v0, v3, :cond_7

    .line 553
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->s:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->q:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_7
    if-ne v0, v1, :cond_8

    .line 555
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 556
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->q:Landroid/graphics/Bitmap;

    .line 558
    :cond_8
    :goto_1
    iput-boolean v2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->v:Z

    :cond_9
    return-void
.end method

.method private e()V
    .locals 6

    .line 580
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    .line 581
    iget-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    .line 583
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->y:I

    .line 584
    iget-object v2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->B:Landroid/graphics/Point;

    iget-object v3, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->c:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->b:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 585
    iget-object v2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->B:Landroid/graphics/Point;

    iget-object v3, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->c:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->b:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 587
    iget v2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->y:I

    int-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->A:I

    int-to-double v1, v1

    int-to-double v3, v0

    .line 588
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 589
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide v2, 0x4046800000000000L    # 45.0

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->C:F

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .line 378
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    if-lez p1, :cond_2

    .line 207
    iget-boolean v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->H:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->h:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->n:I

    if-ne v0, v1, :cond_1

    return-void

    .line 214
    :cond_1
    iput p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->h:I

    .line 215
    iput-boolean v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->o:Z

    .line 216
    iput v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->n:I

    .line 217
    iput-boolean v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->I:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public a(II)V
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->H:Z

    if-nez v0, :cond_0

    .line 128
    iput p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->w:I

    .line 129
    iput p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->x:I

    const/4 p1, 0x1

    .line 130
    iput-boolean p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->I:Z

    :cond_0
    return-void
.end method

.method public a(IIII)V
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->H:Z

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->b:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 168
    iget-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->b:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 169
    iget-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->c:Landroid/graphics/Point;

    iput p3, p1, Landroid/graphics/Point;->x:I

    .line 170
    iget-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->c:Landroid/graphics/Point;

    iput p4, p1, Landroid/graphics/Point;->y:I

    .line 171
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->e()V

    const/4 p1, 0x1

    .line 172
    iput-boolean p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->I:Z

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Z)V
    .locals 1

    if-eqz p1, :cond_3

    .line 221
    iget-boolean v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->H:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-nez p2, :cond_1

    .line 224
    iget p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->n:I

    if-lt p2, v0, :cond_3

    .line 225
    :cond_1
    iget-object p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->i:Landroid/graphics/Bitmap;

    if-ne p2, p1, :cond_2

    iget p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->n:I

    if-ne p2, v0, :cond_2

    return-void

    .line 228
    :cond_2
    iput-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->i:Landroid/graphics/Bitmap;

    .line 229
    iput v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->n:I

    const/4 p1, 0x1

    .line 230
    iput-boolean p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->o:Z

    .line 231
    iput-boolean p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->I:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    if-eqz p1, :cond_3

    .line 236
    iget-boolean v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->H:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-nez p2, :cond_1

    .line 239
    iget p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->n:I

    if-lt p2, v0, :cond_3

    .line 240
    :cond_1
    iget-object p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->j:Landroid/graphics/drawable/Drawable;

    if-ne p2, p1, :cond_2

    iget p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->n:I

    if-lt p2, v0, :cond_2

    return-void

    .line 243
    :cond_2
    iput-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->j:Landroid/graphics/drawable/Drawable;

    .line 244
    iput v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->n:I

    const/4 p1, 0x1

    .line 245
    iput-boolean p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->o:Z

    .line 246
    iput-boolean p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->I:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 177
    iget-boolean v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->H:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    iput-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->d:Ljava/lang/String;

    .line 182
    iput v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->e:I

    .line 183
    iput-boolean v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->g:Z

    .line 184
    iput-boolean v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->I:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_3

    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->H:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-nez p2, :cond_1

    .line 254
    iget p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->n:I

    if-lt p2, v0, :cond_3

    .line 255
    :cond_1
    iget-object p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->k:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->n:I

    if-ne p2, v0, :cond_2

    return-void

    .line 258
    :cond_2
    iput-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->k:Ljava/lang/String;

    .line 259
    iput v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->n:I

    const/4 p1, 0x1

    .line 260
    iput-boolean p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->o:Z

    .line 261
    iput-boolean p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->I:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public declared-synchronized b()Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    .line 382
    :try_start_0
    iget-boolean v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->I:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 383
    iput-boolean v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->H:Z

    .line 384
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->c()V

    .line 385
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 389
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->d()V

    .line 390
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 391
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->D:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    :goto_0
    iput v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->w:I

    .line 392
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->E:I

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    :goto_1
    iput v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->x:I

    .line 395
    :cond_2
    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->w:I

    iget v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->x:I

    iget-object v2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->i:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    :goto_2
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->a:Landroid/graphics/Bitmap;

    .line 396
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 398
    invoke-direct {p0, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->a(Landroid/graphics/Canvas;)V

    .line 399
    invoke-direct {p0, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->b(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    .line 401
    iput-boolean v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->H:Z

    .line 402
    iput-boolean v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->I:Z

    goto :goto_3

    .line 386
    :cond_4
    new-instance v0, Ljava/lang/Error;

    const-string v1, "content can not be null,please set url or uri before generate qrcode!"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_5
    :goto_3
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->a:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(I)V
    .locals 2

    if-lez p1, :cond_2

    .line 281
    iget-boolean v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->H:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->p:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->u:I

    if-ne v0, v1, :cond_1

    return-void

    .line 287
    :cond_1
    iput p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->p:I

    .line 288
    iput v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->u:I

    .line 289
    iput-boolean v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->v:Z

    .line 290
    iput-boolean v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->I:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;Z)V
    .locals 1

    if-eqz p1, :cond_3

    .line 294
    iget-boolean v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->H:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-nez p2, :cond_1

    .line 297
    iget p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->u:I

    if-lt p2, v0, :cond_3

    .line 299
    :cond_1
    iget-object p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->q:Landroid/graphics/Bitmap;

    if-ne p2, p1, :cond_2

    iget p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->u:I

    if-ne p2, v0, :cond_2

    return-void

    .line 302
    :cond_2
    iput-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->q:Landroid/graphics/Bitmap;

    .line 303
    iput v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->u:I

    const/4 p1, 0x1

    .line 304
    iput-boolean p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->v:Z

    .line 305
    iput-boolean p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->I:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    if-eqz p1, :cond_3

    .line 310
    iget-boolean v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->H:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-nez p2, :cond_1

    .line 313
    iget p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->u:I

    if-lt p2, v0, :cond_3

    .line 314
    :cond_1
    iget-object p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->r:Landroid/graphics/drawable/Drawable;

    if-ne p2, p1, :cond_2

    iget p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->u:I

    if-ne p2, v0, :cond_2

    return-void

    .line 317
    :cond_2
    iput-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->r:Landroid/graphics/drawable/Drawable;

    .line 318
    iput v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->u:I

    const/4 p1, 0x1

    .line 319
    iput-boolean p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->v:Z

    .line 320
    iput-boolean p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->I:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 188
    iget-boolean v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->H:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iput-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->f:Ljava/lang/String;

    .line 193
    iput v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->e:I

    const/4 p1, 0x1

    .line 194
    iput-boolean p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->g:Z

    .line 195
    iput-boolean p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->I:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_3

    .line 266
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->H:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-nez p2, :cond_1

    .line 269
    iget p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->n:I

    if-lt p2, v0, :cond_3

    .line 270
    :cond_1
    iget-object p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->l:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->n:I

    if-ne p2, v0, :cond_2

    return-void

    .line 273
    :cond_2
    iput-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->l:Ljava/lang/String;

    .line 274
    iput v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->n:I

    const/4 p1, 0x1

    .line 275
    iput-boolean p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->o:Z

    .line 276
    iput-boolean p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->I:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public c(I)V
    .locals 1

    ushr-int/lit8 v0, p1, 0x18

    if-nez v0, :cond_0

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    .line 360
    :cond_0
    iget-boolean v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->H:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->F:I

    if-eq v0, p1, :cond_1

    .line 361
    iput p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->F:I

    const/4 p1, 0x1

    .line 362
    iput-boolean p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->I:Z

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_3

    .line 325
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->H:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-nez p2, :cond_1

    .line 328
    iget p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->u:I

    if-lt p2, v0, :cond_3

    .line 329
    :cond_1
    iget-object p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->s:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->u:I

    if-ne p2, v0, :cond_2

    return-void

    .line 332
    :cond_2
    iput-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->s:Ljava/lang/String;

    .line 333
    iput v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->u:I

    const/4 p1, 0x1

    .line 334
    iput-boolean p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->v:Z

    .line 335
    iput-boolean p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->I:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_3

    .line 340
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->H:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-nez p2, :cond_1

    .line 343
    iget p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->u:I

    if-lt p2, v0, :cond_3

    .line 344
    :cond_1
    iget-object p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->t:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->u:I

    if-ne p2, v0, :cond_2

    return-void

    .line 347
    :cond_2
    iput-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->t:Ljava/lang/String;

    .line 348
    iput v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->u:I

    const/4 p1, 0x1

    .line 349
    iput-boolean p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->v:Z

    .line 350
    iput-boolean p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->I:Z

    :cond_3
    :goto_0
    return-void
.end method
