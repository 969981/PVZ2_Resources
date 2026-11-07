.class public final Lcom/bytedance/ads/convert/flat/d/c$a;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ads/convert/flat/d/c;-><init>(Lcom/bytedance/ads/convert/flat/d/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/ads/convert/flat/d/c;


# direct methods
.method public constructor <init>(Lcom/bytedance/ads/convert/flat/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ads/convert/flat/d/c$a;->a:Lcom/bytedance/ads/convert/flat/d/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lkotlin/Pair;

    .line 1
    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/d/c$a;->a:Lcom/bytedance/ads/convert/flat/d/c;

    .line 2
    iget-object v1, v1, Lcom/bytedance/ads/convert/flat/d/c;->a:Ljava/lang/String;

    const-string v2, "client_tun"

    .line 3
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/d/c$a;->a:Lcom/bytedance/ads/convert/flat/d/c;

    .line 4
    iget-object v1, v1, Lcom/bytedance/ads/convert/flat/d/c;->b:Ljava/lang/String;

    const-string v2, "disk"

    .line 5
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/d/c$a;->a:Lcom/bytedance/ads/convert/flat/d/c;

    .line 6
    iget-object v1, v1, Lcom/bytedance/ads/convert/flat/d/c;->c:Ljava/lang/String;

    const-string v2, "memory"

    .line 7
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/d/c$a;->a:Lcom/bytedance/ads/convert/flat/d/c;

    .line 8
    iget-object v1, v1, Lcom/bytedance/ads/convert/flat/d/c;->d:Ljava/lang/String;

    const-string v2, "boot_time_sec"

    .line 9
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/d/c$a;->a:Lcom/bytedance/ads/convert/flat/d/c;

    .line 10
    iget-object v1, v1, Lcom/bytedance/ads/convert/flat/d/c;->g:Lcom/bytedance/ads/convert/flat/a/i;

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1}, Lcom/bytedance/ads/convert/flat/a/i;->a()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    const-string v2, "u_t"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/d/c$a;->a:Lcom/bytedance/ads/convert/flat/d/c;

    .line 12
    iget-object v1, v1, Lcom/bytedance/ads/convert/flat/d/c;->e:Lorg/json/JSONArray;

    const-string v2, "pkg_info"

    .line 13
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/d/c$a;->a:Lcom/bytedance/ads/convert/flat/d/c;

    .line 14
    iget-object v1, v1, Lcom/bytedance/ads/convert/flat/d/c;->f:[I

    .line 15
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.util.Arrays.toString(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "inode"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
