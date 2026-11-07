.class public interface abstract Lcom/bytedance/ttgame/tob/common/host/base/api/glide/IImageLoaderService;
.super Ljava/lang/Object;
.source "IImageLoaderService.kt"

# interfaces
.implements Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/base/api/glide/IImageLoaderService$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J,\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fH&J,\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fH&J&\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00052\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fH&J,\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fH&J\u0018\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0016H&J*\u0010\u0017\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aH&\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/base/api/glide/IImageLoaderService;",
        "Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;",
        "getCache",
        "Ljava/io/File;",
        "key",
        "",
        "loadBitmap",
        "",
        "context",
        "Landroid/content/Context;",
        "source",
        "Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageSourceStruct;",
        "imageView",
        "Landroid/widget/ImageView;",
        "option",
        "Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;",
        "path",
        "loadBitmapSync",
        "Landroid/graphics/Bitmap;",
        "loadGif",
        "putCache",
        "writer",
        "Lcom/bytedance/ttgame/tob/common/host/base/api/glide/cache/IWriter;",
        "resizeBitmapSync",
        "bitmap",
        "width",
        "",
        "height",
        "ch_base_api_tobRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getCache(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract loadBitmap(Landroid/content/Context;Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageSourceStruct;Landroid/widget/ImageView;Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;)V
.end method

.method public abstract loadBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;)V
.end method

.method public abstract loadBitmapSync(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;)Landroid/graphics/Bitmap;
.end method

.method public abstract loadGif(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;)V
.end method

.method public abstract putCache(Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/base/api/glide/cache/IWriter;)V
.end method

.method public abstract resizeBitmapSync(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.end method
