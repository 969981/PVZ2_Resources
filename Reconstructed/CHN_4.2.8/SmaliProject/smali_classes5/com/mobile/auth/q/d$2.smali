.class Lcom/mobile/auth/q/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mobile/auth/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/q/d;->e(Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

.field final synthetic b:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

.field final synthetic c:Lcom/mobile/auth/q/d;


# direct methods
.method constructor <init>(Lcom/mobile/auth/q/d;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/q/d$2;->c:Lcom/mobile/auth/q/d;

    iput-object p2, p0, Lcom/mobile/auth/q/d$2;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    iput-object p3, p0, Lcom/mobile/auth/q/d$2;->b:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILorg/json/JSONObject;)V
    .locals 12

    const-string p1, "resultString"

    const-string v0, "desc"

    const-string v1, "resultDesc"

    const-string v2, "token"

    :try_start_0
    iget-object v3, p0, Lcom/mobile/auth/q/d$2;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setCarrierReturnTime(J)V

    if-nez p2, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v3, "resultCode"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, ""

    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v7, p1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object v7, v4

    :goto_1
    const-string p1, "traceId"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tokenExpiresIn"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/mobile/auth/q/d$2;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-virtual {v3, p1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setCarrierTraceId(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v3, 0x1

    const/4 v11, 0x0

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/mobile/auth/q/d$2;->c:Lcom/mobile/auth/q/d;

    invoke-static {p1}, Lcom/mobile/auth/q/d;->c(Lcom/mobile/auth/q/d;)Lcom/mobile/auth/o/a;

    move-result-object p1

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/String;

    const-string v8, "cmcc\uff1a"

    aput-object v8, v5, v11

    const-string v8, "getLoginToken:code="

    aput-object v8, v5, v3

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const/4 v8, 0x3

    const-string v9, ",msg="

    aput-object v9, v5, v8

    const/4 v8, 0x4

    aput-object v7, v5, v8

    const/4 v8, 0x5

    const-string v9, ",json="

    aput-object v9, v5, v8

    const/4 v8, 0x6

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    aput-object v4, v5, v8

    invoke-virtual {p1, v5}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/mobile/auth/q/d$2;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAccessCode(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/q/d$2;->c:Lcom/mobile/auth/q/d;

    invoke-static {p1}, Lcom/mobile/auth/q/d;->d(Lcom/mobile/auth/q/d;)Lcom/mobile/auth/q/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/q/a;->a()V

    iget-object v4, p0, Lcom/mobile/auth/q/d$2;->c:Lcom/mobile/auth/q/d;

    const-string p1, ""

    const-string v7, ""

    const/4 v8, 0x1

    const-string v9, "cm_zyhl"

    iget-object v10, p0, Lcom/mobile/auth/q/d$2;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    move-object v5, v6

    move-object v6, p1

    invoke-static/range {v4 .. v10}, Lcom/mobile/auth/q/d;->b(Lcom/mobile/auth/q/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V

    iget-object p1, p0, Lcom/mobile/auth/q/d$2;->b:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/a$a;->a()Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object v0

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->b(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object p2

    iget-object v0, p0, Lcom/mobile/auth/q/d$2;->c:Lcom/mobile/auth/q/d;

    invoke-static {v0}, Lcom/mobile/auth/q/d;->b(Lcom/mobile/auth/q/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p2, v3}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->a(Z)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object p2

    iget-object v0, p0, Lcom/mobile/auth/q/d$2;->c:Lcom/mobile/auth/q/d;

    invoke-static {v0}, Lcom/mobile/auth/q/d;->b(Lcom/mobile/auth/q/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->e(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-gtz v1, :cond_7

    const-wide/32 v0, 0x1d4c0

    goto :goto_4

    :cond_7
    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v0, v1

    :goto_4
    add-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->a(J)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->a()Lcom/mobile/auth/gatewayauth/manager/a$a;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    iget-object v4, p0, Lcom/mobile/auth/q/d$2;->c:Lcom/mobile/auth/q/d;

    iget-object v5, p0, Lcom/mobile/auth/q/d$2;->b:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "cm_zyhl"

    iget-object v10, p0, Lcom/mobile/auth/q/d$2;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    const-string v11, "600011"

    invoke-static/range {v4 .. v11}, Lcom/mobile/auth/q/d;->b(Lcom/mobile/auth/q/d;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method
