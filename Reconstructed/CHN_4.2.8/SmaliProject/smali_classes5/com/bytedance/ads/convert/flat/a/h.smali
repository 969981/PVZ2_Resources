.class public final Lcom/bytedance/ads/convert/flat/a/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/bytedance/ads/convert/flat/a/f;

.field public static final b:Lkotlin/Lazy;

.field public static final c:Lcom/bytedance/ads/convert/flat/a/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/bytedance/ads/convert/flat/a/h;

    invoke-direct {v0}, Lcom/bytedance/ads/convert/flat/a/h;-><init>()V

    sput-object v0, Lcom/bytedance/ads/convert/flat/a/h;->c:Lcom/bytedance/ads/convert/flat/a/h;

    new-instance v0, Lcom/bytedance/ads/convert/flat/a/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/ads/convert/flat/a/f;-><init>(ZLcom/bytedance/ads/convert/flat/a/e;Lcom/bytedance/ads/convert/flat/a/e;Lcom/bytedance/ads/convert/flat/a/e;I)V

    sput-object v0, Lcom/bytedance/ads/convert/flat/a/h;->a:Lcom/bytedance/ads/convert/flat/a/f;

    sget-object v0, Lcom/bytedance/ads/convert/flat/a/h$a;->a:Lcom/bytedance/ads/convert/flat/a/h$a;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ads/convert/flat/a/h;->b:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/bytedance/ads/convert/flat/a/h;Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .line 1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, -0x1

    const/16 v1, 0x17

    if-lt p0, v1, :cond_0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {p1}, Lcom/bytedance/ads/convert/flat/c/c;->a(Landroid/content/Context;)Lcom/bytedance/ads/convert/flat/c/c;

    move-result-object v2

    const-string v3, "netWorkUtils"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x3

    :try_start_0
    iget-object v9, v2, Lcom/bytedance/ads/convert/flat/c/c;->b:Landroid/net/ConnectivityManager;

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_3

    :cond_2
    if-lt p0, v1, :cond_6

    iget-object p0, v2, Lcom/bytedance/ads/convert/flat/c/c;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p0

    if-eqz p0, :cond_a

    iget-object v3, v2, Lcom/bytedance/ads/convert/flat/c/c;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, p0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p0, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    invoke-virtual {p0, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v9

    invoke-virtual {p0, v7}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_3
    iget-object v2, v2, Lcom/bytedance/ads/convert/flat/c/c;->b:Landroid/net/ConnectivityManager;

    invoke-static {v2}, Lcom/bytedance/ads/convert/flat/c/c;->a(Landroid/net/ConnectivityManager;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    if-eqz v9, :cond_9

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v7, :cond_8

    iget-object p0, v2, Lcom/bytedance/ads/convert/flat/c/c;->b:Landroid/net/ConnectivityManager;

    invoke-static {p0}, Lcom/bytedance/ads/convert/flat/c/c;->a(Landroid/net/ConnectivityManager;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_7

    :goto_0
    const/4 v4, 0x3

    goto :goto_4

    :cond_7
    :goto_1
    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    if-nez p0, :cond_9

    :goto_2
    const/4 v4, 0x2

    goto :goto_4

    :cond_9
    const/4 v4, 0x5

    goto :goto_4

    :catch_0
    :cond_a
    :goto_3
    const/4 v4, 0x0

    :goto_4
    if-ne v4, v8, :cond_b

    .line 3
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v1, :cond_b

    const-string p0, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {p1, p0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v0, :cond_b

    :goto_5
    const-string p0, "31128"

    goto :goto_6

    :cond_b
    if-eq v4, v8, :cond_c

    if-eq v4, v5, :cond_c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "21128"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_c
    const-string p0, "41128"

    :goto_6
    return-object p0
.end method


# virtual methods
.method public final a()Lcom/bytedance/ads/convert/flat/a/i;
    .locals 4

    .line 4
    sget-object v0, Lcom/bytedance/ads/convert/flat/a/h;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ads/convert/flat/a/a;

    .line 6
    iget-object v2, v2, Lcom/bytedance/ads/convert/flat/a/a;->b:Lcom/bytedance/ads/convert/flat/a/i;

    .line 7
    iget-object v2, v2, Lcom/bytedance/ads/convert/flat/a/i;->b:Ljava/lang/String;

    const-string v3, "01128"

    .line 8
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ads/convert/flat/a/a;

    .line 9
    iget-object v0, v0, Lcom/bytedance/ads/convert/flat/a/a;->b:Lcom/bytedance/ads/convert/flat/a/i;

    return-object v0

    .line 10
    :cond_1
    new-instance v0, Lcom/bytedance/ads/convert/flat/a/i;

    const-string v1, "111128"

    invoke-direct {v0, v1}, Lcom/bytedance/ads/convert/flat/a/i;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lcom/bytedance/ads/convert/flat/a/f;)V
    .locals 4

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/bytedance/ads/convert/flat/a/h;->a:Lcom/bytedance/ads/convert/flat/a/f;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "newConfig"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/bytedance/ads/convert/flat/a/f;->a:Z

    iput-boolean v1, v0, Lcom/bytedance/ads/convert/flat/a/f;->a:Z

    iget-object v1, v0, Lcom/bytedance/ads/convert/flat/a/f;->b:Lcom/bytedance/ads/convert/flat/a/e;

    iget-object v2, p1, Lcom/bytedance/ads/convert/flat/a/f;->b:Lcom/bytedance/ads/convert/flat/a/e;

    .line 12
    iget-boolean v3, v2, Lcom/bytedance/ads/convert/flat/a/e;->a:Z

    .line 13
    iput-boolean v3, v1, Lcom/bytedance/ads/convert/flat/a/e;->a:Z

    .line 14
    iget-wide v2, v2, Lcom/bytedance/ads/convert/flat/a/e;->b:J

    .line 15
    iput-wide v2, v1, Lcom/bytedance/ads/convert/flat/a/e;->b:J

    .line 16
    iget-object v1, v0, Lcom/bytedance/ads/convert/flat/a/f;->c:Lcom/bytedance/ads/convert/flat/a/e;

    iget-object v2, p1, Lcom/bytedance/ads/convert/flat/a/f;->c:Lcom/bytedance/ads/convert/flat/a/e;

    .line 17
    iget-boolean v3, v2, Lcom/bytedance/ads/convert/flat/a/e;->a:Z

    .line 18
    iput-boolean v3, v1, Lcom/bytedance/ads/convert/flat/a/e;->a:Z

    .line 19
    iget-wide v2, v2, Lcom/bytedance/ads/convert/flat/a/e;->b:J

    .line 20
    iput-wide v2, v1, Lcom/bytedance/ads/convert/flat/a/e;->b:J

    .line 21
    iget-object v0, v0, Lcom/bytedance/ads/convert/flat/a/f;->d:Lcom/bytedance/ads/convert/flat/a/e;

    iget-object p1, p1, Lcom/bytedance/ads/convert/flat/a/f;->d:Lcom/bytedance/ads/convert/flat/a/e;

    .line 22
    iget-boolean v1, p1, Lcom/bytedance/ads/convert/flat/a/e;->a:Z

    .line 23
    iput-boolean v1, v0, Lcom/bytedance/ads/convert/flat/a/e;->a:Z

    .line 24
    iget-wide v1, p1, Lcom/bytedance/ads/convert/flat/a/e;->b:J

    .line 25
    iput-wide v1, v0, Lcom/bytedance/ads/convert/flat/a/e;->b:J

    return-void
.end method
