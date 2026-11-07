.class public final Lgbsdk/optional/applog/abay$ab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/abay;->a(Ljava/util/Map;Lcom/bytedance/applog/oneid/IDBindCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lgbsdk/optional/applog/abay;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/bytedance/applog/oneid/IDBindCallback;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abay;Ljava/util/Map;Lcom/bytedance/applog/oneid/IDBindCallback;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abay$ab;->a:Lgbsdk/optional/applog/abay;

    iput-object p2, p0, Lgbsdk/optional/applog/abay$ab;->b:Ljava/util/Map;

    iput-object p3, p0, Lgbsdk/optional/applog/abay$ab;->c:Lcom/bytedance/applog/oneid/IDBindCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, v1, Lgbsdk/optional/applog/abay$ab;->a:Lgbsdk/optional/applog/abay;

    .line 1
    iget-object v2, v2, Lgbsdk/optional/applog/abay;->d:Lgbsdk/optional/applog/abbj;

    .line 2
    iget-object v2, v2, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    const-string v3, "engine.dm"

    .line 3
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lgbsdk/optional/applog/abfy;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v2}, Lgbsdk/optional/applog/abce;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    iget-object v2, v1, Lgbsdk/optional/applog/abay$ab;->a:Lgbsdk/optional/applog/abay;

    .line 4
    iget-object v2, v2, Lgbsdk/optional/applog/abay;->c:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 5
    iget-object v5, v1, Lgbsdk/optional/applog/abay$ab;->b:Ljava/util/Map;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/16 v5, 0xf

    const-string v7, "BindID identities: {}"

    invoke-interface {v2, v5, v7, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, Lgbsdk/optional/applog/abay$ab;->b:Ljava/util/Map;

    .line 6
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v2, "identities"

    .line 7
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Lgbsdk/optional/applog/abcz;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    iget-object v0, v1, Lgbsdk/optional/applog/abay$ab;->a:Lgbsdk/optional/applog/abay;

    .line 8
    iget-object v0, v0, Lgbsdk/optional/applog/abay;->d:Lgbsdk/optional/applog/abbj;

    .line 9
    invoke-virtual {v0}, Lgbsdk/optional/applog/abbj;->d()Lcom/bytedance/applog/UriConfig;

    move-result-object v0

    const-string v2, "engine.uriConfig"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/applog/UriConfig;->getIDBindUri()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, v1, Lgbsdk/optional/applog/abay$ab;->a:Lgbsdk/optional/applog/abay;

    .line 10
    iget-object v0, v0, Lgbsdk/optional/applog/abay;->a:Lcom/bytedance/bdtracker/d;

    const-string v7, "appLogInstance"

    .line 11
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v15, v0, Lcom/bytedance/bdtracker/d;->k:Lgbsdk/optional/applog/abcz;

    .line 13
    iget-object v0, v15, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 14
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v6

    aput-object v10, v7, v3

    const/16 v14, 0xb

    const-string v8, "Start to bind id to uri:{} with request:{}..."

    .line 15
    invoke-interface {v0, v14, v8, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v15}, Lgbsdk/optional/applog/abcz;->a()Ljava/util/HashMap;

    move-result-object v11

    :try_start_0
    new-instance v13, Ljava/lang/String;

    iget-object v0, v15, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v0, v15, Lgbsdk/optional/applog/abcz;->d:Lgbsdk/optional/applog/abgd;

    invoke-virtual {v0, v2}, Lgbsdk/optional/applog/abgd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v12, 0x0

    const/4 v0, 0x1

    const v16, 0xea60

    move-object v4, v13

    move v13, v0

    const/16 v5, 0xb

    move/from16 v14, v16

    :try_start_1
    invoke-interface/range {v7 .. v14}, Lcom/bytedance/applog/network/INetworkClient;->execute(BLjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;BZI)[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v0, v15, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 16
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v7, "bindId success: {}"

    :try_start_3
    new-array v8, v3, [Ljava/lang/Object;

    aput-object v4, v8, v6

    .line 17
    invoke-interface {v0, v5, v7, v8}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v13, v4

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v13, v4

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    const/16 v5, 0xb

    :goto_1
    const/4 v13, 0x0

    :goto_2
    iget-object v4, v15, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 18
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "bindId error"

    .line 19
    invoke-interface {v4, v5, v8, v0, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {v15, v13}, Lgbsdk/optional/applog/abcz;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_4

    :cond_1
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_3

    const-string v0, "BindID http request error, url="

    .line 20
    invoke-static {v0, v2}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lgbsdk/optional/applog/abay$ab;->a:Lgbsdk/optional/applog/abay;

    .line 21
    iget-object v2, v2, Lgbsdk/optional/applog/abay;->c:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v3, v6, [Ljava/lang/Object;

    const/16 v4, 0xf

    .line 22
    invoke-interface {v2, v4, v0, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, Lgbsdk/optional/applog/abay$ab;->c:Lcom/bytedance/applog/oneid/IDBindCallback;

    if-eqz v2, :cond_2

    iget-object v3, v1, Lgbsdk/optional/applog/abay$ab;->a:Lgbsdk/optional/applog/abay;

    .line 23
    iget-object v3, v3, Lgbsdk/optional/applog/abay;->b:Landroid/os/Handler;

    new-instance v4, Lgbsdk/optional/applog/abaq;

    const/4 v5, -0x2

    invoke-direct {v4, v2, v5, v0}, Lgbsdk/optional/applog/abaq;-><init>(Lcom/bytedance/applog/oneid/IDBindCallback;ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :cond_3
    const-string v2, "status_code"

    .line 24
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_5

    const-string v3, "status_message"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lgbsdk/optional/applog/abay$ab;->a:Lgbsdk/optional/applog/abay;

    .line 25
    iget-object v3, v3, Lgbsdk/optional/applog/abay;->c:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v4, v6, [Ljava/lang/Object;

    const/16 v5, 0xf

    .line 26
    invoke-interface {v3, v5, v0, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v1, Lgbsdk/optional/applog/abay$ab;->c:Lcom/bytedance/applog/oneid/IDBindCallback;

    if-eqz v3, :cond_4

    iget-object v4, v1, Lgbsdk/optional/applog/abay$ab;->a:Lgbsdk/optional/applog/abay;

    .line 27
    iget-object v4, v4, Lgbsdk/optional/applog/abay;->b:Landroid/os/Handler;

    new-instance v5, Lgbsdk/optional/applog/abaq;

    invoke-direct {v5, v3, v2, v0}, Lgbsdk/optional/applog/abaq;-><init>(Lcom/bytedance/applog/oneid/IDBindCallback;ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :cond_5
    const-string v2, "data"

    .line 28
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v2, Lcom/bytedance/applog/oneid/IDBindResult;

    if-eqz v0, :cond_6

    const-string v4, "ssid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    if-eqz v0, :cond_7

    const-string v5, "failed_id_list"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    invoke-direct {v2, v4, v0}, Lcom/bytedance/applog/oneid/IDBindResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lgbsdk/optional/applog/abay$ab;->a:Lgbsdk/optional/applog/abay;

    .line 29
    iget-object v0, v0, Lgbsdk/optional/applog/abay;->c:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v6

    const-string v4, "BindID reportSuccess, result: {}"

    const/16 v5, 0xf

    .line 30
    invoke-interface {v0, v5, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lgbsdk/optional/applog/abay$ab;->c:Lcom/bytedance/applog/oneid/IDBindCallback;

    if-eqz v0, :cond_8

    iget-object v3, v1, Lgbsdk/optional/applog/abay$ab;->a:Lgbsdk/optional/applog/abay;

    .line 31
    iget-object v3, v3, Lgbsdk/optional/applog/abay;->b:Landroid/os/Handler;

    new-instance v4, Lgbsdk/optional/applog/abdq;

    invoke-direct {v4, v0, v2}, Lgbsdk/optional/applog/abdq;-><init>(Lcom/bytedance/applog/oneid/IDBindCallback;Lcom/bytedance/applog/oneid/IDBindResult;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void
.end method
