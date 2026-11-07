.class public Lcom/mobile/auth/n/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mobile/auth/gatewayauth/PnsReporter;


# instance fields
.field private a:Lcom/mobile/auth/o/a;

.field private b:Lcom/mobile/auth/gatewayauth/manager/d;

.field private c:Lcom/mobile/auth/gatewayauth/manager/e;


# direct methods
.method public constructor <init>(Lcom/mobile/auth/o/a;Lcom/mobile/auth/gatewayauth/manager/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mobile/auth/n/a;->a:Lcom/mobile/auth/o/a;

    iput-object p2, p0, Lcom/mobile/auth/n/a;->b:Lcom/mobile/auth/gatewayauth/manager/d;

    return-void
.end method

.method private static a()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.nirvana.tools.logger.utils.ConsoleLogUtils"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :catch_0
    return v0
.end method


# virtual methods
.method public a(Lcom/mobile/auth/gatewayauth/manager/e;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/n/a;->c:Lcom/mobile/auth/gatewayauth/manager/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setLogExtension(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/n/a;->b:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v0, p1}, Lcom/mobile/auth/gatewayauth/manager/d;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setLoggerEnable(Z)V
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/j;->a(Z)V

    invoke-static {}, Lcom/mobile/auth/n/a;->a()Z

    invoke-static {p1}, Lcom/nirvana/tools/logger/utils/ConsoleLogUtils;->setLoggerEnable(Z)V

    iget-object v0, p0, Lcom/mobile/auth/n/a;->c:Lcom/mobile/auth/gatewayauth/manager/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/n/a;->c:Lcom/mobile/auth/gatewayauth/manager/e;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/e;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobile/auth/gatewayauth/manager/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/mobile/auth/gatewayauth/manager/a;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public setLoggerHandler(Lcom/mobile/auth/gatewayauth/PnsLoggerHandler;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/n/a;->a:Lcom/mobile/auth/o/a;

    invoke-virtual {v0, p1}, Lcom/mobile/auth/o/a;->a(Lcom/mobile/auth/gatewayauth/PnsLoggerHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setUploadEnable(Z)V
    .locals 0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/j;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
