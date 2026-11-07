.class public Lcom/mobile/auth/d/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobile/auth/d/b$a;
    }
.end annotation


# static fields
.field private static c:Lcom/mobile/auth/d/b;


# instance fields
.field private a:Lcom/mobile/auth/d/a;

.field private final b:Lcom/mobile/auth/d/a;

.field private volatile d:Z

.field private e:Lcom/mobile/auth/d/b$a;


# direct methods
.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobile/auth/d/b;->d:Z

    new-instance v0, Lcom/mobile/auth/d/a$a;

    invoke-direct {v0}, Lcom/mobile/auth/d/a$a;-><init>()V

    invoke-virtual {v0}, Lcom/mobile/auth/d/a$a;->a()Lcom/mobile/auth/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/d/b;->b:Lcom/mobile/auth/d/a;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/mobile/auth/d/b;->d()Lcom/mobile/auth/d/a;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/d/b;->a:Lcom/mobile/auth/d/a;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/mobile/auth/d/b;->a:Lcom/mobile/auth/d/a;

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/d/b;)Lcom/mobile/auth/d/a;
    .locals 0

    invoke-direct {p0}, Lcom/mobile/auth/d/b;->d()Lcom/mobile/auth/d/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/mobile/auth/d/b;Lcom/mobile/auth/d/a;)Lcom/mobile/auth/d/a;
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/d/b;->a:Lcom/mobile/auth/d/a;

    return-object p1
.end method

.method public static a(Z)Lcom/mobile/auth/d/b;
    .locals 2

    sget-object v0, Lcom/mobile/auth/d/b;->c:Lcom/mobile/auth/d/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/mobile/auth/d/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mobile/auth/d/b;->c:Lcom/mobile/auth/d/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mobile/auth/d/b;

    invoke-direct {v1, p0}, Lcom/mobile/auth/d/b;-><init>(Z)V

    sput-object v1, Lcom/mobile/auth/d/b;->c:Lcom/mobile/auth/d/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/mobile/auth/d/b;->c:Lcom/mobile/auth/d/b;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "="

    invoke-virtual {v2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method static synthetic a(Lcom/mobile/auth/d/b;Lcom/cmic/sso/sdk/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mobile/auth/d/b;->b(Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/d/b;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mobile/auth/d/b;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "LOGS_CONTROL"

    const-string v3, "M009"

    const-string v4, "M008"

    const-string v5, "M007"

    const-string v6, "CHANGE_HOST"

    const-string v7, "Configlist"

    const-string v8, "UmcConfigHandle"

    const-string v9, "client_valid"

    const-string v10, "0"

    const-string v11, "sso_config_xf"

    invoke-static {v11}, Lcom/mobile/auth/l/k;->b(Ljava/lang/String;)Lcom/mobile/auth/l/k$a;

    move-result-object v11

    :try_start_0
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v12, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3c

    mul-long v12, v12, v16

    mul-long v12, v12, v16

    const-wide/16 v16, 0x3e8

    mul-long v12, v12, v16

    add-long/2addr v14, v12

    invoke-virtual {v11, v9, v14, v15}, Lcom/mobile/auth/l/k$a;->a(Ljava/lang/String;J)V

    :cond_0
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v9, "config_host"

    const-string v12, "https_get_phone_scrip_host"

    const-string v13, "logHost"

    if-eqz v7, :cond_3

    :try_start_1
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {v1, v6, v5}, Lcom/mobile/auth/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v11, v13, v5}, Lcom/mobile/auth/l/k$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {v1, v6, v4}, Lcom/mobile/auth/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v11, v12, v4}, Lcom/mobile/auth/l/k$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {v1, v6, v3}, Lcom/mobile/auth/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v11, v9, v3}, Lcom/mobile/auth/l/k$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v11, v13}, Lcom/mobile/auth/l/k$a;->a(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/mobile/auth/l/k$a;->a(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Lcom/mobile/auth/l/k$a;->a(Ljava/lang/String;)V

    :cond_4
    :goto_0
    const-string v3, "CLOSE_FRIEND_WAPKS"

    invoke-direct {v1, v0, v3, v10, v11}, Lcom/mobile/auth/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/l/k$a;)V

    const-string v3, "CLOSE_LOGS_VERSION"

    invoke-direct {v1, v0, v3, v10, v11}, Lcom/mobile/auth/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/l/k$a;)V

    const-string v3, "CLOSE_IPV4_LIST"

    invoke-direct {v1, v0, v3, v10, v11}, Lcom/mobile/auth/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/l/k$a;)V

    const-string v3, "CLOSE_IPV6_LIST"

    invoke-direct {v1, v0, v3, v10, v11}, Lcom/mobile/auth/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/l/k$a;)V

    const-string v3, "CLOSE_M008_SDKVERSION_LIST"

    invoke-direct {v1, v0, v3, v10, v11}, Lcom/mobile/auth/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/l/k$a;)V

    const-string v3, "CLOSE_M008_APPID_LIST"

    invoke-direct {v1, v0, v3, v10, v11}, Lcom/mobile/auth/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/l/k$a;)V

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v4, "pauseTime"

    const-string v5, "maxFailedLogTimes"

    if-eqz v3, :cond_5

    :try_start_2
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "h"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    aget-object v6, v0, v3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v6, :cond_6

    :try_start_3
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v5, v2}, Lcom/mobile/auth/l/k$a;->a(Ljava/lang/String;I)V

    invoke-virtual {v11, v4, v0}, Lcom/mobile/auth/l/k$a;->a(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    :try_start_4
    const-string v0, "\u89e3\u6790\u65e5\u5fd7\u4e0a\u62a5\u9650\u5236\u65f6\u95f4\u6b21\u6570\u5f02\u5e38"

    invoke-static {v8, v0}, Lcom/mobile/auth/l/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v11, v5}, Lcom/mobile/auth/l/k$a;->a(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Lcom/mobile/auth/l/k$a;->a(Ljava/lang/String;)V

    :cond_6
    :goto_1
    invoke-virtual {v11}, Lcom/mobile/auth/l/k$a;->b()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v2, "\u914d\u7f6e\u9879\u5f02\u5e38\uff0c\u914d\u7f6e\u5931\u6548"

    invoke-static {v8, v2}, Lcom/mobile/auth/l/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/l/k$a;)V
    .locals 2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLOSE_FRIEND_WAPKS"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p2, p1}, Lcom/mobile/auth/l/k$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p4, p2}, Lcom/mobile/auth/l/k$a;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/d/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mobile/auth/d/b;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/mobile/auth/d/b;)Lcom/mobile/auth/d/b$a;
    .locals 0

    iget-object p0, p0, Lcom/mobile/auth/d/b;->e:Lcom/mobile/auth/d/b$a;

    return-object p0
.end method

.method private b(Lcom/cmic/sso/sdk/a;)V
    .locals 3

    iget-boolean v0, p0, Lcom/mobile/auth/d/b;->d:Z

    if-eqz v0, :cond_0

    const-string p1, "UmcConfigHandle"

    const-string v0, "\u6b63\u5728\u83b7\u53d6\u914d\u7f6e\u4e2d..."

    invoke-static {p1, v0}, Lcom/mobile/auth/l/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobile/auth/d/b;->d:Z

    invoke-static {}, Lcom/mobile/auth/j/a;->a()Lcom/mobile/auth/j/a;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/mobile/auth/d/b$1;

    invoke-direct {v2, p0}, Lcom/mobile/auth/d/b$1;-><init>(Lcom/mobile/auth/d/b;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/mobile/auth/j/a;->a(ZLcom/cmic/sso/sdk/a;Lcom/mobile/auth/j/d;)V

    return-void
.end method

.method static synthetic c(Lcom/mobile/auth/d/b;)Lcom/mobile/auth/d/a;
    .locals 0

    iget-object p0, p0, Lcom/mobile/auth/d/b;->a:Lcom/mobile/auth/d/a;

    return-object p0
.end method

.method private d()Lcom/mobile/auth/d/a;
    .locals 2

    new-instance v0, Lcom/mobile/auth/d/a$a;

    invoke-direct {v0}, Lcom/mobile/auth/d/a$a;-><init>()V

    iget-object v1, p0, Lcom/mobile/auth/d/b;->b:Lcom/mobile/auth/d/a;

    invoke-virtual {v1}, Lcom/mobile/auth/d/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobile/auth/d/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/d/a$a;->a(Ljava/lang/String;)Lcom/mobile/auth/d/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/d/b;->b:Lcom/mobile/auth/d/a;

    invoke-virtual {v1}, Lcom/mobile/auth/d/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobile/auth/d/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/d/a$a;->c(Ljava/lang/String;)Lcom/mobile/auth/d/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/d/b;->b:Lcom/mobile/auth/d/a;

    invoke-virtual {v1}, Lcom/mobile/auth/d/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobile/auth/d/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/d/a$a;->b(Ljava/lang/String;)Lcom/mobile/auth/d/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/d/b;->b:Lcom/mobile/auth/d/a;

    invoke-virtual {v1}, Lcom/mobile/auth/d/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobile/auth/d/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/d/a$a;->d(Ljava/lang/String;)Lcom/mobile/auth/d/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/d/b;->b:Lcom/mobile/auth/d/a;

    invoke-virtual {v1}, Lcom/mobile/auth/d/a;->h()Z

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/d/d;->a(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/d/a$a;->d(Z)Lcom/mobile/auth/d/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/d/b;->b:Lcom/mobile/auth/d/a;

    invoke-virtual {v1}, Lcom/mobile/auth/d/a;->i()Z

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/d/d;->b(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/d/a$a;->e(Z)Lcom/mobile/auth/d/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/d/b;->b:Lcom/mobile/auth/d/a;

    invoke-virtual {v1}, Lcom/mobile/auth/d/a;->e()Z

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/d/d;->e(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/d/a$a;->a(Z)Lcom/mobile/auth/d/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/d/b;->b:Lcom/mobile/auth/d/a;

    invoke-virtual {v1}, Lcom/mobile/auth/d/a;->f()Z

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/d/d;->d(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/d/a$a;->b(Z)Lcom/mobile/auth/d/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/d/b;->b:Lcom/mobile/auth/d/a;

    invoke-virtual {v1}, Lcom/mobile/auth/d/a;->g()Z

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/d/d;->c(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/d/a$a;->c(Z)Lcom/mobile/auth/d/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/d/b;->b:Lcom/mobile/auth/d/a;

    invoke-virtual {v1}, Lcom/mobile/auth/d/a;->j()Z

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/d/d;->f(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/d/a$a;->f(Z)Lcom/mobile/auth/d/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/d/b;->b:Lcom/mobile/auth/d/a;

    invoke-virtual {v1}, Lcom/mobile/auth/d/a;->k()I

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/d/d;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/d/a$a;->a(I)Lcom/mobile/auth/d/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/d/b;->b:Lcom/mobile/auth/d/a;

    invoke-virtual {v1}, Lcom/mobile/auth/d/a;->l()I

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/d/d;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/d/a$a;->b(I)Lcom/mobile/auth/d/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/d/a$a;->a()Lcom/mobile/auth/d/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()Lcom/mobile/auth/d/a;
    .locals 1

    iget-object v0, p0, Lcom/mobile/auth/d/b;->b:Lcom/mobile/auth/d/a;

    return-object v0
.end method

.method a(Lcom/cmic/sso/sdk/a;)V
    .locals 1

    invoke-static {}, Lcom/mobile/auth/d/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mobile/auth/d/b$2;

    invoke-direct {v0, p0, p1}, Lcom/mobile/auth/d/b$2;-><init>(Lcom/mobile/auth/d/b;Lcom/cmic/sso/sdk/a;)V

    invoke-static {v0}, Lcom/mobile/auth/l/n;->a(Lcom/mobile/auth/l/n$a;)V

    :cond_0
    return-void
.end method

.method a(Lcom/mobile/auth/d/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/d/b;->e:Lcom/mobile/auth/d/b$a;

    return-void
.end method

.method b()Lcom/mobile/auth/d/a;
    .locals 1

    iget-object v0, p0, Lcom/mobile/auth/d/b;->a:Lcom/mobile/auth/d/a;

    return-object v0
.end method

.method c()V
    .locals 1

    const-string v0, "sso_config_xf"

    invoke-static {v0}, Lcom/mobile/auth/l/k;->b(Ljava/lang/String;)Lcom/mobile/auth/l/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/l/k$a;->c()V

    invoke-virtual {v0}, Lcom/mobile/auth/l/k$a;->b()V

    return-void
.end method
