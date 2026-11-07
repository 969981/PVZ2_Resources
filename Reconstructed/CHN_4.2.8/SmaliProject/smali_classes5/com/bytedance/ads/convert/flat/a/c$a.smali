.class public final Lcom/bytedance/ads/convert/flat/a/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/ads/convert/flat/c/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ads/convert/flat/a/c;->a(Landroid/content/Context;Landroid/net/Network;)Lcom/bytedance/ads/convert/flat/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/ads/convert/flat/a/c;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/bytedance/ads/convert/flat/a/c;Ljava/lang/String;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/CountDownLatch;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ads/convert/flat/a/c$a;->a:Lcom/bytedance/ads/convert/flat/a/c;

    iput-object p2, p0, Lcom/bytedance/ads/convert/flat/a/c$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/ads/convert/flat/a/c$a;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/bytedance/ads/convert/flat/a/c$a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/a/c$a;->a:Lcom/bytedance/ads/convert/flat/a/c;

    .line 1
    iget-object v0, v0, Lcom/bytedance/ads/convert/flat/a/a;->b:Lcom/bytedance/ads/convert/flat/a/i;

    const-string v1, "51128"

    .line 2
    iput-object v1, v0, Lcom/bytedance/ads/convert/flat/a/i;->b:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/a/c$a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 8

    const-string v0, "0"

    const-string v1, "response"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ""

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "result"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance p1, Lorg/json/JSONObject;

    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    sget-object v4, Lcom/bytedance/ads/convert/flat/c/a;->a:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v4, v0, [B

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    mul-int/lit8 v6, v5, 0x2

    add-int/lit8 v7, v6, 0x2

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/a/c$a;->b:Ljava/lang/String;

    invoke-static {v2, v4, v0}, Lcom/bytedance/ads/convert/flat/c/a;->a(Z[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "accessCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "data.getString(\"accessCode\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "01128"

    move-object v1, p1

    move-object p1, v0

    goto :goto_1

    :catch_0
    const-string p1, "51128"

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/a/c$a;->a:Lcom/bytedance/ads/convert/flat/a/c;

    .line 6
    iget-object v0, v0, Lcom/bytedance/ads/convert/flat/a/a;->b:Lcom/bytedance/ads/convert/flat/a/i;

    .line 7
    iput-object v1, v0, Lcom/bytedance/ads/convert/flat/a/i;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/bytedance/ads/convert/flat/a/i;->b:Ljava/lang/String;

    const-string p1, "2"

    iput-object p1, v0, Lcom/bytedance/ads/convert/flat/a/i;->d:Ljava/lang/String;

    iput-object p1, v0, Lcom/bytedance/ads/convert/flat/a/i;->c:Ljava/lang/String;

    iput v2, v0, Lcom/bytedance/ads/convert/flat/a/i;->e:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/ads/convert/flat/a/i;->g:J

    .line 8
    iget-object p1, p0, Lcom/bytedance/ads/convert/flat/a/c$a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
