.class public Lgbsdk/optional/applog/abbx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/network/INetworkClient;


# instance fields
.field public final a:Lgbsdk/optional/applog/abcz;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abcz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/optional/applog/abbx;->a:Lgbsdk/optional/applog/abcz;

    return-void
.end method


# virtual methods
.method public execute(BLjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;BZI)[B
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;BZI)[B"
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v10, p2

    move/from16 v1, p7

    const-string v11, "x-tt-logid"

    const-string v12, "gzip"

    move-object/from16 v13, p0

    iget-object v14, v13, Lgbsdk/optional/applog/abbx;->a:Lgbsdk/optional/applog/abcz;

    .line 1
    iget-object v2, v14, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v15, 0x1

    new-array v3, v15, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v10, v3, v8

    const/16 v9, 0xb

    const-string v4, "Start request http url: {}"

    .line 3
    invoke-interface {v2, v9, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v14, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v2}, Lcom/bytedance/bdtracker/d;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p4, :cond_1

    :try_start_0
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v14, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 4
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http headers key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v4, v9, v3, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v22

    new-array v7, v8, [B

    const/16 v23, 0x0

    :try_start_1
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    :try_start_2
    instance-of v2, v5, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    if-eqz v2, :cond_2

    :try_start_3
    iget-object v2, v14, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v2}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v3, v5

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    iget-object v3, v14, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v4, "use sslSocketFactory: {}"

    :try_start_4
    new-array v9, v15, [Ljava/lang/Object;

    aput-object v2, v9, v8

    const/16 v2, 0xb

    .line 7
    invoke-interface {v3, v2, v4, v9}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_14

    :cond_2
    :goto_1
    if-lez v1, :cond_3

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v1, "GET"

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :cond_4
    if-ne v0, v15, :cond_14

    :try_start_5
    invoke-virtual {v5, v15}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v1, "POST"

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_e

    :goto_2
    if-eqz p4, :cond_6

    :try_start_6
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v3, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v2, v14, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 8
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-string v3, "Header key is empty"

    :try_start_7
    new-array v4, v8, [Ljava/lang/Object;

    const/16 v9, 0xb

    .line 9
    invoke-interface {v2, v9, v3, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :cond_6
    const/16 v9, 0xb

    :try_start_8
    const-string v1, "Accept-Encoding"

    invoke-virtual {v5, v1, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->isDisabled()Z

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_e

    if-nez v1, :cond_7

    const-string v4, "do_request_begin"

    :try_start_9
    new-instance v3, Lgbsdk/optional/applog/abcu;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v1, v3

    move-object v2, v14

    move-object v15, v3

    move-object v3, v5

    move-object v0, v4

    move-object/from16 v4, v22

    move-object/from16 p4, v5

    move-object/from16 v5, p2

    move-object/from16 v20, v6

    move-object/from16 v6, p3

    move-object/from16 v24, v7

    move/from16 v7, p1

    const/4 v13, 0x0

    move-wide/from16 v8, v16

    :try_start_a
    invoke-direct/range {v1 .. v9}, Lgbsdk/optional/applog/abcu;-><init>(Lgbsdk/optional/applog/abcz;Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;BJ)V

    invoke-static {v0, v15}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 p4, v5

    goto/16 :goto_14

    :cond_7
    move-object/from16 p4, v5

    move-object/from16 v20, v6

    move-object/from16 v24, v7

    const/4 v13, 0x0

    :goto_4
    const-string v1, "UTF-8"

    if-eqz p3, :cond_9

    :try_start_b
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p6, :cond_8

    iget-object v2, v14, Lgbsdk/optional/applog/abcz;->d:Lgbsdk/optional/applog/abgd;

    invoke-virtual {v2, v0}, Lgbsdk/optional/applog/abgd;->b(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_5

    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v5, p4

    goto/16 :goto_15

    :cond_9
    move-object/from16 v0, v23

    :goto_5
    if-eqz v0, :cond_a

    array-length v2, v0

    if-lez v2, :cond_a

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual/range {p4 .. p4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object v8, v2

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v15, p4

    goto/16 :goto_13

    :cond_a
    move-object/from16 v8, v23

    :goto_6
    :try_start_d
    invoke-virtual/range {p4 .. p4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v0, v14, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 10
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    const-string v2, "http response:{} message:{}"

    const/4 v3, 0x2

    :try_start_e
    new-array v3, v3, [Ljava/lang/Object;

    .line 11
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v13

    invoke-virtual/range {p4 .. p4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v3, v7

    const/16 v4, 0xb

    invoke-interface {v0, v4, v2, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v14, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->getMonitor()Lgbsdk/optional/applog/abdr;

    move-result-object v16

    invoke-virtual/range {p4 .. p4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v17, v20

    move/from16 v20, v9

    invoke-static/range {v16 .. v21}, Lgbsdk/optional/applog/abdt;->a(Lgbsdk/optional/applog/abdr;Ljava/net/URL;JILjava/lang/String;)V

    const/16 v0, 0xc8

    if-ne v9, v0, :cond_13

    if-nez p5, :cond_10

    invoke-virtual/range {p4 .. p4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    const/16 v2, 0x2800

    if-ge v0, v2, :cond_f

    invoke-virtual/range {p4 .. p4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_7

    :cond_b
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    :goto_7
    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_c
    iget-object v0, v14, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 12
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    const-string v4, "http responseBody: {}"

    const/4 v7, 0x1

    :try_start_10
    new-array v7, v7, [Ljava/lang/Object;

    .line 13
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v13

    const/16 v12, 0xb

    invoke-interface {v0, v12, v4, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    const-string v7, "Set-Cookie"

    if-eqz v0, :cond_d

    :try_start_11
    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ";"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    move-object/from16 v15, p4

    .line 16
    :try_start_12
    invoke-virtual {v14, v15}, Lgbsdk/optional/applog/abcz;->a(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "/service/2/device_register/"

    invoke-virtual {v10, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {v4}, Lgbsdk/optional/applog/abfy;->a(Lorg/json/JSONObject;)Z

    move-result v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    if-nez v3, :cond_e

    :try_start_13
    invoke-virtual {v4, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v3, v0

    :try_start_14
    iget-object v0, v14, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 17
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v7, v13, [Ljava/lang/Object;

    const-string v10, "parseResponseLogId failed"

    .line 18
    invoke-interface {v0, v10, v3, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 19
    :cond_e
    :goto_a
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    goto :goto_c

    :catchall_5
    move-exception v0

    goto :goto_b

    :catchall_6
    move-exception v0

    move-object/from16 v15, p4

    :goto_b
    move-object v12, v2

    move-object v9, v8

    move-object v7, v15

    move-object/from16 v11, v23

    goto/16 :goto_11

    :cond_f
    move-object/from16 v15, p4

    :try_start_15
    iget-object v0, v14, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 20
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    const-string v1, "contentLength large than max"

    :try_start_16
    new-array v2, v13, [Ljava/lang/Object;

    const/16 v3, 0xb

    .line 21
    invoke-interface {v0, v3, v1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v2, v23

    move-object/from16 v7, v24

    :goto_c
    move-object v12, v2

    move-object v10, v7

    move-object/from16 v11, v23

    goto :goto_f

    :cond_10
    move-object/from16 v15, p4

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    goto :goto_d

    :cond_11
    move-object v1, v0

    :goto_d
    :try_start_17
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    const/16 v0, 0x400

    :try_start_18
    new-array v0, v0, [B

    :goto_e
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_12

    invoke-virtual {v2, v0, v13, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e

    :cond_12
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    :try_start_19
    iget-object v0, v14, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 22
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    const-string v4, "http responseBody byte length: {}"

    const/4 v7, 0x1

    :try_start_1a
    new-array v7, v7, [Ljava/lang/Object;

    .line 23
    array-length v10, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v13

    const/16 v10, 0xb

    invoke-interface {v0, v10, v4, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    move-object v11, v1

    move-object v10, v3

    move-object/from16 v12, v23

    move-object/from16 v23, v2

    :goto_f
    const/4 v4, 0x0

    move-object v0, v14

    move-object/from16 v1, v22

    move v2, v9

    move-object v3, v10

    move-object v7, v15

    :try_start_1b
    invoke-virtual/range {v0 .. v7}, Lgbsdk/optional/applog/abcz;->a(Ljava/lang/String;I[BLjava/lang/String;JLjava/net/HttpURLConnection;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    invoke-static {v8}, Lgbsdk/optional/applog/abce;->a(Ljava/io/Closeable;)V

    invoke-static {v12}, Lgbsdk/optional/applog/abce;->a(Ljava/io/Closeable;)V

    invoke-static {v11}, Lgbsdk/optional/applog/abce;->a(Ljava/io/Closeable;)V

    invoke-static/range {v23 .. v23}, Lgbsdk/optional/applog/abce;->a(Ljava/io/Closeable;)V

    move-object/from16 v23, v10

    goto/16 :goto_18

    :catchall_7
    move-exception v0

    move-object v9, v8

    move-object/from16 v24, v10

    move-object v7, v15

    goto :goto_11

    :catchall_8
    move-exception v0

    move-object v7, v3

    goto :goto_10

    :catchall_9
    move-exception v0

    move-object/from16 v7, v24

    :goto_10
    move-object v11, v1

    move-object/from16 v24, v7

    move-object v9, v8

    move-object v7, v15

    move-object/from16 v12, v23

    move-object v8, v0

    move-object/from16 v23, v2

    goto/16 :goto_17

    :catchall_a
    move-exception v0

    move-object v11, v1

    move-object v9, v8

    move-object v7, v15

    move-object/from16 v12, v23

    :goto_11
    move-object v8, v0

    goto/16 :goto_17

    :cond_13
    move-object/from16 v15, p4

    const/4 v3, 0x0

    :try_start_1c
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    move-object v0, v14

    move-object/from16 v1, v22

    move v2, v9

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, Lgbsdk/optional/applog/abcz;->a(Ljava/lang/String;I[BLjava/lang/String;JLjava/net/HttpURLConnection;)V

    new-instance v0, Lcom/bytedance/applog/network/RangersHttpException;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Lcom/bytedance/applog/network/RangersHttpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    :catchall_b
    move-exception v0

    goto :goto_12

    :catchall_c
    move-exception v0

    move-object/from16 v15, p4

    :goto_12
    move-object v2, v8

    :goto_13
    move-object v8, v0

    move-object v9, v2

    move-object v7, v15

    move-object/from16 v11, v23

    goto :goto_16

    :cond_14
    move-object v15, v5

    move-object/from16 v24, v7

    const/4 v13, 0x0

    :try_start_1d
    iget-object v0, v14, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 24
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    const-string v1, "Unknown method"

    :try_start_1e
    new-array v2, v13, [Ljava/lang/Object;

    const/16 v3, 0xb

    .line 25
    invoke-interface {v0, v3, v1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    invoke-static/range {v23 .. v23}, Lgbsdk/optional/applog/abce;->a(Ljava/io/Closeable;)V

    invoke-static/range {v23 .. v23}, Lgbsdk/optional/applog/abce;->a(Ljava/io/Closeable;)V

    invoke-static/range {v23 .. v23}, Lgbsdk/optional/applog/abce;->a(Ljava/io/Closeable;)V

    invoke-static/range {v23 .. v23}, Lgbsdk/optional/applog/abce;->a(Ljava/io/Closeable;)V

    goto :goto_18

    :catchall_d
    move-exception v0

    move-object v5, v15

    goto :goto_15

    :catchall_e
    move-exception v0

    move-object v15, v5

    :goto_14
    move-object/from16 v24, v7

    const/4 v13, 0x0

    goto :goto_15

    :catchall_f
    move-exception v0

    move-object/from16 v24, v7

    const/4 v13, 0x0

    move-object/from16 v5, v23

    :goto_15
    move-object v8, v0

    move-object v7, v5

    move-object/from16 v9, v23

    move-object v11, v9

    :goto_16
    move-object v12, v11

    :goto_17
    :try_start_1f
    iget-object v0, v14, Lgbsdk/optional/applog/abcz;->c:Lcom/bytedance/bdtracker/d;

    .line 26
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    const-string v1, "Send request failed"

    :try_start_20
    new-array v2, v13, [Ljava/lang/Object;

    const/16 v3, 0xb

    .line 27
    invoke-interface {v0, v3, v1, v8, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    instance-of v0, v8, Lcom/bytedance/applog/network/RangersHttpException;

    if-nez v0, :cond_16

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, v14

    move-object/from16 v1, v22

    invoke-virtual/range {v0 .. v7}, Lgbsdk/optional/applog/abcz;->a(Ljava/lang/String;I[BLjava/lang/String;JLjava/net/HttpURLConnection;)V

    instance-of v0, v8, Ljava/net/SocketTimeoutException;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    if-nez v0, :cond_15

    invoke-static {v9}, Lgbsdk/optional/applog/abce;->a(Ljava/io/Closeable;)V

    invoke-static {v12}, Lgbsdk/optional/applog/abce;->a(Ljava/io/Closeable;)V

    invoke-static {v11}, Lgbsdk/optional/applog/abce;->a(Ljava/io/Closeable;)V

    invoke-static/range {v23 .. v23}, Lgbsdk/optional/applog/abce;->a(Ljava/io/Closeable;)V

    move-object/from16 v23, v24

    :goto_18
    return-object v23

    :cond_15
    :try_start_21
    new-instance v0, Lgbsdk/optional/applog/abae;

    const-string v1, "Request timeout"

    invoke-direct {v0, v1}, Lgbsdk/optional/applog/abae;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    check-cast v8, Lcom/bytedance/applog/network/RangersHttpException;

    throw v8
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    :catchall_10
    move-exception v0

    invoke-static {v9}, Lgbsdk/optional/applog/abce;->a(Ljava/io/Closeable;)V

    invoke-static {v12}, Lgbsdk/optional/applog/abce;->a(Ljava/io/Closeable;)V

    invoke-static {v11}, Lgbsdk/optional/applog/abce;->a(Ljava/io/Closeable;)V

    invoke-static/range {v23 .. v23}, Lgbsdk/optional/applog/abce;->a(Ljava/io/Closeable;)V

    throw v0
.end method
