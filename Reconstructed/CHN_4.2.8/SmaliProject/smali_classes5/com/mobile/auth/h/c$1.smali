.class Lcom/mobile/auth/h/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mobile/auth/k/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/h/c;->b(Lcom/mobile/auth/j/c;Lcom/mobile/auth/k/c;Lcom/cmic/sso/sdk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/j/c;

.field final synthetic b:Lcom/cmic/sso/sdk/a;

.field final synthetic c:Lcom/mobile/auth/k/c;

.field final synthetic d:Lcom/mobile/auth/h/c;


# direct methods
.method constructor <init>(Lcom/mobile/auth/h/c;Lcom/mobile/auth/j/c;Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/k/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/h/c$1;->d:Lcom/mobile/auth/h/c;

    iput-object p2, p0, Lcom/mobile/auth/h/c$1;->a:Lcom/mobile/auth/j/c;

    iput-object p3, p0, Lcom/mobile/auth/h/c$1;->b:Lcom/cmic/sso/sdk/a;

    iput-object p4, p0, Lcom/mobile/auth/h/c$1;->c:Lcom/mobile/auth/k/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mobile/auth/k/a;)V
    .locals 3

    iget-object v0, p0, Lcom/mobile/auth/h/c$1;->a:Lcom/mobile/auth/j/c;

    invoke-virtual {v0}, Lcom/mobile/auth/j/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "retry: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mobile/auth/h/c$1;->a:Lcom/mobile/auth/j/c;

    invoke-virtual {v0}, Lcom/mobile/auth/j/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RetryAndRedirectInterceptor"

    invoke-static {v0, p1}, Lcom/mobile/auth/l/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/h/c$1;->d:Lcom/mobile/auth/h/c;

    iget-object v0, p0, Lcom/mobile/auth/h/c$1;->a:Lcom/mobile/auth/j/c;

    iget-object v1, p0, Lcom/mobile/auth/h/c$1;->c:Lcom/mobile/auth/k/c;

    iget-object v2, p0, Lcom/mobile/auth/h/c$1;->b:Lcom/cmic/sso/sdk/a;

    invoke-virtual {p1, v0, v1, v2}, Lcom/mobile/auth/h/c;->b(Lcom/mobile/auth/j/c;Lcom/mobile/auth/k/c;Lcom/cmic/sso/sdk/a;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/h/c$1;->c:Lcom/mobile/auth/k/c;

    invoke-interface {v0, p1}, Lcom/mobile/auth/k/c;->a(Lcom/mobile/auth/k/a;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/mobile/auth/k/b;)V
    .locals 3

    invoke-virtual {p1}, Lcom/mobile/auth/k/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/h/c$1;->d:Lcom/mobile/auth/h/c;

    invoke-static {v0}, Lcom/mobile/auth/h/c;->a(Lcom/mobile/auth/h/c;)Lcom/mobile/auth/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/h/c$1;->a:Lcom/mobile/auth/j/c;

    iget-object v2, p0, Lcom/mobile/auth/h/c$1;->b:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v0, v1, p1, v2}, Lcom/mobile/auth/g/a;->a(Lcom/mobile/auth/j/c;Lcom/mobile/auth/k/b;Lcom/cmic/sso/sdk/a;)Lcom/mobile/auth/j/c;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/mobile/auth/h/c$1;->d:Lcom/mobile/auth/h/c;

    iget-object v1, p0, Lcom/mobile/auth/h/c$1;->c:Lcom/mobile/auth/k/c;

    iget-object v2, p0, Lcom/mobile/auth/h/c$1;->b:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v0, p1, v1, v2}, Lcom/mobile/auth/h/c;->b(Lcom/mobile/auth/j/c;Lcom/mobile/auth/k/c;Lcom/cmic/sso/sdk/a;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/h/c$1;->d:Lcom/mobile/auth/h/c;

    invoke-static {v0}, Lcom/mobile/auth/h/c;->a(Lcom/mobile/auth/h/c;)Lcom/mobile/auth/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/g/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/h/c$1;->d:Lcom/mobile/auth/h/c;

    invoke-static {v0}, Lcom/mobile/auth/h/c;->a(Lcom/mobile/auth/h/c;)Lcom/mobile/auth/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/h/c$1;->a:Lcom/mobile/auth/j/c;

    iget-object v2, p0, Lcom/mobile/auth/h/c$1;->b:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v0, v1, p1, v2}, Lcom/mobile/auth/g/a;->b(Lcom/mobile/auth/j/c;Lcom/mobile/auth/k/b;Lcom/cmic/sso/sdk/a;)Lcom/mobile/auth/j/c;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mobile/auth/h/c$1;->c:Lcom/mobile/auth/k/c;

    invoke-interface {v0, p1}, Lcom/mobile/auth/k/c;->a(Lcom/mobile/auth/k/b;)V

    :goto_1
    return-void
.end method
