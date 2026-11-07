.class public Lcom/mobile/auth/c/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mobile/auth/c/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobile/auth/c/i;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/net/HttpURLConnection;)Lcom/mobile/auth/c/h;
    .locals 6

    :try_start_0
    new-instance v0, Lcom/mobile/auth/c/h;

    invoke-direct {v0}, Lcom/mobile/auth/c/h;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    const-string v1, "Log-Level"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p0, v4}, Lcom/mobile/auth/b/e;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "dm"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-static {p0}, Lcom/mobile/auth/c/k;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/mobile/auth/c/h;->b:Z

    :cond_3
    const-string p0, "p-ikgx"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iput-object p0, v0, Lcom/mobile/auth/c/h;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    :goto_1
    return-object v0

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :try_start_3
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object p1

    :catchall_2
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mobile/auth/c/n;
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    const-string v4, "POST"

    const-string v5, "{\"result\":80005,\"msg\":\"Socket\u8d85\u65f6\u5f02\u5e38\"}"

    const-string v6, "Accept-Charset"

    const-string v7, "*/*"

    const-string v8, "accept"

    const-string v9, "1"

    const-string v10, "card.e.189.cn"

    const-string v11, "UTF-8"

    const-string v12, "2"

    :try_start_0
    new-instance v14, Lcom/mobile/auth/c/n;

    invoke-direct {v14}, Lcom/mobile/auth/c/n;-><init>()V

    sget v15, Lcom/mobile/auth/a/a;->c:I

    const/16 v16, 0xbb8

    if-gtz v15, :cond_0

    const/16 v15, 0xbb8

    goto :goto_0

    :cond_0
    sget v15, Lcom/mobile/auth/a/a;->c:I

    :goto_0
    sget v17, Lcom/mobile/auth/a/a;->d:I

    if-gtz v17, :cond_1

    const/16 v13, 0xbb8

    goto :goto_1

    :cond_1
    sget v16, Lcom/mobile/auth/a/a;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    move/from16 v13, v16

    :goto_1
    move-object/from16 v16, v5

    :try_start_1
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_23
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_22
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_21
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    move-object/from16 v19, v12

    const/16 v12, 0x15

    if-eqz v3, :cond_2

    move-object/from16 v20, v9

    :try_start_2
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v12, :cond_3

    invoke-virtual {v3, v5}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v7, v14

    goto/16 :goto_19

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v7, v14

    goto/16 :goto_1e

    :catch_1
    move-exception v0

    move-object v8, v2

    move-object v9, v10

    move-object v7, v14

    move-object/from16 v11, v19

    move-object/from16 v10, v20

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_2
    move-object v2, v0

    goto/16 :goto_25

    :catch_2
    move-exception v0

    move-object v3, v0

    move-object v7, v14

    :goto_3
    move-object/from16 v1, v16

    goto/16 :goto_2b

    :cond_2
    move-object/from16 v20, v9

    :cond_3
    :try_start_3
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    :goto_4
    invoke-virtual {v5, v8, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {v5, v9}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {v5, v15}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v5, v13}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    invoke-static {}, Lcom/mobile/auth/c/i;->a()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_23
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_20
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_21
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    if-ge v9, v12, :cond_4

    const/4 v9, 0x0

    :try_start_4
    invoke-virtual {v5, v9}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :try_start_5
    invoke-virtual {v5, v6, v11}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "deviceId"

    move-object/from16 v12, p4

    invoke-virtual {v5, v9, v12}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "reqId"

    move-object/from16 v12, p5

    invoke-virtual {v5, v9, v12}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_23
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_20
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_21
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    if-nez v9, :cond_5

    :try_start_6
    new-instance v9, Ljava/io/DataOutputStream;

    new-instance v12, Ljava/io/BufferedOutputStream;

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v9, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v2, p2

    invoke-virtual {v2, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v8, p1

    move-object v2, v0

    move-object v9, v10

    move-object v7, v14

    move-object/from16 v11, v19

    move-object/from16 v10, v20

    goto/16 :goto_23

    :cond_5
    :try_start_7
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    :goto_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_23
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_1f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_21
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    const-string v9, "Location"

    const/16 v12, 0x15

    if-ge v2, v12, :cond_9

    :try_start_8
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    const/16 v12, 0x12e

    if-ne v2, v12, :cond_9

    invoke-virtual {v5, v9}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "connectivity"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    const/4 v12, 0x5

    invoke-virtual {v5, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v12
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v22, v10

    :try_start_9
    sget-object v10, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v12, v10}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v2}, Lcom/mobile/auth/c/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mobile/auth/c/j;->a(Ljava/lang/String;)I

    move-result v10

    const-string v12, "android.net.ConnectivityManager"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const-string v1, "requestRouteToHost"
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v23, v14

    const/4 v14, 0x2

    move-object/from16 v24, v9

    :try_start_a
    new-array v9, v14, [Ljava/lang/Class;

    sget-object v25, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v21, 0x0

    aput-object v25, v9, v21

    sget-object v25, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x1

    aput-object v25, v9, v18

    invoke-virtual {v12, v1, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v9, v14, [Ljava/lang/Object;

    const/4 v12, 0x5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x0

    aput-object v12, v9, v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x1

    aput-object v10, v9, v12

    invoke-virtual {v1, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_6
    move-object/from16 v24, v9

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v8, p1

    move-object v2, v0

    move-object v7, v14

    move-object/from16 v11, v19

    move-object/from16 v10, v20

    move-object/from16 v9, v22

    goto/16 :goto_23

    :cond_7
    move-object/from16 v24, v9

    move-object/from16 v22, v10

    :goto_6
    move-object/from16 v23, v14

    :goto_7
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_8

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v2, v5, :cond_8

    invoke-virtual {v3, v1}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v1

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    :goto_8
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    move-object v5, v1

    invoke-virtual {v5, v8, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {v5, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {v5, v15}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v5, v13}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    invoke-virtual {v5, v6, v11}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_9

    :cond_9
    move-object/from16 v24, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v14

    :goto_9
    :try_start_b
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1
    :try_end_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_1e
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_1d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1c
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    const/16 v2, 0x12e

    if-ne v1, v2, :cond_b

    move-object/from16 v1, v24

    :try_start_c
    invoke-virtual {v5, v1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_a

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_a

    invoke-virtual {v3, v2}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v1

    :goto_a
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_b

    :cond_a
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    goto :goto_a

    :goto_b
    invoke-virtual {v1, v8, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v13}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    invoke-virtual {v1, v6, v11}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object/from16 v7, v23

    goto/16 :goto_15

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v23

    goto/16 :goto_19

    :catch_5
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v23

    goto/16 :goto_1e

    :catch_6
    move-exception v0

    move-object/from16 v8, p1

    move-object v2, v0

    move-object/from16 v11, v19

    move-object/from16 v10, v20

    move-object/from16 v9, v22

    move-object/from16 v7, v23

    goto/16 :goto_23

    :catch_7
    move-exception v0

    move-object v3, v0

    move-object/from16 v1, v16

    move-object/from16 v7, v23

    goto/16 :goto_2b

    :cond_b
    const/16 v2, 0xc8

    const-wide/16 v3, 0x0

    if-ne v1, v2, :cond_11

    :try_start_d
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_17
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_d} :catch_1d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1c
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :try_start_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_16
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_15
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_14
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :goto_c
    :try_start_f
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7
    :try_end_f
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_13
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_f} :catch_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_11
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-eqz v7, :cond_c

    :try_start_10
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v23

    goto/16 :goto_1b

    :catch_8
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v23

    goto/16 :goto_20

    :catch_9
    move-exception v0

    move-object/from16 v8, p1

    move-object v2, v0

    move-object/from16 v11, v19

    move-object/from16 v10, v20

    move-object/from16 v9, v22

    move-object/from16 v7, v23

    goto/16 :goto_25

    :catch_a
    move-exception v0

    move-object v3, v0

    move-object v2, v1

    move-object/from16 v1, v16

    move-object/from16 v7, v23

    goto/16 :goto_2d

    :cond_c
    :try_start_11
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_11} :catch_13
    .catch Ljava/net/UnknownHostException; {:try_start_11 .. :try_end_11} :catch_12
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    move-object/from16 v7, v23

    :try_start_12
    iput-object v2, v7, Lcom/mobile/auth/c/n;->b:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-static {v2, v5}, Lcom/mobile/auth/c/i;->a(Landroid/content/Context;Ljava/net/HttpURLConnection;)Lcom/mobile/auth/c/h;

    move-result-object v5

    iget-boolean v8, v5, Lcom/mobile/auth/c/h;->b:Z
    :try_end_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_10
    .catch Ljava/net/UnknownHostException; {:try_start_12 .. :try_end_12} :catch_f
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-eqz v8, :cond_e

    if-eqz p6, :cond_e

    move-object/from16 v8, p1

    move-object/from16 v9, v22

    :try_start_13
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_13 .. :try_end_13} :catch_10
    .catch Ljava/net/UnknownHostException; {:try_start_13 .. :try_end_13} :catch_c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    if-eqz v10, :cond_d

    move-object/from16 v10, v20

    :try_start_14
    iput-object v10, v7, Lcom/mobile/auth/c/n;->e:Ljava/lang/String;
    :try_end_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_14 .. :try_end_14} :catch_10
    .catch Ljava/net/UnknownHostException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_e
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    move-object/from16 v11, v19

    goto :goto_d

    :catch_b
    move-exception v0

    move-object v2, v0

    move-object/from16 v11, v19

    goto/16 :goto_25

    :cond_d
    move-object/from16 v10, v20

    move-object/from16 v11, v19

    :try_start_15
    iput-object v11, v7, Lcom/mobile/auth/c/n;->e:Ljava/lang/String;

    :goto_d
    const/4 v12, 0x1

    iput-boolean v12, v7, Lcom/mobile/auth/c/n;->d:Z

    goto :goto_e

    :catch_c
    move-exception v0

    move-object/from16 v11, v19

    move-object/from16 v10, v20

    goto/16 :goto_2

    :cond_e
    move-object/from16 v8, p1

    move-object/from16 v11, v19

    move-object/from16 v10, v20

    move-object/from16 v9, v22

    :goto_e
    iget-object v5, v5, Lcom/mobile/auth/c/h;->a:Ljava/lang/String;

    invoke-static/range {p5 .. p5}, Lcom/mobile/auth/b/e;->a(Ljava/lang/String;)Lcom/mobile/auth/b/b;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/mobile/auth/b/b;->g(Ljava/lang/String;)Lcom/mobile/auth/b/b;

    if-nez p6, :cond_10

    const-string v5, "id6.me"

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    :goto_f
    invoke-static {v2, v3, v4}, Lcom/mobile/auth/c/k;->a(Landroid/content/Context;J)V

    goto :goto_10

    :cond_f
    invoke-static {v2, v11}, Lcom/mobile/auth/c/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_15 .. :try_end_15} :catch_10
    .catch Ljava/net/UnknownHostException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto :goto_f

    :cond_10
    :goto_10
    move-object/from16 v17, v1

    move-object v13, v6

    goto/16 :goto_16

    :catch_d
    move-exception v0

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    goto :goto_11

    :catch_e
    move-exception v0

    goto :goto_12

    :catch_f
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v11, v19

    move-object/from16 v10, v20

    move-object/from16 v9, v22

    goto/16 :goto_2

    :catch_10
    move-exception v0

    goto :goto_13

    :catchall_4
    move-exception v0

    move-object/from16 v7, v23

    :goto_11
    move-object v2, v0

    goto/16 :goto_1b

    :catch_11
    move-exception v0

    move-object/from16 v7, v23

    :goto_12
    move-object v2, v0

    goto/16 :goto_20

    :catch_12
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v11, v19

    move-object/from16 v10, v20

    move-object/from16 v9, v22

    move-object/from16 v7, v23

    goto/16 :goto_2

    :catch_13
    move-exception v0

    move-object/from16 v7, v23

    :goto_13
    move-object v3, v0

    move-object v2, v1

    move-object/from16 v1, v16

    goto/16 :goto_2d

    :catchall_5
    move-exception v0

    move-object/from16 v7, v23

    move-object v2, v0

    goto/16 :goto_1a

    :catch_14
    move-exception v0

    move-object/from16 v7, v23

    move-object v2, v0

    goto/16 :goto_1f

    :catch_15
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v11, v19

    move-object/from16 v10, v20

    move-object/from16 v9, v22

    move-object/from16 v7, v23

    move-object v2, v0

    goto/16 :goto_24

    :catch_16
    move-exception v0

    move-object/from16 v7, v23

    move-object v3, v0

    move-object v2, v1

    move-object/from16 v1, v16

    goto/16 :goto_2c

    :catch_17
    move-exception v0

    move-object/from16 v7, v23

    move-object v3, v0

    goto/16 :goto_3

    :cond_11
    move-object/from16 v2, p0

    move-object/from16 v8, p1

    move-object/from16 v11, v19

    move-object/from16 v10, v20

    move-object/from16 v9, v22

    move-object/from16 v7, v23

    if-nez p6, :cond_12

    :try_start_16
    invoke-static {v2, v3, v4}, Lcom/mobile/auth/c/k;->a(Landroid/content/Context;J)V
    :try_end_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_16 .. :try_end_16} :catch_1a
    .catch Ljava/net/UnknownHostException; {:try_start_16 .. :try_end_16} :catch_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_18
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    move-object/from16 v1, v16

    :try_start_17
    iput-object v1, v7, Lcom/mobile/auth/c/n;->b:Ljava/lang/String;

    return-object v7

    :catchall_6
    move-exception v0

    goto/16 :goto_18

    :catch_18
    move-exception v0

    goto/16 :goto_1d

    :catch_19
    move-exception v0

    goto/16 :goto_22

    :catch_1a
    move-exception v0

    goto/16 :goto_29

    :cond_12
    move-object/from16 v1, v16

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    iput-object v10, v7, Lcom/mobile/auth/c/n;->e:Ljava/lang/String;

    goto :goto_14

    :cond_13
    iput-object v11, v7, Lcom/mobile/auth/c/n;->e:Ljava/lang/String;

    :goto_14
    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/mobile/auth/c/n;->d:Z
    :try_end_17
    .catch Ljava/net/SocketTimeoutException; {:try_start_17 .. :try_end_17} :catch_1b
    .catch Ljava/net/UnknownHostException; {:try_start_17 .. :try_end_17} :catch_19
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_18
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    :goto_15
    const/4 v13, 0x0

    const/16 v17, 0x0

    :goto_16
    if-eqz v13, :cond_14

    :try_start_18
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    :cond_14
    if-eqz v17, :cond_1d

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    goto/16 :goto_2e

    :catch_1b
    move-exception v0

    goto/16 :goto_2a

    :catchall_7
    move-exception v0

    move-object/from16 v7, v23

    goto :goto_18

    :catch_1c
    move-exception v0

    move-object/from16 v7, v23

    goto/16 :goto_1d

    :catch_1d
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v11, v19

    move-object/from16 v10, v20

    move-object/from16 v9, v22

    move-object/from16 v7, v23

    goto/16 :goto_22

    :catch_1e
    move-exception v0

    move-object/from16 v1, v16

    move-object/from16 v7, v23

    goto/16 :goto_2a

    :catch_1f
    move-exception v0

    move-object/from16 v8, p1

    goto :goto_17

    :catch_20
    move-exception v0

    move-object v8, v2

    :goto_17
    move-object v9, v10

    move-object v7, v14

    move-object/from16 v11, v19

    move-object/from16 v10, v20

    goto/16 :goto_22

    :catchall_8
    move-exception v0

    move-object v7, v14

    :goto_18
    move-object v2, v0

    :goto_19
    const/4 v1, 0x0

    :goto_1a
    const/4 v6, 0x0

    :goto_1b
    :try_start_19
    const-string v3, "{\"result\":80001,\"msg\":\"\u8bf7\u6c42\u5f02\u5e38\"}"

    iput-object v3, v7, Lcom/mobile/auth/c/n;->b:Ljava/lang/String;

    sget-object v3, Lcom/mobile/auth/c/i;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendRequest Throwable-preauth-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/mobile/auth/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static/range {p5 .. p5}, Lcom/mobile/auth/b/e;->a(Ljava/lang/String;)Lcom/mobile/auth/b/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doPost Throwable -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mobile/auth/b/b;->h(Ljava/lang/String;)Lcom/mobile/auth/b/b;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    if-eqz v6, :cond_15

    :try_start_1a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    :cond_15
    if-eqz v1, :cond_1d

    :goto_1c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    goto/16 :goto_2e

    :catch_21
    move-exception v0

    move-object v7, v14

    :goto_1d
    move-object v2, v0

    :goto_1e
    const/4 v1, 0x0

    :goto_1f
    const/4 v6, 0x0

    :goto_20
    :try_start_1b
    const-string v3, "{\"result\":80007,\"msg\":\"IO\u5f02\u5e38\"}"

    iput-object v3, v7, Lcom/mobile/auth/c/n;->b:Ljava/lang/String;

    sget-object v3, Lcom/mobile/auth/c/i;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendRequest IOException-preauth-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/mobile/auth/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static/range {p5 .. p5}, Lcom/mobile/auth/b/e;->a(Ljava/lang/String;)Lcom/mobile/auth/b/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doPost IOException -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mobile/auth/b/b;->h(Ljava/lang/String;)Lcom/mobile/auth/b/b;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    if-eqz v6, :cond_16

    :try_start_1c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    :cond_16
    if-eqz v1, :cond_1d

    goto :goto_1c

    :catchall_9
    move-exception v0

    :goto_21
    move-object v2, v0

    goto/16 :goto_2f

    :catch_22
    move-exception v0

    move-object v8, v2

    move-object v11, v12

    move-object v7, v14

    move-object/from16 v26, v10

    move-object v10, v9

    move-object/from16 v9, v26

    :goto_22
    move-object v2, v0

    :goto_23
    const/4 v1, 0x0

    :goto_24
    const/4 v6, 0x0

    :goto_25
    if-nez p6, :cond_17

    :try_start_1d
    const-string v3, "{\"result\":80006,\"msg\":\"\u57df\u540d\u89e3\u6790\u5f02\u5e38\"}"

    iput-object v3, v7, Lcom/mobile/auth/c/n;->b:Ljava/lang/String;

    sget-object v3, Lcom/mobile/auth/c/i;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendRequest UnknownHostException-preauth-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/mobile/auth/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static/range {p5 .. p5}, Lcom/mobile/auth/b/e;->a(Ljava/lang/String;)Lcom/mobile/auth/b/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doPost UnknownHostException -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mobile/auth/b/b;->h(Ljava/lang/String;)Lcom/mobile/auth/b/b;

    :cond_17
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    iput-object v10, v7, Lcom/mobile/auth/c/n;->e:Ljava/lang/String;

    goto :goto_26

    :cond_18
    iput-object v11, v7, Lcom/mobile/auth/c/n;->e:Ljava/lang/String;

    :goto_26
    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/mobile/auth/c/n;->d:Z
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    if-eqz v6, :cond_19

    :try_start_1e
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    goto :goto_27

    :catchall_a
    nop

    goto :goto_28

    :cond_19
    :goto_27
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    :cond_1a
    :goto_28
    if-eqz v6, :cond_1b

    :try_start_1f
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    :cond_1b
    if-eqz v1, :cond_1d

    goto/16 :goto_1c

    :catch_23
    move-exception v0

    move-object v7, v14

    :goto_29
    move-object/from16 v1, v16

    :goto_2a
    move-object v3, v0

    :goto_2b
    const/4 v2, 0x0

    :goto_2c
    const/4 v6, 0x0

    :goto_2d
    :try_start_20
    iput-object v1, v7, Lcom/mobile/auth/c/n;->b:Ljava/lang/String;

    sget-object v1, Lcom/mobile/auth/c/i;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendRequest SocketTimeoutException-preauth-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lcom/mobile/auth/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static/range {p5 .. p5}, Lcom/mobile/auth/b/e;->a(Ljava/lang/String;)Lcom/mobile/auth/b/b;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doPost SocketTimeoutException -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mobile/auth/b/b;->h(Ljava/lang/String;)Lcom/mobile/auth/b/b;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    if-eqz v6, :cond_1c

    :try_start_21
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    :cond_1c
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    :catchall_b
    :cond_1d
    :goto_2e
    return-object v7

    :catchall_c
    move-exception v0

    move-object v1, v2

    goto/16 :goto_21

    :goto_2f
    if-eqz v6, :cond_1e

    :try_start_22
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    :cond_1e
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_d

    :catchall_d
    :cond_1f
    :try_start_23
    throw v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    :catchall_e
    move-exception v0

    move-object v1, v0

    :try_start_24
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_f

    const/4 v1, 0x0

    return-object v1

    :catchall_f
    move-exception v0

    const/4 v1, 0x0

    move-object v2, v0

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Network;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p2

    const-string v1, "UTF-8"

    const-string v2, "Accept-Charset"

    const-string v3, "GET"

    const-string v4, "Keep-Alive"

    const-string v5, "connection"

    const-string v6, "*/*"

    const-string v7, "accept"

    :try_start_0
    const-string v9, ""

    sget v10, Lcom/mobile/auth/a/a;->c:I

    const/16 v11, 0xbb8

    if-gtz v10, :cond_0

    const/16 v10, 0xbb8

    goto :goto_0

    :cond_0
    sget v10, Lcom/mobile/auth/a/a;->c:I

    :goto_0
    sget v12, Lcom/mobile/auth/a/a;->d:I

    if-gtz v12, :cond_1

    goto :goto_1

    :cond_1
    sget v11, Lcom/mobile/auth/a/a;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :goto_1
    :try_start_1
    new-instance v12, Ljava/net/URL;

    move-object/from16 v13, p1

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 v13, 0x15

    if-eqz v0, :cond_2

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v14, v13, :cond_2

    invoke-virtual {v0, v12}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v12

    :goto_2
    check-cast v12, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_3

    :cond_2
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    goto :goto_2

    :goto_3
    invoke-virtual {v12, v7, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v5, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {v12, v10}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v12, v11}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    invoke-virtual {v12, v14}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    invoke-virtual {v12, v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    invoke-virtual {v12}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v8

    const/16 v15, 0x12e

    if-ne v8, v15, :cond_4

    const-string v8, "Location"

    invoke-virtual {v12, v8}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/net/URL;

    invoke-direct {v12, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v13, :cond_3

    invoke-virtual {v0, v12}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_4

    :cond_3
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    :goto_4
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v12, v0

    invoke-virtual {v12, v7, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v5, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {v12, v10}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v12, v11}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    invoke-virtual {v12, v14}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    invoke-virtual {v12, v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    :cond_4
    invoke-virtual {v12}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_5

    invoke-virtual {v12}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_5
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_8

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_6
    if-eqz v3, :cond_7

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_7
    :goto_6
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    :cond_8
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_c

    :goto_7
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_c

    :catchall_3
    move-exception v0

    const/4 v1, 0x0

    :goto_8
    const/4 v2, 0x0

    :goto_9
    const/4 v3, 0x0

    :goto_a
    :try_start_7
    sget-object v4, Lcom/mobile/auth/c/i;->a:Ljava/lang/String;

    const-string v5, "doGet error"

    invoke-static {v4, v5, v0}, Lcom/mobile/auth/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v3, :cond_9

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_9
    :goto_b
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :cond_b
    :goto_c
    return-object v9

    :catchall_4
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_c

    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_d

    :catch_2
    move-exception v0

    goto :goto_e

    :cond_c
    :goto_d
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_f

    :goto_e
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_f
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v0

    :try_start_b
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    const/4 v1, 0x0

    return-object v1

    :catchall_6
    move-exception v0

    const/4 v1, 0x0

    move-object v2, v0

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static final a()Ljavax/net/ssl/HostnameVerifier;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/mobile/auth/c/i$1;

    invoke-direct {v0}, Lcom/mobile/auth/c/i$1;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v1
.end method
