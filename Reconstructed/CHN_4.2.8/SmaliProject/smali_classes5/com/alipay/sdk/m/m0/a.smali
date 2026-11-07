.class public Lcom/alipay/sdk/m/m0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/alipay/sdk/m/b/a;->a:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/alipay/sdk/m/b/b$b;->a:Lcom/alipay/sdk/m/b/b;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "AUID"

    invoke-virtual {v0, p0, v1}, Lcom/alipay/sdk/m/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SDK Need Init First!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a()Z
    .locals 2

    .line 5
    sget-boolean v0, Lcom/alipay/sdk/m/b/a;->a:Z

    if-eqz v0, :cond_0

    .line 6
    sget-boolean v0, Lcom/alipay/sdk/m/b/a;->b:Z

    return v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SDK Need Init First!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/alipay/sdk/m/b/a;->a:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/alipay/sdk/m/b/b$b;->a:Lcom/alipay/sdk/m/b/b;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "OUID"

    invoke-virtual {v0, p0, v1}, Lcom/alipay/sdk/m/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SDK Need Init First!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/alipay/sdk/m/b/a;->a:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/alipay/sdk/m/b/b$b;->a:Lcom/alipay/sdk/m/b/b;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "GUID"

    invoke-virtual {v0, p0, v1}, Lcom/alipay/sdk/m/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SDK Need Init First!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/alipay/sdk/m/b/a;->a:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/alipay/sdk/m/b/b$b;->a:Lcom/alipay/sdk/m/b/b;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "DUID"

    invoke-virtual {v0, p0, v1}, Lcom/alipay/sdk/m/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SDK Need Init First!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/alipay/sdk/m/b/b$b;->a:Lcom/alipay/sdk/m/b/b;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alipay/sdk/m/b/b;->a(Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lcom/alipay/sdk/m/b/a;->b:Z

    const/4 p0, 0x1

    .line 3
    sput-boolean p0, Lcom/alipay/sdk/m/b/a;->a:Z

    return-void
.end method
