.class public final Lcom/mobile/auth/z/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 13

    const-string v0, "success_limit_time"

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lcom/mobile/auth/z/g;->a:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-static {p0, v0}, Lcom/mobile/auth/z/h;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-nez v2, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/mobile/auth/z/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    return v3

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v6, v4, v6

    const-wide/32 v8, 0x927c0

    const-wide/16 v10, 0x0

    const-string v2, "success_limit_count"

    cmp-long v12, v6, v8

    if-lez v12, :cond_2

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p0, v0, v4}, Lcom/mobile/auth/z/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/mobile/auth/z/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    return v3

    :cond_2
    invoke-static {p0, v2}, Lcom/mobile/auth/z/h;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/mobile/auth/z/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    return v3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v6, 0x32

    cmp-long p0, v4, v6

    if-gtz p0, :cond_4

    return v3

    :cond_4
    return v1

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return v1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    const-string v0, "success_limit_count"

    :try_start_0
    invoke-static {p0, v0}, Lcom/mobile/auth/z/h;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mobile/auth/z/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mobile/auth/z/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 13

    const-string v0, "failed_limit_time"

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lcom/mobile/auth/z/g;->a:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-static {p0, v0}, Lcom/mobile/auth/z/h;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-nez v2, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/mobile/auth/z/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    return v3

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v6, v4, v6

    const-wide/32 v8, 0x927c0

    const-wide/16 v10, 0x0

    const-string v2, "count_limit_count"

    cmp-long v12, v6, v8

    if-lez v12, :cond_2

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p0, v0, v4}, Lcom/mobile/auth/z/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/mobile/auth/z/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    return v3

    :cond_2
    invoke-static {p0, v2}, Lcom/mobile/auth/z/h;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/mobile/auth/z/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    return v3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v6, 0x32

    cmp-long p0, v4, v6

    if-gtz p0, :cond_4

    return v3

    :cond_4
    return v1

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return v1
.end method

.method public static d(Landroid/content/Context;)V
    .locals 5

    const-string v0, "count_limit_count"

    :try_start_0
    invoke-static {p0, v0}, Lcom/mobile/auth/z/h;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mobile/auth/z/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mobile/auth/z/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
