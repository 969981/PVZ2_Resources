.class Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$13;
.super Lcom/nirvana/tools/requestqueue/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->a(JLjava/lang/String;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nirvana/tools/requestqueue/Callback<",
        "Lcom/mobile/auth/v/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;

.field final synthetic e:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

.field final synthetic f:Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;Lcom/nirvana/tools/requestqueue/strategy/ThreadStrategy;JLjava/lang/String;Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$13;->f:Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;

    iput-object p5, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$13;->a:Ljava/lang/String;

    iput-object p6, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$13;->b:Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;

    iput-object p7, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$13;->c:Ljava/lang/String;

    iput-object p8, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$13;->d:Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;

    iput-object p9, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$13;->e:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-direct {p0, p2, p3, p4}, Lcom/nirvana/tools/requestqueue/Callback;-><init>(Lcom/nirvana/tools/requestqueue/strategy/ThreadStrategy;J)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mobile/auth/v/b;)V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$13;->f:Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->d(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;)Lcom/mobile/auth/o/a;

    move-result-object v0

    const-string v1, "Update LoginToken from network!"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mobile/auth/v/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/mobile/auth/v/b;->b()Lcom/mobile/auth/gatewayauth/manager/base/b;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    invoke-virtual {p1}, Lcom/mobile/auth/v/b;->b()Lcom/mobile/auth/gatewayauth/manager/base/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/manager/base/b;->f()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mobile/auth/gatewayauth/manager/base/b;->a(J)V

    const-string v0, "ct_sjl"

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$13;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$13;->b:Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;

    invoke-virtual {p1}, Lcom/mobile/auth/v/b;->c()Lcom/mobile/auth/gatewayauth/manager/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/a$a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;->setChannelCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$13;->b:Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;

    invoke-virtual {p1}, Lcom/mobile/auth/v/b;->c()Lcom/mobile/auth/gatewayauth/manager/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/a$a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;->setDispatchFlag(Z)V

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$13;->f:Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$13;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$13;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$13;->d:Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;

    invoke-virtual {p1}, Lcom/mobile/auth/v/b;->b()Lcom/mobile/auth/gatewayauth/manager/base/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/base/b;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/mobile/auth/v/b;->b()Lcom/mobile/auth/gatewayauth/manager/base/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/base/b;->f()J

    move-result-wide v7

    iget-object v9, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$13;->b:Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;

    invoke-static/range {v2 .. v9}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->a(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;Ljava/lang/String;JLcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$13;->f:Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$13;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$13;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$13;->d:Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;

    invoke-virtual {p1}, Lcom/mobile/auth/v/b;->b()Lcom/mobile/auth/gatewayauth/manager/base/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobile/auth/gatewayauth/manager/base/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mobile/auth/v/b;->b()Lcom/mobile/auth/gatewayauth/manager/base/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/base/b;->f()J

    move-result-wide v5

    iget-object v7, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$13;->b:Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;

    invoke-static/range {v0 .. v7}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->a(Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;Ljava/lang/String;JLcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;)V

    :goto_1
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$13;->e:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    const-string v0, "false"

    invoke-interface {p1, v0}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/mobile/auth/v/b;->b()Lcom/mobile/auth/gatewayauth/manager/base/b;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "600010"

    const-string v0, "\u672a\u77e5\u5f02\u5e38"

    invoke-static {p1, v0}, Lcom/mobile/auth/gatewayauth/manager/base/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/b;

    move-result-object p1

    :cond_3
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$13;->e:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-interface {v0, p1}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onError(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public synthetic onResult(Lcom/nirvana/tools/requestqueue/Response;)V
    .locals 0

    :try_start_0
    check-cast p1, Lcom/mobile/auth/v/b;

    invoke-virtual {p0, p1}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager$13;->a(Lcom/mobile/auth/v/b;)V
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
