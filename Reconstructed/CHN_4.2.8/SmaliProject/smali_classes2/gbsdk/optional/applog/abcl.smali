.class public final Lgbsdk/optional/applog/abcl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lcom/bytedance/bdtracker/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;)V
    .locals 1

    const-string v0, "appLogInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/optional/applog/abcl;->a:Lcom/bytedance/bdtracker/d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lgbsdk/optional/applog/abar;)Lgbsdk/optional/applog/abdn;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lgbsdk/optional/applog/abar;",
            ")",
            "Lgbsdk/optional/applog/abdn<",
            "Lgbsdk/optional/applog/abau;",
            ">;"
        }
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryParam"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lgbsdk/optional/applog/abcl;->a:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, p0, Lgbsdk/optional/applog/abcl;->a:Lcom/bytedance/bdtracker/d;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->k:Lgbsdk/optional/applog/abcz;

    const-string v3, "appLogInstance.api"

    .line 2
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Lgbsdk/optional/applog/abcz;->d:Lgbsdk/optional/applog/abgd;

    .line 4
    invoke-virtual {p2}, Lgbsdk/optional/applog/abar;->a()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lgbsdk/optional/applog/abcl;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgbsdk/optional/applog/abgd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lgbsdk/optional/applog/abcl;->a()Ljava/util/HashMap;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0xea60

    invoke-interface/range {v1 .. v8}, Lcom/bytedance/applog/network/INetworkClient;->execute(BLjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;BZI)[B

    move-result-object p1

    const-string p2, "appLogInstance.netClient\u2026TIMEOUT\n                )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/String;

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object p1, Lgbsdk/optional/applog/abdn;->a:Lgbsdk/optional/applog/abdn$ab;

    const-class v0, Lgbsdk/optional/applog/abau;

    invoke-virtual {p1, p2, v0}, Lgbsdk/optional/applog/abdn$ab;->a(Ljava/lang/String;Ljava/lang/Class;)Lgbsdk/optional/applog/abdn;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final a(Ljava/lang/String;Lgbsdk/optional/applog/abdw;Lgbsdk/optional/applog/abar;)Lgbsdk/optional/applog/abdn;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lgbsdk/optional/applog/abdw;",
            "Lgbsdk/optional/applog/abar;",
            ")",
            "Lgbsdk/optional/applog/abdn<",
            "Lgbsdk/optional/applog/abdc;",
            ">;"
        }
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "queryParam"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lgbsdk/optional/applog/abdw;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {p3}, Lgbsdk/optional/applog/abar;->a()Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "$this$notifyDeferDeepLink"

    .line 5
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 6
    :try_start_0
    iget-object v2, p0, Lgbsdk/optional/applog/abcl;->a:Lcom/bytedance/bdtracker/d;

    .line 7
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "Notify DeferDeepLink trigger."

    :try_start_1
    new-array v4, p3, [Ljava/lang/Object;

    .line 8
    invoke-interface {v2, v3, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/bytedance/applog/log/EventBus;->global:Lcom/bytedance/applog/log/AbsSingleton;

    new-array v3, p3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/bytedance/applog/log/AbsSingleton;->get([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/applog/log/EventBus;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "ALink_DeferDeepLink_App_Log"

    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/applog/log/EventBus;->emit(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    iget-object v1, p0, Lgbsdk/optional/applog/abcl;->a:Lcom/bytedance/bdtracker/d;

    .line 10
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array p3, p3, [Ljava/lang/Object;

    const-string v2, "Notify DeferDeepLink trigger failed."

    .line 11
    invoke-interface {v1, v2, v0, p3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 12
    :goto_0
    :try_start_3
    iget-object p3, p0, Lgbsdk/optional/applog/abcl;->a:Lcom/bytedance/bdtracker/d;

    invoke-virtual {p3}, Lcom/bytedance/bdtracker/d;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    move-result-object v2

    const/4 v3, 0x1

    iget-object p3, p0, Lgbsdk/optional/applog/abcl;->a:Lcom/bytedance/bdtracker/d;

    .line 13
    iget-object p3, p3, Lcom/bytedance/bdtracker/d;->k:Lgbsdk/optional/applog/abcz;

    const-string v0, "appLogInstance.api"

    .line 14
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object p3, p3, Lgbsdk/optional/applog/abcz;->d:Lgbsdk/optional/applog/abgd;

    .line 16
    invoke-virtual {p0, p1, p2}, Lgbsdk/optional/applog/abcl;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lgbsdk/optional/applog/abgd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lgbsdk/optional/applog/abcl;->a()Ljava/util/HashMap;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v9, 0xea60

    invoke-interface/range {v2 .. v9}, Lcom/bytedance/applog/network/INetworkClient;->execute(BLjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;BZI)[B

    move-result-object p1

    const-string p2, "appLogInstance.netClient\u2026OUT\n                    )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/String;

    sget-object p3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object p1, Lgbsdk/optional/applog/abdn;->a:Lgbsdk/optional/applog/abdn$ab;

    const-class p3, Lgbsdk/optional/applog/abdc;

    invoke-virtual {p1, p2, p3}, Lgbsdk/optional/applog/abdn$ab;->a(Ljava/lang/String;Ljava/lang/Class;)Lgbsdk/optional/applog/abdn;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object p2, Lgbsdk/optional/applog/abdn;->a:Lgbsdk/optional/applog/abdn$ab;

    invoke-virtual {p2, p1}, Lgbsdk/optional/applog/abdn$ab;->a(Ljava/lang/Throwable;)Lgbsdk/optional/applog/abdn;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_0

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lgbsdk/optional/applog/abcl;->a:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->getHttpHeaderCallback()Lcom/bytedance/applog/DynamicValueCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->getHttpHeaderCallback()Lcom/bytedance/applog/DynamicValueCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/applog/DynamicValueCallback;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->getHttpHeaders()Ljava/util/Map;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    iget-object v1, p0, Lgbsdk/optional/applog/abcl;->a:Lcom/bytedance/bdtracker/d;

    invoke-static {v0, v1}, Lgbsdk/optional/applog/abgd;->a(Ljava/util/HashMap;Lcom/bytedance/bdtracker/d;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
