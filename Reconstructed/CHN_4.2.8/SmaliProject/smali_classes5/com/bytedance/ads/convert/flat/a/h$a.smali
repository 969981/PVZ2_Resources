.class public final Lcom/bytedance/ads/convert/flat/a/h$a;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ads/convert/flat/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Lcom/bytedance/ads/convert/flat/a/a;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/bytedance/ads/convert/flat/a/h$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/ads/convert/flat/a/h$a;

    invoke-direct {v0}, Lcom/bytedance/ads/convert/flat/a/h$a;-><init>()V

    sput-object v0, Lcom/bytedance/ads/convert/flat/a/h$a;->a:Lcom/bytedance/ads/convert/flat/a/h$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/Pair;

    .line 1
    new-instance v1, Lcom/bytedance/ads/convert/flat/a/b;

    sget-object v2, Lcom/bytedance/ads/convert/flat/a/h;->c:Lcom/bytedance/ads/convert/flat/a/h;

    .line 2
    sget-object v2, Lcom/bytedance/ads/convert/flat/a/h;->a:Lcom/bytedance/ads/convert/flat/a/f;

    .line 3
    iget-object v3, v2, Lcom/bytedance/ads/convert/flat/a/f;->b:Lcom/bytedance/ads/convert/flat/a/e;

    .line 4
    invoke-direct {v1, v3}, Lcom/bytedance/ads/convert/flat/a/b;-><init>(Lcom/bytedance/ads/convert/flat/a/e;)V

    const-string v3, "1"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/bytedance/ads/convert/flat/a/c;

    .line 5
    iget-object v3, v2, Lcom/bytedance/ads/convert/flat/a/f;->c:Lcom/bytedance/ads/convert/flat/a/e;

    .line 6
    invoke-direct {v1, v3}, Lcom/bytedance/ads/convert/flat/a/c;-><init>(Lcom/bytedance/ads/convert/flat/a/e;)V

    const-string v3, "2"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/bytedance/ads/convert/flat/a/d;

    .line 7
    iget-object v2, v2, Lcom/bytedance/ads/convert/flat/a/f;->d:Lcom/bytedance/ads/convert/flat/a/e;

    .line 8
    invoke-direct {v1, v2}, Lcom/bytedance/ads/convert/flat/a/d;-><init>(Lcom/bytedance/ads/convert/flat/a/e;)V

    const-string v2, "3"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
