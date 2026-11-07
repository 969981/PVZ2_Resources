.class public Lcom/mobile/auth/h/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mobile/auth/h/b;


# instance fields
.field private a:Lcom/mobile/auth/h/b;

.field private b:Lcom/mobile/auth/k/c;

.field private final c:Lcom/mobile/auth/g/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mobile/auth/g/a;

    invoke-direct {v0}, Lcom/mobile/auth/g/a;-><init>()V

    iput-object v0, p0, Lcom/mobile/auth/h/c;->c:Lcom/mobile/auth/g/a;

    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/h/c;)Lcom/mobile/auth/g/a;
    .locals 0

    iget-object p0, p0, Lcom/mobile/auth/h/c;->c:Lcom/mobile/auth/g/a;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mobile/auth/h/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/h/c;->a:Lcom/mobile/auth/h/b;

    return-void
.end method

.method public a(Lcom/mobile/auth/j/c;Lcom/mobile/auth/k/c;Lcom/cmic/sso/sdk/a;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/mobile/auth/h/c;->b(Lcom/mobile/auth/j/c;Lcom/mobile/auth/k/c;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

.method public b(Lcom/mobile/auth/j/c;Lcom/mobile/auth/k/c;Lcom/cmic/sso/sdk/a;)V
    .locals 1

    iget-object v0, p0, Lcom/mobile/auth/h/c;->a:Lcom/mobile/auth/h/b;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/mobile/auth/h/c$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/mobile/auth/h/c$1;-><init>(Lcom/mobile/auth/h/c;Lcom/mobile/auth/j/c;Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/k/c;)V

    iput-object v0, p0, Lcom/mobile/auth/h/c;->b:Lcom/mobile/auth/k/c;

    invoke-virtual {p1}, Lcom/mobile/auth/j/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/mobile/auth/h/c;->a:Lcom/mobile/auth/h/b;

    iget-object v0, p0, Lcom/mobile/auth/h/c;->b:Lcom/mobile/auth/k/c;

    invoke-interface {p2, p1, v0, p3}, Lcom/mobile/auth/h/b;->a(Lcom/mobile/auth/j/c;Lcom/mobile/auth/k/c;Lcom/cmic/sso/sdk/a;)V

    goto :goto_0

    :cond_0
    const p1, 0x30d59

    invoke-static {p1}, Lcom/mobile/auth/k/a;->a(I)Lcom/mobile/auth/k/a;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/mobile/auth/k/c;->a(Lcom/mobile/auth/k/a;)V

    :cond_1
    :goto_0
    return-void
.end method
