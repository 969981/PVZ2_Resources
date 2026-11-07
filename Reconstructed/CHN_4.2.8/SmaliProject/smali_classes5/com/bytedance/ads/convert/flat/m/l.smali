.class public final Lcom/bytedance/ads/convert/flat/m/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/ads/convert/flat/k/c;


# instance fields
.field public final a:Lcom/bytedance/ads/convert/flat/k/c;

.field public b:Lcom/bytedance/ads/convert/flat/n/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/ads/convert/flat/n/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/ads/convert/flat/k/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/ads/convert/flat/m/l$a;

    invoke-direct {v0, p0}, Lcom/bytedance/ads/convert/flat/m/l$a;-><init>(Lcom/bytedance/ads/convert/flat/m/l;)V

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/m/l;->b:Lcom/bytedance/ads/convert/flat/n/c;

    iput-object p1, p0, Lcom/bytedance/ads/convert/flat/m/l;->a:Lcom/bytedance/ads/convert/flat/k/c;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/bytedance/ads/convert/flat/k/c$a;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/m/l;->a:Lcom/bytedance/ads/convert/flat/k/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/m/l;->b:Lcom/bytedance/ads/convert/flat/n/c;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bytedance/ads/convert/flat/n/c;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/m/l;->a:Lcom/bytedance/ads/convert/flat/k/c;

    invoke-interface {v0, p1}, Lcom/bytedance/ads/convert/flat/k/c;->a(Landroid/content/Context;)Lcom/bytedance/ads/convert/flat/k/c$a;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.heytap.openid"

    const-string v3, "com.heytap.openid.IdentifyService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "action.com.heytap.openid.OPEN_ID_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/bytedance/ads/convert/flat/m/o;

    new-instance v2, Lcom/bytedance/ads/convert/flat/m/l$b;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/ads/convert/flat/m/l$b;-><init>(Lcom/bytedance/ads/convert/flat/m/l;Landroid/content/Context;)V

    invoke-direct {v1, p1, v0, v2}, Lcom/bytedance/ads/convert/flat/m/o;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/ads/convert/flat/m/o$b;)V

    invoke-virtual {v1}, Lcom/bytedance/ads/convert/flat/m/o;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Lcom/bytedance/ads/convert/flat/k/c$a;

    invoke-direct {v0}, Lcom/bytedance/ads/convert/flat/k/c$a;-><init>()V

    iput-object p1, v0, Lcom/bytedance/ads/convert/flat/k/c$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/m/l;->b:Lcom/bytedance/ads/convert/flat/n/c;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lcom/bytedance/ads/convert/flat/n/c;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/m/l;->a:Lcom/bytedance/ads/convert/flat/k/c;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/m/l;->a:Lcom/bytedance/ads/convert/flat/k/c;

    invoke-interface {v0, p1}, Lcom/bytedance/ads/convert/flat/k/c;->b(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
