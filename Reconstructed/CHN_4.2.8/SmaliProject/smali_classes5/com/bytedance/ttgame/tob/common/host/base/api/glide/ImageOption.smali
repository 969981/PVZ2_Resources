.class public Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;
.super Ljava/lang/Object;
.source "ImageOption.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u0016\u0018\u00002\u00020\u0001:\u0001,B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0010R\u001a\u0010\u0015\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001a\u0010&\u001a\u00020!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010#\"\u0004\u0008(\u0010%R\u001e\u0010)\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\u0008*\u0010\u000e\"\u0004\u0008+\u0010\u0010\u00a8\u0006-"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;",
        "",
        "builder",
        "Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption$Builder;",
        "(Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption$Builder;)V",
        "format",
        "Landroid/graphics/Bitmap$Config;",
        "getFormat",
        "()Landroid/graphics/Bitmap$Config;",
        "setFormat",
        "(Landroid/graphics/Bitmap$Config;)V",
        "height",
        "",
        "getHeight",
        "()Ljava/lang/Integer;",
        "setHeight",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "placeHolder",
        "getPlaceHolder",
        "setPlaceHolder",
        "roundCorner",
        "getRoundCorner",
        "()I",
        "setRoundCorner",
        "(I)V",
        "scaleType",
        "Landroid/widget/ImageView$ScaleType;",
        "getScaleType",
        "()Landroid/widget/ImageView$ScaleType;",
        "setScaleType",
        "(Landroid/widget/ImageView$ScaleType;)V",
        "skipDiskCached",
        "",
        "getSkipDiskCached",
        "()Z",
        "setSkipDiskCached",
        "(Z)V",
        "skipMemoryCached",
        "getSkipMemoryCached",
        "setSkipMemoryCached",
        "width",
        "getWidth",
        "setWidth",
        "Builder",
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


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private format:Landroid/graphics/Bitmap$Config;

.field private height:Ljava/lang/Integer;

.field private placeHolder:Ljava/lang/Integer;

.field private roundCorner:I

.field private scaleType:Landroid/widget/ImageView$ScaleType;

.field private skipDiskCached:Z

.field private skipMemoryCached:Z

.field private width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption$Builder;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption$Builder;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;->width:Ljava/lang/Integer;

    .line 8
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption$Builder;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;->height:Ljava/lang/Integer;

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption$Builder;->getFormat()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;->format:Landroid/graphics/Bitmap$Config;

    .line 10
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption$Builder;->getPlaceHolder()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;->placeHolder:Ljava/lang/Integer;

    .line 11
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption$Builder;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 12
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption$Builder;->getSkipMemoryCached()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;->skipMemoryCached:Z

    .line 13
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption$Builder;->getSkipDiskCached()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;->skipDiskCached:Z

    .line 14
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption$Builder;->getRoundCorner()I

    move-result p1

    iput p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;->roundCorner:I

    return-void
.end method


# virtual methods
.method public final getFormat()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;->format:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public final getHeight()Ljava/lang/Integer;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPlaceHolder()Ljava/lang/Integer;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;->placeHolder:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRoundCorner()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;->roundCorner:I

    return v0
.end method

.method public final getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public final getSkipDiskCached()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;->skipDiskCached:Z

    return v0
.end method

.method public final getSkipMemoryCached()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;->skipMemoryCached:Z

    return v0
.end method

.method public final getWidth()Ljava/lang/Integer;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setFormat(Landroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;->format:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public final setHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;->height:Ljava/lang/Integer;

    return-void
.end method

.method public final setPlaceHolder(Ljava/lang/Integer;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;->placeHolder:Ljava/lang/Integer;

    return-void
.end method

.method public final setRoundCorner(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;->roundCorner:I

    return-void
.end method

.method public final setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public final setSkipDiskCached(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;->skipDiskCached:Z

    return-void
.end method

.method public final setSkipMemoryCached(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;->skipMemoryCached:Z

    return-void
.end method

.method public final setWidth(Ljava/lang/Integer;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageOption;->width:Ljava/lang/Integer;

    return-void
.end method
