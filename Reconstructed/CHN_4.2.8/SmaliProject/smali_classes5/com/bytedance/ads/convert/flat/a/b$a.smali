.class public final Lcom/bytedance/ads/convert/flat/a/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/ads/convert/flat/c/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ads/convert/flat/a/b;->a(Landroid/content/Context;Landroid/net/Network;)Lcom/bytedance/ads/convert/flat/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/ads/convert/flat/a/b;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/bytedance/ads/convert/flat/a/b;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/CountDownLatch;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ads/convert/flat/a/b$a;->a:Lcom/bytedance/ads/convert/flat/a/b;

    iput-object p2, p0, Lcom/bytedance/ads/convert/flat/a/b$a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/ads/convert/flat/a/b$a;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/a/b$a;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/a/b$a;->a:Lcom/bytedance/ads/convert/flat/a/b;

    .line 1
    iget-object v0, v0, Lcom/bytedance/ads/convert/flat/a/a;->b:Lcom/bytedance/ads/convert/flat/a/i;

    const-string v1, "51128"

    .line 2
    iput-object v1, v0, Lcom/bytedance/ads/convert/flat/a/i;->b:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/a/b$a;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "body"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "resultCode"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "responseBody.getString(\"resultCode\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "103000"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "responseBody.getString(\"token\")"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "01128"

    move-object v0, p1

    goto :goto_0

    :catch_0
    const-string v1, "51128"

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bytedance/ads/convert/flat/a/b$a;->a:Lcom/bytedance/ads/convert/flat/a/b;

    .line 4
    iget-object p1, p1, Lcom/bytedance/ads/convert/flat/a/a;->b:Lcom/bytedance/ads/convert/flat/a/i;

    .line 5
    iput-object v0, p1, Lcom/bytedance/ads/convert/flat/a/i;->a:Ljava/lang/String;

    iput-object v1, p1, Lcom/bytedance/ads/convert/flat/a/i;->b:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p1, Lcom/bytedance/ads/convert/flat/a/i;->d:Ljava/lang/String;

    iput-object v0, p1, Lcom/bytedance/ads/convert/flat/a/i;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p1, Lcom/bytedance/ads/convert/flat/a/i;->e:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bytedance/ads/convert/flat/a/i;->g:J

    .line 6
    iget-object p1, p0, Lcom/bytedance/ads/convert/flat/a/b$a;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
