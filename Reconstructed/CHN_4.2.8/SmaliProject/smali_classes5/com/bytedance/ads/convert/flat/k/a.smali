.class public Lcom/bytedance/ads/convert/flat/k/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/bytedance/ads/convert/flat/k/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/ads/convert/flat/k/b;


# direct methods
.method public constructor <init>(Lcom/bytedance/ads/convert/flat/k/b;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ads/convert/flat/k/a;->a:Lcom/bytedance/ads/convert/flat/k/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/k/a;->a:Lcom/bytedance/ads/convert/flat/k/b;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Lcom/bytedance/ads/convert/flat/k/b;->b:Lcom/bytedance/ads/convert/flat/k/e;

    invoke-virtual {v1}, Lcom/bytedance/ads/convert/flat/k/e;->a()Lcom/bytedance/ads/convert/flat/k/d;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v0, Lcom/bytedance/ads/convert/flat/k/b;->g:Lcom/bytedance/ads/convert/flat/k/d;

    :cond_0
    iget-object v2, v0, Lcom/bytedance/ads/convert/flat/k/b;->d:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/ads/convert/flat/k/b;->a(Landroid/content/Context;Lcom/bytedance/ads/convert/flat/k/d;)Lcom/bytedance/ads/convert/flat/k/d;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/bytedance/ads/convert/flat/k/b;->b:Lcom/bytedance/ads/convert/flat/k/e;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcom/bytedance/ads/convert/flat/k/e;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bytedance/ads/convert/flat/k/d;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "oaid"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    if-eqz v1, :cond_3

    .line 4
    iput-object v1, v0, Lcom/bytedance/ads/convert/flat/k/b;->g:Lcom/bytedance/ads/convert/flat/k/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v0, v0, Lcom/bytedance/ads/convert/flat/k/b;->g:Lcom/bytedance/ads/convert/flat/k/d;

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/ads/convert/flat/k/d;->h:Ljava/lang/String;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    const/4 v1, 0x0

    :cond_3
    :goto_0
    return-object v1
.end method
