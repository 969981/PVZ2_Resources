.class public final Lcom/bytedance/ttgame/tob/common/host/base/api/glide/IImageLoaderService$DefaultImpls;
.super Ljava/lang/Object;
.source "IImageLoaderService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/base/api/glide/IImageLoaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public static synthetic loadBitmap$default(Lcom/bytedance/ttgame/tob/common/host/base/api/glide/IImageLoaderService;Landroid/content/Context;Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageSourceStruct;Landroid/widget/ImageView;Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;ILjava/lang/Object;)V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    const/4 v2, 0x3

    aput-object p3, v0, v2

    const/4 v2, 0x4

    aput-object p4, v0, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const/4 v2, 0x6

    aput-object p6, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/IImageLoaderService$DefaultImpls;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "6d330e26d01ea51d8a52bc9978bc7b85"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p6, :cond_2

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v3

    .line 21
    :cond_1
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/IImageLoaderService;->loadBitmap(Landroid/content/Context;Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageSourceStruct;Landroid/widget/ImageView;Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadBitmap"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic loadBitmap$default(Lcom/bytedance/ttgame/tob/common/host/base/api/glide/IImageLoaderService;Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;ILjava/lang/Object;)V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    const/4 v2, 0x3

    aput-object p3, v0, v2

    const/4 v2, 0x4

    aput-object p4, v0, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const/4 v2, 0x6

    aput-object p6, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/IImageLoaderService$DefaultImpls;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "27823d17b1172d9671dfa3963844181a"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p6, :cond_2

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v3

    .line 19
    :cond_1
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/IImageLoaderService;->loadBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadBitmap"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic loadBitmapSync$default(Lcom/bytedance/ttgame/tob/common/host/base/api/glide/IImageLoaderService;Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;ILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    const/4 v2, 0x3

    aput-object p3, v0, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const/4 v2, 0x5

    aput-object p5, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/IImageLoaderService$DefaultImpls;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "54ab7d0c83275bc9a9f95faaa092908c"

    invoke-static {v0, v4, v2, v1, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    :cond_0
    if-nez p5, :cond_2

    and-int/2addr p4, v3

    if-eqz p4, :cond_1

    move-object p3, v4

    .line 17
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/IImageLoaderService;->loadBitmapSync(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadBitmapSync"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic loadGif$default(Lcom/bytedance/ttgame/tob/common/host/base/api/glide/IImageLoaderService;Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;ILjava/lang/Object;)V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    const/4 v2, 0x3

    aput-object p3, v0, v2

    const/4 v2, 0x4

    aput-object p4, v0, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const/4 v2, 0x6

    aput-object p6, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/IImageLoaderService$DefaultImpls;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "b49edcb1f3783d25314773404bdf3702"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p6, :cond_2

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v3

    .line 23
    :cond_1
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/IImageLoaderService;->loadGif(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadGif"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
