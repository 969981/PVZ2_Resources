.class public Lcom/mobile/auth/gatewayauth/network/RequestState;
.super Ljava/lang/Object;


# static fields
.field private static volatile mInstance:Lcom/mobile/auth/gatewayauth/network/RequestState;


# instance fields
.field private volatile keyRespone:Lcom/mobile/auth/gatewayauth/network/PrivateKeyRespone;

.field private useRequest:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/network/RequestState;->useRequest:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/network/RequestState;->keyRespone:Lcom/mobile/auth/gatewayauth/network/PrivateKeyRespone;

    return-void
.end method

.method public static getInstance()Lcom/mobile/auth/gatewayauth/network/RequestState;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/mobile/auth/gatewayauth/network/RequestState;->mInstance:Lcom/mobile/auth/gatewayauth/network/RequestState;

    if-nez v0, :cond_1

    const-class v0, Lcom/mobile/auth/gatewayauth/network/RequestState;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/mobile/auth/gatewayauth/network/RequestState;->mInstance:Lcom/mobile/auth/gatewayauth/network/RequestState;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mobile/auth/gatewayauth/network/RequestState;

    invoke-direct {v1}, Lcom/mobile/auth/gatewayauth/network/RequestState;-><init>()V

    sput-object v1, Lcom/mobile/auth/gatewayauth/network/RequestState;->mInstance:Lcom/mobile/auth/gatewayauth/network/RequestState;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/mobile/auth/gatewayauth/network/RequestState;->mInstance:Lcom/mobile/auth/gatewayauth/network/RequestState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object v1

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v1
.end method


# virtual methods
.method public checkTokenValied(I)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/network/RequestState;->keyRespone:Lcom/mobile/auth/gatewayauth/network/PrivateKeyRespone;

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/network/RequestState;->keyRespone:Lcom/mobile/auth/gatewayauth/network/PrivateKeyRespone;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/network/PrivateKeyRespone;->getAk()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/network/RequestState;->keyRespone:Lcom/mobile/auth/gatewayauth/network/PrivateKeyRespone;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/network/PrivateKeyRespone;->getSk()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/network/RequestState;->keyRespone:Lcom/mobile/auth/gatewayauth/network/PrivateKeyRespone;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/network/PrivateKeyRespone;->getStsToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/network/RequestState;->keyRespone:Lcom/mobile/auth/gatewayauth/network/PrivateKeyRespone;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/network/PrivateKeyRespone;->getExpiredTime()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v1, v3

    mul-int/lit8 p1, p1, 0x3c

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-gtz p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return v0
.end method

.method public getKeyRespone()Lcom/mobile/auth/gatewayauth/network/PrivateKeyRespone;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/network/RequestState;->keyRespone:Lcom/mobile/auth/gatewayauth/network/PrivateKeyRespone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public isUseRequest()Z
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/mobile/auth/gatewayauth/network/RequestState;->useRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return v1
.end method

.method public setKeyRespone(Lcom/mobile/auth/gatewayauth/network/PrivateKeyRespone;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/network/RequestState;->keyRespone:Lcom/mobile/auth/gatewayauth/network/PrivateKeyRespone;
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

.method public setUseRequest(Z)V
    .locals 0

    :try_start_0
    iput-boolean p1, p0, Lcom/mobile/auth/gatewayauth/network/RequestState;->useRequest:Z
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
