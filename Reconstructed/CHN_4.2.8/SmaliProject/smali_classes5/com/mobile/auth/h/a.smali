.class public Lcom/mobile/auth/h/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mobile/auth/h/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/mobile/auth/j/c;Lcom/mobile/auth/k/c;Lcom/cmic/sso/sdk/a;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, ""

    const-string v5, "responseResult: "

    const-string v6, "responseCode: "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u8bf7\u6c42\u5730\u5740: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/mobile/auth/j/c;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "ConnectionInterceptor"

    invoke-static {v7, v0}, Lcom/mobile/auth/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual/range {p1 .. p1}, Lcom/mobile/auth/j/c;->a()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/mobile/auth/j/c;->h()Landroid/net/Network;

    move-result-object v13

    if-eqz v13, :cond_0

    const-string v13, "\u5f00\u59cbwifi\u4e0b\u53d6\u53f7"

    invoke-static {v7, v13}, Lcom/mobile/auth/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/mobile/auth/j/c;->h()Landroid/net/Network;

    move-result-object v13

    invoke-virtual {v13, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v13, "\u4f7f\u7528\u5f53\u524d\u7f51\u7edc\u73af\u5883\u53d1\u9001\u8bf7\u6c42"

    invoke-static {v7, v13}, Lcom/mobile/auth/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object v13, v0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/mobile/auth/j/c;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v15, v12}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    instance-of v0, v13, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x14

    if-ge v0, v12, :cond_2

    const-string v0, "5.0\u4ee5\u4e0b\u542f\u52a8tls 1.2"

    invoke-static {v7, v0}, Lcom/mobile/auth/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v13

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v12, Lcom/mobile/auth/g/b;

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v14

    invoke-direct {v12, v14}, Lcom/mobile/auth/g/b;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {v0, v12}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v12, 0x0

    invoke-virtual {v13, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v14, 0x1388

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v13, v12}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/mobile/auth/j/c;->e()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    instance-of v0, v2, Lcom/mobile/auth/j/b;

    if-eqz v0, :cond_3

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->connect()V

    move-object v0, v2

    check-cast v0, Lcom/mobile/auth/j/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object/from16 v15, p3

    :try_start_2
    invoke-virtual {v0, v15}, Lcom/mobile/auth/j/b;->a(Lcom/cmic/sso/sdk/a;)V

    goto :goto_2

    :cond_3
    move-object/from16 v15, p3

    :goto_2
    const-string v0, "POST"

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    const-string v14, "utf-8"

    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/mobile/auth/j/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/16 v0, 0x800

    :try_start_6
    new-array v0, v0, [B

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_4
    :try_start_7
    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-lez v12, :cond_5

    new-instance v2, Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v17, v4

    const/4 v4, 0x0

    :try_start_8
    invoke-direct {v2, v0, v4, v12, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    move-object/from16 v4, v17

    goto :goto_4

    :cond_5
    move-object/from16 v17, v4

    new-instance v0, Lcom/mobile/auth/k/b;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v8, v2, v4}, Lcom/mobile/auth/k/b;-><init>(ILjava/util/Map;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-direct {v1, v11}, Lcom/mobile/auth/h/a;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v9}, Lcom/mobile/auth/h/a;->a(Ljava/io/Closeable;)V

    if-eqz v13, :cond_6

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/mobile/auth/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v4, v17

    goto :goto_5

    :cond_7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/mobile/auth/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc8

    if-eq v8, v2, :cond_8

    const/16 v2, 0x12d

    if-eq v8, v2, :cond_8

    const/16 v2, 0x12e

    if-eq v8, v2, :cond_8

    invoke-static {v8}, Lcom/mobile/auth/k/a;->a(I)Lcom/mobile/auth/k/a;

    move-result-object v0

    goto/16 :goto_10

    :cond_8
    invoke-interface {v3, v0}, Lcom/mobile/auth/k/c;->a(Lcom/mobile/auth/k/b;)V

    goto/16 :goto_11

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v17, v4

    :goto_6
    move v12, v8

    goto/16 :goto_12

    :catch_1
    move-exception v0

    move-object/from16 v17, v4

    :goto_7
    move v12, v8

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object/from16 v17, v4

    move v12, v8

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v17, v4

    move v12, v8

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object/from16 v17, v4

    move v12, v8

    const/4 v9, 0x0

    :goto_8
    const/4 v10, 0x0

    goto/16 :goto_12

    :catch_3
    move-exception v0

    move-object/from16 v17, v4

    move v12, v8

    const/4 v9, 0x0

    :goto_9
    const/4 v10, 0x0

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object/from16 v17, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_a

    :catch_4
    move-exception v0

    move-object/from16 v17, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_c

    :catch_5
    move-exception v0

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object/from16 v17, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_a
    const/4 v12, -0x1

    goto/16 :goto_12

    :catch_6
    move-exception v0

    move-object/from16 v15, p3

    :goto_b
    move-object/from16 v17, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_c
    const/4 v12, -0x1

    goto :goto_d

    :catchall_6
    move-exception v0

    move-object/from16 v17, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    goto/16 :goto_12

    :catch_7
    move-exception v0

    move-object/from16 v15, p3

    move-object/from16 v17, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    :goto_d
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8bf7\u6c42\u5931\u8d25: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/mobile/auth/j/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/mobile/auth/l/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/cmic/sso/sdk/a;->a()Lcom/cmic/sso/sdk/d/b;

    move-result-object v2

    iget-object v2, v2, Lcom/cmic/sso/sdk/d/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    instance-of v0, v0, Ljava/io/EOFException;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    if-eqz v0, :cond_9

    const v0, 0x30d72

    goto :goto_e

    :cond_9
    const v0, 0x18ed6

    :goto_e
    invoke-direct {v1, v11}, Lcom/mobile/auth/h/a;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v9}, Lcom/mobile/auth/h/a;->a(Ljava/io/Closeable;)V

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/mobile/auth/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v4, v17

    goto :goto_f

    :cond_b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/mobile/auth/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_c

    const/16 v2, 0x12d

    if-eq v0, v2, :cond_c

    const/16 v2, 0x12e

    if-eq v0, v2, :cond_c

    invoke-static {v0}, Lcom/mobile/auth/k/a;->a(I)Lcom/mobile/auth/k/a;

    move-result-object v0

    :goto_10
    invoke-interface {v3, v0}, Lcom/mobile/auth/k/c;->a(Lcom/mobile/auth/k/a;)V

    goto :goto_11

    :cond_c
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Lcom/mobile/auth/k/c;->a(Lcom/mobile/auth/k/b;)V

    :goto_11
    return-void

    :catchall_7
    move-exception v0

    :goto_12
    invoke-direct {v1, v11}, Lcom/mobile/auth/h/a;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v9}, Lcom/mobile/auth/h/a;->a(Ljava/io/Closeable;)V

    if-eqz v13, :cond_d

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/mobile/auth/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v4, v17

    goto :goto_13

    :cond_e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_13
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/mobile/auth/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc8

    if-eq v12, v2, :cond_f

    const/16 v2, 0x12d

    if-eq v12, v2, :cond_f

    const/16 v2, 0x12e

    if-eq v12, v2, :cond_f

    invoke-static {v12}, Lcom/mobile/auth/k/a;->a(I)Lcom/mobile/auth/k/a;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/mobile/auth/k/c;->a(Lcom/mobile/auth/k/a;)V

    goto :goto_14

    :cond_f
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Lcom/mobile/auth/k/c;->a(Lcom/mobile/auth/k/b;)V

    :goto_14
    throw v0
.end method
