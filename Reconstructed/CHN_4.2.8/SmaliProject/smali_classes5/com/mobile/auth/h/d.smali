.class public Lcom/mobile/auth/h/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mobile/auth/h/b;


# instance fields
.field private a:Lcom/mobile/auth/h/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mobile/auth/h/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/h/d;->a:Lcom/mobile/auth/h/b;

    return-void
.end method

.method public a(Lcom/mobile/auth/j/c;Lcom/mobile/auth/k/c;Lcom/cmic/sso/sdk/a;)V
    .locals 3

    invoke-virtual {p1}, Lcom/mobile/auth/j/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/mobile/auth/h/d;->b(Lcom/mobile/auth/j/c;Lcom/mobile/auth/k/c;Lcom/cmic/sso/sdk/a;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mobile/auth/l/r;->a(Landroid/content/Context;)Lcom/mobile/auth/l/r;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    new-instance v1, Lcom/mobile/auth/h/d$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/mobile/auth/h/d$1;-><init>(Lcom/mobile/auth/h/d;Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/j/c;Lcom/mobile/auth/k/c;)V

    invoke-virtual {v0, v1}, Lcom/mobile/auth/l/r;->a(Lcom/mobile/auth/l/r$a;)V

    goto :goto_0

    :cond_1
    const-string p1, "WifiChangeInterceptor"

    const-string p3, "\u4f4e\u7248\u672c\u4e0d\u5728\u652f\u6301wifi\u5207\u6362"

    invoke-static {p1, p3}, Lcom/mobile/auth/l/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x1906c

    invoke-static {p1}, Lcom/mobile/auth/k/a;->a(I)Lcom/mobile/auth/k/a;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/mobile/auth/k/c;->a(Lcom/mobile/auth/k/a;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/mobile/auth/j/c;Lcom/mobile/auth/k/c;Lcom/cmic/sso/sdk/a;)V
    .locals 2

    iget-object v0, p0, Lcom/mobile/auth/h/d;->a:Lcom/mobile/auth/h/b;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mobile/auth/h/d$2;

    invoke-direct {v1, p0, p2}, Lcom/mobile/auth/h/d$2;-><init>(Lcom/mobile/auth/h/d;Lcom/mobile/auth/k/c;)V

    invoke-interface {v0, p1, v1, p3}, Lcom/mobile/auth/h/b;->a(Lcom/mobile/auth/j/c;Lcom/mobile/auth/k/c;Lcom/cmic/sso/sdk/a;)V

    :cond_0
    return-void
.end method
