.class Lcom/mobile/auth/h/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mobile/auth/k/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/h/d;->b(Lcom/mobile/auth/j/c;Lcom/mobile/auth/k/c;Lcom/cmic/sso/sdk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/k/c;

.field final synthetic b:Lcom/mobile/auth/h/d;


# direct methods
.method constructor <init>(Lcom/mobile/auth/h/d;Lcom/mobile/auth/k/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/h/d$2;->b:Lcom/mobile/auth/h/d;

    iput-object p2, p0, Lcom/mobile/auth/h/d$2;->a:Lcom/mobile/auth/k/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mobile/auth/k/a;)V
    .locals 1

    iget-object v0, p0, Lcom/mobile/auth/h/d$2;->a:Lcom/mobile/auth/k/c;

    invoke-interface {v0, p1}, Lcom/mobile/auth/k/c;->a(Lcom/mobile/auth/k/a;)V

    return-void
.end method

.method public a(Lcom/mobile/auth/k/b;)V
    .locals 1

    iget-object v0, p0, Lcom/mobile/auth/h/d$2;->a:Lcom/mobile/auth/k/c;

    invoke-interface {v0, p1}, Lcom/mobile/auth/k/c;->a(Lcom/mobile/auth/k/b;)V

    return-void
.end method
