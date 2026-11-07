.class Lcom/tencent/wxop/stat/ak;
.super Ljava/lang/Object;


# static fields
.field private static cx:Lcom/tencent/wxop/stat/b/b;

.field private static dj:Lcom/tencent/wxop/stat/ak;

.field private static dk:Landroid/content/Context;


# instance fields
.field private cv:J

.field dg:Lorg/apache/http/impl/client/DefaultHttpClient;

.field dh:Lcom/tencent/wxop/stat/b/f;

.field di:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/tencent/wxop/stat/b/l;->av()Lcom/tencent/wxop/stat/b/b;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/ak;->cx:Lcom/tencent/wxop/stat/b/b;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/wxop/stat/ak;->dj:Lcom/tencent/wxop/stat/ak;

    sput-object v0, Lcom/tencent/wxop/stat/ak;->dk:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "debug"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/wxop/stat/ak;->dg:Lorg/apache/http/impl/client/DefaultHttpClient;

    iput-object v1, p0, Lcom/tencent/wxop/stat/ak;->dh:Lcom/tencent/wxop/stat/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/tencent/wxop/stat/ak;->di:Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/wxop/stat/ak;->cv:J

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/tencent/wxop/stat/ak;->dk:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/tencent/wxop/stat/ak;->cv:J

    new-instance p1, Lcom/tencent/wxop/stat/b/f;

    invoke-direct {p1}, Lcom/tencent/wxop/stat/b/f;-><init>()V

    iput-object p1, p0, Lcom/tencent/wxop/stat/ak;->dh:Lcom/tencent/wxop/stat/b/f;

    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    :try_start_1
    const-string p1, "org.apache.http.wire"

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    const-string p1, "org.apache.http.headers"

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    const-string p1, "org.apache.commons.logging.Log"

    const-string v1, "org.apache.commons.logging.impl.SimpleLog"

    invoke-static {p1, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "org.apache.commons.logging.simplelog.showdatetime"

    const-string v1, "true"

    invoke-static {p1, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "org.apache.commons.logging.simplelog.log.httpclient.wire"

    invoke-static {p1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "org.apache.commons.logging.simplelog.log.org.apache.http"

    invoke-static {p1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "org.apache.commons.logging.simplelog.log.org.apache.http.headers"

    invoke-static {p1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    :try_start_2
    new-instance p1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    const/16 v0, 0x2710

    invoke-static {p1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {p1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/tencent/wxop/stat/ak;->dg:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance p1, Lcom/tencent/wxop/stat/al;

    invoke-direct {p1, p0}, Lcom/tencent/wxop/stat/al;-><init>(Lcom/tencent/wxop/stat/ak;)V

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    sget-object v0, Lcom/tencent/wxop/stat/ak;->cx:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v0, p1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method static Z(Landroid/content/Context;)Lcom/tencent/wxop/stat/ak;
    .locals 2

    sget-object v0, Lcom/tencent/wxop/stat/ak;->dj:Lcom/tencent/wxop/stat/ak;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/wxop/stat/ak;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wxop/stat/ak;->dj:Lcom/tencent/wxop/stat/ak;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/wxop/stat/ak;

    invoke-direct {v1, p0}, Lcom/tencent/wxop/stat/ak;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/wxop/stat/ak;->dj:Lcom/tencent/wxop/stat/ak;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/tencent/wxop/stat/ak;->dj:Lcom/tencent/wxop/stat/ak;

    return-object p0
.end method

.method static aB()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/ak;->dk:Landroid/content/Context;

    return-object v0
.end method

.method static j(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/tencent/wxop/stat/ak;->dk:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method final a(Lcom/tencent/wxop/stat/a/d;Lcom/tencent/wxop/stat/aj;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/a/d;->af()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wxop/stat/ak;->b(Ljava/util/List;Lcom/tencent/wxop/stat/aj;)V

    return-void
.end method

.method final a(Ljava/util/List;Lcom/tencent/wxop/stat/aj;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Lcom/tencent/wxop/stat/aj;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "ncts"

    const-string v3, "cfg"

    const-string v4, "gzip"

    const-string v5, "rc4"

    const-string v6, "["

    const-string v7, "UTF-8"

    const-string v8, "Content-Encoding"

    if-eqz v0, :cond_1b

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    :try_start_0
    iget-object v12, v1, Lcom/tencent/wxop/stat/ak;->di:Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    invoke-virtual {v12, v10, v13}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/tencent/wxop/stat/ak;->di:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v12, v10

    :goto_0
    if-ge v12, v9, :cond_2

    iget-object v13, v1, Lcom/tencent/wxop/stat/ak;->di:Ljava/lang/StringBuilder;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v9, -0x1

    if-eq v12, v13, :cond_1

    iget-object v13, v1, Lcom/tencent/wxop/stat/ak;->di:Ljava/lang/StringBuilder;

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lcom/tencent/wxop/stat/ak;->di:Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/tencent/wxop/stat/ak;->di:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/wxop/stat/c;->y()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/?index="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v1, Lcom/tencent/wxop/stat/ak;->cv:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-wide v13, v1, Lcom/tencent/wxop/stat/ak;->cv:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    iput-wide v13, v1, Lcom/tencent/wxop/stat/ak;->cv:J

    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result v13

    if-eqz v13, :cond_3

    sget-object v13, Lcom/tencent/wxop/stat/ak;->cx:Lcom/tencent/wxop/stat/b/b;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, "]Send request("

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, "bytes), content:"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Object;)V

    :cond_3
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v6, v12}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v12, "Accept-Encoding"

    invoke-virtual {v6, v12, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "Connection"

    const-string v13, "Keep-Alive"

    invoke-virtual {v6, v12, v13}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "Cache-Control"

    invoke-virtual {v6, v12}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    sget-object v12, Lcom/tencent/wxop/stat/ak;->dk:Landroid/content/Context;

    invoke-static {v12}, Lcom/tencent/wxop/stat/g;->r(Landroid/content/Context;)Lcom/tencent/wxop/stat/g;

    move-result-object v12

    invoke-virtual {v12}, Lcom/tencent/wxop/stat/g;->V()Lorg/apache/http/HttpHost;

    move-result-object v12

    invoke-virtual {v6, v8, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v13, "http.route.default-proxy"

    const-string v14, "X-Content-Encoding"

    if-nez v12, :cond_4

    :try_start_1
    iget-object v15, v1, Lcom/tencent/wxop/stat/ak;->dg:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v15}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v15

    invoke-interface {v15, v13}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result v15

    if-eqz v15, :cond_5

    sget-object v15, Lcom/tencent/wxop/stat/ak;->cx:Lcom/tencent/wxop/stat/b/b;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v10, "proxy:"

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Lcom/tencent/wxop/stat/b/b;->e(Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {v6, v14, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v1, Lcom/tencent/wxop/stat/ak;->dg:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v10

    invoke-interface {v10, v13, v12}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const-string v10, "X-Online-Host"

    sget-object v11, Lcom/tencent/wxop/stat/c;->al:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "Accept"

    const-string v11, "*/*"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "Content-Type"

    const-string v11, "json"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v11, v0

    sget v13, Lcom/tencent/wxop/stat/c;->aA:I

    if-le v9, v13, :cond_7

    invoke-virtual {v6, v8}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, ",gzip"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_6

    invoke-virtual {v6, v14}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    invoke-virtual {v6, v14, v9}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/4 v9, 0x4

    new-array v12, v9, [B

    invoke-virtual {v10, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-instance v12, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v12, v10}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v12, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v12}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v12, 0x0

    invoke-static {v0, v12, v9}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result v9

    if-eqz v9, :cond_7

    sget-object v9, Lcom/tencent/wxop/stat/ak;->cx:Lcom/tencent/wxop/stat/b/b;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "before Gzip:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes, after Gzip:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/tencent/wxop/stat/b/b;->e(Ljava/lang/Object;)V

    :cond_7
    invoke-static {v0}, Lcom/tencent/wxop/stat/b/g;->b([B)[B

    move-result-object v0

    new-instance v9, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v9, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v6, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    iget-object v0, v1, Lcom/tencent/wxop/stat/ak;->dg:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v11

    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result v13

    if-eqz v13, :cond_8

    sget-object v13, Lcom/tencent/wxop/stat/ak;->cx:Lcom/tencent/wxop/stat/b/b;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "http recv response status code:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", content length:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Object;)V

    :cond_8
    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-gtz v11, :cond_a

    sget-object v0, Lcom/tencent/wxop/stat/ak;->cx:Lcom/tencent/wxop/stat/b/b;

    const-string v2, "Server response no data."

    invoke-virtual {v0, v2}, Lcom/tencent/wxop/stat/b/b;->d(Ljava/lang/Object;)V

    if-eqz p2, :cond_9

    invoke-interface/range {p2 .. p2}, Lcom/tencent/wxop/stat/aj;->B()V

    :cond_9
    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    return-void

    :cond_a
    if-lez v11, :cond_18

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v13

    long-to-int v6, v13

    new-array v6, v6, [B

    invoke-virtual {v12, v6}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    invoke-interface {v0, v8}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string v12, "gzip,rc4"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-static {v6}, Lcom/tencent/wxop/stat/b/l;->b([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/b/g;->c([B)[B

    move-result-object v6

    goto :goto_2

    :cond_b
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string v12, "rc4,gzip"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-static {v6}, Lcom/tencent/wxop/stat/b/g;->c([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/b/l;->b([B)[B

    move-result-object v6

    goto :goto_2

    :cond_c
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v6}, Lcom/tencent/wxop/stat/b/l;->b([B)[B

    move-result-object v6

    goto :goto_2

    :cond_d
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {v6}, Lcom/tencent/wxop/stat/b/g;->c([B)[B

    move-result-object v6

    :cond_e
    :goto_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result v4

    if-eqz v4, :cond_f

    sget-object v4, Lcom/tencent/wxop/stat/ak;->cx:Lcom/tencent/wxop/stat/b/b;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "http get response data:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Object;)V

    :cond_f
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0xc8

    if-ne v9, v0, :cond_16

    :try_start_2
    const-string v0, "mid"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/a/a/a/a/h;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result v5

    if-eqz v5, :cond_10

    sget-object v5, Lcom/tencent/wxop/stat/ak;->cx:Lcom/tencent/wxop/stat/b/b;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "update mid:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Object;)V

    :cond_10
    sget-object v5, Lcom/tencent/wxop/stat/ak;->dk:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/a/a/a/a/g;->a(Landroid/content/Context;)Lcom/tencent/a/a/a/a/g;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/tencent/a/a/a/a/g;->b(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v3, Lcom/tencent/wxop/stat/ak;->dk:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/tencent/wxop/stat/c;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_12
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    sub-long/2addr v2, v5

    long-to-int v2, v2

    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result v3

    if-eqz v3, :cond_13

    sget-object v3, Lcom/tencent/wxop/stat/ak;->cx:Lcom/tencent/wxop/stat/b/b;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "server time:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", diff time:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Object;)V

    :cond_13
    sget-object v0, Lcom/tencent/wxop/stat/ak;->dk:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/b/l;->Q(Landroid/content/Context;)V

    sget-object v0, Lcom/tencent/wxop/stat/ak;->dk:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/tencent/wxop/stat/b/l;->a(Landroid/content/Context;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_3
    sget-object v2, Lcom/tencent/wxop/stat/ak;->cx:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/b/b;->c(Ljava/lang/Object;)V

    :cond_14
    :goto_3
    if-eqz p2, :cond_17

    const-string v0, "ret"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    invoke-interface/range {p2 .. p2}, Lcom/tencent/wxop/stat/aj;->ah()V

    goto :goto_5

    :cond_15
    sget-object v0, Lcom/tencent/wxop/stat/ak;->cx:Lcom/tencent/wxop/stat/b/b;

    const-string v2, "response error data."

    invoke-virtual {v0, v2}, Lcom/tencent/wxop/stat/b/b;->error(Ljava/lang/Object;)V

    :goto_4
    invoke-interface/range {p2 .. p2}, Lcom/tencent/wxop/stat/aj;->B()V

    goto :goto_5

    :cond_16
    sget-object v0, Lcom/tencent/wxop/stat/ak;->cx:Lcom/tencent/wxop/stat/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Server response error code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/wxop/stat/b/b;->error(Ljava/lang/Object;)V

    if-eqz p2, :cond_17

    goto :goto_4

    :cond_17
    :goto_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    goto :goto_6

    :cond_18
    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    :goto_6
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v2, 0x0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v0

    :goto_7
    if-eqz v2, :cond_1b

    sget-object v0, Lcom/tencent/wxop/stat/ak;->cx:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v0, v2}, Lcom/tencent/wxop/stat/b/b;->a(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_19

    :try_start_4
    invoke-interface/range {p2 .. p2}, Lcom/tencent/wxop/stat/aj;->B()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v3, v0

    sget-object v0, Lcom/tencent/wxop/stat/ak;->cx:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v0, v3}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V

    :cond_19
    :goto_8
    instance-of v0, v2, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_1a

    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/tencent/wxop/stat/ak;->di:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x800

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, v1, Lcom/tencent/wxop/stat/ak;->di:Ljava/lang/StringBuilder;

    :cond_1a
    sget-object v0, Lcom/tencent/wxop/stat/ak;->dk:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/g;->r(Landroid/content/Context;)Lcom/tencent/wxop/stat/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/g;->I()V

    :cond_1b
    :goto_9
    return-void
.end method

.method final b(Ljava/util/List;Lcom/tencent/wxop/stat/aj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Lcom/tencent/wxop/stat/aj;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/wxop/stat/ak;->dh:Lcom/tencent/wxop/stat/b/f;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tencent/wxop/stat/am;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/wxop/stat/am;-><init>(Lcom/tencent/wxop/stat/ak;Ljava/util/List;Lcom/tencent/wxop/stat/aj;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
