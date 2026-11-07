.class public Lcom/mobile/auth/gatewayauth/detectnet/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pingNet\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "checkTimeoutDetect  transferCode\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/j;->a(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/mobile/auth/o/a;->a(Landroid/content/Context;)Lcom/mobile/auth/o/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/o/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "600015"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mobile/auth/gatewayauth/detectnet/e;->a()Lcom/mobile/auth/gatewayauth/detectnet/e;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/mobile/auth/gatewayauth/detectnet/e;->a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/detectnet/e;

    move-result-object p0

    new-instance p4, Lcom/mobile/auth/gatewayauth/detectnet/f$1;

    invoke-direct {p4, p5, p3}, Lcom/mobile/auth/gatewayauth/detectnet/f$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0, p3, p1, p2, p4}, Lcom/mobile/auth/gatewayauth/detectnet/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/detectnet/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
