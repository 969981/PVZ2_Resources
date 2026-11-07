.class public Lcom/alipay/apmobilesecuritysdk/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/util/Map;)Lcom/alipay/sdk/m/k0/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/sdk/m/k0/d;"
        }
    .end annotation

    new-instance v0, Lcom/alipay/sdk/m/k0/d;

    invoke-direct {v0}, Lcom/alipay/sdk/m/k0/d;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/alipay/apmobilesecuritysdk/a/b;->a(Landroid/content/Context;Lcom/alipay/sdk/m/k0/d;Ljava/util/Map;)V

    invoke-static {p0, p1}, Lcom/alipay/apmobilesecuritysdk/d/e;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    iput-object p0, v0, Lcom/alipay/sdk/m/k0/d;->f:Ljava/util/Map;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/alipay/sdk/m/k0/d;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alipay/sdk/m/k0/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "appName"

    const-string v1, ""

    invoke-static {p2, v0, v1}, Lcom/alipay/sdk/m/d0/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sessionId"

    invoke-static {p2, v2, v1}, Lcom/alipay/sdk/m/d0/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rpcVersion"

    invoke-static {p2, v3, v1}, Lcom/alipay/sdk/m/d0/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v0}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;->getSecurityToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/h;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/alipay/sdk/m/d0/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iput-object v2, p1, Lcom/alipay/sdk/m/k0/d;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v0, p1, Lcom/alipay/sdk/m/k0/d;->c:Ljava/lang/String;

    :goto_0
    iput-object v3, p1, Lcom/alipay/sdk/m/k0/d;->d:Ljava/lang/String;

    iput-object v4, p1, Lcom/alipay/sdk/m/k0/d;->e:Ljava/lang/String;

    const-string v0, "android"

    iput-object v0, p1, Lcom/alipay/sdk/m/k0/d;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/d;->d(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/alipay/apmobilesecuritysdk/e/c;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/e/c;->c:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v0, v1

    move-object v2, v0

    :goto_1
    invoke-static {v2}, Lcom/alipay/sdk/m/d0/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/a;->d(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/b;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v2, v3, Lcom/alipay/apmobilesecuritysdk/e/b;->a:Ljava/lang/String;

    iget-object v0, v3, Lcom/alipay/apmobilesecuritysdk/e/b;->c:Ljava/lang/String;

    :cond_2
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/d;->e(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/c;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v1, v3, Lcom/alipay/apmobilesecuritysdk/e/c;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/alipay/apmobilesecuritysdk/e/c;->c:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v3, v1

    :goto_2
    invoke-static {v1}, Lcom/alipay/sdk/m/d0/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/a;->e(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/b;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/e/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/e/b;->c:Ljava/lang/String;

    :cond_4
    iput-object v2, p1, Lcom/alipay/sdk/m/k0/d;->h:Ljava/lang/String;

    iput-object v1, p1, Lcom/alipay/sdk/m/k0/d;->g:Ljava/lang/String;

    iput-object p2, p1, Lcom/alipay/sdk/m/k0/d;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/sdk/m/d0/a;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    iput-object v1, p1, Lcom/alipay/sdk/m/k0/d;->b:Ljava/lang/String;

    iput-object v3, p1, Lcom/alipay/sdk/m/k0/d;->i:Ljava/lang/String;

    goto :goto_3

    :cond_5
    iput-object v2, p1, Lcom/alipay/sdk/m/k0/d;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/sdk/m/k0/d;->i:Ljava/lang/String;

    :goto_3
    return-void
.end method
