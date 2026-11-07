.class public Lcn/sharesdk/framework/loopshare/watermark/a;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# static fields
.field private static a:[I = null

.field private static b:I = 0xf

.field private static c:I = 0x10e

.field private static d:[F

.field private static e:I

.field private static f:I

.field private static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    .line 18
    new-array v1, v0, [I

    sput-object v1, Lcn/sharesdk/framework/loopshare/watermark/a;->a:[I

    .line 21
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcn/sharesdk/framework/loopshare/watermark/a;->d:[F

    const/4 v0, -0x1

    .line 22
    sput v0, Lcn/sharesdk/framework/loopshare/watermark/a;->e:I

    const/4 v0, 0x0

    .line 23
    sput v0, Lcn/sharesdk/framework/loopshare/watermark/a;->f:I

    const/16 v0, 0x64

    .line 24
    sput v0, Lcn/sharesdk/framework/loopshare/watermark/a;->g:I

    return-void

    nop

    :array_0
    .array-data 4
        0x42700000    # 60.0f
        0x41f00000    # 30.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 11

    .line 55
    const-string v0, "ShareSDK"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 56
    sget v4, Lcn/sharesdk/framework/loopshare/watermark/a;->e:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    sput v1, Lcn/sharesdk/framework/loopshare/watermark/a;->c:I

    .line 58
    sput v1, Lcn/sharesdk/framework/loopshare/watermark/a;->b:I

    move v4, v1

    .line 60
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_1

    .line 61
    sget-object v5, Lcn/sharesdk/framework/loopshare/watermark/a;->d:[F

    aget v5, v5, v4

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 62
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 63
    aget-object v6, p1, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v6, v1, v7, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 64
    sget v6, Lcn/sharesdk/framework/loopshare/watermark/a;->c:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 65
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    sput v6, Lcn/sharesdk/framework/loopshare/watermark/a;->c:I

    .line 67
    :cond_0
    sget-object v6, Lcn/sharesdk/framework/loopshare/watermark/a;->a:[I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    aput v7, v6, v4

    .line 69
    sget v6, Lcn/sharesdk/framework/loopshare/watermark/a;->b:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v6, v5

    sput v6, Lcn/sharesdk/framework/loopshare/watermark/a;->b:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    :cond_1
    sget v4, Lcn/sharesdk/framework/loopshare/watermark/a;->c:I

    sget v5, Lcn/sharesdk/framework/loopshare/watermark/a;->b:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 73
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 74
    sget v6, Lcn/sharesdk/framework/loopshare/watermark/a;->f:I

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    move v6, v1

    move v7, v6

    .line 76
    :goto_1
    array-length v8, p1

    if-ge v6, v8, :cond_3

    .line 77
    sget-object v8, Lcn/sharesdk/framework/loopshare/watermark/a;->d:[F

    aget v8, v8, v6

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 78
    sget-object v8, Lcn/sharesdk/framework/loopshare/watermark/a;->a:[I

    aget v9, v8, v6

    add-int/2addr v7, v9

    if-lez v6, :cond_2

    add-int/lit8 v9, v6, -0x1

    .line 80
    aget v8, v8, v9

    add-int/2addr v7, v8

    .line 83
    :cond_2
    aget-object v8, p1, v6

    const/4 v9, 0x0

    int-to-float v10, v7

    invoke-virtual {v5, v8, v9, v10, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 85
    :cond_3
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 87
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 88
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v2, Lcn/sharesdk/framework/loopshare/watermark/a;->g:I

    invoke-virtual {v4, p0, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 90
    sget p0, Lcn/sharesdk/framework/loopshare/watermark/a;->c:I

    sput p0, Lcn/sharesdk/framework/loopshare/watermark/g;->a:I

    .line 91
    sget p0, Lcn/sharesdk/framework/loopshare/watermark/a;->b:I

    sput p0, Lcn/sharesdk/framework/loopshare/watermark/g;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception p0

    .line 94
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 95
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "writeImage catch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1
.end method
