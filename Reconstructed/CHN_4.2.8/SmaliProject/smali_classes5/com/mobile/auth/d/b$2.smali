.class Lcom/mobile/auth/d/b$2;
.super Lcom/mobile/auth/l/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/d/b;->a(Lcom/cmic/sso/sdk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/a;

.field final synthetic b:Lcom/mobile/auth/d/b;


# direct methods
.method constructor <init>(Lcom/mobile/auth/d/b;Lcom/cmic/sso/sdk/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/d/b$2;->b:Lcom/mobile/auth/d/b;

    iput-object p2, p0, Lcom/mobile/auth/d/b$2;->a:Lcom/cmic/sso/sdk/a;

    invoke-direct {p0}, Lcom/mobile/auth/l/n$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    const-string v0, "UmcConfigHandle"

    const-string v1, "\u5f00\u59cb\u62c9\u53d6\u914d\u7f6e.."

    invoke-static {v0, v1}, Lcom/mobile/auth/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/d/b$2;->b:Lcom/mobile/auth/d/b;

    iget-object v1, p0, Lcom/mobile/auth/d/b$2;->a:Lcom/cmic/sso/sdk/a;

    invoke-static {v0, v1}, Lcom/mobile/auth/d/b;->a(Lcom/mobile/auth/d/b;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method
