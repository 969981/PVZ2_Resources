.class Lcom/mobile/auth/h/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mobile/auth/l/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/h/d;->a(Lcom/mobile/auth/j/c;Lcom/mobile/auth/k/c;Lcom/cmic/sso/sdk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/a;

.field final synthetic b:Lcom/mobile/auth/j/c;

.field final synthetic c:Lcom/mobile/auth/k/c;

.field final synthetic d:Lcom/mobile/auth/h/d;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/mobile/auth/h/d;Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/j/c;Lcom/mobile/auth/k/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/h/d$1;->d:Lcom/mobile/auth/h/d;

    iput-object p2, p0, Lcom/mobile/auth/h/d$1;->a:Lcom/cmic/sso/sdk/a;

    iput-object p3, p0, Lcom/mobile/auth/h/d$1;->b:Lcom/mobile/auth/j/c;

    iput-object p4, p0, Lcom/mobile/auth/h/d$1;->c:Lcom/mobile/auth/k/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/mobile/auth/h/d$1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Network;)V
    .locals 3

    iget-object v0, p0, Lcom/mobile/auth/h/d$1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/mobile/auth/h/d$1$1;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mobile/auth/h/d$1;->a:Lcom/cmic/sso/sdk/a;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/mobile/auth/h/d$1$1;-><init>(Lcom/mobile/auth/h/d$1;Landroid/content/Context;Lcom/cmic/sso/sdk/a;Landroid/net/Network;)V

    invoke-static {v0}, Lcom/mobile/auth/l/n;->a(Lcom/mobile/auth/l/n$a;)V

    :cond_0
    return-void
.end method
