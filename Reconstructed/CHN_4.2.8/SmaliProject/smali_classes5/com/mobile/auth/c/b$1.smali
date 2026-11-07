.class Lcom/mobile/auth/c/b$1;
.super Lcom/mobile/auth/c/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/mobile/auth/a/b;

.field final synthetic h:Lcom/mobile/auth/c/b;


# direct methods
.method constructor <init>(Lcom/mobile/auth/c/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/c/b$1;->h:Lcom/mobile/auth/c/b;

    iput-object p2, p0, Lcom/mobile/auth/c/b$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/mobile/auth/c/b$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mobile/auth/c/b$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/mobile/auth/c/b$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/mobile/auth/c/b$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/mobile/auth/c/b$1;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/mobile/auth/c/b$1;->g:Lcom/mobile/auth/a/b;

    invoke-direct {p0}, Lcom/mobile/auth/c/r$a;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/c/b$1;->h:Lcom/mobile/auth/c/b;

    iget-object v1, p0, Lcom/mobile/auth/c/b$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobile/auth/c/b$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobile/auth/c/b$1;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/mobile/auth/c/b$1;->d:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mobile/auth/c/b$1;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/mobile/auth/c/b$1;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/mobile/auth/c/b;->a(Lcom/mobile/auth/c/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mobile/auth/c/b$1;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/c/b$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobile/auth/c/b$1;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobile/auth/c/b$1;->g:Lcom/mobile/auth/a/b;

    invoke-static {v1, v0, v2, v3}, Lcom/mobile/auth/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/a/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
