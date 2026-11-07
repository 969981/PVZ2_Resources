.class public final Lcom/bytedance/ads/convert/flat/k/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ads/convert/flat/k/b$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/bytedance/ads/convert/flat/k/c;

.field public final b:Lcom/bytedance/ads/convert/flat/k/e;

.field public final c:Z

.field public final d:Landroid/content/Context;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/bytedance/ads/convert/flat/k/d;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/bytedance/ads/convert/flat/k/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/ads/convert/flat/k/b$a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/k/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p1}, Lcom/bytedance/ads/convert/flat/k/b$a;->a(Lcom/bytedance/ads/convert/flat/k/b$a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/k/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/ads/convert/flat/c/b;->a(Landroid/content/Context;)Lcom/bytedance/ads/convert/flat/k/c;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/ads/convert/flat/k/b;->a:Lcom/bytedance/ads/convert/flat/k/c;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Lcom/bytedance/ads/convert/flat/k/c;->b(Landroid/content/Context;)Z

    move-result v1

    :cond_0
    iput-boolean v1, p0, Lcom/bytedance/ads/convert/flat/k/b;->c:Z

    new-instance v1, Lcom/bytedance/ads/convert/flat/k/e;

    invoke-direct {v1, v0}, Lcom/bytedance/ads/convert/flat/k/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/ads/convert/flat/k/b;->b:Lcom/bytedance/ads/convert/flat/k/e;

    invoke-static {p1}, Lcom/bytedance/ads/convert/flat/k/b$a;->b(Lcom/bytedance/ads/convert/flat/k/b$a;)Lcom/bytedance/ads/convert/flat/n/a;

    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/bytedance/ads/convert/flat/k/d;)Lcom/bytedance/ads/convert/flat/k/d;
    .locals 13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/ads/convert/flat/k/b;->a:Lcom/bytedance/ads/convert/flat/k/c;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-interface {v2, p1}, Lcom/bytedance/ads/convert/flat/k/c;->a(Landroid/content/Context;)Lcom/bytedance/ads/convert/flat/k/c$a;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 v2, -0x1

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    iget-object v3, p2, Lcom/bytedance/ads/convert/flat/k/d;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/bytedance/ads/convert/flat/k/d;->f:Ljava/lang/Integer;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    add-int/lit8 v2, p2, 0x1

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    move-object v7, v3

    if-gtz v2, :cond_3

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    instance-of p2, p1, Lcom/bytedance/ads/convert/flat/m/e$b;

    if-eqz p2, :cond_4

    move-object p2, p1

    check-cast p2, Lcom/bytedance/ads/convert/flat/m/e$b;

    iget-wide v0, p2, Lcom/bytedance/ads/convert/flat/m/e$b;->c:J

    :cond_4
    new-instance p2, Lcom/bytedance/ads/convert/flat/k/d;

    iget-object v6, p1, Lcom/bytedance/ads/convert/flat/k/c$a;->a:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/bytedance/ads/convert/flat/k/c$a;->b:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v5, p2

    invoke-direct/range {v5 .. v12}, Lcom/bytedance/ads/convert/flat/k/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)V

    return-object p2

    :cond_5
    return-object v3
.end method
