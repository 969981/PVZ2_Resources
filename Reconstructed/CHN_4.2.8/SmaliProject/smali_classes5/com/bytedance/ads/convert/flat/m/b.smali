.class public abstract Lcom/bytedance/ads/convert/flat/m/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/ads/convert/flat/k/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SERVICE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/ads/convert/flat/k/c;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/bytedance/ads/convert/flat/n/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/ads/convert/flat/n/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/ads/convert/flat/m/b$a;

    invoke-direct {v0, p0}, Lcom/bytedance/ads/convert/flat/m/b$a;-><init>(Lcom/bytedance/ads/convert/flat/m/b;)V

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/m/b;->b:Lcom/bytedance/ads/convert/flat/n/c;

    iput-object p1, p0, Lcom/bytedance/ads/convert/flat/m/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/bytedance/ads/convert/flat/k/c$a;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/bytedance/ads/convert/flat/m/b;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/ads/convert/flat/m/b;->a()Lcom/bytedance/ads/convert/flat/m/o$b;

    move-result-object v1

    new-instance v2, Lcom/bytedance/ads/convert/flat/m/o;

    invoke-direct {v2, p1, v0, v1}, Lcom/bytedance/ads/convert/flat/m/o;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/ads/convert/flat/m/o$b;)V

    invoke-virtual {v2}, Lcom/bytedance/ads/convert/flat/m/o;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/ads/convert/flat/k/c$a;

    invoke-direct {v0}, Lcom/bytedance/ads/convert/flat/k/c$a;-><init>()V

    iput-object p1, v0, Lcom/bytedance/ads/convert/flat/k/c$a;->a:Ljava/lang/String;

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public abstract a()Lcom/bytedance/ads/convert/flat/m/o$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/ads/convert/flat/m/o$b<",
            "TSERVICE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public b(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/m/b;->b:Lcom/bytedance/ads/convert/flat/n/c;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lcom/bytedance/ads/convert/flat/n/c;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public abstract c(Landroid/content/Context;)Landroid/content/Intent;
.end method
