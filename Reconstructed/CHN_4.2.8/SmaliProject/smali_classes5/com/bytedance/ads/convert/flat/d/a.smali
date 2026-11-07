.class public final Lcom/bytedance/ads/convert/flat/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/ads/convert/flat/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/ads/convert/flat/a/i;)V
    .locals 1

    const-string v0, "uaidResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/bytedance/ads/convert/flat/d/b;->b:Lcom/bytedance/ads/convert/flat/d/b;

    .line 1
    sget-object v0, Lcom/bytedance/ads/convert/flat/d/b;->a:Lcom/bytedance/ads/convert/flat/d/c;

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/ads/convert/flat/d/c;->a(Lcom/bytedance/ads/convert/flat/a/i;)V

    return-void
.end method
