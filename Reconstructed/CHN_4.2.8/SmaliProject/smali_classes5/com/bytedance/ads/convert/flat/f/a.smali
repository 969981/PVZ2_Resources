.class public final Lcom/bytedance/ads/convert/flat/f/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ads/convert/flat/f/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "X-Tt-Logid"

    sget-object v0, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getCustomOaidCallback()Lcom/bytedance/ads/convert/depend/CustomOaidCallback;

    move-result-object v3

    const-string v4, "Convert:Event"

    const-string v5, ""

    const-string v6, "msg"

    const/4 v7, 0x1

    const-string v8, "tag"

    const/4 v10, 0x0

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1
    sput-wide v11, Lcom/bytedance/ads/convert/flat/f/b;->b:J

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getCustomOaidCallback()Lcom/bytedance/ads/convert/depend/CustomOaidCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/ads/convert/depend/CustomOaidCallback;->get()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v5

    .line 3
    :goto_0
    sput-object v0, Lcom/bytedance/ads/convert/flat/f/b;->c:Ljava/lang/String;

    goto/16 :goto_6

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getEnableOAID()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/bytedance/ads/convert/flat/k/b$a;

    iget-object v3, v1, Lcom/bytedance/ads/convert/flat/f/a;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/bytedance/ads/convert/flat/k/b$a;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v3, Lcom/bytedance/ads/convert/flat/k/b;

    .line 6
    invoke-direct {v3, v0}, Lcom/bytedance/ads/convert/flat/k/b;-><init>(Lcom/bytedance/ads/convert/flat/k/b$a;)V

    const-wide/16 v11, 0x3e8

    .line 7
    iget-boolean v0, v3, Lcom/bytedance/ads/convert/flat/k/b;->c:Z

    const-string v13, "id"

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto/16 :goto_3

    .line 8
    :cond_2
    iget-object v0, v3, Lcom/bytedance/ads/convert/flat/k/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/bytedance/ads/convert/flat/k/a;

    invoke-direct {v0, v3}, Lcom/bytedance/ads/convert/flat/k/a;-><init>(Lcom/bytedance/ads/convert/flat/k/b;)V

    .line 9
    sget-object v14, Lcom/bytedance/ads/convert/flat/o/a;->b:Lcom/bytedance/ads/convert/flat/n/c;

    new-array v15, v10, [Ljava/lang/Object;

    invoke-virtual {v14, v15}, Lcom/bytedance/ads/convert/flat/n/c;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/concurrent/ExecutorService;

    .line 10
    invoke-interface {v14, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 11
    iput-object v0, v3, Lcom/bytedance/ads/convert/flat/k/b;->f:Ljava/util/concurrent/Future;

    .line 12
    :cond_3
    iget-object v14, v3, Lcom/bytedance/ads/convert/flat/k/b;->g:Lcom/bytedance/ads/convert/flat/k/d;

    if-nez v14, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    :try_start_0
    iget-object v0, v3, Lcom/bytedance/ads/convert/flat/k/b;->a:Lcom/bytedance/ads/convert/flat/k/c;

    instance-of v0, v0, Lcom/bytedance/ads/convert/flat/m/g;

    if-eqz v0, :cond_4

    const-wide/16 v11, 0x44c

    :cond_4
    iget-object v0, v3, Lcom/bytedance/ads/convert/flat/k/b;->f:Ljava/util/concurrent/Future;

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v11, v12, v15}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ads/convert/flat/k/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-object v14, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    iget-object v11, v3, Lcom/bytedance/ads/convert/flat/k/b;->f:Ljava/util/concurrent/Future;

    invoke-interface {v11, v7}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v11, v3, Lcom/bytedance/ads/convert/flat/k/b;->g:Lcom/bytedance/ads/convert/flat/k/d;

    if-eqz v11, :cond_5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/bytedance/ads/convert/flat/k/d;->h:Ljava/lang/String;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    throw v0

    :cond_6
    :goto_1
    if-nez v14, :cond_7

    iget-object v14, v3, Lcom/bytedance/ads/convert/flat/k/b;->g:Lcom/bytedance/ads/convert/flat/k/d;

    :cond_7
    if-eqz v14, :cond_8

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v3, v14, Lcom/bytedance/ads/convert/flat/k/d;->a:Ljava/lang/String;

    invoke-static {v0, v13, v3}, Lcom/bytedance/ads/convert/flat/k/b;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v14, Lcom/bytedance/ads/convert/flat/k/d;->b:Ljava/lang/String;

    const-string v11, "req_id"

    invoke-static {v0, v11, v3}, Lcom/bytedance/ads/convert/flat/k/b;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v14, Lcom/bytedance/ads/convert/flat/k/d;->c:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "is_track_limited"

    invoke-static {v0, v11, v3}, Lcom/bytedance/ads/convert/flat/k/b;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v14, Lcom/bytedance/ads/convert/flat/k/d;->d:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "take_ms"

    invoke-static {v0, v11, v3}, Lcom/bytedance/ads/convert/flat/k/b;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v14, Lcom/bytedance/ads/convert/flat/k/d;->e:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "time"

    invoke-static {v0, v11, v3}, Lcom/bytedance/ads/convert/flat/k/b;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v14, Lcom/bytedance/ads/convert/flat/k/d;->f:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "query_times"

    invoke-static {v0, v11, v3}, Lcom/bytedance/ads/convert/flat/k/b;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v14, Lcom/bytedance/ads/convert/flat/k/d;->g:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "hw_id_version_code"

    invoke-static {v0, v11, v3}, Lcom/bytedance/ads/convert/flat/k/b;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v14, Lcom/bytedance/ads/convert/flat/k/d;->h:Ljava/lang/String;

    const-string v11, "error_msg"

    invoke-static {v0, v11, v3}, Lcom/bytedance/ads/convert/flat/k/b;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    .line 14
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getOaid return apiMap="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_3
    if-eqz v0, :cond_a

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 16
    sput-wide v11, Lcom/bytedance/ads/convert/flat/f/b;->b:J

    .line 17
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    move-object v0, v5

    .line 18
    :goto_4
    sput-object v0, Lcom/bytedance/ads/convert/flat/f/b;->c:Ljava/lang/String;

    .line 19
    :cond_a
    sget-object v0, Lcom/bytedance/ads/convert/flat/f/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oaid fetch: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    sget-object v3, Lcom/bytedance/ads/convert/flat/f/b;->c:Ljava/lang/String;

    .line 22
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {v3}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getEnableLog()Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_5

    :cond_b
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_c
    :goto_5
    sget-object v0, Lcom/bytedance/ads/convert/flat/f/b;->c:Ljava/lang/String;

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 26
    sget-object v0, Lcom/bytedance/ads/convert/flat/f/b;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_d

    .line 27
    sget-object v0, Lcom/bytedance/ads/convert/flat/f/d;->b:Lcom/bytedance/ads/convert/flat/f/d;

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/flat/f/d;->a()V

    :cond_d
    :goto_6
    sget-object v0, Lcom/bytedance/ads/convert/flat/e/a;->h:Lcom/bytedance/ads/convert/flat/e/a;

    iget-object v0, v1, Lcom/bytedance/ads/convert/flat/f/a;->a:Landroid/content/Context;

    const-string v3, "context"

    .line 28
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v12, 0x80

    invoke-virtual {v0, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v12, "hume_convert.AppConvert.sdk.version"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "package"

    invoke-virtual {v12, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "sdk_version"

    invoke-virtual {v12, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "os"

    const-string v11, "android"

    invoke-virtual {v12, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v11, "os_version"

    invoke-virtual {v12, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/bytedance/ads/convert/flat/e/a;->c:Ljava/lang/String;

    const-string v11, "Convert:Config"

    const-string v13, "url"

    .line 29
    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "body"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_2
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    if-eqz v0, :cond_11

    move-object v13, v0

    check-cast v13, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    const-string v0, "POST"

    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v0, 0x1388

    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v0, "enable-encrypt"

    const-string v14, "1"

    invoke-virtual {v13, v0, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v14, "application/json"

    invoke-virtual {v13, v0, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v13, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "body.toString()"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_10

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v12, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    const-string v15, "inputStream"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v15

    new-instance v9, Ljava/lang/String;

    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v15, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {v13, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e

    move-object v5, v9

    :cond_e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "post: response: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {v7}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getEnableLog()Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_7

    :cond_f
    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 31
    :goto_7
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    goto/16 :goto_c

    :catch_0
    move-exception v0

    goto :goto_a

    :cond_10
    :try_start_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    move-object v9, v13

    const/4 v12, 0x0

    goto/16 :goto_e

    :catch_1
    move-exception v0

    const/4 v12, 0x0

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v9, v13

    goto :goto_8

    :catch_2
    move-exception v0

    const/4 v12, 0x0

    goto :goto_9

    :cond_11
    :try_start_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    const/4 v9, 0x0

    :goto_8
    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_e

    :catch_3
    move-exception v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_9
    const/4 v14, 0x0

    :goto_a
    if-eqz v13, :cond_12

    :try_start_8
    invoke-virtual {v13, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catch_4
    :cond_12
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request error"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {v5}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getEnableLog()Z

    move-result v5

    if-nez v5, :cond_13

    goto :goto_b

    :cond_13
    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :goto_b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "err_code"

    const-string v7, "-1"

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    const-string v5, "err_msg"

    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v13, :cond_14

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_14
    if-eqz v14, :cond_15

    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    :cond_15
    if-eqz v12, :cond_16

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    :cond_16
    move-object v0, v2

    .line 34
    :goto_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sput-wide v11, Lcom/bytedance/ads/convert/flat/e/a;->g:J

    const-string v2, "inode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "enable"

    if-eqz v2, :cond_17

    new-instance v7, Lcom/bytedance/ads/convert/flat/e/a$a;

    invoke-virtual {v2, v5, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-wide/16 v11, 0xc8

    const-string v13, "timeout"

    invoke-virtual {v2, v13, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-direct {v7, v9, v11, v12}, Lcom/bytedance/ads/convert/flat/e/a$a;-><init>(ZJ)V

    sput-object v7, Lcom/bytedance/ads/convert/flat/e/a;->d:Lcom/bytedance/ads/convert/flat/e/a$a;

    :cond_17
    const-string v2, "uaid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1a

    sget-object v7, Lcom/bytedance/ads/convert/flat/e/a;->e:Lcom/bytedance/ads/convert/flat/a/f;

    const/4 v9, 0x1

    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 35
    iput-boolean v9, v7, Lcom/bytedance/ads/convert/flat/a/f;->a:Z

    const-string v7, "mobile"

    .line 36
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-wide/32 v11, 0x325aa0

    const-string v9, "renew_interval"

    if-eqz v7, :cond_18

    sget-object v13, Lcom/bytedance/ads/convert/flat/e/a;->e:Lcom/bytedance/ads/convert/flat/a/f;

    .line 37
    iget-object v13, v13, Lcom/bytedance/ads/convert/flat/a/f;->b:Lcom/bytedance/ads/convert/flat/a/e;

    .line 38
    invoke-virtual {v7, v5, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 39
    iput-boolean v14, v13, Lcom/bytedance/ads/convert/flat/a/e;->a:Z

    .line 40
    sget-object v13, Lcom/bytedance/ads/convert/flat/e/a;->e:Lcom/bytedance/ads/convert/flat/a/f;

    .line 41
    iget-object v13, v13, Lcom/bytedance/ads/convert/flat/a/f;->b:Lcom/bytedance/ads/convert/flat/a/e;

    .line 42
    invoke-virtual {v7, v9, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 43
    iput-wide v14, v13, Lcom/bytedance/ads/convert/flat/a/e;->b:J

    :cond_18
    const-string v7, "telecom"

    .line 44
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_19

    sget-object v13, Lcom/bytedance/ads/convert/flat/e/a;->e:Lcom/bytedance/ads/convert/flat/a/f;

    .line 45
    iget-object v13, v13, Lcom/bytedance/ads/convert/flat/a/f;->c:Lcom/bytedance/ads/convert/flat/a/e;

    .line 46
    invoke-virtual {v7, v5, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 47
    iput-boolean v14, v13, Lcom/bytedance/ads/convert/flat/a/e;->a:Z

    .line 48
    sget-object v13, Lcom/bytedance/ads/convert/flat/e/a;->e:Lcom/bytedance/ads/convert/flat/a/f;

    .line 49
    iget-object v13, v13, Lcom/bytedance/ads/convert/flat/a/f;->c:Lcom/bytedance/ads/convert/flat/a/e;

    .line 50
    invoke-virtual {v7, v9, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 51
    iput-wide v11, v13, Lcom/bytedance/ads/convert/flat/a/e;->b:J

    :cond_19
    const-string v7, "unicom"

    .line 52
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1a

    sget-object v7, Lcom/bytedance/ads/convert/flat/e/a;->e:Lcom/bytedance/ads/convert/flat/a/f;

    .line 53
    iget-object v7, v7, Lcom/bytedance/ads/convert/flat/a/f;->d:Lcom/bytedance/ads/convert/flat/a/e;

    .line 54
    invoke-virtual {v2, v5, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 55
    iput-boolean v5, v7, Lcom/bytedance/ads/convert/flat/a/e;->a:Z

    .line 56
    sget-object v5, Lcom/bytedance/ads/convert/flat/e/a;->e:Lcom/bytedance/ads/convert/flat/a/f;

    .line 57
    iget-object v5, v5, Lcom/bytedance/ads/convert/flat/a/f;->d:Lcom/bytedance/ads/convert/flat/a/e;

    const-wide/32 v10, 0x9c40

    .line 58
    invoke-virtual {v2, v9, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 59
    iput-wide v9, v5, Lcom/bytedance/ads/convert/flat/a/e;->b:J

    :cond_1a
    const-string v2, "play_session_interval"

    const-wide/32 v9, 0xea60

    .line 60
    invoke-virtual {v0, v2, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    sput-wide v11, Lcom/bytedance/ads/convert/flat/e/a;->f:J

    cmp-long v0, v11, v9

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/bytedance/ads/convert/flat/i/g;->i:Lcom/bytedance/ads/convert/flat/i/g;

    sget-wide v9, Lcom/bytedance/ads/convert/flat/e/a;->f:J

    invoke-virtual {v0, v9, v10}, Lcom/bytedance/ads/convert/flat/i/g;->a(J)V

    :cond_1b
    const-string v0, "Config fetch"

    .line 61
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {v2}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getEnableLog()Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_d

    :cond_1c
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_d
    sget-object v0, Lcom/bytedance/ads/convert/flat/e/a;->h:Lcom/bytedance/ads/convert/flat/e/a;

    .line 63
    sget-object v0, Lcom/bytedance/ads/convert/flat/e/a;->d:Lcom/bytedance/ads/convert/flat/e/a$a;

    .line 64
    iget-boolean v0, v0, Lcom/bytedance/ads/convert/flat/e/a$a;->a:Z

    if-eqz v0, :cond_1d

    .line 65
    sget-object v0, Lcom/bytedance/ads/convert/flat/d/b;->b:Lcom/bytedance/ads/convert/flat/d/b;

    .line 66
    sget-object v2, Lcom/bytedance/ads/convert/flat/d/b;->a:Lcom/bytedance/ads/convert/flat/d/c;

    .line 67
    invoke-virtual {v0}, Lcom/bytedance/ads/convert/flat/d/b;->a()[I

    move-result-object v0

    .line 68
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "<set-?>"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v2, Lcom/bytedance/ads/convert/flat/d/c;->f:[I

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 70
    sput-wide v4, Lcom/bytedance/ads/convert/flat/f/b;->d:J

    .line 71
    :cond_1d
    sget-object v0, Lcom/bytedance/ads/convert/flat/a/h;->c:Lcom/bytedance/ads/convert/flat/a/h;

    .line 72
    sget-object v2, Lcom/bytedance/ads/convert/flat/e/a;->e:Lcom/bytedance/ads/convert/flat/a/f;

    .line 73
    invoke-virtual {v0, v2}, Lcom/bytedance/ads/convert/flat/a/h;->a(Lcom/bytedance/ads/convert/flat/a/f;)V

    .line 74
    sget-object v0, Lcom/bytedance/ads/convert/flat/e/a;->e:Lcom/bytedance/ads/convert/flat/a/f;

    .line 75
    iget-boolean v0, v0, Lcom/bytedance/ads/convert/flat/a/f;->a:Z

    if-eqz v0, :cond_1e

    .line 76
    iget-object v0, v1, Lcom/bytedance/ads/convert/flat/f/a;->a:Landroid/content/Context;

    .line 77
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/bytedance/ads/convert/flat/a/g;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/bytedance/ads/convert/flat/a/g;-><init>(Landroid/content/Context;Lcom/bytedance/ads/convert/flat/b/a;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_1e
    return-void

    :catchall_5
    move-exception v0

    move-object v9, v13

    :goto_e
    if-eqz v9, :cond_1f

    .line 78
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1f
    if-eqz v14, :cond_20

    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    :cond_20
    if-eqz v12, :cond_21

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    :cond_21
    throw v0
.end method
