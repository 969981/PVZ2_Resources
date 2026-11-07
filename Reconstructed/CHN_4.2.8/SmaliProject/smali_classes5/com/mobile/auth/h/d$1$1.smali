.class Lcom/mobile/auth/h/d$1$1;
.super Lcom/mobile/auth/l/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/h/d$1;->a(Landroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Network;

.field final synthetic b:Lcom/mobile/auth/h/d$1;


# direct methods
.method constructor <init>(Lcom/mobile/auth/h/d$1;Landroid/content/Context;Lcom/cmic/sso/sdk/a;Landroid/net/Network;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/h/d$1$1;->b:Lcom/mobile/auth/h/d$1;

    iput-object p4, p0, Lcom/mobile/auth/h/d$1$1;->a:Landroid/net/Network;

    invoke-direct {p0, p2, p3}, Lcom/mobile/auth/l/n$a;-><init>(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    iget-object v0, p0, Lcom/mobile/auth/h/d$1$1;->a:Landroid/net/Network;

    if-eqz v0, :cond_0

    const-string v0, "WifiChangeInterceptor"

    const-string v1, "onAvailable"

    invoke-static {v0, v1}, Lcom/mobile/auth/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/h/d$1$1;->b:Lcom/mobile/auth/h/d$1;

    iget-object v0, v0, Lcom/mobile/auth/h/d$1;->b:Lcom/mobile/auth/j/c;

    iget-object v1, p0, Lcom/mobile/auth/h/d$1$1;->a:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mobile/auth/j/c;->a(Landroid/net/Network;)V

    iget-object v0, p0, Lcom/mobile/auth/h/d$1$1;->b:Lcom/mobile/auth/h/d$1;

    iget-object v0, v0, Lcom/mobile/auth/h/d$1;->d:Lcom/mobile/auth/h/d;

    iget-object v1, p0, Lcom/mobile/auth/h/d$1$1;->b:Lcom/mobile/auth/h/d$1;

    iget-object v1, v1, Lcom/mobile/auth/h/d$1;->b:Lcom/mobile/auth/j/c;

    iget-object v2, p0, Lcom/mobile/auth/h/d$1$1;->b:Lcom/mobile/auth/h/d$1;

    iget-object v2, v2, Lcom/mobile/auth/h/d$1;->c:Lcom/mobile/auth/k/c;

    iget-object v3, p0, Lcom/mobile/auth/h/d$1$1;->b:Lcom/mobile/auth/h/d$1;

    iget-object v3, v3, Lcom/mobile/auth/h/d$1;->a:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobile/auth/h/d;->b(Lcom/mobile/auth/j/c;Lcom/mobile/auth/k/c;Lcom/cmic/sso/sdk/a;)V

    goto :goto_0

    :cond_0
    const v0, 0x1906c

    invoke-static {v0}, Lcom/mobile/auth/k/a;->a(I)Lcom/mobile/auth/k/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/h/d$1$1;->b:Lcom/mobile/auth/h/d$1;

    iget-object v1, v1, Lcom/mobile/auth/h/d$1;->c:Lcom/mobile/auth/k/c;

    invoke-interface {v1, v0}, Lcom/mobile/auth/k/c;->a(Lcom/mobile/auth/k/a;)V

    :goto_0
    return-void
.end method
