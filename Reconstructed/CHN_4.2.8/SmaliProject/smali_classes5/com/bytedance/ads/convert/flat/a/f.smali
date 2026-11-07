.class public final Lcom/bytedance/ads/convert/flat/a/f;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Lcom/bytedance/ads/convert/flat/a/e;

.field public c:Lcom/bytedance/ads/convert/flat/a/e;

.field public d:Lcom/bytedance/ads/convert/flat/a/e;


# direct methods
.method public constructor <init>(ZLcom/bytedance/ads/convert/flat/a/e;Lcom/bytedance/ads/convert/flat/a/e;Lcom/bytedance/ads/convert/flat/a/e;)V
    .locals 1

    const-string v0, "chinaMobileConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chinaTelecomConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chinaUnicomConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/bytedance/ads/convert/flat/a/f;->a:Z

    iput-object p2, p0, Lcom/bytedance/ads/convert/flat/a/f;->b:Lcom/bytedance/ads/convert/flat/a/e;

    iput-object p3, p0, Lcom/bytedance/ads/convert/flat/a/f;->c:Lcom/bytedance/ads/convert/flat/a/e;

    iput-object p4, p0, Lcom/bytedance/ads/convert/flat/a/f;->d:Lcom/bytedance/ads/convert/flat/a/e;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/bytedance/ads/convert/flat/a/e;Lcom/bytedance/ads/convert/flat/a/e;Lcom/bytedance/ads/convert/flat/a/e;I)V
    .locals 3

    and-int/lit8 p2, p5, 0x1

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p2, p5, 0x2

    const-wide/32 v0, 0x325aa0

    const/4 p4, 0x0

    if-eqz p2, :cond_1

    new-instance p2, Lcom/bytedance/ads/convert/flat/a/e;

    invoke-direct {p2, p3, v0, v1}, Lcom/bytedance/ads/convert/flat/a/e;-><init>(ZJ)V

    goto :goto_0

    :cond_1
    move-object p2, p4

    :goto_0
    and-int/lit8 v2, p5, 0x4

    if-eqz v2, :cond_2

    new-instance v2, Lcom/bytedance/ads/convert/flat/a/e;

    invoke-direct {v2, p3, v0, v1}, Lcom/bytedance/ads/convert/flat/a/e;-><init>(ZJ)V

    goto :goto_1

    :cond_2
    move-object v2, p4

    :goto_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    new-instance p4, Lcom/bytedance/ads/convert/flat/a/e;

    const-wide/32 v0, 0x9c40

    invoke-direct {p4, p3, v0, v1}, Lcom/bytedance/ads/convert/flat/a/e;-><init>(ZJ)V

    :cond_3
    invoke-direct {p0, p1, p2, v2, p4}, Lcom/bytedance/ads/convert/flat/a/f;-><init>(ZLcom/bytedance/ads/convert/flat/a/e;Lcom/bytedance/ads/convert/flat/a/e;Lcom/bytedance/ads/convert/flat/a/e;)V

    return-void
.end method
