.class public final Lcom/bytedance/ads/convert/flat/d/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lorg/json/JSONArray;

.field public f:[I

.field public g:Lcom/bytedance/ads/convert/flat/a/i;

.field public final h:Lkotlin/Lazy;

.field public final i:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/d/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/d/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/d/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/d/c;->d:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/d/c;->e:Lorg/json/JSONArray;

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/d/c;->f:[I

    new-instance v0, Lcom/bytedance/ads/convert/flat/d/c$b;

    invoke-direct {v0, p0}, Lcom/bytedance/ads/convert/flat/d/c$b;-><init>(Lcom/bytedance/ads/convert/flat/d/c;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/d/c;->h:Lkotlin/Lazy;

    new-instance v0, Lcom/bytedance/ads/convert/flat/d/c$a;

    invoke-direct {v0, p0}, Lcom/bytedance/ads/convert/flat/d/c$a;-><init>(Lcom/bytedance/ads/convert/flat/d/c;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/d/c;->i:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ads/convert/flat/d/c;)V
    .locals 1

    const-string v0, "zDataModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/d/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/d/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/d/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/d/c;->d:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/d/c;->e:Lorg/json/JSONArray;

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/d/c;->f:[I

    new-instance v0, Lcom/bytedance/ads/convert/flat/d/c$b;

    invoke-direct {v0, p0}, Lcom/bytedance/ads/convert/flat/d/c$b;-><init>(Lcom/bytedance/ads/convert/flat/d/c;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/d/c;->h:Lkotlin/Lazy;

    new-instance v0, Lcom/bytedance/ads/convert/flat/d/c$a;

    invoke-direct {v0, p0}, Lcom/bytedance/ads/convert/flat/d/c$a;-><init>(Lcom/bytedance/ads/convert/flat/d/c;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/d/c;->i:Lkotlin/Lazy;

    iget-object v0, p1, Lcom/bytedance/ads/convert/flat/d/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/d/c;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/bytedance/ads/convert/flat/d/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/d/c;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/bytedance/ads/convert/flat/d/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/d/c;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/bytedance/ads/convert/flat/d/c;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/d/c;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/bytedance/ads/convert/flat/d/c;->e:Lorg/json/JSONArray;

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/d/c;->e:Lorg/json/JSONArray;

    iget-object p1, p1, Lcom/bytedance/ads/convert/flat/d/c;->f:[I

    iput-object p1, p0, Lcom/bytedance/ads/convert/flat/d/c;->f:[I

    iget-object p1, p0, Lcom/bytedance/ads/convert/flat/d/c;->g:Lcom/bytedance/ads/convert/flat/a/i;

    invoke-virtual {p0, p1}, Lcom/bytedance/ads/convert/flat/d/c;->a(Lcom/bytedance/ads/convert/flat/a/i;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bytedance/ads/convert/flat/a/i;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/d/c;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/bytedance/ads/convert/flat/a/i;->a()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "u_t"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/d/c;->i:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/ads/convert/flat/a/i;->a()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_1
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/bytedance/ads/convert/flat/d/c;->g:Lcom/bytedance/ads/convert/flat/a/i;

    return-void
.end method
