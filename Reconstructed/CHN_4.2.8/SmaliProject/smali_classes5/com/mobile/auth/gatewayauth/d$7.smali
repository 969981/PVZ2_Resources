.class Lcom/mobile/auth/gatewayauth/d$7;
.super Lcom/nirvana/tools/core/ExecutorManager$SafeRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/d;->d(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/mobile/auth/gatewayauth/d;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/d;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/d$7;->b:Lcom/mobile/auth/gatewayauth/d;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/d$7;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/nirvana/tools/core/ExecutorManager$SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/lang/Throwable;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$7;->b:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/d;->d(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/o/a;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "QuitActivity error!"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/nirvana/tools/core/ExecutorManager;->getErrorInfoFromException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected onFinal()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Lcom/nirvana/tools/core/ExecutorManager$SafeRunnable;->onFinal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected safeRun()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$7;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$7;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$7;->b:Lcom/mobile/auth/gatewayauth/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/d;->b(Lcom/mobile/auth/gatewayauth/d;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$7;->b:Lcom/mobile/auth/gatewayauth/d;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/d$7;->b:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/d;->r()Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/d;->a(Lcom/mobile/auth/gatewayauth/d;Lcom/mobile/auth/gatewayauth/AuthUIConfig;)Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$7;->b:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/d;->e(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPrivacyAlertExitAnimation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$7;->b:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/d;->e(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPrivacyAlertEntryAnimation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$7;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/d$7;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/d$7;->b:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/d;->e(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPrivacyAlertEntryAnimation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nirvana/tools/core/AppUtils;->getAnimResID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/d$7;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/d$7;->b:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v3}, Lcom/mobile/auth/gatewayauth/d;->e(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPrivacyAlertExitAnimation()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nirvana/tools/core/AppUtils;->getAnimResID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
