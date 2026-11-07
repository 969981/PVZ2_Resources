.class public Lcom/alipay/android/phone/mrpc/core/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/alipay/android/phone/mrpc/core/v;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Lorg/apache/http/client/HttpRequestRetryHandler;


# instance fields
.field public a:Lcom/alipay/android/phone/mrpc/core/l;

.field public b:Landroid/content/Context;

.field public c:Lcom/alipay/android/phone/mrpc/core/o;

.field public d:Ljava/lang/String;

.field private f:Lorg/apache/http/client/methods/HttpUriRequest;

.field private g:Lorg/apache/http/protocol/HttpContext;

.field private h:Lorg/apache/http/client/CookieStore;

.field private i:Landroid/webkit/CookieManager;

.field private j:Lorg/apache/http/entity/AbstractHttpEntity;

.field private k:Lorg/apache/http/HttpHost;

.field private l:Ljava/net/URL;

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/af;

    invoke-direct {v0}, Lcom/alipay/android/phone/mrpc/core/af;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/q;->e:Lorg/apache/http/client/HttpRequestRetryHandler;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/l;Lcom/alipay/android/phone/mrpc/core/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->g:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->h:Lorg/apache/http/client/CookieStore;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->m:I

    iput-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->n:Z

    iput-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->o:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->p:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/q;->a:Lcom/alipay/android/phone/mrpc/core/l;

    iget-object p1, p1, Lcom/alipay/android/phone/mrpc/core/l;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/q;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    return-void
.end method

.method private f()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/q;->b()Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/q;->a()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    iput-object v1, p0, Lcom/alipay/android/phone/mrpc/core/q;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/q;->a()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    :cond_0
    return-void
.end method

.method private h()Lcom/alipay/android/phone/mrpc/core/ae;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/u;->f()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v0

    return-object v0
.end method

.method private i()Lorg/apache/http/HttpResponse;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->j()Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private j()Lorg/apache/http/HttpResponse;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "By Http/Https to request. operationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/q;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpWorker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->l()Lcom/alipay/android/phone/mrpc/core/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/b;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->q()Lorg/apache/http/HttpHost;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->n()Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->o()I

    move-result v1

    const/16 v2, 0x50

    if-ne v1, v2, :cond_0

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->p()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->l()Lcom/alipay/android/phone/mrpc/core/b;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/q;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/q;->g:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/android/phone/mrpc/core/b;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->q:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    const-string v1, "operationType"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mrpc/core/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->q:Ljava/lang/String;

    return-object v0
.end method

.method private l()Lcom/alipay/android/phone/mrpc/core/b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->a:Lcom/alipay/android/phone/mrpc/core/l;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/l;->a()Lcom/alipay/android/phone/mrpc/core/b;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/q;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->f()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->f()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/b;->a(Lorg/apache/http/HttpRequest;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->f()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/b;->b(Lorg/apache/http/HttpRequest;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->f()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->r()Landroid/webkit/CookieManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mrpc/core/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cookie"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private n()Lorg/apache/http/HttpHost;
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->k:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->p()Ljava/net/URL;

    move-result-object v0

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->o()I

    move-result v3

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/android/phone/mrpc/core/q;->k:Lorg/apache/http/HttpHost;

    return-object v1
.end method

.method private o()I
    .locals 3

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->p()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->getDefaultPort()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    :goto_0
    return v0
.end method

.method private p()Ljava/net/URL;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->l:Ljava/net/URL;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->l:Ljava/net/URL;

    return-object v0
.end method

.method private q()Lorg/apache/http/HttpHost;
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/t;->a(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "127.0.0.1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    const/16 v2, 0x1f97

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private r()Landroid/webkit/CookieManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->i:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->i:Landroid/webkit/CookieManager;

    return-object v0
.end method


# virtual methods
.method public a([Ljava/lang/String;)J
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    const-string v2, "max-age"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    :try_start_0
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a(Lorg/apache/http/HttpResponse;)Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;
    .locals 5

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;

    invoke-direct {v0}, Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;-><init>()V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;->setHead(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a(Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/android/phone/mrpc/core/v;
    .locals 10

    const-string v0, "ArrayOutputStream close error!"

    const-string v1, "finally,handleResponse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u59cbhandle\uff0chandleResponse-1,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HttpWorker"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "200\uff0c\u5f00\u59cb\u5904\u7406\uff0chandleResponse-2,threadid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-virtual {p0, v2, v8, v9, v5}, Lcom/alipay/android/phone/mrpc/core/q;->a(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;)V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/alipay/android/phone/mrpc/core/q;->o:Z

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/q;->a:Lcom/alipay/android/phone/mrpc/core/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {v4, v8, v9}, Lcom/alipay/android/phone/mrpc/core/l;->c(J)V

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/q;->a:Lcom/alipay/android/phone/mrpc/core/l;

    array-length v6, v2

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Lcom/alipay/android/phone/mrpc/core/l;->a(J)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "res:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/alipay/android/phone/mrpc/core/p;

    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/mrpc/core/q;->a(Lorg/apache/http/HttpResponse;)Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;

    move-result-object v6

    invoke-direct {v4, v6, p2, p3, v2}, Lcom/alipay/android/phone/mrpc/core/p;-><init>(Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;ILjava/lang/String;[B)V

    invoke-virtual {p0, v4, p1}, Lcom/alipay/android/phone/mrpc/core/q;->a(Lcom/alipay/android/phone/mrpc/core/p;Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_0
    move-exception p1

    move-object v4, v5

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_1
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p1

    :cond_1
    if-nez v2, :cond_2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    :cond_2
    :goto_2
    return-object v4
.end method

.method public a(Lorg/apache/http/HttpResponse;Lcom/alipay/android/phone/mrpc/core/o;)Lcom/alipay/android/phone/mrpc/core/v;
    .locals 2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc8

    if-eq p2, v1, :cond_1

    invoke-virtual {p0, p2, v0}, Lcom/alipay/android/phone/mrpc/core/q;->a(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/alipay/android/phone/mrpc/core/HttpException;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/phone/mrpc/core/q;->a(Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/android/phone/mrpc/core/v;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/net/URI;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/o;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/q;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "url should not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "Content-Type"

    aput-object v6, v5, v2

    aput-object v4, v5, v7

    goto :goto_1

    :cond_0
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    :goto_1
    aget-object v4, v5, v2

    aget-object v5, v5, v7

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public a(Lcom/alipay/android/phone/mrpc/core/p;Lorg/apache/http/HttpResponse;)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/alipay/android/phone/mrpc/core/q;->b(Lorg/apache/http/HttpResponse;)J

    move-result-wide v0

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object p2

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/alipay/android/phone/mrpc/core/q;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    const-string v2, "charset"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Content-Type"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, v2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/alipay/android/phone/mrpc/core/v;->b(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/alipay/android/phone/mrpc/core/p;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/alipay/android/phone/mrpc/core/p;->a(J)V

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/phone/mrpc/core/p;->b(J)V

    return-void
.end method

.method public a(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;)V
    .locals 9

    if-eqz p4, :cond_2

    invoke-static {p1}, Lcom/alipay/android/phone/mrpc/core/b;->a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    const/16 p1, 0x800

    :try_start_0
    new-array p1, p1, [B

    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    invoke-virtual {v4}, Lcom/alipay/android/phone/mrpc/core/u;->h()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p4, p1, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr p2, v3

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    long-to-double v5, p2

    long-to-double v7, v1

    div-double/2addr v5, v7

    invoke-interface {v3, v4, v5, v6}, Lcom/alipay/android/phone/mrpc/core/ae;->a(Lcom/alipay/android/phone/mrpc/core/u;D)V

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/r;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "HttpWorker"

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "HttpWorker Request Error!"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/r;->a(Ljava/io/Closeable;)V

    throw p1

    :cond_2
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Output stream may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(ILjava/lang/String;)Z
    .locals 0

    const/16 p2, 0x130

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lorg/apache/http/HttpResponse;)J
    .locals 4

    const-string v0, "Cache-Control"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/mrpc/core/q;->a([Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "HttpWorker"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string v0, "Expires"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/android/phone/mrpc/core/b;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public b()Lorg/apache/http/entity/AbstractHttpEntity;
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->j:Lorg/apache/http/entity/AbstractHttpEntity;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/o;->b()[B

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    const-string v2, "gzip"

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/mrpc/core/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mrpc/core/b;->a([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->j:Lorg/apache/http/entity/AbstractHttpEntity;

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    iput-object v1, p0, Lcom/alipay/android/phone/mrpc/core/q;->j:Lorg/apache/http/entity/AbstractHttpEntity;

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->j:Lorg/apache/http/entity/AbstractHttpEntity;

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->j:Lorg/apache/http/entity/AbstractHttpEntity;

    return-object v0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/o;->d()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/q;->d()Lcom/alipay/android/phone/mrpc/core/v;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/alipay/android/phone/mrpc/core/v;
    .locals 13

    const-string v0, "HttpManager"

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x6

    const/4 v6, 0x2

    :try_start_0
    iget-object v7, p0, Lcom/alipay/android/phone/mrpc/core/q;->b:Landroid/content/Context;

    invoke-static {v7}, Lcom/alipay/android/phone/mrpc/core/t;->c(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v7

    iget-object v8, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    invoke-interface {v7, v8}, Lcom/alipay/android/phone/mrpc/core/ae;->b(Lcom/alipay/android/phone/mrpc/core/u;)V

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->m()V

    iget-object v7, p0, Lcom/alipay/android/phone/mrpc/core/q;->g:Lorg/apache/http/protocol/HttpContext;

    const-string v8, "http.cookie-store"

    iget-object v9, p0, Lcom/alipay/android/phone/mrpc/core/q;->h:Lorg/apache/http/client/CookieStore;

    invoke-interface {v7, v8, v9}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->l()Lcom/alipay/android/phone/mrpc/core/b;

    move-result-object v7

    sget-object v8, Lcom/alipay/android/phone/mrpc/core/q;->e:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-virtual {v7, v8}, Lcom/alipay/android/phone/mrpc/core/b;->a(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->i()Lorg/apache/http/HttpResponse;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v12, p0, Lcom/alipay/android/phone/mrpc/core/q;->a:Lcom/alipay/android/phone/mrpc/core/l;

    sub-long/2addr v10, v7

    invoke-virtual {v12, v10, v11}, Lcom/alipay/android/phone/mrpc/core/l;->b(J)V

    iget-object v7, p0, Lcom/alipay/android/phone/mrpc/core/q;->h:Lorg/apache/http/client/CookieStore;

    invoke-interface {v7}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    invoke-virtual {v8}, Lcom/alipay/android/phone/mrpc/core/o;->e()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->r()Landroid/webkit/CookieManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :cond_1
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v8}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    goto :goto_0

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "; domain="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lorg/apache/http/cookie/Cookie;->isSecure()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "; Secure"

    goto :goto_1

    :cond_3
    move-object v8, v1

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->r()Landroid/webkit/CookieManager;

    move-result-object v10

    iget-object v11, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    invoke-virtual {v11}, Lcom/alipay/android/phone/mrpc/core/o;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v8}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    invoke-virtual {p0, v9, v7}, Lcom/alipay/android/phone/mrpc/core/q;->a(Lorg/apache/http/HttpResponse;Lcom/alipay/android/phone/mrpc/core/o;)Lcom/alipay/android/phone/mrpc/core/v;

    move-result-object v7

    const-wide/16 v8, -0x1

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/alipay/android/phone/mrpc/core/v;->b()[B

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v7}, Lcom/alipay/android/phone/mrpc/core/v;->b()[B

    move-result-object v10

    array-length v10, v10

    int-to-long v10, v10

    goto :goto_2

    :cond_5
    move-wide v10, v8

    :goto_2
    cmp-long v12, v10, v8

    if-nez v12, :cond_6

    instance-of v8, v7, Lcom/alipay/android/phone/mrpc/core/p;

    if-eqz v8, :cond_6

    move-object v8, v7

    check-cast v8, Lcom/alipay/android/phone/mrpc/core/p;
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/HttpException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v8}, Lcom/alipay/android/phone/mrpc/core/p;->a()Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;

    move-result-object v8

    const-string v9, "Content-Length"

    invoke-virtual {v8, v9}, Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;->getHead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    :try_start_2
    const-string v8, "HttpWorker"

    const-string v9, "parse Content-Length error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    iget-object v8, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    invoke-virtual {v8}, Lcom/alipay/android/phone/mrpc/core/o;->a()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->k()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->k()Ljava/lang/String;

    :cond_7
    return-object v7

    :cond_8
    new-instance v7, Lcom/alipay/android/phone/mrpc/core/HttpException;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "The network is not available"

    invoke-direct {v7, v8, v9}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Lcom/alipay/android/phone/mrpc/core/HttpException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v3

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->g()V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v2, v5}, Lcom/alipay/android/phone/mrpc/core/ae;->a(Lcom/alipay/android/phone/mrpc/core/u;ILjava/lang/String;)V

    :cond_9
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/HttpException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v4

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->g()V

    iget v5, p0, Lcom/alipay/android/phone/mrpc/core/q;->m:I

    if-ge v5, v3, :cond_a

    add-int/2addr v5, v3

    iput v5, p0, Lcom/alipay/android/phone/mrpc/core/q;->m:I

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/q;->d()Lcom/alipay/android/phone/mrpc/core/v;

    move-result-object v0

    return-object v0

    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/HttpException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->g()V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/alipay/android/phone/mrpc/core/ae;->a(Lcom/alipay/android/phone/mrpc/core/u;ILjava/lang/String;)V

    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/HttpException;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->g()V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v3

    const/16 v4, 0x9

    if-eqz v3, :cond_c

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v4, v6}, Lcom/alipay/android/phone/mrpc/core/ae;->a(Lcom/alipay/android/phone/mrpc/core/u;ILjava/lang/String;)V

    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/HttpException;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    :catch_5
    move-exception v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->g()V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz v3, :cond_d

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v4, v6}, Lcom/alipay/android/phone/mrpc/core/ae;->a(Lcom/alipay/android/phone/mrpc/core/u;ILjava/lang/String;)V

    :cond_d
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/HttpException;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    :catch_6
    move-exception v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->g()V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v3

    const/4 v4, 0x5

    if-eqz v3, :cond_e

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v4, v6}, Lcom/alipay/android/phone/mrpc/core/ae;->a(Lcom/alipay/android/phone/mrpc/core/u;ILjava/lang/String;)V

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/HttpException;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    :catch_7
    move-exception v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->g()V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v3

    const/4 v4, 0x4

    if-eqz v3, :cond_f

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v4, v6}, Lcom/alipay/android/phone/mrpc/core/ae;->a(Lcom/alipay/android/phone/mrpc/core/u;ILjava/lang/String;)V

    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/HttpException;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    :catch_8
    move-exception v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->g()V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v4, v6}, Lcom/alipay/android/phone/mrpc/core/ae;->a(Lcom/alipay/android/phone/mrpc/core/u;ILjava/lang/String;)V

    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/HttpException;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    :catch_9
    move-exception v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->g()V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v4, v6}, Lcom/alipay/android/phone/mrpc/core/ae;->a(Lcom/alipay/android/phone/mrpc/core/u;ILjava/lang/String;)V

    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/HttpException;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    :catch_a
    move-exception v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->g()V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/alipay/android/phone/mrpc/core/ae;->a(Lcom/alipay/android/phone/mrpc/core/u;ILjava/lang/String;)V

    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/HttpException;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    :catch_b
    move-exception v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->g()V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v6, v5}, Lcom/alipay/android/phone/mrpc/core/ae;->a(Lcom/alipay/android/phone/mrpc/core/u;ILjava/lang/String;)V

    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/HttpException;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    :catch_c
    move-exception v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->g()V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v6, v5}, Lcom/alipay/android/phone/mrpc/core/ae;->a(Lcom/alipay/android/phone/mrpc/core/u;ILjava/lang/String;)V

    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/HttpException;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    :catch_d
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Url parser error!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_e
    move-exception v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->g()V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/q;->h()Lcom/alipay/android/phone/mrpc/core/ae;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mrpc/core/HttpException;->getCode()I

    move-result v5

    invoke-virtual {v2}, Lcom/alipay/android/phone/mrpc/core/HttpException;->getMsg()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/alipay/android/phone/mrpc/core/ae;->a(Lcom/alipay/android/phone/mrpc/core/u;ILjava/lang/String;)V

    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
.end method

.method public e()Lcom/alipay/android/phone/mrpc/core/o;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Lcom/alipay/android/phone/mrpc/core/o;

    return-object v0
.end method
