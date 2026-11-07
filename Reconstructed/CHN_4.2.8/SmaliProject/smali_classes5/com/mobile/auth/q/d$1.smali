.class Lcom/mobile/auth/q/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mobile/auth/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/q/d;->d(Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/a$b;)V
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

    iput-object p1, p0, Lcom/mobile/auth/q/d$1;->c:Lcom/mobile/auth/q/d;

    iput-object p2, p0, Lcom/mobile/auth/q/d$1;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    iput-object p3, p0, Lcom/mobile/auth/q/d$1;->b:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILorg/json/JSONObject;)V
    .locals 11

    const-string p1, "resultString"

    const-string v0, "desc"

    const-string v1, "resultDesc"

    :try_start_0
    iget-object v2, p0, Lcom/mobile/auth/q/d$1;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setCarrierReturnTime(J)V

    if-nez p2, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v2, "resultCode"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v6, p1

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
    move-object v6, v3

    :goto_1
    const-string p1, "traceId"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "securityphone"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/mobile/auth/q/d$1;->c:Lcom/mobile/auth/q/d;

    invoke-static {v1}, Lcom/mobile/auth/q/d;->a(Lcom/mobile/auth/q/d;)Lcom/mobile/auth/o/a;

    move-result-object v1

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "cmcc\uff1a"

    aput-object v8, v7, v4

    const-string v8, "getLoginInfo:code="

    aput-object v8, v7, v2

    const/4 v8, 0x2

    aput-object v5, v7, v8

    const/4 v8, 0x3

    const-string v9, ",msg="

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object v6, v7, v8

    const/4 v8, 0x5

    const-string v9, ",json="

    aput-object v9, v7, v8

    const/4 v8, 0x6

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    aput-object v3, v7, v8

    invoke-virtual {v1, v7}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/mobile/auth/q/d$1;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-virtual {v1, p1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setCarrierTraceId(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/mobile/auth/q/d$1;->b:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/a$a;->a()Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object p2

    iget-object v1, p0, Lcom/mobile/auth/q/d$1;->c:Lcom/mobile/auth/q/d;

    invoke-static {v1}, Lcom/mobile/auth/q/d;->b(Lcom/mobile/auth/q/d;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p2, v2}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->a(Z)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object p2

    iget-object v1, p0, Lcom/mobile/auth/q/d$1;->c:Lcom/mobile/auth/q/d;

    invoke-static {v1}, Lcom/mobile/auth/q/d;->b(Lcom/mobile/auth/q/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->e(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object p2

    const-string v1, "\u4e2d\u56fd\u79fb\u52a8\u8ba4\u8bc1\u670d\u52a1\u6761\u6b3e"

    invoke-virtual {p2, v1}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->c(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object p2

    const-string v1, "https://wap.cmpassport.com/resources/html/contract.html"

    invoke-virtual {p2, v1}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->d(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->a()Lcom/mobile/auth/gatewayauth/manager/a$a;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onSuccess(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/mobile/auth/q/d$1;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-virtual {p1, v0}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setPhoneNumber(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mobile/auth/q/d$1;->c:Lcom/mobile/auth/q/d;

    const-string p1, ""

    const-string v6, ""

    const/4 v7, 0x1

    const-string v8, "cm_zyhl"

    iget-object v9, p0, Lcom/mobile/auth/q/d$1;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    move-object v4, v5

    move-object v5, p1

    invoke-static/range {v3 .. v9}, Lcom/mobile/auth/q/d;->a(Lcom/mobile/auth/q/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V

    goto :goto_4

    :cond_7
    iget-object v3, p0, Lcom/mobile/auth/q/d$1;->c:Lcom/mobile/auth/q/d;

    iget-object v4, p0, Lcom/mobile/auth/q/d$1;->b:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "cm_zyhl"

    iget-object v9, p0, Lcom/mobile/auth/q/d$1;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    const-string v10, "600012"

    invoke-static/range {v3 .. v10}, Lcom/mobile/auth/q/d;->a(Lcom/mobile/auth/q/d;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method
