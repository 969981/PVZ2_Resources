.class Lcom/mobile/auth/e/a$1;
.super Lcom/mobile/auth/l/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/e/b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/mobile/auth/e/b;

.field final synthetic e:Lcom/mobile/auth/e/a;


# direct methods
.method constructor <init>(Lcom/mobile/auth/e/a;Landroid/content/Context;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/a;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/e/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/e/a$1;->e:Lcom/mobile/auth/e/a;

    iput-object p4, p0, Lcom/mobile/auth/e/a$1;->a:Lcom/cmic/sso/sdk/a;

    iput-object p5, p0, Lcom/mobile/auth/e/a$1;->b:Ljava/lang/String;

    iput-object p6, p0, Lcom/mobile/auth/e/a$1;->c:Ljava/lang/String;

    iput-object p7, p0, Lcom/mobile/auth/e/a$1;->d:Lcom/mobile/auth/e/b;

    invoke-direct {p0, p2, p3}, Lcom/mobile/auth/l/n$a;-><init>(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 7

    iget-object v0, p0, Lcom/mobile/auth/e/a$1;->e:Lcom/mobile/auth/e/a;

    iget-object v1, p0, Lcom/mobile/auth/e/a$1;->a:Lcom/cmic/sso/sdk/a;

    iget-object v2, p0, Lcom/mobile/auth/e/a$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobile/auth/e/a$1;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/mobile/auth/e/a$1;->d:Lcom/mobile/auth/e/b;

    const-string v4, "mobileAuth"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/mobile/auth/e/a;->a(Lcom/cmic/sso/sdk/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mobile/auth/e/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/e/a$1;->e:Lcom/mobile/auth/e/a;

    iget-object v1, p0, Lcom/mobile/auth/e/a$1;->a:Lcom/cmic/sso/sdk/a;

    invoke-static {v0, v1}, Lcom/mobile/auth/e/a;->a(Lcom/mobile/auth/e/a;Lcom/cmic/sso/sdk/a;)V

    :cond_0
    return-void
.end method
