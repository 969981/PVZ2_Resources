.class public Lcom/mobile/auth/e/a;
.super Lcom/mobile/auth/e/e;


# static fields
.field private static f:Lcom/mobile/auth/e/a;


# instance fields
.field private g:Lcom/cmic/sso/sdk/view/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mobile/auth/e/e;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mobile/auth/e/a;->g:Lcom/cmic/sso/sdk/view/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mobile/auth/e/a;
    .locals 2

    sget-object v0, Lcom/mobile/auth/e/a;->f:Lcom/mobile/auth/e/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/mobile/auth/e/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mobile/auth/e/a;->f:Lcom/mobile/auth/e/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mobile/auth/e/a;

    invoke-direct {v1, p0}, Lcom/mobile/auth/e/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mobile/auth/e/a;->f:Lcom/mobile/auth/e/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/mobile/auth/e/a;->f:Lcom/mobile/auth/e/a;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mobile/auth/e/a;->b(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/e/a;Lcom/cmic/sso/sdk/a;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/mobile/auth/e/e;->a(Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V
    .locals 3

    const-string v0, "traceId"

    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mobile/auth/l/e;->a(Ljava/lang/String;Lcom/cmic/sso/sdk/a;)V

    const-string p1, "com.cmic.sso.sdk.view.LoginAuthActivity"

    invoke-virtual {v2, p0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/cmic/sso/sdk/view/b;->a()Lcom/cmic/sso/sdk/view/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/b;->b()Lcom/cmic/sso/sdk/view/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cmic/sso/sdk/view/b;->a()Lcom/cmic/sso/sdk/view/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/b;->b()Lcom/cmic/sso/sdk/view/b$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmic/sso/sdk/view/b$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "AuthnHelper"

    const-string v1, "\u5173\u95ed\u6388\u6743\u9875\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mobile/auth/l/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected a(Lcom/cmic/sso/sdk/a;)V
    .locals 4

    new-instance v0, Lcom/mobile/auth/e/e$a;

    invoke-direct {v0, p0, p1}, Lcom/mobile/auth/e/e$a;-><init>(Lcom/mobile/auth/e/e;Lcom/cmic/sso/sdk/a;)V

    iget-object v1, p0, Lcom/mobile/auth/e/a;->d:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/mobile/auth/e/a;->c:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/mobile/auth/e/a;->a:Lcom/mobile/auth/e/c;

    new-instance v2, Lcom/mobile/auth/e/a$2;

    invoke-direct {v2, p0, v0}, Lcom/mobile/auth/e/a$2;-><init>(Lcom/mobile/auth/e/a;Lcom/mobile/auth/e/e$a;)V

    invoke-virtual {v1, p1, v2}, Lcom/mobile/auth/e/c;->a(Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/e/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/e/b;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mobile/auth/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/e/b;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/e/b;I)V
    .locals 8

    invoke-virtual {p0, p3}, Lcom/mobile/auth/e/a;->a(Lcom/mobile/auth/e/b;)Lcom/cmic/sso/sdk/a;

    move-result-object v4

    const-string v0, "SDKRequestCode"

    invoke-virtual {v4, v0, p4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;I)V

    new-instance p4, Lcom/mobile/auth/e/a$1;

    iget-object v2, p0, Lcom/mobile/auth/e/a;->b:Landroid/content/Context;

    move-object v0, p4

    move-object v1, p0

    move-object v3, v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/mobile/auth/e/a$1;-><init>(Lcom/mobile/auth/e/a;Landroid/content/Context;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/a;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/e/b;)V

    invoke-static {p4}, Lcom/mobile/auth/l/n;->a(Lcom/mobile/auth/l/n$a;)V

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/mobile/auth/e/a;->c:J

    return-wide v0
.end method
