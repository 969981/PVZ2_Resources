.class public Lcom/mobile/auth/w/d;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/mobile/auth/w/d;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/mobile/auth/w/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mobile/auth/w/d;->b:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/mobile/auth/w/d;->c:I

    iput v0, p0, Lcom/mobile/auth/w/d;->d:I

    return-void
.end method

.method public static a()Lcom/mobile/auth/w/d;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/mobile/auth/w/d;->a:Lcom/mobile/auth/w/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/mobile/auth/w/d;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/mobile/auth/w/d;->a:Lcom/mobile/auth/w/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mobile/auth/w/d;

    invoke-direct {v1}, Lcom/mobile/auth/w/d;-><init>()V

    sput-object v1, Lcom/mobile/auth/w/d;->a:Lcom/mobile/auth/w/d;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/mobile/auth/w/d;->a:Lcom/mobile/auth/w/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object v1

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v1
.end method


# virtual methods
.method public a(I)Lcom/mobile/auth/w/d;
    .locals 1

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/w/d;->c:I

    sget-object p1, Lcom/mobile/auth/w/d;->a:Lcom/mobile/auth/w/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public a(Lcom/mobile/auth/w/c;)Lcom/mobile/auth/w/d;
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/w/d;->e:Lcom/mobile/auth/w/c;

    sget-object p1, Lcom/mobile/auth/w/d;->a:Lcom/mobile/auth/w/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public b()Lcom/mobile/auth/w/e;
    .locals 6

    const-string v0, "host \u4e3a\u7a7a"

    const-string v1, "100001"

    :try_start_0
    new-instance v2, Lcom/mobile/auth/w/e;

    invoke-direct {v2}, Lcom/mobile/auth/w/e;-><init>()V

    iget-object v3, p0, Lcom/mobile/auth/w/d;->e:Lcom/mobile/auth/w/c;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v0, "100008"

    invoke-virtual {v2, v0}, Lcom/mobile/auth/w/e;->a(Ljava/lang/String;)V

    const-string v0, "\u8bf7\u6c42\u53c2\u6570\u4e3a\u7a7a"

    invoke-virtual {v2, v0}, Lcom/mobile/auth/w/e;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/mobile/auth/w/e;->a(Z)V

    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/mobile/auth/w/d;->e:Lcom/mobile/auth/w/c;

    invoke-virtual {v3}, Lcom/mobile/auth/w/c;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "100004"

    invoke-virtual {v2, v0}, Lcom/mobile/auth/w/e;->a(Ljava/lang/String;)V

    const-string v0, "url \u4e3a\u7a7a"

    invoke-virtual {v2, v0}, Lcom/mobile/auth/w/e;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/mobile/auth/w/e;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :cond_1
    :try_start_1
    new-instance v3, Ljava/net/URL;

    iget-object v5, p0, Lcom/mobile/auth/w/d;->e:Lcom/mobile/auth/w/c;

    invoke-virtual {v5}, Lcom/mobile/auth/w/c;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v1}, Lcom/mobile/auth/w/e;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/mobile/auth/w/e;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/mobile/auth/w/e;->a(Z)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/mobile/auth/w/d;->e:Lcom/mobile/auth/w/c;

    invoke-virtual {v0}, Lcom/mobile/auth/w/c;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mobile/auth/w/d;->e:Lcom/mobile/auth/w/c;

    invoke-virtual {v0}, Lcom/mobile/auth/w/c;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "100002"

    invoke-virtual {v2, v0}, Lcom/mobile/auth/w/e;->a(Ljava/lang/String;)V

    const-string v0, "api \u4e3a\u7a7a"

    invoke-virtual {v2, v0}, Lcom/mobile/auth/w/e;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/mobile/auth/w/e;->a(Z)V

    return-object v2

    :cond_3
    iget-object v0, p0, Lcom/mobile/auth/w/d;->e:Lcom/mobile/auth/w/c;

    invoke-virtual {v0}, Lcom/mobile/auth/w/c;->isSign()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mobile/auth/w/d;->e:Lcom/mobile/auth/w/c;

    invoke-virtual {v0}, Lcom/mobile/auth/w/c;->getAccessKeySecret()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "100003"

    invoke-virtual {v2, v0}, Lcom/mobile/auth/w/e;->a(Ljava/lang/String;)V

    const-string v0, "\u672a\u8bbe\u7f6esecretkey"

    invoke-virtual {v2, v0}, Lcom/mobile/auth/w/e;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/mobile/auth/w/e;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/mobile/auth/w/d;->e:Lcom/mobile/auth/w/c;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/mobile/auth/w/c;->setRequestMethod(Ljava/lang/String;)V

    iput v4, p0, Lcom/mobile/auth/w/d;->b:I

    iget-object v0, p0, Lcom/mobile/auth/w/d;->e:Lcom/mobile/auth/w/c;

    invoke-virtual {v0}, Lcom/mobile/auth/w/c;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mobile/auth/w/d;->e:Lcom/mobile/auth/w/c;

    iget v1, p0, Lcom/mobile/auth/w/d;->c:I

    iget v3, p0, Lcom/mobile/auth/w/d;->d:I

    invoke-static {v0, v1, v3}, Lcom/mobile/auth/w/a;->a(Lcom/mobile/auth/w/c;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/mobile/auth/w/d;->e:Lcom/mobile/auth/w/c;

    iget v1, p0, Lcom/mobile/auth/w/d;->c:I

    iget v3, p0, Lcom/mobile/auth/w/d;->d:I

    iget v5, p0, Lcom/mobile/auth/w/d;->b:I

    invoke-static {v0, v1, v3, v5}, Lcom/mobile/auth/w/a;->a(Lcom/mobile/auth/w/c;III)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "{}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    const-string v1, "100000"

    invoke-virtual {v2, v1}, Lcom/mobile/auth/w/e;->a(Ljava/lang/String;)V

    const-string v1, "\u8bf7\u6c42\u6210\u529f"

    invoke-virtual {v2, v1}, Lcom/mobile/auth/w/e;->b(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/mobile/auth/w/e;->a(Z)V

    invoke-virtual {v2, v0}, Lcom/mobile/auth/w/e;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    :goto_1
    const-string v0, "100007"

    invoke-virtual {v2, v0}, Lcom/mobile/auth/w/e;->a(Ljava/lang/String;)V

    const-string v0, "\u6570\u636e\u8fd4\u56de\u9519\u8bef"

    invoke-virtual {v2, v0}, Lcom/mobile/auth/w/e;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/mobile/auth/w/e;->a(Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    return-object v2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "100006"

    invoke-virtual {v2, v1}, Lcom/mobile/auth/w/e;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mobile/auth/w/e;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/mobile/auth/w/e;->a(Z)V

    return-object v2

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    invoke-virtual {v2, v1}, Lcom/mobile/auth/w/e;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/mobile/auth/w/e;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/mobile/auth/w/e;->a(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_5
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v1
.end method
