.class final Lcom/mobile/auth/z/k$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/z/k;->a(Landroid/content/Context;ILjava/lang/Object;Lcom/mobile/auth/z/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/mobile/auth/z/m;

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Lcom/mobile/auth/z/k;


# direct methods
.method constructor <init>(Lcom/mobile/auth/z/k;ILandroid/content/Context;Lcom/mobile/auth/z/m;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/z/k$4;->e:Lcom/mobile/auth/z/k;

    iput p2, p0, Lcom/mobile/auth/z/k$4;->a:I

    iput-object p3, p0, Lcom/mobile/auth/z/k$4;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/mobile/auth/z/k$4;->c:Lcom/mobile/auth/z/m;

    iput-object p5, p0, Lcom/mobile/auth/z/k$4;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    const-string v0, ""

    iget v1, p0, Lcom/mobile/auth/z/k$4;->a:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/z/k$4;->c:Lcom/mobile/auth/z/m;

    iget v2, p0, Lcom/mobile/auth/z/k$4;->a:I

    const v3, 0x64199

    const-string v4, "410009no this type"

    invoke-interface {v1, v2, v3, v4}, Lcom/mobile/auth/z/m;->a(IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mobile/auth/z/u;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mobile/auth/z/k$4;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mobile/auth/z/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&"

    invoke-static {v1, v2}, Lcom/mobile/auth/z/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/mobile/auth/z/n;

    invoke-direct {v1}, Lcom/mobile/auth/z/n;-><init>()V

    iget-object v2, p0, Lcom/mobile/auth/z/k$4;->b:Landroid/content/Context;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 %sSafari/533.1"

    const-string v5, "user-agent"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "netType"

    const-string v5, "2"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "os"

    const-string v5, "android"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Accept"

    const-string v5, "*/*"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/mobile/auth/z/k$4;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/mobile/auth/z/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mobile/auth/z/u;->h()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :try_start_1
    invoke-static {}, Lcom/mobile/auth/z/q;->a()Lcom/mobile/auth/z/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/z/q;->b()V

    const-string v1, "\n  WIFI + \u6d41\u91cf \n call releaseNetwork() \n"

    invoke-static {v1}, Lcom/mobile/auth/z/t;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-static {}, Lcom/mobile/auth/z/t;->b()V

    :cond_1
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/mobile/auth/z/k$4;->c:Lcom/mobile/auth/z/m;

    iget v1, p0, Lcom/mobile/auth/z/k$4;->a:I

    const v2, 0x64192

    const-string v3, "\u7f51\u7edc\u8bf7\u6c42\u54cd\u5e94\u4e3a\u7a7a"

    invoke-interface {v0, v1, v2, v3}, Lcom/mobile/auth/z/m;->a(IILjava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/mobile/auth/z/k$4;->c:Lcom/mobile/auth/z/m;

    iget v3, p0, Lcom/mobile/auth/z/k$4;->a:I

    invoke-interface {v1, v3, v2, v0}, Lcom/mobile/auth/z/m;->a(IILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    :try_start_3
    invoke-static {}, Lcom/mobile/auth/z/t;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
