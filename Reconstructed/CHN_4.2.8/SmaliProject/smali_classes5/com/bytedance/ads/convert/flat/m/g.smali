.class public Lcom/bytedance/ads/convert/flat/m/g;
.super Lcom/bytedance/ads/convert/flat/m/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/ads/convert/flat/m/b<",
        "Lcom/bytedance/ads/convert/flat/j/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/bytedance/ads/convert/flat/l/a;

.field public final d:Lcom/bytedance/ads/convert/flat/l/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.hihonor.id"

    invoke-direct {p0, v0}, Lcom/bytedance/ads/convert/flat/m/b;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/ads/convert/flat/l/a;

    invoke-direct {v0}, Lcom/bytedance/ads/convert/flat/l/a;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/m/g;->c:Lcom/bytedance/ads/convert/flat/l/a;

    new-instance v0, Lcom/bytedance/ads/convert/flat/l/b;

    invoke-direct {v0}, Lcom/bytedance/ads/convert/flat/l/b;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/m/g;->d:Lcom/bytedance/ads/convert/flat/l/b;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/bytedance/ads/convert/flat/k/c$a;
    .locals 4

    new-instance v0, Lcom/bytedance/ads/convert/flat/k/c$a;

    invoke-direct {v0}, Lcom/bytedance/ads/convert/flat/k/c$a;-><init>()V

    .line 1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hihonor.id.HnOaIdService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.hihonor.id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2
    new-instance v2, Lcom/bytedance/ads/convert/flat/m/g$a;

    invoke-direct {v2, p0}, Lcom/bytedance/ads/convert/flat/m/g$a;-><init>(Lcom/bytedance/ads/convert/flat/m/g;)V

    .line 3
    new-instance v3, Lcom/bytedance/ads/convert/flat/m/o;

    invoke-direct {v3, p1, v1, v2}, Lcom/bytedance/ads/convert/flat/m/o;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/ads/convert/flat/m/o$b;)V

    invoke-virtual {v3}, Lcom/bytedance/ads/convert/flat/m/o;->a()Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/ads/convert/flat/m/g;->c:Lcom/bytedance/ads/convert/flat/l/a;

    .line 4
    iget-object p1, p1, Lcom/bytedance/ads/convert/flat/l/a;->a:Ljava/lang/String;

    .line 5
    iput-object p1, v0, Lcom/bytedance/ads/convert/flat/k/c$a;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/ads/convert/flat/m/g;->d:Lcom/bytedance/ads/convert/flat/l/b;

    .line 6
    iget-boolean p1, p1, Lcom/bytedance/ads/convert/flat/l/b;->a:Z

    .line 7
    iput-boolean p1, v0, Lcom/bytedance/ads/convert/flat/k/c$a;->b:Z

    iget-object p1, v0, Lcom/bytedance/ads/convert/flat/k/c$a;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-object v0
.end method

.method public a()Lcom/bytedance/ads/convert/flat/m/o$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/ads/convert/flat/m/o$b<",
            "Lcom/bytedance/ads/convert/flat/j/f;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/ads/convert/flat/m/g$a;

    invoke-direct {v0, p0}, Lcom/bytedance/ads/convert/flat/m/g$a;-><init>(Lcom/bytedance/ads/convert/flat/m/g;)V

    return-object v0
.end method

.method public c(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.hihonor.id.HnOaIdService"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.hihonor.id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method
