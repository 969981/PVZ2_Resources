.class public Lcom/alipay/sdk/m/y/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "ap_req"

.field public static final b:Ljava/lang/String; = "ap_args"

.field public static final c:Ljava/lang/String; = "ap_resp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/alipay/sdk/m/i/a;
    .locals 6

    :try_start_0
    const-string v0, "NP"

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lcom/alipay/sdk/m/j/c;

    .line 4
    invoke-static {}, Lcom/alipay/sdk/m/w/b;->c()Lcom/alipay/sdk/m/w/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/sdk/m/w/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/sdk/m/j/c;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/alipay/sdk/m/w/b;->c()Lcom/alipay/sdk/m/w/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/sdk/m/w/b;->b()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/sdk/m/m/a$d;->a(Landroid/content/Context;)J

    move-result-wide v4

    long-to-int v5, v4

    int-to-short v4, v5

    new-instance v5, Lcom/alipay/sdk/m/j/f;

    invoke-direct {v5}, Lcom/alipay/sdk/m/j/f;-><init>()V

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/alipay/sdk/m/j/a;->a(Ljava/lang/String;JLcom/alipay/sdk/m/j/b;SLcom/alipay/sdk/m/j/e;)Lcom/alipay/sdk/m/j/a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 14
    :catch_0
    :try_start_1
    invoke-static {}, Lcom/alipay/sdk/m/j/a;->c()Lcom/alipay/sdk/m/j/a;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Lcom/alipay/sdk/m/w/a;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/sdk/m/w/a;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ap_q"

    const-string v1, "biz"

    .line 15
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 17
    :try_start_0
    invoke-static {}, Lcom/alipay/sdk/m/y/a;->a()Lcom/alipay/sdk/m/i/a;

    move-result-object v3

    .line 18
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/alipay/sdk/m/w/a;->b()Landroid/content/Context;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_1

    .line 21
    invoke-static {}, Lcom/alipay/sdk/m/w/b;->c()Lcom/alipay/sdk/m/w/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/sdk/m/w/b;->b()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 23
    :cond_1
    invoke-static {p0, v5}, Lcom/alipay/sdk/m/y/q;->a(Lcom/alipay/sdk/m/w/a;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 24
    invoke-static {p0, v5}, Lcom/alipay/sdk/m/a0/b;->b(Lcom/alipay/sdk/m/w/a;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, ""

    if-eqz v3, :cond_2

    .line 25
    :try_start_1
    invoke-virtual {v3}, Lcom/alipay/sdk/m/i/a;->a()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    move-object v8, v7

    :goto_1
    invoke-virtual {v4, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "ap_link_token"

    if-eqz p0, :cond_3

    .line 26
    iget-object v9, p0, Lcom/alipay/sdk/m/w/a;->d:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v9, v7

    :goto_2
    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "u_pd"

    .line 27
    invoke-static {}, Lcom/alipay/sdk/m/y/q;->g()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "u_lk"

    .line 28
    invoke-static {}, Lcom/alipay/sdk/m/y/q;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/sdk/m/y/q;->e(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "u_pi"

    if-eqz p0, :cond_4

    .line 29
    iget-object v9, p0, Lcom/alipay/sdk/m/w/a;->g:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const-string v9, "_"

    :goto_3
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "u_fu"

    .line 30
    invoke-virtual {v4, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "u_oi"

    .line 31
    invoke-virtual {v4, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "ap_req"

    .line 32
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/alipay/sdk/m/i/a;->a()Ljava/lang/String;

    move-result-object v7

    :cond_5
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v0, v3}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v3, "APMEx1"

    .line 35
    invoke-static {p0, v1, v3, v0}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-object v2
.end method

.method public static a(Lcom/alipay/sdk/m/w/a;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "ap_resp"

    .line 36
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 38
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    const-string v1, "biz"

    const-string v2, "APMEx2"

    .line 44
    invoke-static {p0, v1, v2, p1}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Lcom/alipay/sdk/m/w/a;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/sdk/m/w/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/m/o/b;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "ap_r"

    .line 52
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "biz"

    invoke-static {p0, v3, v1, v2}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {v0}, Lcom/alipay/sdk/m/y/q;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lcom/alipay/sdk/m/w/a;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "ap_args"

    .line 45
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "biz"

    const-string v0, "APMEx2"

    .line 47
    invoke-static {p0, p2, v0, p1}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
