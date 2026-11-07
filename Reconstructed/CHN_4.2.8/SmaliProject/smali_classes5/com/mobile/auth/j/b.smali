.class public Lcom/mobile/auth/j/b;
.super Lcom/mobile/auth/j/c;


# instance fields
.field private final b:Lcom/mobile/auth/i/e;

.field private c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mobile/auth/i/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mobile/auth/j/c;-><init>(Ljava/lang/String;Lcom/mobile/auth/i/g;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mobile/auth/j/b;->c:Z

    iput-object p2, p0, Lcom/mobile/auth/j/b;->b:Lcom/mobile/auth/i/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/cmic/sso/sdk/a;)V
    .locals 4

    iget-boolean v0, p0, Lcom/mobile/auth/j/b;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mobile/auth/j/b;->b:Lcom/mobile/auth/i/e;

    invoke-virtual {v0}, Lcom/mobile/auth/i/e;->c()Lcom/mobile/auth/i/a;

    move-result-object v0

    const-string v1, "isCloseIpv4"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    invoke-static {v3}, Lcom/mobile/auth/l/p;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/i/a;->q(Ljava/lang/String;)V

    :cond_0
    const-string v1, "isCloseIpv6"

    invoke-virtual {p1, v1, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v3}, Lcom/mobile/auth/l/p;->b(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/i/a;->r(Ljava/lang/String;)V

    :cond_1
    const-string v1, "appkey"

    invoke-virtual {p1, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mobile/auth/i/a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mobile/auth/i/a;->n(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/j/b;->b:Lcom/mobile/auth/i/e;

    invoke-virtual {p1, v0}, Lcom/mobile/auth/i/e;->a(Lcom/mobile/auth/i/a;)V

    iget-object p1, p0, Lcom/mobile/auth/j/b;->b:Lcom/mobile/auth/i/e;

    invoke-virtual {p1, v3}, Lcom/mobile/auth/i/e;->a(Z)V

    iget-object p1, p0, Lcom/mobile/auth/j/b;->b:Lcom/mobile/auth/i/e;

    invoke-virtual {p1}, Lcom/mobile/auth/i/e;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/j/b;->a:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/mobile/auth/j/b;->c:Z

    :cond_2
    return-void
.end method
