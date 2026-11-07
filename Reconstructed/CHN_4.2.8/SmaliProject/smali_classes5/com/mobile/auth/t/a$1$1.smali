.class Lcom/mobile/auth/t/a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/t/a$1;->onAvailable(Landroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Network;

.field final synthetic b:Lcom/mobile/auth/t/a$1;


# direct methods
.method constructor <init>(Lcom/mobile/auth/t/a$1;Landroid/net/Network;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iput-object p2, p0, Lcom/mobile/auth/t/a$1$1;->a:Landroid/net/Network;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const-string v0, "mobile"

    const-string v1, "token"

    :try_start_0
    iget-object v2, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v2, v2, Lcom/mobile/auth/t/a$1;->d:Lcom/mobile/auth/t/a;

    invoke-static {v2}, Lcom/mobile/auth/t/a;->a(Lcom/mobile/auth/t/a;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v3, v3, Lcom/mobile/auth/t/a$1;->d:Lcom/mobile/auth/t/a;

    invoke-static {v3}, Lcom/mobile/auth/t/a;->b(Lcom/mobile/auth/t/a;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mobile/auth/t/a$1$1;->a:Landroid/net/Network;

    invoke-static {v2, v3, v4}, Lcom/mobile/auth/gatewayauth/network/RequestUtil;->getCmOpeatorMsg(Landroid/content/Context;Ljava/lang/String;Landroid/net/Network;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "rspCode"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "rspMsg"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "0000"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v2, "2Dsx3oz01nIK5ob4"

    invoke-static {v2, v0}, Lcom/mobile/auth/gatewayauth/utils/AESUtils;->decryptByOpeator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v2, v2, Lcom/mobile/auth/t/a$1;->a:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/a$a;->a()Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object v4

    const-string v5, "\u4e2d\u56fd\u79fb\u52a8\u8ba4\u8bc1\u670d\u52a1\u6761\u6b3e"

    invoke-virtual {v4, v5}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->c(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object v4

    const-string v5, "https://wap.cmpassport.com/resources/html/contract.html"

    invoke-virtual {v4, v5}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->d(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->b(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object v4

    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->a(Z)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object v4

    iget-object v5, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v5, v5, Lcom/mobile/auth/t/a$1;->d:Lcom/mobile/auth/t/a;

    invoke-static {v5}, Lcom/mobile/auth/t/a;->c(Lcom/mobile/auth/t/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->e(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object v4

    const-string v5, "cm_zyhl"

    invoke-virtual {v4, v5}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->f(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v9, 0x41eb0

    add-long/2addr v5, v9

    invoke-virtual {v4, v5, v6}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->a(J)Lcom/mobile/auth/gatewayauth/manager/a$a$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobile/auth/gatewayauth/manager/a$a$a;->a()Lcom/mobile/auth/gatewayauth/manager/a$a;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onSuccess(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v2, v2, Lcom/mobile/auth/t/a$1;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-virtual {v2, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAccessCode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v1, v1, Lcom/mobile/auth/t/a$1;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-virtual {v1, v0}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setPhoneNumber(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v5, v0, Lcom/mobile/auth/t/a$1;->d:Lcom/mobile/auth/t/a;

    const-string v7, ""

    const-string v0, ""

    const/4 v9, 0x1

    const-string v10, "cm_zyhl"

    iget-object v1, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v11, v1, Lcom/mobile/auth/t/a$1;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    move-object v6, v8

    move-object v8, v0

    invoke-static/range {v5 .. v11}, Lcom/mobile/auth/t/a;->a(Lcom/mobile/auth/t/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V

    iget-object v0, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v0, v0, Lcom/mobile/auth/t/a$1;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-virtual {v0, v12}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setSuccess(Z)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v5, v0, Lcom/mobile/auth/t/a$1;->d:Lcom/mobile/auth/t/a;

    iget-object v0, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v6, v0, Lcom/mobile/auth/t/a$1;->a:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "cm_zyhl"

    iget-object v0, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v11, v0, Lcom/mobile/auth/t/a$1;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    iget-object v0, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v12, v0, Lcom/mobile/auth/t/a$1;->c:Ljava/lang/String;

    move-object v7, v8

    move-object v8, v2

    invoke-static/range {v5 .. v12}, Lcom/mobile/auth/t/a;->a(Lcom/mobile/auth/t/a;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v5, v0, Lcom/mobile/auth/t/a$1;->d:Lcom/mobile/auth/t/a;

    iget-object v0, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v6, v0, Lcom/mobile/auth/t/a$1;->a:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "cm_zyhl"

    iget-object v0, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v11, v0, Lcom/mobile/auth/t/a$1;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    iget-object v0, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v12, v0, Lcom/mobile/auth/t/a$1;->c:Ljava/lang/String;

    move-object v7, v8

    invoke-static/range {v5 .. v12}, Lcom/mobile/auth/t/a;->b(Lcom/mobile/auth/t/a;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v0, v0, Lcom/mobile/auth/t/a$1;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-virtual {v0, v3}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setSuccess(Z)V

    iget-object v0, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v0, v0, Lcom/mobile/auth/t/a$1;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    const-string v1, "\u53f7\u7801\u89e3\u6790\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setCarrierFailedResultData(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v1, v0, Lcom/mobile/auth/t/a$1;->d:Lcom/mobile/auth/t/a;

    iget-object v0, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v2, v0, Lcom/mobile/auth/t/a$1;->a:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    const-string v3, "-10008"

    const-string v4, "\u53f7\u7801\u89e3\u6790\u5931\u8d25"

    const-string v5, ""

    const-string v6, "cm_zyhl"

    iget-object v0, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v7, v0, Lcom/mobile/auth/t/a$1;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    iget-object v0, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v8, v0, Lcom/mobile/auth/t/a$1;->c:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Lcom/mobile/auth/t/a;->d(Lcom/mobile/auth/t/a;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v0, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v0, v0, Lcom/mobile/auth/t/a$1;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-virtual {v0, v3}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setSuccess(Z)V

    iget-object v0, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v0, v0, Lcom/mobile/auth/t/a$1;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    const-string v1, "JSON\u8f6c\u6362\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setCarrierFailedResultData(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v1, v0, Lcom/mobile/auth/t/a$1;->d:Lcom/mobile/auth/t/a;

    iget-object v0, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v2, v0, Lcom/mobile/auth/t/a$1;->a:Lcom/mobile/auth/gatewayauth/manager/RequestCallback;

    const-string v3, "-10008"

    const-string v4, "JSON\u8f6c\u6362\u5931\u8d25"

    const-string v5, ""

    const-string v6, "cm_zyhl"

    iget-object v0, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v7, v0, Lcom/mobile/auth/t/a$1;->b:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    iget-object v0, p0, Lcom/mobile/auth/t/a$1$1;->b:Lcom/mobile/auth/t/a$1;

    iget-object v8, v0, Lcom/mobile/auth/t/a$1;->c:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Lcom/mobile/auth/t/a;->c(Lcom/mobile/auth/t/a;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
